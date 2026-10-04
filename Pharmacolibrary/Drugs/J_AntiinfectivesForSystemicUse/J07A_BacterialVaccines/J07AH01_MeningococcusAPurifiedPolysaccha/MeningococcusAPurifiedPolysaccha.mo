within Pharmacolibrary.Drugs.J_AntiinfectivesForSystemicUse.J07A_BacterialVaccines.J07AH01_MeningococcusAPurifiedPolysaccha;

model MeningococcusAPurifiedPolysaccha
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C(
    weight = 70,
    F = 1,
    Cl = 0,
    adminDuration = 600,
    adminMass = 50 / 1000000,
    adminCount = 1,
    Vd = 0.001,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>MeningococcusAPurifiedPolysaccharidesAntigen</td></tr><tr><td>ATC code:</td><td>J07AH01</td></tr><td>route:</td><td>intramuscular</td></tr><tr><td>n-compartments</td><td>1</td></tr></table><p>Purified polysaccharide of Neisseria meningitidis serogroup A, used as an active component in vaccines designed to induce protective immunity against meningococcal disease caused by this serogroup. These vaccines are primarily used for immunization in at-risk populations where serogroup A outbreaks are epidemiologically significant. The product is currently approved and used in meningococcal vaccine formulations.</p><h4>Pharmacokinetics</h4><p>No published pharmacokinetic models exist for purified polysaccharide meningococcal A antigen in humans. As a vaccine antigen, its action is based on immunological induction rather than classical systemic pharmacokinetics; absorption and distribution result in antigen uptake by antigen-presenting cells at the site of injection, with minimal systemic levels and no classic PK modeling reported.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.J.J07AH01 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end MeningococcusAPurifiedPolysaccha;
