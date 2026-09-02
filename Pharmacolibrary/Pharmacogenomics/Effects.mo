within Pharmacolibrary.Pharmacogenomics;

package Effects "what a phenotype does to ONE model parameter, per (gene, parameter, drug)"
  extends Modelica.Icons.Package;

  /* ── clopidogrel / CYP2C19 (Jung YS et al., CPT Pharmacometrics Syst Pharmacol
     2024;13(1):29-40) ───────────────────────────────────────────────────────────────────
     The gene does NOT change the parent's clearance; it changes how the eliminated drug is
     SPLIT, so there is no clearance effect here at all — only the two fractions. Entries are
     ratios to the EM (Normal) reference from the paper's Table 3:
        fm1  0.125 / 0.083 / 0.050   ->  1 / 0.664 / 0.400   (EM / IM / PM)
        fm2  0.960 / 0.852 / 0.678   ->  1 / 0.8875 / 0.70625
     Rapid and Ultra repeat the Normal value: *17 was not represented among the paper's 36
     subjects, so no gain-of-function estimate exists. */
  record CYP2C19_clopidogrel_fm1 "CYP2C19 on fm1 — the branch to the active metabolite H4"
    extends PGx.Effect(
      redeclare parameter Genes.CYP2C19 gene,
      target = "fm1",
      scale  = {1.0, 0.400, 0.664, 1.0, 1.0, 1.0});
  end CYP2C19_clopidogrel_fm1;

  record CYP2C19_clopidogrel_fm2 "CYP2C19 on fm2 — the fraction metabolised at all"
    extends PGx.Effect(
      redeclare parameter Genes.CYP2C19 gene,
      target = "fm2",
      scale  = {1.0, 0.70625, 0.8875, 1.0, 1.0, 1.0});
  end CYP2C19_clopidogrel_fm2;

  /* ── clearance effects carried over from the first-generation Phenotypes records ────────
     These reproduce the CLscale vectors those records shipped with. They are illustrative
     magnitudes, not fitted estimates from a named study — unlike the clopidogrel pair above,
     which is traceable to a table. */
  record SLC22A2_CL "OCT2 transport effect on renal clearance"
    extends PGx.Effect(
      redeclare parameter Genes.SLC22A2 gene, target = "CL",
      scale = {1.0, 0.7, 0.85, 1.0, 1.2, 1.3});
  end SLC22A2_CL;

  record SLC47A1_CL "MATE1 transport effect on renal clearance"
    extends PGx.Effect(
      redeclare parameter Genes.SLC47A1 gene, target = "CL",
      scale = {1.0, 0.8, 0.9, 1.0, 1.0, 1.0});
  end SLC47A1_CL;

  record CYP2C19_CL "CYP2C19 metabolic effect on clearance"
    extends PGx.Effect(
      redeclare parameter Genes.CYP2C19 gene, target = "CL",
      scale = {1.0, 0.5, 0.75, 1.0, 1.2, 1.4});
  end CYP2C19_CL;

  record CYP2D6_CL "CYP2D6 metabolic effect on clearance"
    extends PGx.Effect(
      redeclare parameter Genes.CYP2D6 gene, target = "CL",
      scale = {1.0, 0.3, 0.65, 1.0, 1.0, 1.6});
  end CYP2D6_CL;

  record CYP3A4_CL "CYP3A4 metabolic effect on clearance"
    extends PGx.Effect(
      redeclare parameter Genes.CYP3A4 gene, target = "CL",
      scale = {1.0, 0.6, 0.8, 1.0, 1.0, 1.0});
  end CYP3A4_CL;
end Effects;
