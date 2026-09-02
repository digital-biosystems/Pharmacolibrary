within Pharmacolibrary.Pharmacogenomics;

package Diplotypes "a subject's alleles, one record per gene — set `allele` per subject"
  extends Modelica.Icons.Package;
  record CYP2C19 extends PGx.Diplotype(redeclare parameter Genes.CYP2C19 gene); end CYP2C19;
  record CYP2D6  extends PGx.Diplotype(redeclare parameter Genes.CYP2D6  gene); end CYP2D6;
  record CYP3A4  extends PGx.Diplotype(redeclare parameter Genes.CYP3A4  gene); end CYP3A4;
  record SLC22A2 extends PGx.Diplotype(redeclare parameter Genes.SLC22A2 gene); end SLC22A2;
  record SLC47A1 extends PGx.Diplotype(redeclare parameter Genes.SLC47A1 gene); end SLC47A1;
end Diplotypes;
