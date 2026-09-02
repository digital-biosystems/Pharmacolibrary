within Pharmacolibrary.Pharmacogenomics.PGx;

function isCarrier "true when either allele is one of the gene's risk alleles"
  // Takes the fields, not the Carriage record, on purpose. OMC only accepts a derived record
  // where a base record is declared if it can inline the call, and it cannot inline a function
  // containing a loop — so a signature of (Carriage) fails code generation for every concrete
  // Carriages.* record. Plain arrays have no such restriction.
  input  String riskAllele[:];
  input  String a1;
  input  String a2;
  output Boolean carrier;
algorithm
  carrier := false;
  for i in 1:size(riskAllele, 1) loop
    if a1 == riskAllele[i] or a2 == riskAllele[i] then
      carrier := true;
      break;
    end if;
  end for;
  // Per-ALLELE, unlike statusOf which sums a diplotype: one copy of HLA-B*57:01 confers the
  // risk, so heterozygous carriage is carriage.
end isCarrier;
