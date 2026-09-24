within Pharmacolibrary.Pharmacogenomics.Modifiers;

model ScaleComponent "multiply any quantity by a unitless input scale"
  replaceable type T = Real constrainedby Real
    annotation(choicesAllMatching = true);
  Modelica.Blocks.Interfaces.RealInput u "unitless scale, e.g. from a GeneEffectComponent" annotation(
    Placement(transformation(origin = {100, 0}, extent = {{-20, -20}, {20, 20}}),
      iconTransformation(origin = {100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealInput  q_in annotation(
    Placement(transformation(origin = {18, -40}, extent = {{-20, -20}, {20, 20}}),
      iconTransformation(origin = {0, -40}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  Modelica.Blocks.Interfaces.RealOutput q_out annotation(
    Placement(transformation(origin = {-14, 60}, extent = {{-10, -10}, {10, 10}}),
      iconTransformation(origin = {1, 51}, extent = {{-17, -17}, {17, 17}}, rotation = 90)));
equation
  q_out = q_in * u;
  annotation(
    Icon(graphics = {Rectangle(origin = {0, 1}, lineColor = {255, 190, 111}, fillColor = {255, 255, 255}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, 41}, {100, -41}})}),
    Documentation(info = "<html><body><p>The quantity-agnostic form of
<code>ClearanceModifierComponent</code>: same one equation, <code>q_out = q_in*u</code>, but not
tied to a volume flow rate, so the same block scales a clearance, an EC50, a bioavailability or a
fraction metabolised.</p></body></html>"));
end ScaleComponent;
