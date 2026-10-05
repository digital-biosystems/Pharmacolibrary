within Pharmacolibrary.Drugs.Substances;
package SodiumPhenylbutyrate "sodium phenylbutyrate"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "sodium phenylbutyrate",
    atcCodes = {"A16AX03"},
    drugbankId = "DB06819",
    pubchemCid = "4775",
    chebiId = "41500",
    wikidataId = "Q27088364",
    formula = "C10H12O2",
    M = 0.164204,
    logP = 0);
  package Phenylacetate "metabolite: phenylacetate"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "phenylacetate", pubchemCid = "4409936", formula = "C8H7O2-", M = 0.135142);
  end Phenylacetate;
  package Phenylacetylglutamine "metabolite: phenylacetylglutamine"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "phenylacetylglutamine", pubchemCid = "92258", formula = "C13H16N2O4", M = 0.264281);
  end Phenylacetylglutamine;
  annotation (Documentation(info = "<html><body><p>Sodium phenylbutyrate is a medicine used for certain metabolic and nervous system conditions and has also been studied as an anticancer agent. It is an approved drug and is also being investigated for other uses.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q27088364&quot;>Wikidata Q27088364</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>sodium phenylbutyrate</td></tr><tr><td>ATC codes:</td><td>A16AX03</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB06819&quot;>DB06819</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/4775&quot;>4775</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:41500&quot;>41500</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q27088364&quot;>Q27088364</a></td></tr><tr><td>formula:</td><td>C10H12O2</td></tr><tr><td>molar mass:</td><td>164.204 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>Phenylacetate</code></td><td>phenylacetate</td><td>135.142 g/mol (pubchem)</td></tr><tr><td><code>Phenylacetylglutamine</code></td><td>phenylacetylglutamine</td><td>264.281 g/mol (pubchem)</td></tr></table></body></html>"));
end SodiumPhenylbutyrate;
