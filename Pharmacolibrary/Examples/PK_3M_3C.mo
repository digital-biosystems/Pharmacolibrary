within Pharmacolibrary.Examples;

model PK_3M_3C
  extends Icons.Compound;
  Pharmacokinetic.NoPerfusedTissueCompartment hepatic(V = Vd1) annotation(
    Placement(transformation(origin = {-20, 10}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment central(V = Vd2) annotation(
    Placement(transformation(origin = {36, 10}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment peripheral(V = Vd3) annotation(
    Placement(transformation(origin = {76, 10}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment central_M1(V = Vd1m1) annotation(
    Placement(transformation(origin = {30, -38}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment central_M2(V = Vd1m2) annotation(
    Placement(transformation(origin = {38, 64}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment peripheral_M2(V = Vd2m2) annotation(
    Placement(transformation(origin = {78, 64}, extent = {{-10, -10}, {10, 10}})));
  Sources.PeriodicDose_Enteral periodicDose_Enteral(ka(displayUnit = "1/h") = 0.0054555555555555555, Tlag(displayUnit = "h") = 705.6, firstAdminTime = 0, doseCount = 1, adminMass = 3e-4, F = 1) annotation(
    Placement(transformation(origin = {-68, 58}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.ClearanceDrivenElimination CL_m1(CL= CLm1) annotation(
    Placement(transformation(origin = {20, -12}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Pharmacokinetic.ClearanceDrivenElimination CL_m2(CL= CLm2) annotation(
    Placement(transformation(origin = {28, 88}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Pharmacokinetic.TransferFirstOrderNonSym Qc(CLa= q21, CLb= q12) annotation(
    Placement(transformation(origin = {4, 20}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.TransferFirstOrderNonSym Qp(CLa= q32, CLb= q23) annotation(
    Placement(transformation(origin = {56, 20}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.TransferFirstOrderNonSym Qm2(CLa= qm22_m21, CLb= qm21_m22) annotation(
    Placement(transformation(origin = {62, 74}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.TransferFirstOrderNonSym Qhm1(CLa = qm11_1, CLb = q1_m11) annotation(
    Placement(transformation(origin = {4, -26}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.TransferFirstOrderNonSym Qhm2(CLa = qm21_1, CLb = q1_m21) annotation(
    Placement(transformation(origin = {6, 74}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.ClearanceDrivenElimination CL_1(CL = CL1) annotation(
    Placement(transformation(origin = {-48, 10}, extent = {{-10, -10}, {10, 10}})));
  Interfaces.ConcentrationPort_a cport_a annotation(
    Placement(transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 0}, extent = {{-24, -24}, {24, 24}})));  
  Pharmacolibrary.Pharmacokinetic.NoPerfusedTissueCompartment peripheral_M1(V = Vd2m1) annotation(
    Placement(transformation(origin = {76, -38}, extent = {{-10, -10}, {10, 10}})));
  Pharmacolibrary.Pharmacokinetic.TransferFirstOrderNonSym Qm1(CLa = qm12_m11, CLb = qm11_m12) annotation(
  
    Placement(transformation(origin = {54, -28}, extent = {{-10, -10}, {10, 10}})));
  parameter Types.Volume Vd1;
  parameter Types.Volume Vd2;
  parameter Types.Volume Vd3;
  parameter Types.Volume Vd1m1;
  parameter Types.Volume Vd2m1;
  parameter Types.Volume Vd1m2;
  parameter Types.Volume Vd2m2;
  parameter Types.VolumeFlowRate q12;
  parameter Types.VolumeFlowRate q21;
  parameter Types.VolumeFlowRate q23;
  parameter Types.VolumeFlowRate q32;
  parameter Types.VolumeFlowRate q1_m11;
  parameter Types.VolumeFlowRate qm11_1;
  parameter Types.VolumeFlowRate qm11_m12;
  parameter Types.VolumeFlowRate qm12_m11;
  parameter Types.VolumeFlowRate q1_m21;
  parameter Types.VolumeFlowRate qm21_1;
  parameter Types.VolumeFlowRate qm21_m22;
  parameter Types.VolumeFlowRate qm22_m21;
  parameter Types.Clearance CL1;
  parameter Types.Clearance CLm1;
  parameter Types.Clearance CLm2;
equation
  connect(periodicDose_Enteral.cport, hepatic.cport) annotation(
    Line(points = {{-68, 48}, {-68, 42}, {-20, 42}, {-20, 20}}, color = {152, 112, 187}));
  connect(hepatic.cport, Qc.cport_b) annotation(
    Line(points = {{-20, 20}, {-6, 20}}, color = {152, 112, 187}));
  connect(Qc.cport_b, Qhm1.cport_b) annotation(
    Line(points = {{-6, 20}, {-6, -26}}, color = {152, 112, 187}));
  connect(Qc.cport_b, Qhm2.cport_b) annotation(
    Line(points = {{-6, 20}, {-5, 20}, {-5, 74}, {-4, 74}}, color = {152, 112, 187}));
  connect(Qhm1.cport_a, central_M1.cport) annotation(
    Line(points = {{14, -26}, {14, -27}, {30, -27}, {30, -28}}, color = {152, 112, 187}));
  connect(Qhm2.cport_a, central_M2.cport) annotation(
    Line(points = {{16, 74}, {16, 73}, {38, 73}, {38, 74}}, color = {152, 112, 187}));
  connect(CL_m1.cport, central_M1.cport) annotation(
    Line(points = {{30, -12}, {30, -28}}, color = {152, 112, 187}));
  connect(CL_m2.cport, central_M2.cport) annotation(
    Line(points = {{38, 88}, {38, 74}}, color = {152, 112, 187}));
  connect(central_M2.cport, Qm2.cport_b) annotation(
    Line(points = {{38, 74}, {52, 74}}, color = {152, 112, 187}));
  connect(Qm2.cport_a, peripheral_M2.cport) annotation(
    Line(points = {{72, 74}, {78, 74}}, color = {152, 112, 187}));
  connect(central.cport, Qp.cport_b) annotation(
    Line(points = {{36, 20}, {46, 20}}, color = {152, 112, 187}));
  connect(Qp.cport_a, peripheral.cport) annotation(
    Line(points = {{66, 20}, {76, 20}}, color = {152, 112, 187}));
  connect(Qc.cport_a, central.cport) annotation(
    Line(points = {{14, 20}, {36, 20}}, color = {152, 112, 187}));
  connect(CL_1.cport, hepatic.cport) annotation(
    Line(points = {{-48, 20}, {-20, 20}}, color = {152, 112, 187}));
  connect(central_M1.cport, Qm1.cport_b) annotation(
    Line(points = {{30, -28}, {44, -28}}, color = {152, 112, 187}));
  connect(Qm1.cport_a, peripheral_M1.cport) annotation(
    Line(points = {{64, -28}, {76, -28}}, color = {152, 112, 187}));
  connect(Qhm1.cport_a, cport_a) annotation(
    Line(points = {{14, -26}, {14, -40}, {-100, -40}, {-100, 0}}, color = {152, 112, 187}));
  annotation(
    Icon(graphics = {Text(origin = {0, -80}, extent = {{-180, 20}, {180, -20}}, textString = "%name", textStyle = {TextStyle.Bold})}),
    experiment(StartTime = 0, StopTime = 86400, Tolerance = 1e-06, Interval = 173.146),
    Diagram(graphics = {Text(origin = {-44, 2}, extent = {{-12, 4}, {12, -4}}, textString = "pro-drug"), Text(origin = {-11, -45}, extent = {{-27, 9}, {27, -9}}, textString = "active-metabolite"), Text(origin = {1, 59}, extent = {{-25, 7}, {25, -7}}, textString = "non-active-metabolite")}));
end PK_3M_3C;