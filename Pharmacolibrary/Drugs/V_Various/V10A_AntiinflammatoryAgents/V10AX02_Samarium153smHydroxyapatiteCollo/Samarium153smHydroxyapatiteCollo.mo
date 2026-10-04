within Pharmacolibrary.Drugs.V_Various.V10A_AntiinflammatoryAgents.V10AX02_Samarium153smHydroxyapatiteCollo;

model Samarium153smHydroxyapatiteCollo
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C(
    weight = 70,
    F = 1,
    Cl = 2.7777777777777777e-10,
    adminDuration = 600,
    adminMass = 185 / 1000000,
    adminCount = 1,
    Vd = 1e-05,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>Samarium153smHydroxyapatiteColloid</td></tr><tr><td>ATC code:</td><td>V10AX02</td></tr><td>route:</td><td>intraarticular</td></tr><tr><td>n-compartments</td><td>1</td></tr></table><p>Samarium (153Sm) hydroxyapatite colloid is a radiopharmaceutical agent used primarily in the treatment of pain due to bone metastases and in radiosynovectomy for joint disorders. The hydroxyapatite colloid acts as a carrier for the radioactive 153Sm, which localizes in bone or intra-articular space to deliver targeted radiation. The use of 153Sm hydroxyapatite is mostly restricted to specific clinical settings and is not widely approved for all indications or available in all countries.</p><h4>Pharmacokinetics</h4><p>No published pharmacokinetic parameters found for samarium (153Sm) hydroxyapatite colloid in humans. Estimates are based on general knowledge of radiocolloid pharmacokinetics for intra-articular or intraosseous administration.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.V.V10AX02 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end Samarium153smHydroxyapatiteCollo;
