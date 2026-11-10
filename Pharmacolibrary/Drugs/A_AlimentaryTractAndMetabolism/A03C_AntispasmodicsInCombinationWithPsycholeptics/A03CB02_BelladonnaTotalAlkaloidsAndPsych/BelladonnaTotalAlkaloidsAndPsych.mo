within Pharmacolibrary.Drugs.A_AlimentaryTractAndMetabolism.A03C_AntispasmodicsInCombinationWithPsycholeptics.A03CB02_BelladonnaTotalAlkaloidsAndPsych;

model BelladonnaTotalAlkaloidsAndPsych
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C_enteral(
    weight = 70,
    F = 0.5,
    Cl = 4.8611111111111115e-05,
    adminDuration = 600,
    adminMass = 10 / 1000000,
    adminCount = 1,
    Vd = 0.0018,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01,
    ka = 0.0005,
    Tlag = 600);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>BelladonnaTotalAlkaloidsAndPsycholeptics</td></tr><tr><td>ATC code:</td><td>A03CB02</td></tr><td>route:</td><td>oral</td></tr><tr><td>n-compartments</td><td>1</td></tr></table><p>Belladonna total alkaloids are a mixture of tropane alkaloids extracted from Atropa belladonna and related plants, primarily including atropine, scopolamine (hyoscine), and hyoscyamine. They act as antimuscarinic agents and historically have been used for their antispasmodic, antiemetic, and sedative (psycholeptic) effects, particularly in gastrointestinal disorders; combinations with psycholeptics (sedatives/tranquilizers) were primarily used in the past. Currently, such fixed combinations are rarely used and are not generally approved in modern clinical practice.</p><h4>Pharmacokinetics</h4><p>Pharmacokinetic parameters estimated based on component alkaloids (primarily atropine and scopolamine) for typical oral administration and standard adult subjects; no direct clinical pharmacokinetic studies exist for the combined total alkaloids and psycholeptic fixed-combination product.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.A.A03CB02 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end BelladonnaTotalAlkaloidsAndPsych;
