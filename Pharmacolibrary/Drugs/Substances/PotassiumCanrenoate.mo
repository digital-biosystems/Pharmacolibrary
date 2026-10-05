within Pharmacolibrary.Drugs.Substances;
package PotassiumCanrenoate "potassium canrenoate"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "potassium canrenoate",
    atcCodes = {"C03DA02"},
    drugbankId = "DB09015",
    pubchemCid = "656615",
    chebiId = "50156",
    wikidataId = "Q39045292",
    formula = "C22H30O4",
    M = 0.358478,
    logP = 0);
  package Canrenone "metabolite: canrenone"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "canrenone", pubchemCid = "13789", formula = "C22H28O3", M = 0.340463);
  end Canrenone;
  annotation (Documentation(info = "<html><body><p>Potassium canrenoate is a potassium-sparing aldosterone antagonist diuretic used for conditions involving fluid retention, such as heart failure and other oedematous states. It is no longer in general use, as drug databases list it as withdrawn, though it was once an approved medicine.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q39045292&quot;>Wikidata Q39045292</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>potassium canrenoate</td></tr><tr><td>ATC codes:</td><td>C03DA02</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB09015&quot;>DB09015</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/656615&quot;>656615</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:50156&quot;>50156</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q39045292&quot;>Q39045292</a></td></tr><tr><td>formula:</td><td>C22H30O4</td></tr><tr><td>molar mass:</td><td>358.478 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>Canrenone</code></td><td>canrenone</td><td>340.463 g/mol (pubchem)</td></tr></table></body></html>"));
end PotassiumCanrenoate;
