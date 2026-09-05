within Pharmacolibrary.Examples.Clopidogrel;

model PK_PGx_6C_clopidogrel "clopidogrel PK by CYP2C19 metaboliser phenotype (Jung et al. 2024)"
  import PGx = Pharmacolibrary.Pharmacogenomics.PGx;
  parameter PGx.MetabolizerStatus metabolizer = PGx.MetabolizerStatus.Normal
    "CYP2C19 phenotype: Normal = the paper's EM, Intermediate = IM, Poor = PM"
    annotation(Dialog(group = "Pharmacogenomics"));
  extends PK_6C_clopidogrel(
    fm1 = if      metabolizer == PGx.MetabolizerStatus.Poor         then 0.050
          elseif  metabolizer == PGx.MetabolizerStatus.Intermediate then 0.083
          else                                                          0.125,
    fm2 = if      metabolizer == PGx.MetabolizerStatus.Poor         then 0.678
          elseif  metabolizer == PGx.MetabolizerStatus.Intermediate then 0.852
          else                                                          0.960);
  annotation(
    Diagram,
    experiment(StartTime = 0, StopTime = 86400, Tolerance = 1e-06, Interval = 173.146),
    Documentation(info = "<html><body><h4>PK_PGx_6C_clopidogrel</h4>
<p><b>PK_6C_clopidogrel</b> with the CYP2C19 phenotype as a parameter. Only <code>fm1</code> and
<code>fm2</code> change; every disposition parameter is inherited unchanged, because the gene acts
on the metabolic SPLIT in the hepatic compartment and not on the clearance of the parent.</p>
<p>Values are Table 3 of Jung YS et al., <i>CPT Pharmacometrics Syst Pharmacol</i> 2024;13(1):29-40.
The paper estimates the effect as an additive shift on <code>logit(fm)</code> relative to EM
(fm1~IM -0.450, fm1~PM -0.996, fm2~IM -1.428, fm2~PM -2.432); the per-phenotype fractions those
shifts produce are set here directly, which is exact for these three phenotypes and avoids
restating the link function. The derived fractions inherited from the base model then follow:</p>
<pre>
            fm1     fm2     fmH4    fmcarbo  fmothers
EM/Normal   0.125   0.960   0.120   0.840    0.040
IM          0.083   0.852   0.071   0.781    0.148
PM          0.050   0.678   0.034   0.644    0.322
</pre>
<p><b>metabolizer</b> is a parameter, so one compiled model covers all three phenotypes — a
phenotype sweep is <code>-override=metabolizer=2|3|4</code> (Poor|Intermediate|Normal), which is
what the paper's dose-optimisation simulations need. Unknown/Rapid/Ultra fall back to the EM
values: CYP2C19 *17 was not represented in the 36-subject study, so the paper supports no
estimate for them.</p>
<p>The phenotype is set DIRECTLY rather than derived from a diplotype. Deriving it through
<code>Pharmacogenomics.PGx.phStatus</code> would need that function to be activity-score based
first: it currently tests each allele independently, so <code>*1/*2</code> returns Poor where CPIC
assigns Intermediate.</p></body></html>"));
end PK_PGx_6C_clopidogrel;
