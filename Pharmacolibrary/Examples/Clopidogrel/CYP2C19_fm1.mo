within Pharmacolibrary.Examples.Clopidogrel;

record CYP2C19_fm1 "CYP2C19 on Jung 2024's fm1 — the branch to the active metabolite H4"
  extends Pharmacolibrary.Pharmacogenomics.PGx.Effect(
    redeclare parameter Pharmacolibrary.Pharmacogenomics.Genes.CYP2C19 gene,
    target = "fm1",
    scale  = {1.0, 0.400, 0.664, 1.0, 1.0, 1.0});
  annotation(Documentation(info = "<html><body>
<p>Ratios to the EM reference, from Jung YS et al., <i>CPT Pharmacometrics Syst Pharmacol</i>
2024;13(1):29-40, Table 3: fm1 is 0.125 / 0.083 / 0.050 for EM / IM / PM, so the phenotype
multipliers are 1 / 0.664 / 0.400.</p>
<h4>Why this lives beside the model and not in Pharmacogenomics.Effects</h4>
<p>It is not gene knowledge. <code>Genes.CYP2C19</code> — which alleles carry which activity —
is true of the gene wherever it appears, and belongs in the shared package. These numbers are
true only of ONE paper's parameterisation: they are ratios to Jung's Table 2 typical values and
mean nothing without Jung's particular fm1/fm2 decomposition of the metabolic split. A different
clopidogrel model, fitted with a different structure, would need different numbers under the
same gene. Keeping them next to <code>PK_PGx_6C_clopidogrel</code> keeps that coupling visible
instead of implying a reusability they do not have.</p>
<p>Rapid and Ultra repeat the Normal value: CYP2C19 *17 was not represented among the paper's 36
subjects, so no gain-of-function estimate exists to put there.</p></body></html>"));
end CYP2C19_fm1;
