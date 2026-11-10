within Pharmacolibrary.Drugs.N_NervousSystem.N02B_OtherAnalgesicsAndAntipyretics.N02BB73_AminophenazoneCombinationsWithPs;

model AminophenazoneCombinationsWithPs
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C_enteral(
    weight = 70,
    F = 0.85,
    Cl = 1.4999999999999998e-06,
    adminDuration = 600,
    adminMass = 300 / 1000000,
    adminCount = 1,
    Vd = 0.0016,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01,
    ka = 0.014166666666666666,
    Tlag = 600);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>AminophenazoneCombinationsWithPsycholeptics</td></tr><tr><td>ATC code:</td><td>N02BB73</td></tr><td>route:</td><td>oral</td></tr><tr><td>n-compartments</td><td>1</td></tr></table><p>Aminophenazone, also known as amidopyrine, is a pyrazolone derivative formerly used as an analgesic and antipyretic. Combination preparations with psycholeptics were used for headache and certain pain conditions, but due to risk of agranulocytosis, aminophenazone is largely withdrawn or not approved for use in many countries today.</p><h4>Pharmacokinetics</h4><p>No published pharmacokinetic parameters for the combination of aminophenazone with psycholeptics were found. The below parameters are estimated from typical aminophenazone oral use in healthy adults.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.N.N02BB73 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end AminophenazoneCombinationsWithPs;
