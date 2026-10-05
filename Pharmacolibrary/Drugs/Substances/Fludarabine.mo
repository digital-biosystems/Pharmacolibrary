within Pharmacolibrary.Drugs.Substances;
package Fludarabine "fludarabine"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "fludarabine",
    atcCodes = {"L01BB05"},
    drugbankId = "DB01073",
    pubchemCid = "657237",
    chebiId = "94701",
    wikidataId = "Q185916",
    formula = "C10H12FN5O4",
    M = 0.285235,
    logP = -0.6);
  package FAraATP "metabolite: f-ara-ATP"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "f-ara-ATP", M = 0.52517);
  end FAraATP;
  annotation (Documentation(info = "<html><body><p>Fludarabine is a purine analogue antimetabolite used as an anticancer (antineoplastic) and immunosuppressive drug. It is an approved medicine and is included on the WHO list of essential medicines, so it remains in clinical use worldwide.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q185916&quot;>Wikidata Q185916</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>fludarabine</td></tr><tr><td>ATC codes:</td><td>L01BB05</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB01073&quot;>DB01073</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/657237&quot;>657237</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:94701&quot;>94701</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q185916&quot;>Q185916</a></td></tr><tr><td>formula:</td><td>C10H12FN5O4</td></tr><tr><td>molar mass:</td><td>285.235 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>FAraATP</code></td><td>f-ara-ATP</td><td>525.17 g/mol (pubchem)</td></tr></table></body></html>"));
end Fludarabine;
