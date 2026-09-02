within Pharmacolibrary.Pharmacogenomics.PGx;

function activityOf "CPIC activity score of one allele; an unlisted allele counts as functional"
  input  Gene g;
  input  String a;
  output Real v;
algorithm
  v := 1.0;
  for i in 1:size(g.allele, 1) loop
    if a == g.allele[i] then
      v := g.activityScore[i];
      break;
    end if;
  end for;
  annotation(Inline = true);
end activityOf;
