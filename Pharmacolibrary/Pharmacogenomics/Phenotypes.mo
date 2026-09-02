within Pharmacolibrary.Pharmacogenomics;

package Phenotypes
  extends Modelica.Icons.Package;

  
  
  record OCT2_Phenotype
    extends PGx.Phenotype(
      intermediate = {"808T"},
      CLscale = {1.0, 0.7, 0.85, 1.0, 1.2, 1.3},
      Fscale = {1, 1, 1, 1, 1, 1}
    );  
  end OCT2_Phenotype;
  /*record OCT2_Phenotype
    extends PGx.PhenotypeTemplate(
    
      redeclare constant String poor[0],
      redeclare constant String intermediate[1] = {"808T"},
      redeclare constant String rapid[0],
      redeclare constant Real CLscale[:] =
          {1,1,0.85,1,1,1});
  end OCT2_Phenotype;*/

  record MATE1_Phenotype
    extends PGx.Phenotype(
      poor = {"LoF"},
      intermediate = {"rs2289669A"},
      CLscale = {1,0.8,0.9,1,1,1}
    );
  end MATE1_Phenotype;

  /* CYP2C19, activity-score based (CPIC). The star alleles keep their list entries so the
     legacy phStatus still answers, but scoredAllele/alleleScore is what phStatusScore uses, and
     it is the one that gets *1/*2 right: summing 1.0 + 0 gives 1.0 -> Intermediate, where the
     list-based test sees a no-function allele and returns Poor. */
  record CYP2C19_Phenotype
    extends PGx.Phenotype(
      poor    = {"*2", "*3"},
      rapid   = {"*17"},
      scoredAllele = {"*1", "*2", "*3", "*17"},
      alleleScore  = { 1.0,  0.0,  0.0,   1.5},
      CLscale = {1.0, 0.5, 0.75, 1.0, 1.2, 1.4},
      Fscale  = {1,1,1,1,1,1});
  end CYP2C19_Phenotype;

  /* Clopidogrel-specific CYP2C19 records (Jung YS et al., CPT PSP 2024;13(1):29-40).
     CLscale is FLAT here on purpose: the gene does not change the parent's clearance, only the
     fraction of it routed to the active metabolite, so the effect lives entirely in fmScale.
     Two records because one Phenotype carries a single fmScale and the paper's two fractions
     shift by different amounts. Entries are ratios to the EM (Normal) reference, taken from
     Table 3: fm1 0.125/0.083/0.050 and fm2 0.960/0.852/0.678 for EM/IM/PM.
     Rapid and Ultra repeat the Normal value — CYP2C19 *17 was not represented in the paper's
     36 subjects, so there is no estimate for a gain-of-function phenotype. */
  record CYP2C19_fm1_Phenotype "CYP2C19 effect on fm1 (parent -> clopidogrel H4 branch)"
    extends CYP2C19_Phenotype(
      CLscale = {1,1,1,1,1,1},
      fmScale = {1.0, 0.400, 0.664, 1.0, 1.0, 1.0});
  end CYP2C19_fm1_Phenotype;

  record CYP2C19_fm2_Phenotype "CYP2C19 effect on fm2 (fraction metabolised at all)"
    extends CYP2C19_Phenotype(
      CLscale = {1,1,1,1,1,1},
      fmScale = {1.0, 0.70625, 0.8875, 1.0, 1.0, 1.0});
  end CYP2C19_fm2_Phenotype;
end Phenotypes;