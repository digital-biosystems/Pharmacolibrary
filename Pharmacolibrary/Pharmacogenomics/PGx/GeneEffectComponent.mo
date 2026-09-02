within Pharmacolibrary.Pharmacogenomics.PGx;

model GeneEffectComponent "diplotype -> the unitless scale its phenotype applies"
  replaceable parameter PGx.Effect effect constrainedby PGx.Effect
    annotation(choicesAllMatching = true, Dialog(group = "Pharmacogenomics"));
  // The PATIENT's two alleles. Knowledge lives in the Effect record; the diplotype is data
  // about one subject, so it is set here rather than baked into a genotype record per subject.
  parameter String allele[2] = {"*1", "*1"} annotation(Dialog(group = "Pharmacogenomics"));
  Pharmacolibrary.Types.RealOutput y(unit = "1") "scale factor for effect.target" annotation(
    Placement(transformation(extent = {{80, -10}, {100, 10}}),
      iconTransformation(origin = {112, 0}, extent = {{192, -24}, {240, 24}}, rotation = 180)));
  MetabolizerStatus status "phenotype this diplotype maps to";
equation
  status = statusOf(effect.gene, allele[1], allele[2]);
  y      = scaleOf(effect, allele[1], allele[2]);
  annotation(
    Icon(graphics = {Rectangle(fillColor = {255, 190, 111}, fillPattern = FillPattern.Solid, extent = {{-80, 60}, {80, -60}}), Text(extent = {{-70, 20}, {70, -20}}, textString = "G→P"), Text(origin = {-2, 12}, extent = {{-90, 75}, {90, 45}}, textString = "%name")}),
    Documentation(info = "<html><body><p>Emits the dimensionless factor that this gene's
phenotype applies to one model parameter. Feed it into a <code>ScaleComponent</code> to multiply
the quantity itself; chain several to combine genes.</p>
<p>Replaces <code>GenotypePhenotypeComponent</code>, which always emitted the CLEARANCE scale
(<code>phScaleCL</code>) whatever it was wired to, and took a genotype record that mixed the
patient's alleles into the gene definition.</p></body></html>"));
end GeneEffectComponent;
