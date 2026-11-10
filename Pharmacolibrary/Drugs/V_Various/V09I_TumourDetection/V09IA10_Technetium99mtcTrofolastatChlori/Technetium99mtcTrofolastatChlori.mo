within Pharmacolibrary.Drugs.V_Various.V09I_TumourDetection.V09IA10_Technetium99mtcTrofolastatChlori;

model Technetium99mtcTrofolastatChlori
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_2C(
    weight = 70,
    F = 1,
    Cl = 3.333333333333333e-07,
    adminDuration = 600,
    adminMass = 20 / 1000000,
    adminCount = 1,
    Vd = 0.015,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01,
    Vdp = 0.012,
    k12 = 6.944444444444445e-07,
    k21 = 6.944444444444445e-07);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>Technetium99mtcTrofolastatChloride</td></tr><tr><td>ATC code:</td><td>V09IA10</td></tr><td>route:</td><td>intravenous</td></tr><tr><td>n-compartments</td><td>2</td></tr></table><p>Technetium (99mTc)trofolastat chloride is a radiopharmaceutical agent used for single-photon emission computed tomography (SPECT) imaging. It functions as a small-molecule inhibitor that binds to prostate-specific membrane antigen (PSMA), a protein often overexpressed in prostate cancer cells. This compound is primarily used in the imaging of prostate cancer for diagnostic purposes. It is not an approved therapeutic drug, but has been used in clinical trials and diagnostic studies.</p><h4>Pharmacokinetics</h4><p>Estimated pharmacokinetic parameters for healthy adult males, based primarily on known general PK properties of technetium-99m radiopharmaceuticals, as explicit published PK parameters for technetium (99mTc)trofolastat chloride could not be identified.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.V.V09IA10 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end Technetium99mtcTrofolastatChlori;
