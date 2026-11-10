within Pharmacolibrary.Drugs.M_MusculoSkeletalSystem.M05B_DrugsAffectingBoneStructureAndMineralization.M05BB04_RisedronicAcidCalciumAndColecalc;

model RisedronicAcidCalciumAndColecalc
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C_enteral(
    weight = 70,
    F = 0.006,
    Cl = 1.3166666666666666e-06,
    adminDuration = 600,
    adminMass = 35 / 1000000,
    adminCount = 1,
    Vd = 0.013,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01,
    ka = 0.006666666666666667,
    Tlag = 600);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>RisedronicAcidCalciumAndColecalciferolSequential</td></tr><tr><td>ATC code:</td><td>M05BB04</td></tr><td>route:</td><td>oral</td></tr><tr><td>n-compartments</td><td>1</td></tr></table><p>This fixed-dose combination medication contains risedronic acid (a bisphosphonate used for osteoporosis), calcium (essential mineral for bone health), and colecalciferol (vitamin D3, important for calcium homeostasis). Indicated for the treatment and prevention of osteoporosis in adults, mainly postmenopausal women at increased risk of fracture. The combination is approved and available in some countries as a sequential regimen.</p><h4>Pharmacokinetics</h4><p>Population pharmacokinetic parameters estimated for sequential administration in healthy postmenopausal females based on component data; no dedicated published PK studies found for the three-drug combination, so the reported parameters are estimated from known PK of risedronic acid given orally as a single agent.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.M.M05BB04 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end RisedronicAcidCalciumAndColecalc;
