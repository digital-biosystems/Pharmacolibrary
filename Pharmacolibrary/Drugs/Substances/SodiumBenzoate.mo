within Pharmacolibrary.Drugs.Substances;
package SodiumBenzoate "sodium benzoate"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "sodium benzoate",
    atcCodes = {"A16AX11"},
    drugbankId = "DB03793",
    pubchemCid = "243",
    chebiId = "30746",
    wikidataId = "Q191700",
    formula = "C7H6O2",
    M = 0.122123,
    logP = 0);
  package HippuricAcid "metabolite: hippuric acid"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "hippuric acid");
  end HippuricAcid;
  annotation (Documentation(info = "<html><body><p>Sodium benzoate (benzoic acid) is used to treat rare metabolic disorders of the urea cycle and also serves as a diagnostic agent for tests of gastric secretion. It is an approved medicine, though it is not authorised centrally in the European Union, and it is also used as an antifungal agent and excipient.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q191700&quot;>Wikidata Q191700</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>sodium benzoate</td></tr><tr><td>ATC codes:</td><td>A16AX11</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB03793&quot;>DB03793</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/243&quot;>243</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:30746&quot;>30746</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q191700&quot;>Q191700</a></td></tr><tr><td>formula:</td><td>C7H6O2</td></tr><tr><td>molar mass:</td><td>122.123 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>HippuricAcid</code></td><td>hippuric acid</td><td>molar mass unknown</td></tr></table></body></html>"));
end SodiumBenzoate;
