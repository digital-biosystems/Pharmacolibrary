within Pharmacolibrary.Pharmacogenomics.PGx;

record Gene "one gene: how a DIPLOTYPE maps to a metaboliser phenotype"
  parameter String symbol = "" "HGNC symbol, e.g. \"CYP2C19\"";
  // CPIC activity scores. An allele that is not listed scores as fully functional, so only
  // the variants that matter need naming.
  parameter String[:] allele        = fill("",  0);
  parameter Real[:]   activityScore = fill(0.0, 0);
  // Activity-score bands, PER GENE. CPIC does not use one banding for every gene: CYP2C19
  // calls an activity score of 2.5 Rapid, while CYP2D6 has no rapid category at all and stays
  // Normal up to 2.25 before becoming Ultra. A single hardcoded banding therefore misclassifies
  // one gene or the other; these four thresholds let each gene state its own.
  //   score <= poorMax          -> Poor
  //   score <= intermediateMax  -> Intermediate
  //   score <= normalMax        -> Normal
  //   score <= rapidMax         -> Rapid
  //   otherwise                 -> Ultra
  parameter Real poorMax         = 0.0;
  parameter Real intermediateMax = 1.0;
  parameter Real normalMax       = 2.0;
  parameter Real rapidMax        = 2.5;
  annotation(Documentation(info = "<html><body><p>Gene-level knowledge only: the allele-to-
phenotype mapping, which is a property of the GENE and is shared by every drug and every model
parameter that gene touches. What a phenotype then does to a particular parameter lives in
<a href=\"modelica://Pharmacolibrary.Pharmacogenomics.PGx.Effect\">Effect</a>, and the patient's
own two alleles are set on the component, not here.</p>
<p>This separation replaces <code>PGx.Phenotype</code>, which carried both at once. Because that
record held a single scale vector per gene, a gene acting on two parameters needed two copies of
the whole allele table — clopidogrel/CYP2C19 acts on both fm1 and fm2 and needed exactly
that.</p></body></html>"));
end Gene;
