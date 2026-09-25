within Pharmacolibrary.Pharmacokinetic.Models;

model PK_3M_3C "Pro-drug with up to two metabolites: parent (hepatic + central + peripheral) and two 2-compartment metabolites formed in the hepatic compartment"
  extends Icons.Compound;
  // ---- parent -------------------------------------------------------------
  Pharmacokinetic.NoPerfusedTissueCompartment hepatic(V = Vd1) annotation(
    Placement(transformation(origin = {-20, 10}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment central(V = Vd2) annotation(
    Placement(transformation(origin = {36, 10}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment peripheral(V = Vd3) annotation(
    Placement(transformation(origin = {76, 10}, extent = {{-10, -10}, {10, 10}})));
  // ---- metabolite 1 --------------------------------------------------------
  Pharmacokinetic.NoPerfusedTissueCompartment central_M1(V = Vd1m1) annotation(
    Placement(transformation(origin = {30, -38}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment peripheral_M1(V = Vd2m1) annotation(
    Placement(transformation(origin = {76, -38}, extent = {{-10, -10}, {10, 10}})));
  // ---- metabolite 2 --------------------------------------------------------
  Pharmacokinetic.NoPerfusedTissueCompartment central_M2(V = Vd1m2) annotation(
    Placement(transformation(origin = {38, 64}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.NoPerfusedTissueCompartment peripheral_M2(V = Vd2m2) annotation(
    Placement(transformation(origin = {78, 64}, extent = {{-10, -10}, {10, 10}})));
  // ---- dosing: enters the hepatic compartment (oral pro-drug, first pass) ---
  // The schedule bindings live in the CONSTRAINING clause so a redeclare keeps them (see PK_1C).
  replaceable Sources.PeriodicDose_Enteral periodicDose(ka = ka, Tlag = Tlag) constrainedby Pharmacolibrary.Interfaces.PartialPeriodicDoseSource(adminPeriod = adminPeriod, adminMass = adminMass, doseCount = adminCount, adminDuration = adminDuration, F = F, firstAdminTime = adminTime) annotation(
    Placement(transformation(origin = {-68, 58}, extent = {{-10, -10}, {10, 10}})));
  // ---- elimination and transfers (TransferFirstOrderNonSym: CLa moves a->b, CLb moves b->a) --
  Pharmacokinetic.ClearanceDrivenElimination CL_1(CL = CL1) annotation(
    Placement(transformation(origin = {-48, 10}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.ClearanceDrivenElimination CL_m1(CL = CLm1) annotation(
    Placement(transformation(origin = {20, -12}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Pharmacokinetic.ClearanceDrivenElimination CL_m2(CL = CLm2) annotation(
    Placement(transformation(origin = {28, 88}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Pharmacokinetic.TransferFirstOrderNonSym Qc(CLa = q21, CLb = q12) annotation(
    Placement(transformation(origin = {4, 20}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.TransferFirstOrderNonSym Qp(CLa = q32, CLb = q23) annotation(
    Placement(transformation(origin = {56, 20}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.TransferFirstOrderNonSym Qhm1(CLa = qm11_1, CLb = q1_m11) annotation(
    Placement(transformation(origin = {4, -26}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.TransferFirstOrderNonSym Qm1(CLa = qm12_m11, CLb = qm11_m12) annotation(
    Placement(transformation(origin = {54, -28}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.TransferFirstOrderNonSym Qhm2(CLa = qm21_1, CLb = q1_m21) annotation(
    Placement(transformation(origin = {6, 74}, extent = {{-10, -10}, {10, 10}})));
  Pharmacokinetic.TransferFirstOrderNonSym Qm2(CLa = qm22_m21, CLb = qm21_m22) annotation(
    Placement(transformation(origin = {62, 74}, extent = {{-10, -10}, {10, 10}})));
  // ---- outputs ---------------------------------------------------------------
  Interfaces.ConcentrationPort_b centralM1CPort "metabolite 1 central compartment (e.g. to drive a PD model)" annotation(
    Placement(transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, 0}, extent = {{-24, -24}, {24, 24}})));
  Types.ConcentrationOutput C_central "parent concentration, central compartment" annotation(
    Placement(transformation(origin = {100, 10}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {106, 60}, extent = {{-18, -18}, {18, 18}})));
  Types.ConcentrationOutput C_M1 "metabolite 1 concentration, central compartment" annotation(
    Placement(transformation(origin = {100, -38}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {106, 0}, extent = {{-18, -18}, {18, 18}})));
  Types.ConcentrationOutput C_M2 "metabolite 2 concentration, central compartment" annotation(
    Placement(transformation(origin = {100, 64}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {106, -60}, extent = {{-18, -18}, {18, 18}})));
  // ---- dosing parameters (as in PK_1C / PK_1C_enteral) ------------------------
  parameter Pharmacolibrary.Types.Mass adminMass(displayUnit = "mg") = 1e-4 "administration mass";
  parameter Integer adminCount = 1 "number of doses (-1 = unlimited)";
  parameter Modelica.Units.SI.Time adminPeriod(displayUnit = "h") = 8*3600 "period of administration";
  parameter Modelica.Units.SI.Time adminDuration = 1 "administration duration (oral dose: a 1 s bolus into the gut, as in PeriodicDose_Enteral)";
  parameter Modelica.Units.SI.Time adminTime = 0 "first administration time";
  parameter Modelica.Units.SI.MassFraction F = 1 "bioavailability (0-1)";
  parameter Pharmacolibrary.Types.TransferRate ka(displayUnit = "1/h") = 0.016666666666666666 "first order absorption rate";
  parameter Modelica.Units.SI.Time Tlag(displayUnit = "min") = 600 "delay between oral administration and absorption";
  // ---- volumes (0 = compartment not used; concentration is then M/1e-6 m3 = 0) ----
  parameter Types.Volume Vd1(displayUnit = "l") = 0 "parent: hepatic (absorption) compartment volume";
  parameter Types.Volume Vd2(displayUnit = "l") = 0 "parent: central volume";
  parameter Types.Volume Vd3(displayUnit = "l") = 0 "parent: peripheral volume";
  parameter Types.Volume Vd1m1(displayUnit = "l") = 0 "metabolite 1: central volume";
  parameter Types.Volume Vd2m1(displayUnit = "l") = 0 "metabolite 1: peripheral volume (0 with qm11_m12 = qm12_m11 = 0 for a 1-compartment metabolite)";
  parameter Types.Volume Vd1m2(displayUnit = "l") = 0 "metabolite 2: central volume";
  parameter Types.Volume Vd2m2(displayUnit = "l") = 0 "metabolite 2: peripheral volume (0 with qm21_m22 = qm22_m21 = 0 for a 1-compartment metabolite)";
  // ---- clearances: qXY = flow from compartment X to Y (1,2,3 parent; m11,m12 / m21,m22 metabolites) --
  parameter Types.Clearance q12 = 0 "parent: hepatic -> central";
  parameter Types.Clearance q21 = 0 "parent: central -> hepatic";
  parameter Types.Clearance q23 = 0 "parent: central -> peripheral";
  parameter Types.Clearance q32 = 0 "parent: peripheral -> central";
  parameter Types.Clearance q1_m11 = 0 "formation of metabolite 1: hepatic -> M1 central (0 = no metabolite 1)";
  parameter Types.Clearance qm11_1 = 0 "back-conversion: M1 central -> hepatic (usually 0)";
  parameter Types.Clearance qm11_m12 = 0 "metabolite 1: central -> peripheral (0 = 1-compartment metabolite)";
  parameter Types.Clearance qm12_m11 = 0 "metabolite 1: peripheral -> central";
  parameter Types.Clearance q1_m21 = 0 "formation of metabolite 2: hepatic -> M2 central (0 = no metabolite 2)";
  parameter Types.Clearance qm21_1 = 0 "back-conversion: M2 central -> hepatic (usually 0)";
  parameter Types.Clearance qm21_m22 = 0 "metabolite 2: central -> peripheral (0 = 1-compartment metabolite)";
  parameter Types.Clearance qm22_m21 = 0 "metabolite 2: peripheral -> central";
  parameter Types.Clearance CL1 = 0 "parent: elimination from hepatic compartment by routes other than M1/M2 formation";
  parameter Types.Clearance CLm1 = 0 "metabolite 1: elimination from central";
  parameter Types.Clearance CLm2 = 0 "metabolite 2: elimination from central";
equation
  C_central = central.cport.c;
  C_M1 = central_M1.cport.c;
  C_M2 = central_M2.cport.c;
  connect(periodicDose.cport, hepatic.cport) annotation(
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
  connect(central_M1.cport, centralM1CPort) annotation(
    Line(points = {{30, -28}, {14, -28}, {14, -40}, {-100, -40}, {-100, 0}}, color = {152, 112, 187}));
  annotation(
    Icon(graphics = {Text(origin = {0, -80}, extent = {{-180, 20}, {180, -20}}, textString = "%name", textStyle = {TextStyle.Bold})}),
    experiment(StartTime = 0, StopTime = 86400, Tolerance = 1e-06, Interval = 60),
    Diagram(graphics = {Text(origin = {-44, 2}, extent = {{-12, 4}, {12, -4}}, textString = "pro-drug"), Text(origin = {-11, -45}, extent = {{-27, 9}, {27, -9}}, textString = "metabolite 1"), Text(origin = {1, 59}, extent = {{-25, 7}, {25, -7}}, textString = "metabolite 2")}),
    Documentation(info = "<html><body>
<h4>PK_3M_3C</h4>
<p>Generic template for a <b>pro-drug with up to two metabolites</b> (e.g. clopidogrel: active thiol metabolite H4 and inactive carboxylic acid; Jung 2024). A concrete drug model <code>extends</code> it and sets parameters; covariate and genotype effects are ordinary parameter expressions in the extending model (e.g. <code>q1_m11 = fm1*fm2*CLC</code>).</p>
<p><b>Structure.</b> The dose is absorbed (<code>ka</code>, <code>Tlag</code>, <code>F</code>) into the <b>hepatic</b> compartment (first pass). The parent distributes hepatic &harr; central &harr; peripheral. Both metabolites are formed in the hepatic compartment, each into its own central compartment with an optional peripheral compartment.</p>
<p><b>Naming.</b> <code>qXY</code> is the clearance moving drug from compartment X to Y: 1, 2, 3 = parent hepatic, central, peripheral; m11, m12 = metabolite 1 central, peripheral; m21, m22 = metabolite 2 central, peripheral. <code>q1_m11</code> and <code>q1_m21</code> are formation clearances. <code>CL1</code> removes the parent by all other routes.</p>
<p><b>Reducing the structure</b> (every parameter defaults to 0, and an unused compartment simply stays empty):</p>
<ul>
<li>only one metabolite: leave <code>q1_m21 = 0</code> (and the M2 volumes at 0);</li>
<li>a 1-compartment metabolite: leave its peripheral clearances at 0 (<code>qm11_m12 = qm12_m11 = 0</code> or <code>qm21_m22 = qm22_m21 = 0</code>);</li>
<li>a parent without a peripheral compartment: <code>q23 = q32 = 0</code>.</li>
</ul>
<p><b>Assumptions and limits.</b> Formation is mass-conserving in <i>mass</i> units: 1 kg of parent forms 1 kg of metabolite. If the source reports molar amounts or the molar masses differ substantially, convert the metabolite parameters (or the observed concentrations) accordingly. Metabolite formation happens only in the hepatic compartment; a model forming metabolites from the central compartment, or giving the parent IV into the central compartment, does not fit this template unchanged.</p>
<p><b>Outputs:</b> <code>C_central</code> (parent), <code>C_M1</code>, <code>C_M2</code>, and the connector <code>centralM1CPort</code> (metabolite 1 central compartment) for driving a PD model.</p>
</body></html>"));
end PK_3M_3C;
