within Pharmacolibrary.Pharmacogenomics.Modifiers;

model CarriageComponent "flags carriage of a risk allele; deliberately drives no equation"
  replaceable parameter PGx.Carriage carriage constrainedby PGx.Carriage
    annotation(choicesAllMatching = true, Dialog(group = "Pharmacogenomics"));
  parameter Boolean warnIfCarrier = true
    "raise a simulation warning when the subject carries the risk allele";
  Modelica.Blocks.Interfaces.BooleanOutput carrier "subject carries a risk allele" annotation(
    Placement(transformation(extent = {{80, -10}, {100, 10}}),
      iconTransformation(origin = {110, 0}, extent = {{-20, -20}, {20, 20}})));
  PGx.RiskBus riskBus "connect to a RiskSummary to be counted" annotation(
    Placement(transformation(origin = {0, -100}, extent = {{-20, -20}, {20, 20}})));
  final parameter Real oddsRatio = carriage.gene.oddsRatio
    "reported association strength — annotation only, read by nothing here";
  // "{gene} {variant} {description}", or "" when this subject is not flagged. A String
  // parameter, so it reaches an application through the model description / init file even
  // though Modelica keeps strings out of the trajectory results.
  final parameter String riskLabel =
    if PGx.riskAlleleOf(carriage.gene.riskAllele, carriage.allele[1], carriage.allele[2]) == ""
    then ""
    else carriage.gene.symbol + " " +
         PGx.riskAlleleOf(carriage.gene.riskAllele, carriage.allele[1], carriage.allele[2]) +
         " " + carriage.gene.outcome;
  parameter Boolean checkAlleles = true
    "assert each allele is a risk allele or the explicit negative label"
    annotation(Dialog(tab = "Advanced"));
initial equation
  // isCarrier returns false for anything it does not recognise, so a mistyped '*57:01' reads
  // as a subject who may safely receive the drug. Requiring each allele to be either a listed
  // risk allele or the explicit negative label turns that silent false into a failure.
  for i in 1:2 loop
    assert(not checkAlleles or carriage.allele[i] == carriage.gene.negativeLabel or
           PGx.knownAllele(carriage.gene.riskAllele, carriage.allele[i]),
           "PGx: '" + carriage.allele[i] + "' is neither a listed " + carriage.gene.symbol +
           " risk allele nor '" + carriage.gene.negativeLabel + "'");
  end for;
  // A warning, not an error: a contraindicated subject is a legitimate thing to simulate, and
  // the run should say so loudly rather than refuse or stay silent.
  assert(not (warnIfCarrier and PGx.isCarrier(carriage.gene.riskAllele, carriage.allele[1], carriage.allele[2])),
         "PGx risk: " + riskLabel, AssertionLevel.warning);
equation
  riskBus.nRisk = -(if carrier then 1 else 0);   // negative: sources contribute, summary reads
  carrier = PGx.isCarrier(carriage.gene.riskAllele, carriage.allele[1], carriage.allele[2]);
  annotation(
    Icon(graphics = {Rectangle(fillColor = {255, 190, 111}, fillPattern = FillPattern.Solid, extent = {{-80, 60}, {80, -60}}), Text(extent = {{-70, 20}, {70, -20}}, textString = "risk"), Text(origin = {-2, 12}, extent = {{-90, 75}, {90, 45}}, textString = "%name")}),
    Documentation(info = "<html><body><p>Emits carriage as a Boolean and warns once at
initialization. It has no signal input and no scaled output because carriage is not a factor on
any PK or PD parameter — see <code>PGx.RiskGene</code> for why.</p></body></html>"));
end CarriageComponent;
