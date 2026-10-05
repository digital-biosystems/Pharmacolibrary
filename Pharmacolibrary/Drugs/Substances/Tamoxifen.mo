within Pharmacolibrary.Drugs.Substances;
package Tamoxifen "tamoxifen"
  extends Pharmacolibrary.Interfaces.PartialSubstance(
    name = "tamoxifen",
    atcCodes = {"L02BA01"},
    drugbankId = "DB00675",
    pubchemCid = "2733526",
    chebiId = "41774",
    wikidataId = "Q412178",
    formula = "C26H29NO",
    M = 0.371524,
    logP = 7.1);
  package Hydroxymorphinan3 "metabolite: 3-hydroxymorphinan"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "3-hydroxymorphinan", M = 0.24334);
  end Hydroxymorphinan3;
  package Methoxymorphinan3 "metabolite: 3-methoxymorphinan"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "3-methoxymorphinan", M = 0.25737);
  end Methoxymorphinan3;
  package Dextrorphan "metabolite: dextrorphan"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "dextrorphan", M = 0.25737);
  end Dextrorphan;
  package Endoxifen "metabolite: endoxifen"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "endoxifen", M = 0.3735);
  end Endoxifen;
  package ZEndoxifen "metabolite: Z-endoxifen"
    extends Pharmacolibrary.Interfaces.PartialMetabolite(name = "Z-endoxifen");
  end ZEndoxifen;
  annotation (Documentation(info = "<html><body><p>Tamoxifen is an anti-estrogen medicine used to treat breast cancer, and it has also been used for pancreatic cancer and infant gynecomastia. It is an approved drug that is widely used, mainly in the hormonal treatment of breast cancer.</p><p><small>Summary written by glm-5.3-flash from <a href=&quot;https://www.wikidata.org/wiki/Q412178&quot;>Wikidata Q412178</a> and the WHO ATC classification; not checked by a person.</small></p><table><tr><td>name:</td><td>tamoxifen</td></tr><tr><td>ATC codes:</td><td>L02BA01</td></tr><tr><td>DrugBank:</td><td><a href=&quot;https://go.drugbank.com/drugs/DB00675&quot;>DB00675</a></td></tr><tr><td>PubChem CID:</td><td><a href=&quot;https://pubchem.ncbi.nlm.nih.gov/compound/2733526&quot;>2733526</a></td></tr><tr><td>ChEBI:</td><td><a href=&quot;https://www.ebi.ac.uk/chebi/searchId.do?chebiId=CHEBI:41774&quot;>41774</a></td></tr><tr><td>Wikidata:</td><td><a href=&quot;https://www.wikidata.org/wiki/Q412178&quot;>Q412178</a></td></tr><tr><td>formula:</td><td>C26H29NO</td></tr><tr><td>molar mass:</td><td>371.524 g/mol (PubChem)</td></tr></table><h4>Metabolites</h4><table><tr><td><code>Hydroxymorphinan3</code></td><td>3-hydroxymorphinan</td><td>243.34 g/mol (pubchem)</td></tr><tr><td><code>Methoxymorphinan3</code></td><td>3-methoxymorphinan</td><td>257.37 g/mol (pubchem)</td></tr><tr><td><code>Dextrorphan</code></td><td>dextrorphan</td><td>257.37 g/mol (pubchem)</td></tr><tr><td><code>Endoxifen</code></td><td>endoxifen</td><td>373.5 g/mol (pubchem)</td></tr><tr><td><code>ZEndoxifen</code></td><td>Z-endoxifen</td><td>molar mass unknown</td></tr></table></body></html>"));
end Tamoxifen;
