within Pharmacolibrary.Drugs.V_Various.V09I_TumourDetection.V09IA01_Technetium99mtcAnticarcinoembryo;

model Technetium99mtcAnticarcinoembryo
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_2C(
    weight = 70,
    F = 1,
    Cl = 5e-08,
    adminDuration = 600,
    adminMass = 0.5 / 1000000,
    adminCount = 1,
    Vd = 0.004,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01,
    Vdp = 0.0025,
    k12 = 3.0555555555555556e-08,
    k21 = 3.0555555555555556e-08);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>Technetium99mtcAnticarcinoembryonicantigenAntibody</td></tr><tr><td>ATC code:</td><td>V09IA01</td></tr><td>route:</td><td>intravenous</td></tr><tr><td>n-compartments</td><td>2</td></tr></table><p>Technetium (99mTc) antiCarcinoEmbryonicAntigen antibody is a radiolabeled monoclonal antibody used in the diagnosis and imaging of tumors expressing the carcinoembryonic antigen (CEA), such as certain colorectal, medullary thyroid, and other adenocarcinomas. It is administered as a radiopharmaceutical agent for tumor localization using nuclear medicine techniques. Its clinical use is limited and not widespread today, with most imaging procedures replaced by more advanced PET/CT agents.</p><h4>Pharmacokinetics</h4><p>Pharmacokinetic parameter estimates for technetium (99mTc) antiCEA antibody based on typical monoclonal antibody behavior in adults. No published primary PK values are available; these values are estimated from analogous radiolabeled antibody agents and general principles.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.V.V09IA01 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end Technetium99mtcAnticarcinoembryo;
