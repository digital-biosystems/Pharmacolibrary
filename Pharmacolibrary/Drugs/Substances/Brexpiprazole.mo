within Pharmacolibrary.Drugs.Substances;
package Brexpiprazole "brexpiprazole"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "brexpiprazole",
    atcCodes = {"N05AX16"},
    drugbankId = "DB09128",
    pubchemCid = "11978813",
    chebiId = "134716",
    wikidataId = "Q2924764",
    formula = "C25H27N3O2S",
    M = 0.43357,
    logP = 4.7);
  package DM3411 "metabolite: DM-3411"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "DM-3411", pubchemCid = "44256485", formula = "C25H27N3O3S", M = 0.449569);
  end DM3411;
  package DM3412 "metabolite: DM-3412"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "DM-3412", pubchemCid = "156596854", formula = "C25H29N3O4S", M = 0.467584);
  end DM3412;
  annotation (Documentation(info = "<html><body><p>Brexpiprazole is an antipsychotic used to treat schizophrenia, and has also been studied for conditions such as anxiety, psychosis and schizoaffective disorder. It is an approved medicine, authorised in the European Union for schizophrenia.</p><p><small>Summary written by glm-5.3-flash from <a href=\"https://www.wikidata.org/wiki/Q2924764\">Wikidata Q2924764</a> and the WHO ATC classification and the EMA medicines list; not checked by a person.</small></p><table><tr><td>name:</td><td>brexpiprazole</td></tr><tr><td>ATC codes:</td><td>N05AX16</td></tr><tr><td>DrugBank:</td><td><a href=\"https://go.drugbank.com/drugs/DB09128\">DB09128</a></td></tr><tr><td>PubChem CID:</td><td><a href=\"https://pubchem.ncbi.nlm.nih.gov/compound/11978813\">11978813</a></td></tr><tr><td>ChEBI:</td><td><a href=\"https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:134716\">134716</a></td></tr><tr><td>Wikidata:</td><td><a href=\"https://www.wikidata.org/wiki/Q2924764\">Q2924764</a></td></tr><tr><td>formula:</td><td>C25H27N3O2S</td></tr><tr><td>molar mass:</td><td>433.57 g/mol (PubChem CID 11978813)</td></tr><tr><td>logP:</td><td>4.7 (Drugs.Common 25.09, not verified)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>DM3411</code></td><td>DM-3411</td><td>449.569 g/mol (pubchem)</td></tr><tr><td><code>DM3412</code></td><td>DM-3412</td><td>467.584 g/mol (pubchem)</td></tr></table></body></html>"));
end Brexpiprazole;
