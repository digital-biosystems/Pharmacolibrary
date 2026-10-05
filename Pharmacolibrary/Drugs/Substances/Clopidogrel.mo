within Pharmacolibrary.Drugs.Substances;
package Clopidogrel "clopidogrel"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "clopidogrel",
    atcCodes = {"B01AC04"},
    drugbankId = "DB00758",
    pubchemCid = "60606",
    chebiId = "37941",
    wikidataId = "Q410237",
    formula = "C16H16ClNO2S",
    M = 0.321819,
    logP = 3.8);
  package ClopidogrelCarboxylicAcid "metabolite: clopidogrel carboxylic acid"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "clopidogrel carboxylic acid", pubchemCid = "9861403", formula = "C15H14ClNO2S", M = 0.307792);
  end ClopidogrelCarboxylicAcid;
  package ClopidogrelH4 "metabolite: clopidogrel H4"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "clopidogrel H4", pubchemCid = "10066813", formula = "C16H18ClNO4S", M = 0.355833);
  end ClopidogrelH4;
  annotation (Documentation(info = "<html><body><p>Clopidogrel is an antiplatelet medicine used to lower the risk of heart attack, stroke, and other clot-related cardiovascular problems in people at high risk. It is widely used and remains authorised in the European Union, where several approved products are marketed for conditions such as acute coronary syndrome, myocardial infarction, and stroke.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q410237&quot;>Wikidata Q410237</a> and the WHO ATC classification and the EMA medicines list; not checked by a person.</small></p><table><tr><td>name:</td><td>clopidogrel</td></tr><tr><td>ATC codes:</td><td>B01AC04</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB00758&quot;>DB00758</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/60606&quot;>60606</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:37941&quot;>37941</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q410237&quot;>Q410237</a></td></tr><tr><td>formula:</td><td>C16H16ClNO2S</td></tr><tr><td>molar mass:</td><td>321.819 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>ClopidogrelCarboxylicAcid</code></td><td>clopidogrel carboxylic acid (SR26334)</td><td>307.792 g/mol (pubchem)</td></tr><tr><td><code>ClopidogrelH4</code></td><td>clopidogrel H4 (H4)</td><td>355.833 g/mol (pubchem)</td></tr></table></body></html>"));
end Clopidogrel;
