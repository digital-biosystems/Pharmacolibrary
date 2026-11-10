within Pharmacolibrary.Drugs.D_Dermatologicals.D07X_CorticosteroidsOtherCombinations.D07XB30_CorticosteroidsCombinationsEGBet;

model CorticosteroidsCombinationsEGBet
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C(
    weight = 70,
    F = 1,
    Cl = 1.6666666666666665e-06,
    adminDuration = 600,
    adminMass = 10 / 1000000,
    adminCount = 1,
    Vd = 0.001,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>CorticosteroidsCombinationsEGBetamethasoneAndGentamicinTopical</td></tr><tr><td>ATC code:</td><td>D07XB30</td></tr><td>route:</td><td>topical</td></tr><tr><td>n-compartments</td><td>1</td></tr></table><p>A topical preparation combining a potent corticosteroid (betamethasone) with an aminoglycoside antibiotic (gentamicin) for the treatment of inflammatory skin disorders with suspected or confirmed secondary bacterial infection; currently approved and available in several countries.</p><h4>Pharmacokinetics</h4><p>Estimated typical pharmacokinetic parameters for betamethasone and gentamicin in topical combination creams in healthy adult subjects, based on published single-compound dermal absorption data; no direct clinical PK model for combination product available.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.D.D07XB30 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end CorticosteroidsCombinationsEGBet;
