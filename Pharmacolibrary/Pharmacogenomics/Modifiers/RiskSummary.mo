within Pharmacolibrary.Pharmacogenomics.Modifiers;

model RiskSummary "ONE flag an application checks: does any pharmacogene flag a risk?"
  parameter Boolean warnIfAtRisk = true "warn once when any source is flagged";
  PGx.RiskBus riskBus "connect every risk-emitting component here" annotation(
    Placement(transformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanOutput atRisk
    "true when ANY connected pharmacogene flags a risk for this drug" annotation(
    Placement(transformation(extent = {{80, -10}, {100, 10}}),
      iconTransformation(origin = {110, 0}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.IntegerOutput nAtRisk "how many sources are flagged" annotation(
    Placement(transformation(extent = {{80, -50}, {100, -30}}),
      iconTransformation(origin = {110, -60}, extent = {{-20, -20}, {20, 20}})));
initial equation
  // A warning, never an error. A carrier's pharmacokinetics are perfectly well defined and
  // worth simulating — what is not safe is PRESCRIBING, which is a decision the application
  // makes after reading atRisk, not something the solver should refuse to compute.
  assert(not (warnIfAtRisk and atRisk),
         "PGx: this subject is flagged by " + String(nAtRisk) +
         " pharmacogene risk source(s) — check the per-gene components for which",
         AssertionLevel.warning);
equation
  // The sources each contribute a negative flow; the connection set sums to zero, so this
  // port is left holding the positive total. Nothing counts the connections by hand.
  nAtRisk = integer(riskBus.nRisk + 0.5);
  atRisk  = nAtRisk > 0;
  riskBus.level = if atRisk then 1 else 0;   // potential: the verdict, readable off the bus
  annotation(
    Icon(graphics = {Rectangle(fillColor = {255, 190, 111}, fillPattern = FillPattern.Solid, extent = {{-80, 60}, {80, -60}}), Text(extent = {{-70, 20}, {70, -20}}, textString = "risk?"), Text(origin = {-2, 12}, extent = {{-90, 75}, {90, 45}}, textString = "%name")}),
    Documentation(info = "<html><body>
<p>Collects the risk flags of any number of pharmacogene components into the single variable an
application reads to decide whether this drug is safe for this subject. Connect each
component's <code>riskBus</code> here; there is no count to maintain, because the bus sizes
itself from the connections (see <code>PGx.RiskBus</code>).</p>
<h4>Nothing here stops the simulation</h4>
<p>A risk carrier's PK is perfectly well defined, and simulating it is often exactly the point:
you may want the exposure profile precisely because the subject is the one you are worried
about. So carriage warns and the run continues, and this component aggregates rather than
gates. The only PGx condition that raises an ERROR is an allele name that appears in no table,
which is a data-entry mistake rather than a finding about a patient.</p></body></html>"));
end RiskSummary;
