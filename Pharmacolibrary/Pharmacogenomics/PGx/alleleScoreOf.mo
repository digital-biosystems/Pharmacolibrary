within Pharmacolibrary.Pharmacogenomics.PGx;

function alleleScoreOf "activity score of one allele; unlisted alleles score as fully functional"
  input  Phenotype ph;
  input  String a;
  output Real v;
algorithm
  v := 1.0;                                  // an allele nobody scored is assumed functional
  for i in 1:size(ph.scoredAllele, 1) loop
    if a == ph.scoredAllele[i] then
      v := ph.alleleScore[i];
      break;
    end if;
  end for;
  annotation(Inline = true);
end alleleScoreOf;
