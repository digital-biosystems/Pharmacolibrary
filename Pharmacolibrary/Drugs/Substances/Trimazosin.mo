within Pharmacolibrary.Drugs.Substances;
package Trimazosin "trimazosin"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "trimazosin",
    atcCodes = {"C02CA03"},
    drugbankId = "DB09206",
    pubchemCid = "37264",
    chebiId = "135710",
    wikidataId = "Q1324057",
    formula = "C20H29N5O6",
    M = 0.435481,
    logP = 1.2);
  package HydroxyTrimazosin1 "metabolite: 1-hydroxy trimazosin"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "1-hydroxy trimazosin", pubchemCid = "139356", formula = "C20H29N5O7", M = 0.45148);
  end HydroxyTrimazosin1;
  annotation (Documentation(info = "<html><body><p>Trimazosin is an alpha-1 adrenergic blocker developed as an antihypertensive vasodilator for treating high blood pressure. It appears to be only experimental and is not an established, widely marketed medicine today.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q1324057&quot;>Wikidata Q1324057</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>trimazosin</td></tr><tr><td>ATC codes:</td><td>C02CA03</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB09206&quot;>DB09206</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/37264&quot;>37264</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:135710&quot;>135710</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q1324057&quot;>Q1324057</a></td></tr><tr><td>formula:</td><td>C20H29N5O6</td></tr><tr><td>molar mass:</td><td>435.481 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>HydroxyTrimazosin1</code></td><td>1-hydroxy trimazosin</td><td>451.48 g/mol (pubchem)</td></tr></table></body></html>"));
end Trimazosin;
