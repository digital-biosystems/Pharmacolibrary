within Pharmacolibrary.Drugs.Substances;
package Codeine "codeine"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "codeine",
    atcCodes = {"R05DA04"},
    drugbankId = "DB00318",
    pubchemCid = "5284371",
    chebiId = "16714",
    wikidataId = "Q174723",
    formula = "C18H21NO3",
    M = 0.29937,
    logP = 1.1);
  package Codeine6Glucuronide "metabolite: codeine-6-glucuronide"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "codeine-6-glucuronide", pubchemCid = "5489029", formula = "C24H29NO9", M = 0.475494);
  end Codeine6Glucuronide;
  package Morphine "metabolite: morphine"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "morphine", pubchemCid = "5288826", formula = "C17H19NO3", M = 0.285343);
  end Morphine;
  package Morphine3Glucuronide "metabolite: morphine-3-glucuronide"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "morphine-3-glucuronide", pubchemCid = "5484731", formula = "C23H27NO9", M = 0.461467);
  end Morphine3Glucuronide;
  annotation (Documentation(info = "<html><body><p>Codeine is an opioid used to treat pain and to suppress cough. It is widely used around the world, often combined with non-opioid painkillers, and is included on the WHO list of essential medicines.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q174723&quot;>Wikidata Q174723</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>codeine</td></tr><tr><td>ATC codes:</td><td>R05DA04</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB00318&quot;>DB00318</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/5284371&quot;>5284371</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:16714&quot;>16714</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q174723&quot;>Q174723</a></td></tr><tr><td>formula:</td><td>C18H21NO3</td></tr><tr><td>molar mass:</td><td>299.37 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>Codeine6Glucuronide</code></td><td>codeine-6-glucuronide</td><td>475.494 g/mol (pubchem)</td></tr><tr><td><code>Morphine</code></td><td>morphine</td><td>285.343 g/mol (pubchem)</td></tr><tr><td><code>Morphine3Glucuronide</code></td><td>morphine-3-glucuronide</td><td>461.467 g/mol (pubchem)</td></tr></table></body></html>"));
end Codeine;
