within Pharmacolibrary.Drugs.N_NervousSystem.N02B_OtherAnalgesicsAndAntipyretics.N02BA75_SalicylamideCombinationsWithPsyc;

model SalicylamideCombinationsWithPsyc
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C_enteral(
    weight = 70,
    F = 0.7,
    Cl = 1.5555555555555556e-06,
    adminDuration = 600,
    adminMass = 300 / 1000000,
    adminCount = 1,
    Vd = 0.00025,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01,
    ka = 0.02,
    Tlag = 600);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>SalicylamideCombinationsWithPsycholeptics</td></tr><tr><td>ATC code:</td><td>N02BA75</td></tr><td>route:</td><td>oral</td></tr><tr><td>n-compartments</td><td>1</td></tr></table><p>Salicylamide is an analgesic and antipyretic drug once used for the treatment of mild to moderate pain and fever. In ATC code N02BA75, it is combined with psycholeptics, though such combinations are largely historical and not commonly approved or in use today in most countries. The use of salicylamide has declined due to availability of safer and more effective alternatives.</p><h4>Pharmacokinetics</h4><p>Estimated pharmacokinetic parameters for typical healthy adult (oral administration); no direct combination PK data found, estimates based on salicylamide literature.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.N.N02BA75 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end SalicylamideCombinationsWithPsyc;
