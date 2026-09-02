within Pharmacolibrary.Pharmacogenomics.PGx;

record Deficiency "one subject's alleles for a graded gene, bound to that gene"
  replaceable parameter GradedGene gene constrainedby GradedGene
    annotation(choicesAllMatching = true);
  parameter String allele[2] = {"", ""}
    "leave allele[2] empty for a hemizygous (male X-linked) genotype";
end Deficiency;
