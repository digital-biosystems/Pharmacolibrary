within Pharmacolibrary.Pharmacogenomics.PGx;

function scaleFor "the factor an effect applies to a subject with this diplotype"
  input  Effect e;
  input  Diplotype d;
  output Real f;
algorithm
  // The alleles must be read by the gene the effect is about. Pairing an effect with another
  // gene's diplotype does not fail on its own — the allele simply is not found and scores as
  // functional — so it would silently yield a wrong phenotype. Fail loudly instead.
  assert(e.gene.symbol == d.gene.symbol,
         "PGx: effect on '" + e.target + "' is defined for gene " + e.gene.symbol +
         " but was given a " + d.gene.symbol + " diplotype");
  f := e.scale[Integer(statusFor(d))];
  // Inline is REQUIRED, not an optimisation: without it OMC will not pass a
  // derived record (Effects.CYP2C19_CL) to a function declared on the base
  // record, and code generation fails. The consequence is that this assert can
  // be constant-folded away, which is why GeneEffectComponent asserts as well.
  annotation(Inline = true);
end scaleFor;
