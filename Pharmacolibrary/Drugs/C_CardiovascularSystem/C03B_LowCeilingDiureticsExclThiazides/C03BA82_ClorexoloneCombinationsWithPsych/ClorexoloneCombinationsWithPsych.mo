within Pharmacolibrary.Drugs.C_CardiovascularSystem.C03B_LowCeilingDiureticsExclThiazides.C03BA82_ClorexoloneCombinationsWithPsych;

model ClorexoloneCombinationsWithPsych
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C_enteral(
    weight = 70,
    F = 0.5,
    Cl = 8.333333333333333e-07,
    adminDuration = 600,
    adminMass = 200 / 1000000,
    adminCount = 1,
    Vd = 0.04,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01,
    ka = 0.0008333333333333334,
    Tlag = 600);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>ClorexoloneCombinationsWithPsycholeptics</td></tr><tr><td>ATC code:</td><td>C03BA82</td></tr><td>route:</td><td>oral</td></tr><tr><td>n-compartments</td><td>1</td></tr></table><p>Clorexolone is a muscle relaxant, chemically related to carbamate compounds, and is sometimes found in combination with psycholeptic agents such as benzodiazepines for the symptomatic treatment of musculoskeletal pain and anxiety. It is not widely used today, with limited modern clinical use and regulatory approval.</p><h4>Pharmacokinetics</h4><p>No original clinical or population pharmacokinetic data for clorexolone, combinations with psycholeptics (ATC C03BA82), are available in the existing literature. The following parameters are estimated based on typical values for oral muscle relaxant drugs and related carbamates in adult healthy individuals.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.C.C03BA82 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end ClorexoloneCombinationsWithPsych;
