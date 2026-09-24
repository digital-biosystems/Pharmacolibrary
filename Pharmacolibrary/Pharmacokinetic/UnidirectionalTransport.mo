within Pharmacolibrary.Pharmacokinetic;
model UnidirectionalTransport "uni-directional first order transport to be used with LumenCompartment as source"
  extends Pharmacolibrary.Interfaces.PartialTransfer;
  //(final cBSwitch = false);
  parameter Pharmacolibrary.Types.TransferRate k "first order transfer coefficient";
protected
  parameter Pharmacolibrary.Types.MassConcentration cTreshold = 1.0e-12 "concentration threshold to be reached for transfer";
  parameter Pharmacolibrary.Types.Volume k2CL = 1 "volume";
public
equation
  cport_b.qm = if cB > cTreshold then k*k2CL*cB else 0;
  annotation(
    Icon(coordinateSystem(initialScale = 0.1), graphics = {Line(origin = {-6, -22.29}, rotation = 90, points = {{0, 22}, {0, -36}}, thickness = 6, arrow = {Arrow.Filled, Arrow.None}, arrowSize = 12), Text(origin = {0, -58}, extent = {{-140, 20}, {140, -20}}, textString = "k=%k")}),
    Documentation(info = "<html><head></head><body><h1>UnidirectionalTransport</h1><div>is uni-directional first order transprt. It should be used in conbination with the LumenCompartment compartment connected to the cport_b connector.</div><div>The drug mass flow rate is equal to the drug mass stored in the connected LumenCompartment component times k parameter.</div><h2>Parameters</h2><div>k - first order transfer coefficient</div></body></html>"),
    Diagram(graphics));
end UnidirectionalTransport;