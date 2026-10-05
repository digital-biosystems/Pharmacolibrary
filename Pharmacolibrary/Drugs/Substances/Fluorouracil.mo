within Pharmacolibrary.Drugs.Substances;
package Fluorouracil "fluorouracil"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "fluorouracil",
    atcCodes = {"L01BC02"},
    drugbankId = "DB00544",
    pubchemCid = "3385",
    chebiId = "46345",
    wikidataId = "Q238512",
    formula = "C4H3FN2O2",
    M = 0.130078,
    logP = -0.9);
  package Deoxy5Fluorouridine5 "metabolite: 5'-deoxy-5-fluorouridine"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "5'-deoxy-5-fluorouridine", pubchemCid = "18343", formula = "C9H11FN2O5", M = 0.246194);
  end Deoxy5Fluorouridine5;
  package Fluoro56Dihydrouracil5 "metabolite: 5-fluoro-5,6-dihydrouracil"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "5-fluoro-5,6-dihydrouracil", pubchemCid = "121997", formula = "C4H5FN2O2", M = 0.132094);
  end Fluoro56Dihydrouracil5;
  package AlphaFluoroBetaAlanine "metabolite: alpha-fluoro-beta-alanine"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "alpha-fluoro-beta-alanine", pubchemCid = "13351", formula = "C3H6FNO2", M = 0.107084);
  end AlphaFluoroBetaAlanine;
  package AlphaFluoroBetaUreidopropionicAcid "metabolite: alpha-fluoro-beta-ureidopropionic acid"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "alpha-fluoro-beta-ureidopropionic acid", pubchemCid = "151244", formula = "C4H7FN2O3", M = 0.150109);
  end AlphaFluoroBetaUreidopropionicAcid;
  package APC "metabolite: APC"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "APC");
  end APC;
  package FluorinatedNucleosidesNucleotides "metabolite: fluorinated nucleosides/nucleotides"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "fluorinated nucleosides/nucleotides");
  end FluorinatedNucleosidesNucleotides;
  package SN38 "metabolite: SN38"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "SN38", pubchemCid = "104842", formula = "C22H20N2O5", M = 0.392411);
  end SN38;
  package SN38G "metabolite: SN38G"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "SN38G", pubchemCid = "443154", formula = "C28H28N2O11", M = 0.568535);
  end SN38G;
  annotation (Documentation(info = "<html><body><p>Fluorouracil is an antimetabolite anticancer drug used to treat many cancers, including breast, stomach, colon, pancreatic, head and neck, and skin cancers, as well as actinic keratosis and basal-cell carcinoma of the skin. It is an approved medicine and is listed among WHO essential medicines, so it is widely used in cancer care worldwide.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q238512&quot;>Wikidata Q238512</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>fluorouracil</td></tr><tr><td>ATC codes:</td><td>L01BC02</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB00544&quot;>DB00544</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/3385&quot;>3385</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:46345&quot;>46345</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q238512&quot;>Q238512</a></td></tr><tr><td>formula:</td><td>C4H3FN2O2</td></tr><tr><td>molar mass:</td><td>130.078 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>Deoxy5Fluorouridine5</code></td><td>5'-deoxy-5-fluorouridine</td><td>246.194 g/mol (pubchem)</td></tr><tr><td><code>Fluoro56Dihydrouracil5</code></td><td>5-fluoro-5,6-dihydrouracil</td><td>132.094 g/mol (pubchem)</td></tr><tr><td><code>AlphaFluoroBetaAlanine</code></td><td>alpha-fluoro-beta-alanine</td><td>107.084 g/mol (pubchem)</td></tr><tr><td><code>AlphaFluoroBetaUreidopropionicAcid</code></td><td>alpha-fluoro-beta-ureidopropionic acid</td><td>150.109 g/mol (pubchem)</td></tr><tr><td><code>APC</code></td><td>APC</td><td>molar mass unknown</td></tr><tr><td><code>FluorinatedNucleosidesNucleotides</code></td><td>fluorinated nucleosides/nucleotides</td><td>molar mass unknown</td></tr><tr><td><code>SN38</code></td><td>SN38</td><td>392.411 g/mol (pubchem)</td></tr><tr><td><code>SN38G</code></td><td>SN38G</td><td>568.535 g/mol (pubchem)</td></tr></table></body></html>"));
end Fluorouracil;
