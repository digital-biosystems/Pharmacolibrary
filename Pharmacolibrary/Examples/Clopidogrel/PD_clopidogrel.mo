within Pharmacolibrary.Examples.Clopidogrel;

model PD_clopidogrel
  PK_6C_clopidogrel pK_6C_clopidogrel(periodicDose_Enteral(adminMass = 12e-5)) annotation(
    Placement(transformation(origin = {84, -12}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.ConcBoundary concBoundary(freeTissueConc = 0) annotation(
    Placement(transformation(origin = {-8, -94}, extent = {{-10, -10}, {10, 10}})));
  Pharmacodynamic.SigmoidEmaxEffect sigmoidEmaxEffect(ke = 3.402777777777778e-4, Emax = 57.84, h = 1.851, c50(displayUnit = "ng/ml") = 6.732e-5, E0 = 212.67) annotation(
    Placement(transformation(origin = {40, -24}, extent = {{-10, -10}, {10, 10}})));
equation

  annotation(
    Diagram,
    experiment(StartTime = 0, StopTime = 86400, Tolerance = 1e-06, Interval = 173.146));
end PD_clopidogrel;
