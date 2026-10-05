within Pharmacolibrary.Drugs.Substances;
package Phenolphthalein "phenolphthalein"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "phenolphthalein",
    atcCodes = {"A06AB04"},
    drugbankId = "DB04824",
    pubchemCid = "4764",
    chebiId = "34914",
    wikidataId = "Q187921",
    formula = "C20H14O4",
    M = 0.318328,
    logP = 3.6);
  package PhenolphthaleinDi35SSulphate "metabolite: phenolphthalein di[35S]sulphate"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "phenolphthalein di[35S]sulphate");
  end PhenolphthaleinDi35SSulphate;
  annotation (Documentation(info = "<html><body><p>Phenolphthalein was a contact laxative used to treat constipation. It has been withdrawn from use because it was found to be a carcinogen.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q187921&quot;>Wikidata Q187921</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>phenolphthalein</td></tr><tr><td>ATC codes:</td><td>A06AB04</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB04824&quot;>DB04824</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/4764&quot;>4764</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:34914&quot;>34914</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q187921&quot;>Q187921</a></td></tr><tr><td>formula:</td><td>C20H14O4</td></tr><tr><td>molar mass:</td><td>318.328 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>PhenolphthaleinDi35SSulphate</code></td><td>phenolphthalein di[35S]sulphate</td><td>molar mass unknown</td></tr></table></body></html>"));
end Phenolphthalein;
