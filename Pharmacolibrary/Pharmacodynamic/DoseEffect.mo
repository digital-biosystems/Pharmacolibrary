within Pharmacolibrary.Pharmacodynamic;

model DoseEffect "instant sigmoid Emax effect against DOSE (no PK, no concentrations)"
  extends Pharmacolibrary.Interfaces.PartialDoseEffect;
  annotation(
    Icon(graphics = {Text(origin = {-49, -57}, extent = {{-51, 39}, {51, -39}}, textString = "dose"), Line(origin = {1.9, 33.9}, points = {{-95.9, -49.9}, {-83.9, 2.1}, {-39.9, 48.1}, {90.1, 50.1}, {96.1, 50.1}}, color = {53, 132, 228}, thickness = 1, smooth = Smooth.Bezier)}),
    Documentation(info = "<html><body><h4>DoseEffect</h4>
<p>The concrete, instantiable form of
<a href=\"modelica://Pharmacolibrary.Interfaces.PartialDoseEffect\">PartialDoseEffect</a>, for a
paper reporting a dose-response with no concentrations at all. <code>D50</code> is a DOSE and
bakes in the unknown pharmacokinetics, so it is regimen- and population-specific and is not an
EC50.</p>
<p>Drive <code>dose</code> from the enclosing model exactly as for
<a href=\"modelica://Pharmacolibrary.Pharmacodynamic.ConcEffect\">ConcEffect</a>; the same
top-level-input trap applies.</p></body></html>"));
end DoseEffect;
