within Pharmacolibrary;
package Drugs
  extends Icons.PackageDrugs;
  annotation(
    Documentation(info = "<html><head></head><body><p>Pharmacology models of drugs, organised by the Anatomical Therapeutic Chemical (ATC) classification in three package levels:</p><pre>{ATC level 1}_{name}.
  {ATC level 3}_{name}.
    {ATC level 5}_{drug}.
      {Drug}                 the drug's default model
      {Drug}_{Author}{Year}_…  models extracted from that paper (PK, PD, PGx)</pre><p>e.g. paracetamol is <b>N_NervousSystem.N02B_OtherAnalgesicsAndAntipyretics.N02BE01_Paracetamol.Paracetamol</b>. Each model extends a template of <b>Pharmacokinetic.Models</b> (or <b>Pharmacodynamic</b>) directly.</p><p><i>Note: models named {Drug} or {Drug}_{number} are generated and are replaced by library updates. For a persistent own variant use a suffix containing letters, e.g. {Drug}_1C.</i></p><p>Until version 25.09 the generated models lived in <b>Drugs.ATC.{L1}.{code}</b> and molecular data in <b>Drugs.Common</b>; both were removed in 26.09 (the models were folded into the ATC packages above). A model extending <b>Drugs.ATC.…</b> is converted on load by the library's conversion script.</p><p><b>References</b></p><ol><li>Anatomical Therapeutic Chemical (ATC) Classification, <a href=\"https://www.who.int/tools/atc-ddd-toolkit/atc-classification\">https://www.who.int/tools/atc-ddd-toolkit/atc-classification</a></li><li>Kim, S. et al. PubChem substance and compound databases. Nucleic Acids Research 44.D1 (2016): D1202–D1213.</li></ol></body></html>"));
end Drugs;