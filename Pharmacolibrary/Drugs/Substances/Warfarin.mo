within Pharmacolibrary.Drugs.Substances;
package Warfarin "warfarin"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "warfarin",
    atcCodes = {"B01AA03"},
    drugbankId = "DB00682",
    pubchemCid = "54678486",
    chebiId = "87732",
    wikidataId = "Q407431",
    formula = "C19H16O4",
    M = 0.308333,
    logP = 2.7);
  package EnzalutamideCarboxylicAcidMetabolite "metabolite: enzalutamide carboxylic acid metabolite"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "enzalutamide carboxylic acid metabolite");
  end EnzalutamideCarboxylicAcidMetabolite;
  package NDesmethylEnzalutamide "metabolite: N-desmethyl enzalutamide"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "N-desmethyl enzalutamide", M = 0.4504);
  end NDesmethylEnzalutamide;
  package SWarfarin "metabolite: S-warfarin"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "S-warfarin", pubchemCid = "54688261", formula = "C19H16O4", M = 0.308333);
  end SWarfarin;
  annotation (Documentation(info = "<html><body><p>Warfarin is an anticoagulant (vitamin K antagonist) used to prevent and treat harmful blood clots. It is an approved medicine and remains widely used as an oral blood thinner.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q407431&quot;>Wikidata Q407431</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>warfarin</td></tr><tr><td>ATC codes:</td><td>B01AA03</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB00682&quot;>DB00682</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/54678486&quot;>54678486</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:87732&quot;>87732</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q407431&quot;>Q407431</a></td></tr><tr><td>formula:</td><td>C19H16O4</td></tr><tr><td>molar mass:</td><td>308.333 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>EnzalutamideCarboxylicAcidMetabolite</code></td><td>enzalutamide carboxylic acid metabolite</td><td>molar mass unknown</td></tr><tr><td><code>NDesmethylEnzalutamide</code></td><td>N-desmethyl enzalutamide</td><td>450.4 g/mol (pubchem)</td></tr><tr><td><code>SWarfarin</code></td><td>S-warfarin</td><td>308.333 g/mol (pubchem)</td></tr></table></body></html>"));
end Warfarin;
