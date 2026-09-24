within Pharmacolibrary.Pharmacogenomics.Modifiers;

model DeficiencyComponent "reports a graded deficiency level; deliberately drives no equation"
  replaceable parameter PGx.Deficiency deficiency constrainedby PGx.Deficiency
    annotation(choicesAllMatching = true, Dialog(group = "Pharmacogenomics"));
  parameter Boolean warnIfDeficient = true "warn when the level is worse than Normal";
  Modelica.Blocks.Interfaces.IntegerOutput level
    "DeficiencyLevel: 1 indeterminate, 2 normal, 3 variable, 4 deficient, 5 CNSHA" annotation(
    Placement(transformation(extent = {{80, -10}, {100, 10}}),
      iconTransformation(origin = {110, 0}, extent = {{-20, -20}, {20, 20}})));
  PGx.RiskBus riskBus "connect to a RiskSummary to be counted" annotation(
    Placement(transformation(origin = {0, -100}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanOutput deficient "level is Deficient or worse" annotation(
    Placement(transformation(extent = {{80, -50}, {100, -30}}),
      iconTransformation(origin = {110, -60}, extent = {{-20, -20}, {20, 20}})));
  parameter Boolean checkAlleles = true
    "assert that both alleles appear in the gene's table" annotation(Dialog(tab = "Advanced"));
  final parameter String riskLabel =
    if Integer(PGx.deficiencyOf(deficiency.gene.allele, deficiency.gene.alleleClass,
                                deficiency.allele[1], deficiency.allele[2]))
       < Integer(PGx.DeficiencyLevel.Deficient) then ""
    else deficiency.gene.symbol + " " + deficiency.allele[1] +
         (if deficiency.allele[2] == "" then "" else "/" + deficiency.allele[2]) +
         " " + deficiency.gene.outcome;
initial equation
  // allele[2] = "" is a legitimate hemizygous male genotype, not a typo.
  assert(not checkAlleles or PGx.knownAllele(deficiency.gene.allele, deficiency.allele[1]),
         "PGx: '" + deficiency.allele[1] + "' is not a known " + deficiency.gene.symbol +
         " allele");
  assert(not checkAlleles or PGx.knownAllele(deficiency.gene.allele, deficiency.allele[2], true),
         "PGx: '" + deficiency.allele[2] + "' is not a known " + deficiency.gene.symbol +
         " allele (use \"\" for a hemizygous genotype)");
  assert(not (warnIfDeficient and Integer(PGx.deficiencyOf(
             deficiency.gene.allele, deficiency.gene.alleleClass,
             deficiency.allele[1], deficiency.allele[2])) > 2),
         "PGx risk: " + riskLabel, AssertionLevel.warning);
equation
  level = Integer(PGx.deficiencyOf(deficiency.gene.allele, deficiency.gene.alleleClass,
                                   deficiency.allele[1], deficiency.allele[2]));
  deficient = level >= Integer(PGx.DeficiencyLevel.Deficient);
  riskBus.nRisk = -(if deficient then 1 else 0);
  annotation(
    Icon(graphics = {Rectangle(fillColor = {255, 190, 111}, fillPattern = FillPattern.Solid, extent = {{-80, 60}, {80, -60}}), Text(extent = {{-70, 20}, {70, -20}}, textString = "grade"), Text(origin = {-2, 12}, extent = {{-90, 75}, {90, 45}}, textString = "%name")}),
    Documentation(info = "<html><body><p>Emits the severity level and a convenience Boolean, and
warns once at initialization when the subject is deficient. Like
<code>CarriageComponent</code> it has no signal input and no scaled output: the level grades a
safety consequence, not a PK or PD parameter.</p></body></html>"));
end DeficiencyComponent;
