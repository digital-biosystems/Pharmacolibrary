within Pharmacolibrary.Pharmacogenomics.Modifiers;

model FractionMetabolizedModifier
  "scales a fraction metabolized (fm) by the genotype, using Phenotype.fmScale"
  extends PGx.Modifier(redeclare function scale = PGx.phScaleFm);
  annotation(Documentation(info = "<html><body><p>Multiplies a nominal fraction metabolized by a
genotype-dependent factor. Use where the gene changes the SPLIT of elimination between metabolic
routes rather than its total rate: for clopidogrel, CYP2C19 loss of function leaves the parent's
clearance unchanged and reduces the fraction converted to the active metabolite, so a
<code>ClearanceModifier</code> would model the wrong thing entirely.</p>
<p>The result is a fraction, so keep the product in [0,1]: <code>fmScale</code> entries are ratios
to the reference phenotype, not absolute fractions.</p></body></html>"));
end FractionMetabolizedModifier;
