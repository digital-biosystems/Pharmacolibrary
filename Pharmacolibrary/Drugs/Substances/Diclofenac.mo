within Pharmacolibrary.Drugs.Substances;
package Diclofenac "diclofenac"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "diclofenac",
    atcCodes = {"D11AX18", "M01AB05", "M02AA15", "S01BC03"},
    drugbankId = "DB00586",
    pubchemCid = "3033",
    chebiId = "47381",
    wikidataId = "Q244408",
    formula = "C14H11Cl2NO2",
    M = 0.296147,
    logP = 4.4);
  package Hydroxydiclofenac4 "metabolite: 4'-hydroxydiclofenac"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "4'-hydroxydiclofenac", pubchemCid = "116545", formula = "C14H11Cl2NO3", M = 0.312146);
  end Hydroxydiclofenac4;
  package Hydroxydiclofenac5 "metabolite: 5'-hydroxydiclofenac"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "5'-hydroxydiclofenac", pubchemCid = "3052566", formula = "C14H11Cl2NO3", M = 0.312146);
  end Hydroxydiclofenac5;
  annotation (Documentation(info = "<html><body><p>Diclofenac is a non-steroidal anti-inflammatory drug and painkiller used for painful and inflammatory conditions such as osteoarthritis, rheumatoid arthritis, gout, migraine, and other musculoskeletal problems. It is widely used in human medicine in many forms, including tablets, skin preparations, and eye drops, and is also approved for veterinary use.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q244408&quot;>Wikidata Q244408</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>diclofenac</td></tr><tr><td>ATC codes:</td><td>D11AX18, M01AB05, M02AA15, S01BC03</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB00586&quot;>DB00586</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/3033&quot;>3033</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:47381&quot;>47381</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q244408&quot;>Q244408</a></td></tr><tr><td>formula:</td><td>C14H11Cl2NO2</td></tr><tr><td>molar mass:</td><td>296.147 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>Hydroxydiclofenac4</code></td><td>4'-hydroxydiclofenac</td><td>312.146 g/mol (pubchem)</td></tr><tr><td><code>Hydroxydiclofenac5</code></td><td>5'-hydroxydiclofenac</td><td>312.146 g/mol (pubchem)</td></tr></table></body></html>"));
end Diclofenac;
