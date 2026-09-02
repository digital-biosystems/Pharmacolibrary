within Pharmacolibrary.Pharmacogenomics;

package GenesCurated "genes NOT derivable from CPIC — hand-written, and illustrative"
  extends Modelica.Icons.Package;
  /* Genes.mo is generated from CPIC and holds only genes whose allele functions CPIC scores.
     These three do not survive that filter and are kept here so the split between GENERATED
     reference data and HAND-WRITTEN assumption stays visible:

       SLC22A2 (OCT2), SLC47A1 (MATE1)  not CPIC genes at all. They came with the
                                        first-generation package as illustrative transporter
                                        examples and the Gentamicin/Lithium/Ibuprofen models
                                        still use them.
       CYP3A4                           a CPIC gene, but CPIC assigns none of its alleles a
                                        scoreable clinical function, so no activity score can
                                        be derived. *22 is reduced-expression by literature
                                        consensus, not by a CPIC function call.

     The activity scores and bands below are ASSUMPTIONS, not published assignments. Treat any
     number here as a placeholder until it is replaced by a sourced value. */

  record SLC22A2 "OCT2 — illustrative, not a CPIC gene"
    extends PGx.Gene(
      symbol        = "SLC22A2",
      allele        = {"*1", "808T"},
      activityScore = { 1.0,    0.5},
      poorMax = 0.0, intermediateMax = 1.5, normalMax = 2.0, rapidMax = 2.0);
  end SLC22A2;

  record SLC47A1 "MATE1 — illustrative, not a CPIC gene"
    extends PGx.Gene(
      symbol        = "SLC47A1",
      allele        = {"*1", "rs2289669A", "LoF"},
      activityScore = { 1.0,          0.5,   0.0},
      poorMax = 0.0, intermediateMax = 1.5, normalMax = 2.0, rapidMax = 2.0);
  end SLC47A1;

  record CYP3A4 "CPIC scores no CYP3A4 allele function; *22 assumed reduced"
    extends PGx.Gene(
      symbol        = "CYP3A4",
      allele        = {"*1", "*22"},
      activityScore = { 1.0,   0.5},
      poorMax = 0.0, intermediateMax = 1.5, normalMax = 2.0, rapidMax = 2.0);
  end CYP3A4;
end GenesCurated;
