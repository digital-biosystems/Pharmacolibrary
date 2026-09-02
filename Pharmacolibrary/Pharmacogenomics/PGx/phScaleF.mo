within Pharmacolibrary.Pharmacogenomics.PGx;

function phScaleF "genotype -> bioavailability/absorption scaling factor (Phenotype.Fscale)"
  extends PGx.partialPhScale;
algorithm
  f := ph.Fscale[Integer(phStatusScore(ph, a1, a2))];
  annotation(Inline = true, Documentation(info = "<html><body>As <code>phScaleCL</code>, but
indexes <code>Fscale</code> — the vector that applies to bioavailability and absorption.
</body></html>"));
end phScaleF;
