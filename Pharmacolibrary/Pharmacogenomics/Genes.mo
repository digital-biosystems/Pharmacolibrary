within Pharmacolibrary.Pharmacogenomics;

package Genes "allele -> phenotype knowledge, one record per gene"
  extends Modelica.Icons.Package;

  /* CYP2C19 (CPIC). *2/*3 are no-function, *17 is increased-function.
     Bands: *1/*2 = 1.0 and *2/*17 = 1.5 are both Intermediate, *1/*1 = 2.0 Normal,
     *1/*17 = 2.5 Rapid, *17/*17 = 3.0 Ultra. */
  record CYP2C19
    extends PGx.Gene(
      symbol          = "CYP2C19",
      allele          = {"*1", "*2", "*3", "*17"},
      activityScore   = { 1.0,  0.0,  0.0,   1.5},
      poorMax = 0.0, intermediateMax = 1.5, normalMax = 2.0, rapidMax = 2.5);
  end CYP2C19;

  /* CYP2D6 (CPIC 2019 activity-score scheme). Note the bands differ from CYP2C19: normal
     reaches to 2.25 and there is NO rapid category, so anything above 2.25 is ultrarapid.
     *1/*41 = 1.5 is a NORMAL metaboliser here, where CYP2C19's banding would call it
     intermediate — which is why the thresholds belong to the gene. */
  record CYP2D6
    extends PGx.Gene(
      symbol        = "CYP2D6",
      allele        = {"*1", "*2", "*3", "*4", "*5", "*6", "*9", "*10", "*17", "*41", "*1xN"},
      activityScore = { 1.0,  1.0,  0.0,  0.0,  0.0,  0.0, 0.25,  0.25,   0.5,   0.5,    2.0},
      poorMax = 0.0, intermediateMax = 1.0, normalMax = 2.25, rapidMax = 2.25);
  end CYP2D6;

  /* CYP3A4. *22 reduces expression; the rest of the common alleles are functional. No
     ultrarapid phenotype is defined, so normal and rapid share the top band. */
  record CYP3A4
    extends PGx.Gene(
      symbol        = "CYP3A4",
      allele        = {"*1", "*22"},
      activityScore = { 1.0,   0.5},
      poorMax = 0.0, intermediateMax = 1.5, normalMax = 2.0, rapidMax = 2.0);
  end CYP3A4;

  /* SLC22A2 (OCT2). 808G>T reduces transport. */
  record SLC22A2
    extends PGx.Gene(
      symbol        = "SLC22A2",
      allele        = {"*1", "808T"},
      activityScore = { 1.0,    0.5},
      poorMax = 0.0, intermediateMax = 1.5, normalMax = 2.0, rapidMax = 2.0);
  end SLC22A2;

  /* SLC47A1 (MATE1). */
  record SLC47A1
    extends PGx.Gene(
      symbol        = "SLC47A1",
      allele        = {"*1", "rs2289669A", "LoF"},
      activityScore = { 1.0,          0.5,   0.0},
      poorMax = 0.0, intermediateMax = 1.5, normalMax = 2.0, rapidMax = 2.0);
  end SLC47A1;
end Genes;
