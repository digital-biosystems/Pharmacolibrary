within Pharmacolibrary.Drugs.N_NervousSystem.N02B_OtherAnalgesicsAndAntipyretics.N02BA59_DipyrocetylCombinationsExclPsych;

model DipyrocetylCombinationsExclPsych
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C_enteral(
    weight = 70,
    F = 0.7,
    Cl = 4.166666666666667e-06,
    adminDuration = 600,
    adminMass = 500 / 1000000,
    adminCount = 1,
    Vd = 0.06,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01,
    ka = 0.01,
    Tlag = 600);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>DipyrocetylCombinationsExclPsycholeptics</td></tr><tr><td>ATC code:</td><td>N02BA59</td></tr><td>route:</td><td>oral</td></tr><tr><td>n-compartments</td><td>1</td></tr></table><p>Dipyrocetyl is a non-opioid analgesic belonging to the class of anilides, used for the relief of mild to moderate pain and reduction of fever. In ATC group N02BA59, it is used in combination with other substances (excluding psycholeptics) for pain management. It is not widely approved or commonly used in modern clinical practice and is largely historical or limited to certain countries.</p><h4>Pharmacokinetics</h4><p>Estimated pharmacokinetic parameters in healthy adult individuals due to lack of published data specific to dipyrocetyl; parameters are based on analogous anilide analgesics.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.N.N02BA59 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end DipyrocetylCombinationsExclPsych;
