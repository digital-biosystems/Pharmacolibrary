within Pharmacolibrary.Pharmacogenomics.PGx;

model GeneEffectComponent "diplotype -> the unitless scale its phenotype applies"
  replaceable parameter PGx.Effect effect constrainedby PGx.Effect
    "which gene, acting on which parameter"
    annotation(choicesAllMatching = true, Dialog(group = "Pharmacogenomics"));
  replaceable parameter PGx.Diplotype diplotype constrainedby PGx.Diplotype
    "this subject's alleles, bound to the gene that reads them"
    annotation(choicesAllMatching = true, Dialog(group = "Pharmacogenomics"));
  Pharmacolibrary.Types.RealOutput y(unit = "1") "scale factor for effect.target" annotation(
    Placement(transformation(extent = {{80, -10}, {100, 10}}),
      iconTransformation(origin = {112, 0}, extent = {{192, -24}, {240, 24}}, rotation = 180)));
  MetabolizerStatus status "phenotype this diplotype maps to";
initial equation
  // Also asserted here, not only inside scaleFor: a tool may constant-fold a function whose
  // arguments are all parameters and discard the assert inside it, which is exactly what
  // happened to the first version of this guard.
  assert(effect.gene.symbol == diplotype.gene.symbol,
         "PGx: " + effect.gene.symbol + " effect on '" + effect.target +
         "' was given a " + diplotype.gene.symbol + " diplotype");
equation
  status = statusFor(diplotype);
  y      = scaleFor(effect, diplotype);   // asserts effect and diplotype name the same gene
  annotation(
    Icon(graphics = {Rectangle(fillColor = {255, 190, 111}, fillPattern = FillPattern.Solid, extent = {{-80, 60}, {80, -60}}), Text(extent = {{-70, 20}, {70, -20}}, textString = "G→P"), Text(origin = {-2, 12}, extent = {{-90, 75}, {90, 45}}, textString = "%name")}),
    Documentation(info = "<html><body><p>Emits the dimensionless factor that this gene's
phenotype applies to one model parameter. Feed it into a <code>ScaleComponent</code> to multiply
the quantity itself; chain several to combine genes.</p>
<p>It takes an <code>Effect</code> and a <code>Diplotype</code> rather than an effect and a bare
allele array, so the subject's alleles arrive already bound to the gene that reads them and a
mismatched pair is rejected at translation instead of returning a wrong phenotype.</p>
</body></html>"));
end GeneEffectComponent;
