within Pharmacolibrary.Drugs.Substances;
package Macitentan "macitentan"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "macitentan",
    atcCodes = {"C02KX04"},
    drugbankId = "DB08932",
    pubchemCid = "16004692",
    chebiId = "76607",
    wikidataId = "Q6724151",
    formula = "C19H20Br2N6O4S",
    M = 0.588275,
    logP = 3.7);
  package Aprocitentan "metabolite: aprocitentan"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "aprocitentan", pubchemCid = "25099191", formula = "C16H14Br2N6O4S", M = 0.546194);
  end Aprocitentan;
  annotation (Documentation(info = "<html><body><p>Macitentan is an endothelin receptor antagonist used to treat pulmonary arterial hypertension. It is authorised in the European Union for pulmonary hypertension.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q6724151&quot;>Wikidata Q6724151</a> and the WHO ATC classification and the EMA medicines list; not checked by a person.</small></p><table><tr><td>name:</td><td>macitentan</td></tr><tr><td>ATC codes:</td><td>C02KX04</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB08932&quot;>DB08932</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/16004692&quot;>16004692</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:76607&quot;>76607</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q6724151&quot;>Q6724151</a></td></tr><tr><td>formula:</td><td>C19H20Br2N6O4S</td></tr><tr><td>molar mass:</td><td>588.275 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>Aprocitentan</code></td><td>aprocitentan</td><td>546.194 g/mol (pubchem)</td></tr></table></body></html>"));
end Macitentan;
