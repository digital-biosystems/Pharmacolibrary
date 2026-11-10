within Pharmacolibrary.Drugs.C_CardiovascularSystem.C10B_LipidModifyingAgentsCombinations.C10BX12_AtorvastatinAcetylsalicylicAcidA;

model AtorvastatinAcetylsalicylicAcidA
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C_enteral(
    weight = 70,
    F = 0.145,
    Cl = 1.5833333333333333e-05,
    adminDuration = 600,
    adminMass = 10 / 1000000,
    adminCount = 1,
    Vd = 0.4,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01,
    ka = 0.015000000000000001,
    Tlag = 600);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>AtorvastatinAcetylsalicylicAcidAndPerindopril</td></tr><tr><td>ATC code:</td><td>C10BX12</td></tr><td>route:</td><td>oral</td></tr><tr><td>n-compartments</td><td>1</td></tr></table><p>This fixed-dose combination drug contains atorvastatin (a statin for lowering cholesterol), acetylsalicylic acid (aspirin, an antiplatelet agent), and perindopril (an ACE inhibitor for hypertension and heart failure). It is used for cardiovascular prevention, secondary prevention post-myocardial infarction, and management of patients with mixed dyslipidemia and hypertension. The combination is approved and marketed in some jurisdictions under the ATC code C10BX12.</p><h4>Pharmacokinetics</h4><p>Pharmacokinetic parameters estimated for combination product in average healthy adult individuals, as no primary source with detailed pharmacokinetics for the fixed combination was found. Parameters are synthesized from known component kinetics.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.C.C10BX12 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end AtorvastatinAcetylsalicylicAcidA;
