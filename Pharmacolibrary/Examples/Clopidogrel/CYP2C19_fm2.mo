within Pharmacolibrary.Examples.Clopidogrel;

record CYP2C19_fm2 "CYP2C19 on Jung 2024's fm2 — the fraction metabolised at all"
  extends Pharmacolibrary.Pharmacogenomics.PGx.Effect(
    redeclare parameter Pharmacolibrary.Pharmacogenomics.Genes.CYP2C19 gene,
    target = "fm2",
    scale  = {1.0, 0.70625, 0.8875, 1.0, 1.0, 1.0});
  annotation(Documentation(info = "<html><body>
<p>Ratios to the EM reference, from Jung 2024 Table 3: fm2 is 0.960 / 0.852 / 0.678 for
EM / IM / PM, so the multipliers are 1 / 0.8875 / 0.70625. See
<a href=\"modelica://Pharmacolibrary.Examples.Clopidogrel.CYP2C19_fm1\">CYP2C19_fm1</a> for why
these records sit beside the model rather than in
<code>Pharmacogenomics.Effects</code>.</p></body></html>"));
end CYP2C19_fm2;
