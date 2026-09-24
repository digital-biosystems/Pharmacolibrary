within Pharmacolibrary.Pharmacogenomics;

package DiplotypesCurated "subject alleles for the hand-written genes in GenesCurated"
  extends Modelica.Icons.Package;
  record SLC22A2 extends PGx.Diplotype(redeclare parameter GenesCurated.SLC22A2 gene); end SLC22A2;
  record SLC47A1 extends PGx.Diplotype(redeclare parameter GenesCurated.SLC47A1 gene); end SLC47A1;
  record CYP3A4  extends PGx.Diplotype(redeclare parameter GenesCurated.CYP3A4  gene); end CYP3A4;
end DiplotypesCurated;
