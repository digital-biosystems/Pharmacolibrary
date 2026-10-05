within Pharmacolibrary.Drugs.Substances;
package Acenocoumarol "acenocoumarol"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "acenocoumarol",
    atcCodes = {"B01AA07"},
    drugbankId = "DB01418",
    pubchemCid = "54676537",
    chebiId = "53766",
    wikidataId = "Q304088",
    formula = "C19H15NO6",
    M = 0.35333,
    logP = 2.5);
  package SAcenocoumarol "metabolite: S-acenocoumarol"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "S-acenocoumarol", pubchemCid = "54683745", formula = "C19H15NO6", M = 0.35333);
  end SAcenocoumarol;
  annotation (Documentation(info = "<html><body><p>Acenocoumarol is an anticoagulant, a vitamin K antagonist used to prevent and treat blood clots. It is an approved medicine and is used mainly in Europe, where it is often preferred over warfarin in some countries.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q304088&quot;>Wikidata Q304088</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>acenocoumarol</td></tr><tr><td>ATC codes:</td><td>B01AA07</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB01418&quot;>DB01418</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/54676537&quot;>54676537</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:53766&quot;>53766</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q304088&quot;>Q304088</a></td></tr><tr><td>formula:</td><td>C19H15NO6</td></tr><tr><td>molar mass:</td><td>353.33 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>SAcenocoumarol</code></td><td>S-acenocoumarol</td><td>353.33 g/mol (pubchem)</td></tr></table></body></html>"));
end Acenocoumarol;
