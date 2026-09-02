within Pharmacolibrary.Pharmacogenomics.PGx;

function phStatusScore
  "diplotype -> MetabolizerStatus by CPIC activity score, falling back to the allele lists"
  input  Phenotype ph;
  input  String a1;
  input  String a2;
  output MetabolizerStatus s;
protected
  Real total;
  Boolean scored;
algorithm
  scored := size(ph.scoredAllele, 1) > 0;
  if not scored then
    s := phStatus(ph, a1, a2);            // no activity scores declared: legacy behaviour
  else
    total := alleleScoreOf(ph, a1) + alleleScoreOf(ph, a2);
    if      total <= 0.0  then s := MetabolizerStatus.Poor;
    elseif  total <  2.0  then s := MetabolizerStatus.Intermediate;
    elseif  total == 2.0  then s := MetabolizerStatus.Normal;
    elseif  total <  3.0  then s := MetabolizerStatus.Rapid;
    else                       s := MetabolizerStatus.Ultra;
    end if;
  end if;
  annotation(Inline = true, Documentation(info = "<html><body>
<p>Assigns a metaboliser phenotype from the DIPLOTYPE, by summing the per-allele activity scores
in <code>Phenotype.scoredAllele</code>/<code>alleleScore</code> and banding the total the way CPIC
does:</p>
<pre>  0        poor          two no-function alleles      (*2/*2)
  0 &lt; s &lt; 2  intermediate  one functional allele lost   (*1/*2)
  = 2      normal        two functional alleles       (*1/*1)
  2 &lt; s &lt; 3  rapid                                      (*1/*17)
  &gt;= 3     ultra                                       (*17/*17)</pre>
<p>This exists because <code>phStatus</code> tests the two alleles INDEPENDENTLY —
<code>inArray(a1, ph.poor) or inArray(a2, ph.poor)</code> — so a single no-function allele makes
the subject Poor. For CYP2C19 that misclassifies <code>*1/*2</code>, the most common intermediate
diplotype, as a poor metaboliser. Phenotype is a property of the pair, not of either allele.</p>
<p>Backward compatible: a phenotype record that declares no activity scores (every record written
before this function) keeps the old list-based result exactly.</p></body></html>"));
end phStatusScore;
