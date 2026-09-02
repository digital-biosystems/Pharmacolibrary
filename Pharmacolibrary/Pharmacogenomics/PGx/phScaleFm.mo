within Pharmacolibrary.Pharmacogenomics.PGx;

function phScaleFm "genotype -> fraction-metabolized scaling factor (Phenotype.fmScale)"
  extends PGx.partialPhScale;
algorithm
  f := ph.fmScale[Integer(phStatusScore(ph, a1, a2))];
  annotation(Inline = true, Documentation(info = "<html><body><p>Scales a FRACTION METABOLIZED.
A gene may leave the parent's clearance untouched and change only how the eliminated drug is
SPLIT between metabolites — clopidogrel/CYP2C19 is that case: the parent CL is unchanged while
the fraction routed to the active metabolite falls with loss of function.</p>
<p>Because one <code>Phenotype</code> carries a single <code>fmScale</code>, a gene acting on
SEVERAL fractions with different magnitudes needs one phenotype record per fraction (see
<code>Phenotypes.CYP2C19_fm1_Phenotype</code> / <code>CYP2C19_fm2_Phenotype</code>).</p>
</body></html>"));
end phScaleFm;
