within Pharmacolibrary.Pharmacogenomics;

package Effects "what a phenotype does to ONE model parameter, per (gene, parameter, drug)"
  extends Modelica.Icons.Package;

  /* The clopidogrel/CYP2C19 effects used to live here. They moved to
     Examples.Clopidogrel (CYP2C19_fm1 / CYP2C19_fm2) because they are not gene knowledge:
     they are ratios to ONE paper's typical values and mean nothing away from that paper's
     fm1/fm2 decomposition. Genes.CYP2C19 stays here, being true of the gene everywhere. */

  /* ── clearance effects carried over from the first-generation Phenotypes records ────────
     These reproduce the CLscale vectors those records shipped with. They are illustrative
     magnitudes, not fitted estimates from a named study — unlike the clopidogrel pair above,
     which is traceable to a table. */
  record SLC22A2_CL "OCT2 transport effect on renal clearance"
    extends PGx.Effect(
      redeclare parameter GenesCurated.SLC22A2 gene, target = "CL",
      scale = {1.0, 0.7, 0.85, 1.0, 1.2, 1.3});
  end SLC22A2_CL;

  record SLC47A1_CL "MATE1 transport effect on renal clearance"
    extends PGx.Effect(
      redeclare parameter GenesCurated.SLC47A1 gene, target = "CL",
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
      redeclare parameter GenesCurated.CYP3A4 gene, target = "CL",
      scale = {1.0, 0.6, 0.8, 1.0, 1.0, 1.0});
  end CYP3A4_CL;
end Effects;
