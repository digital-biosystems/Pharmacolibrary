within Pharmacolibrary.Drugs.Substances;
package PovidoneIodine "povidone-iodine"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "povidone-iodine",
    atcCodes = {"D08AG02", "D09AA09", "D11AC06", "G01AX11", "R02AA15", "S01AX18"},
    drugbankId = "DB06812",
    chebiId = "8347",
    wikidataId = "Q241516");
  package Iodine "metabolite: iodine"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "iodine", pubchemCid = "807", formula = "I2", M = 0.2538);
  end Iodine;
  annotation (Documentation(info = "<html><body><p>Povidone-iodine is an iodine-based antiseptic used to disinfect the skin and prevent infection in wounds and other sites. It is widely used in many forms, including skin antiseptics, medicated dressings, shampoos, gynecological, throat, and eye preparations, and is listed as an essential medicine by the WHO.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q241516&quot;>Wikidata Q241516</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>povidone-iodine</td></tr><tr><td>ATC codes:</td><td>D08AG02, D09AA09, D11AC06, G01AX11, R02AA15, S01AX18</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB06812&quot;>DB06812</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:8347&quot;>8347</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q241516&quot;>Q241516</a></td></tr></table><h4>Metabolites</h4><table><tr><td><code>Iodine</code></td><td>iodine</td><td>253.8 g/mol (pubchem)</td></tr></table></body></html>"));
end PovidoneIodine;
