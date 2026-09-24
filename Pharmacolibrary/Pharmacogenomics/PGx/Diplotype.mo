within Pharmacolibrary.Pharmacogenomics.PGx;

record Diplotype "one subject's two alleles, BOUND to the gene that interprets them"
  replaceable parameter Gene gene constrainedby Gene annotation(choicesAllMatching = true);
  parameter String allele[2] = {"*1", "*1"};
  annotation(Documentation(info = "<html><body><p>A star allele means nothing on its own: the
same symbol is read differently by different genes. <code>*2</code> is a no-function allele of
CYP2C19 and a fully functional allele of CYP2D6; <code>*17</code> increases CYP2C19 activity and
decreases CYP2D6 activity. So a pair of alleles is only interpretable together with the gene that
reads them, and this record keeps the two inseparable.</p>
<p>That binding is why the first-generation package split <code>Genotype</code> from
<code>Phenotype</code>, and it was briefly lost when the alleles became a loose
<code>String[2]</code> parameter on the component: nothing then stopped CYP2D6 alleles being read
by a CYP2C19 effect, which returns a WRONG PHENOTYPE rather than an error.</p>
<p>Three axes, each scoped differently: <code>Gene</code> is allele to phenotype (per gene),
<code>Diplotype</code> is this subject's alleles (per subject and gene), and
<code>Effect</code> is phenotype to a factor on one model parameter (per gene, parameter and
drug).</p></body></html>"));
end Diplotype;
