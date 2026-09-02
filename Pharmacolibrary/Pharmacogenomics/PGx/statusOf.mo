within Pharmacolibrary.Pharmacogenomics.PGx;

function statusOf "diplotype -> MetabolizerStatus, by summed activity score and the gene's bands"
  input  Gene g;
  input  String a1;
  input  String a2;
  output MetabolizerStatus s;
protected
  Real total;
algorithm
  total := activityOf(g, a1) + activityOf(g, a2);
  if     total <= g.poorMax         then s := MetabolizerStatus.Poor;
  elseif total <= g.intermediateMax then s := MetabolizerStatus.Intermediate;
  elseif total <= g.normalMax       then s := MetabolizerStatus.Normal;
  elseif total <= g.rapidMax        then s := MetabolizerStatus.Rapid;
  else                                   s := MetabolizerStatus.Ultra;
  end if;
  annotation(Inline = true, Documentation(info = "<html><body><p>Phenotype is a property of the
PAIR of alleles, so the two activity scores are summed and the total banded. The predecessor,
<code>phStatus</code>, tested each allele on its own —
<code>inArray(a1, ph.poor) or inArray(a2, ph.poor)</code> — so one no-function allele made the
subject a poor metaboliser, which calls CYP2C19 <code>*1/*2</code> Poor where CPIC assigns
Intermediate.</p></body></html>"));
end statusOf;
