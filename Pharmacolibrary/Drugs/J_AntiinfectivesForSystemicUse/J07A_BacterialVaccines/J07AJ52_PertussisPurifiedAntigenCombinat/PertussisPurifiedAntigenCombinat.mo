within Pharmacolibrary.Drugs.J_AntiinfectivesForSystemicUse.J07A_BacterialVaccines.J07AJ52_PertussisPurifiedAntigenCombinat;

model PertussisPurifiedAntigenCombinat
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C(
    weight = 70,
    F = 1,
    Cl = 0,
    adminDuration = 600,
    adminMass = 0.5 / 1000000,
    adminCount = 1,
    Vd = 0.001,
    Cmin = 0.001,
    Cmax = 0.01,
    Ctox_peak = 0.02,
    Ctox_trough = 0.01);

  annotation (Documentation(
info       = "<html><body><table><tr><td>name:</td><td>PertussisPurifiedAntigenCombinationsWithToxoids</td></tr><tr><td>ATC code:</td><td>J07AJ52</td></tr><td>route:</td><td>intramuscular</td></tr><tr><td>n-compartments</td><td>1</td></tr></table><p>This vaccine is a combination product containing acellular, purified pertussis antigens (such as pertussis toxoid, filamentous hemagglutinin, and pertactin) together with diphtheria and tetanus toxoids. It is used for immunization against pertussis (whooping cough), diphtheria, and tetanus in children and adults. The drug is approved and widely used as part of routine childhood and booster immunization schedules worldwide.</p><h4>Pharmacokinetics</h4><p>Pharmacokinetics in healthy children and adults; general population receiving typical intramuscular vaccination.</p><h4>References</h4><ol></ol></body></html>",
    revisions  = "<html><body><ul><li>10/2026 Pharmacolibrary 26.09: model of Drugs.ATC.J.J07AJ52 folded in (Drugs.ATC removed)</li><li>06/2025 initial generated model</li></ul></body></html>",
    experiment (StartTime = 0, StopTime = 86400, Tolerance = 1e-9, Interval = 1)
  ));
end PertussisPurifiedAntigenCombinat;
