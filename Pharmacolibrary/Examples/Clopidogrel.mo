within Pharmacolibrary.Examples;

package Clopidogrel
  extends Modelica.Icons.ExamplesPackage;

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

  model PK_PGx_6C_clopidogrel "clopidogrel PK by CYP2C19 metaboliser phenotype (Jung et al. 2024)"
    import PGx = Pharmacolibrary.Pharmacogenomics.PGx;
    parameter PGx.MetabolizerStatus metabolizer = PGx.MetabolizerStatus.Normal
      "CYP2C19 phenotype: Normal = the paper's EM, Intermediate = IM, Poor = PM"
      annotation(Dialog(group = "Pharmacogenomics"));
    extends PK_6C_clopidogrel(
      fm1 = if      metabolizer == PGx.MetabolizerStatus.Poor         then 0.050
            elseif  metabolizer == PGx.MetabolizerStatus.Intermediate then 0.083
            else                                                          0.125,
      fm2 = if      metabolizer == PGx.MetabolizerStatus.Poor         then 0.678
            elseif  metabolizer == PGx.MetabolizerStatus.Intermediate then 0.852
            else                                                          0.960);
    annotation(
      Diagram,
      experiment(StartTime = 0, StopTime = 86400, Tolerance = 1e-06, Interval = 173.146),
      Documentation(info = "<html><body><h4>PK_PGx_6C_clopidogrel</h4>
<p><b>PK_6C_clopidogrel</b> with the CYP2C19 phenotype as a parameter. Only <code>fm1</code> and
<code>fm2</code> change; every disposition parameter is inherited unchanged, because the gene acts
on the metabolic SPLIT in the hepatic compartment and not on the clearance of the parent.</p>
<p>Values are Table 3 of Jung YS et al., <i>CPT Pharmacometrics Syst Pharmacol</i> 2024;13(1):29-40.
The paper estimates the effect as an additive shift on <code>logit(fm)</code> relative to EM
(fm1~IM -0.450, fm1~PM -0.996, fm2~IM -1.428, fm2~PM -2.432); the per-phenotype fractions those
shifts produce are set here directly, which is exact for these three phenotypes and avoids
restating the link function. The derived fractions inherited from the base model then follow:</p>
<pre>
              fm1     fm2     fmH4    fmcarbo  fmothers
  EM/Normal   0.125   0.960   0.120   0.840    0.040
  IM          0.083   0.852   0.071   0.781    0.148
  PM          0.050   0.678   0.034   0.644    0.322
</pre>
<p><b>metabolizer</b> is a parameter, so one compiled model covers all three phenotypes — a
phenotype sweep is <code>-override=metabolizer=2|3|4</code> (Poor|Intermediate|Normal), which is
what the paper's dose-optimisation simulations need. Unknown/Rapid/Ultra fall back to the EM
values: CYP2C19 *17 was not represented in the 36-subject study, so the paper supports no
estimate for them.</p>
<p>The phenotype is set DIRECTLY rather than derived from a diplotype. Deriving it through
<code>Pharmacogenomics.PGx.phStatus</code> would need that function to be activity-score based
first: it currently tests each allele independently, so <code>*1/*2</code> returns Poor where CPIC
assigns Intermediate.</p></body></html>"));
  end PK_PGx_6C_clopidogrel;
end Clopidogrel;