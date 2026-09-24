within Pharmacolibrary.Pharmacokinetic;
model TransferFirstOrderNonSym "first order non-symetric transfer"
  extends Pharmacolibrary.Interfaces.PartialTransfer;
  parameter Pharmacolibrary.Types.VolumeFlowRate CLa (displayUnit="l/min") "intercompartmental clearence";
  parameter Pharmacolibrary.Types.VolumeFlowRate CLb (displayUnit="l/min") "intercompartmental clearence";
equation
  cport_a.qm = cA*CLa - cB*CLb;
  annotation(
    Icon(graphics = {Text(origin = {18, -15}, extent = {{-88, 33}, {56, -5}}, textString = "1"), Text(origin = {-1, -51}, extent = {{-121, 15}, {121, -15}}, textString = "%CLa"), Text(origin = {-1, 51}, extent = {{-121, 15}, {121, -15}}, textString = "%CLb"), Line(origin = {6, 21.71}, rotation = -90, points = {{0, 22}, {0, -36}}, thickness = 6, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 12), Line(origin = {-8, -22.29}, rotation = 90, points = {{0, 22}, {0, -36}}, thickness = 6, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 12)}),
    Documentation(info = "<html><head></head><body><h1>TransferFirstOrderNonSym</h1><div>first order non-symetric transfer. Calculates mass flow rate according to equation</div><div><br></div><div>mFlow = cA*CLa - cB*CLb</div><div><br></div><div>where cA and cB are concentrations at cport_a and cport_b. It might be either blood/plasma or tissue free concentration depending on the cBSwitch switch.</div><h2>parameters</h2><div>CLa - intercompartmental clearence for the A side</div><div>CLb - intercompartmental clearence for the B side</div><div><br></div></body></html>"),
  Diagram(graphics));
end TransferFirstOrderNonSym;