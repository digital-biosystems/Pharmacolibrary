within Pharmacolibrary.Pharmacogenomics.Modifiers;

model RiskSummary "ONE flag an application checks: does any pharmacogene flag a risk?"
  parameter Integer nu(min = 0) = 0 "number of risk sources connected";
  parameter Boolean warnIfAtRisk = true "warn once when any source is flagged";
  Modelica.Blocks.Interfaces.BooleanVectorInput u[nu]
    "connect CarriageComponent.carrier / DeficiencyComponent.deficient here" annotation(
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
  atRisk  = Modelica.Math.BooleanVectors.anyTrue(u);
  nAtRisk = sum(if u[i] then 1 else 0 for i in 1:nu);
  annotation(
    Icon(graphics = {Rectangle(fillColor = {255, 190, 111}, fillPattern = FillPattern.Solid, extent = {{-80, 60}, {80, -60}}), Text(extent = {{-70, 20}, {70, -20}}, textString = "risk?"), Text(origin = {-2, 12}, extent = {{-90, 75}, {90, 45}}, textString = "%name")}),
    Documentation(info = "<html><body>
<p>Collects the Boolean risk outputs of any number of pharmacogene components —
<code>CarriageComponent.carrier</code>, <code>DeficiencyComponent.deficient</code> — into the
single variable an application reads to decide whether this drug is safe for this subject.</p>
<h4>Nothing here stops the simulation</h4>
<p>A risk carrier's PK is perfectly well defined, and simulating it is often exactly the point:
you may want the exposure profile precisely because the subject is the one you are worried
about. So carriage warns and the run continues, and this component aggregates rather than
gates. The only PGx condition that raises an ERROR is an allele name that appears in no table,
which is a data-entry mistake rather than a finding about a patient.</p>
<p><code>nu</code> must match the number of connections; leave it at 0 and connect nothing when
a model has no pharmacogene components.</p></body></html>"));
end RiskSummary;
