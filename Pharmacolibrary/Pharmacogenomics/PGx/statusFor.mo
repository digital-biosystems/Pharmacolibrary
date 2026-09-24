within Pharmacolibrary.Pharmacogenomics.PGx;

function statusFor "MetabolizerStatus of a diplotype, read by its own gene"
  input  Diplotype d;
  output MetabolizerStatus s;
algorithm
  s := statusOf(d.gene, d.allele[1], d.allele[2]);
  annotation(Inline = true);
end statusFor;
