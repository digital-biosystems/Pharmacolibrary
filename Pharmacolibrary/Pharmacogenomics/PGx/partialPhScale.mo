within Pharmacolibrary.Pharmacogenomics.PGx;

partial function partialPhScale
  "interface of a genotype -> scaling-factor function (the constraint of Modifier.scale)"
  input  PGx.Phenotype ph;
  input  String a1;
  input  String a2;
  output Real f;
  annotation(Documentation(info = "<html><body><p>Common interface of the <code>phScale*</code>
family. <code>PGx.Modifier</code> declares its <code>scale</code> function replaceable and
constrained by this, so a modifier picks the scale vector that matches the quantity it modifies:
<code>phScaleCL</code> (CLscale), <code>phScaleF</code> (Fscale), <code>phScaleFm</code>
(fmScale).</p><p>Before this existed <code>Modifier</code> called <code>phScaleCL</code>
unconditionally, so every modifier in <code>Modifiers/</code> — absorption, EC50, Emax, protein
binding — scaled its quantity by the CLEARANCE vector, and <code>Phenotype.Fscale</code> was read
by nothing at all.</p></body></html>"));
end partialPhScale;
