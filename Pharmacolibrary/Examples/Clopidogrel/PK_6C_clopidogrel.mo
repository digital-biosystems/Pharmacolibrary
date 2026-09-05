within Pharmacolibrary.Examples.Clopidogrel;

model PK_6C_clopidogrel
  extends Pharmacolibrary.Icons.Compound;
  Pharmacokinetic.NoPerfusedTissueCompartment hepatic(V = 1.46392) annotation(
    Placement(transformation(origin = {-8, 10}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment central(V = 1.46392) annotation(
    Placement(transformation(origin = {36, 10}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment peripheral(V = 2.82398) annotation(
    Placement(transformation(origin = {76, 10}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment central_H4(V = 0.05145) annotation(
    Placement(transformation(origin = {-8, -48}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment central_carboxylic_acid(V = 0.01734) annotation(
    Placement(transformation(origin = {30, -52}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment perihperal_carboxylic_acid(V = 0.05189) annotation(
    Placement(transformation(origin = {76, -52}, extent = {{-10, -10}, {10, 10}})));
  Sources.PeriodicDose_Enteral periodicDose_Enteral(ka(displayUnit = "1/h") = 0.0054555555555555555, Tlag(displayUnit = "h") = 705.6, firstAdminTime = 0, doseCount = 1, adminMass = 6e-5, F = 1) annotation(
    Placement(transformation(origin = {-8, 52}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.ClearanceDrivenElimination CLm1(CL(displayUnit = "l/h") = 2.065277777777778e-5) annotation(
    Placement(transformation(origin = {-30, -48}, extent = {{-10, -10}, {10, 10}})));
  Pharmacolibrary.Pharmacokinetic.ClearanceDrivenElimination CLm2(CL(displayUnit = "l/h") = 2.0133333333333333e-6) annotation(
    Placement(transformation(origin = {14, -36}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.TransferFirstOrderNonSym Qc(CLa(displayUnit = "l/h") = 2.3491666666666664e-4, CLb(displayUnit = "l/h") = 2.3491666666666664e-4) annotation(
    Placement(transformation(origin = {14, 20}, extent = {{-10, -10}, {10, 10}})));
  Pharmacolibrary.Pharmacokinetic.TransferFirstOrderNonSym Qp(CLa(displayUnit = "l/h") = 1.6331388888888887e-4, CLb(displayUnit = "l/h") = 1.6331388888888887e-4) annotation(
    Placement(transformation(origin = {56, 20}, extent = {{-10, -10}, {10, 10}})));
  Pharmacolibrary.Pharmacokinetic.TransferFirstOrderNonSym Qm2(CLa(displayUnit = "l/h") = 1.2433333333333332e-6, CLb(displayUnit = "l/h") = 1.2433333333333332e-6) annotation(
    Placement(transformation(origin = {52, -42}, extent = {{-10, -10}, {10, 10}})));
  Pharmacolibrary.Pharmacokinetic.TransferFirstOrderNonSym Qhm1(CLa = 0, CLb = fmH4*CLC) annotation(
    Placement(transformation(origin = {-8, -22}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Pharmacolibrary.Pharmacokinetic.TransferFirstOrderNonSym Qhm2(CLa = 0, CLb = fmcarbo*CLC) annotation(
    Placement(transformation(origin = {30, -22}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Pharmacolibrary.Pharmacokinetic.ClearanceDrivenElimination CLm11(CL = fmother*CLC) annotation(
    Placement(transformation(origin = {-36, 10}, extent = {{-10, -10}, {10, 10}})));
  Interfaces.ConcentrationPort_a cport_a annotation(
    Placement(transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 0}, extent = {{-24, -24}, {24, 24}})));
  parameter Real fm1 = 0.125;
  parameter Real fm2 = 0.960;
  parameter Types.Clearance CLC(displayUnit = "l/h") = 0.0025714666666666664;
  parameter Real fmH4 = fm1*fm2;
  parameter Real fmcarbo = (1 - fm1)*fm2;
  parameter Real fmother = 1 - fm2;
equation
  connect(periodicDose_Enteral.cport, hepatic.cport) annotation(
    Line(points = {{-8, 42}, {-8, 20}}, color = {152, 112, 187}));
  connect(hepatic.cport, Qc.cport_b) annotation(
    Line(points = {{-8, 20}, {4, 20}}, color = {152, 112, 187}));
  connect(Qc.cport_b, Qhm1.cport_b) annotation(
    Line(points = {{4, 20}, {4, -12}, {-8, -12}}, color = {152, 112, 187}));
  connect(Qc.cport_b, Qhm2.cport_b) annotation(
    Line(points = {{4, 20}, {4, -12}, {30, -12}}, color = {152, 112, 187}));
  connect(Qhm1.cport_a, central_H4.cport) annotation(
    Line(points = {{-8, -32}, {-8, -38}}, color = {152, 112, 187}));
  connect(Qhm2.cport_a, central_carboxylic_acid.cport) annotation(
    Line(points = {{30, -32}, {30, -42}}, color = {152, 112, 187}));
  connect(CLm1.cport, central_H4.cport) annotation(
    Line(points = {{-30, -38}, {-8, -38}}, color = {152, 112, 187}));
  connect(CLm2.cport, central_carboxylic_acid.cport) annotation(
    Line(points = {{14, -26}, {21, -26}, {21, -42}, {30, -42}}, color = {152, 112, 187}));
  connect(central_carboxylic_acid.cport, Qm2.cport_b) annotation(
    Line(points = {{30, -42}, {42, -42}}, color = {152, 112, 187}));
  connect(Qm2.cport_a, perihperal_carboxylic_acid.cport) annotation(
    Line(points = {{62, -42}, {76, -42}}, color = {152, 112, 187}));
  connect(central.cport, Qp.cport_b) annotation(
    Line(points = {{36, 20}, {46, 20}}, color = {152, 112, 187}));
  connect(Qp.cport_a, peripheral.cport) annotation(
    Line(points = {{66, 20}, {76, 20}}, color = {152, 112, 187}));
  connect(Qc.cport_a, central.cport) annotation(
    Line(points = {{24, 20}, {36, 20}}, color = {152, 112, 187}));
  connect(central_H4.cport, cport_a) annotation(
    Line(points = {{-8, -38}, {-102, -38}, {-102, 0}, {-100, 0}}, color = {152, 112, 187}));
  connect(CLm11.cport, hepatic.cport) annotation(
    Line(points = {{-36, 20}, {-8, 20}}, color = {152, 112, 187}));
  annotation(
    Icon(graphics = {Text(origin = {0, -80}, extent = {{-180, 20}, {180, -20}}, textString = "%name", textStyle = {TextStyle.Bold})}),
    experiment(StartTime = 0, StopTime = 86400, Tolerance = 1e-06, Interval = 173.146),
    Diagram(graphics = {Rectangle(origin = {18, 14}, lineColor = {26, 95, 180}, pattern = LinePattern.Dash, extent = {{-72, 20}, {72, -20}}), Text(origin = {-35, 27}, textColor = {28, 113, 216}, extent = {{-21, 7}, {1, -1}}, textString = "PK
clopidogrel"), Text(origin = {-33, -15}, textColor = {26, 95, 180}, extent = {{-21, 7}, {1, -1}}, textString = "PK
clopidogrel H4"), Rectangle(origin = {-25, -36}, lineColor = {26, 95, 180}, pattern = LinePattern.Dash, extent = {{-29, 28}, {29, -28}}), Rectangle(origin = {50, -36}, lineColor = {26, 95, 180}, pattern = LinePattern.Dash, extent = {{-44, 28}, {44, -28}}), Text(origin = {91, -17}, textColor = {26, 95, 180}, extent = {{-21, 7}, {1, -1}}, textString = "PK
carboxylic acid")}));
end PK_6C_clopidogrel;
