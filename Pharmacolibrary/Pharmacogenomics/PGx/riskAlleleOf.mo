within Pharmacolibrary.Pharmacogenomics.PGx;

function riskAlleleOf "the gene's risk allele this subject carries, or \"\" when none"
  input  String riskAllele[:];
  input  String a1;
  input  String a2;
  output String hit;
algorithm
  hit := "";
  for i in 1:size(riskAllele, 1) loop
    if a1 == riskAllele[i] or a2 == riskAllele[i] then
      hit := riskAllele[i];
      break;
    end if;
  end for;
end riskAlleleOf;
