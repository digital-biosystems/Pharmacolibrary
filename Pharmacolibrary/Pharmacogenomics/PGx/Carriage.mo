within Pharmacolibrary.Pharmacogenomics.PGx;

record Carriage "one subject's alleles for a risk gene, bound to that gene"
  replaceable parameter RiskGene gene constrainedby RiskGene annotation(choicesAllMatching = true);
  parameter String allele[2] = {"negative", "negative"}
    "a risk allele of the gene, or gene.negativeLabel";
  annotation(Documentation(info = "<html><body>The carriage counterpart of
<code>Diplotype</code>: alleles never travel without the gene that interprets them, because the
same symbol means different things in different genes.</body></html>"));
end Carriage;
