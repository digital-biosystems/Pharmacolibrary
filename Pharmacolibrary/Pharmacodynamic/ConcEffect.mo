within Pharmacolibrary.Pharmacodynamic;

model ConcEffect "instant sigmoid Emax effect against a GIVEN concentration (no PK model)"
  extends Pharmacolibrary.Interfaces.PartialConcEffect;
  annotation(
    Icon(graphics = {Text(origin = {-49, -57}, extent = {{-51, 39}, {51, -39}}, textString = "conc"), Line(origin = {1.9, 33.9}, points = {{-95.9, -49.9}, {-83.9, 2.1}, {-39.9, 48.1}, {90.1, 50.1}, {96.1, 50.1}}, color = {53, 132, 228}, thickness = 1, smooth = Smooth.Bezier)}),
    Documentation(info = "<html><body><h4>ConcEffect</h4>
<p>The concrete, instantiable form of
<a href=\"modelica://Pharmacolibrary.Interfaces.PartialConcEffect\">PartialConcEffect</a> — the
same relation <code>effect = E0 + Emax*conc^gamma/(EC50^gamma + conc^gamma)</code>, usable as a
COMPONENT. <code>EmaxEffect</code> is its counterpart for a concentration arriving on a
<code>ConcentrationPort</code> from a fitted PK model; this one takes the concentration as a
plain input, for a paper that fitted effect directly against a reported concentration with no PK
model anywhere.</p>

<h4>Drive it from the enclosing model</h4>
<p>The input must be bound where the component is used:</p>
<pre>  model MyCurve
    Pharmacolibrary.Pharmacodynamic.ConcEffect pd(E0 = …, Emax = …, EC50 = …, gamma = …);
  equation
    pd.conc = 1.0*time;      // sweep, so the plot is effect against concentration
  end MyCurve;</pre>
<p>A sub-component's input is a free variable of the enclosing model and can be bound by an
equation. A TOP-LEVEL input cannot: extending the partial directly in a simulated model leaves
<code>conc</code> unbound, it defaults to zero, and the model returns <code>E0</code> at every
point while still checking and simulating without complaint. That is the reason this concrete
class exists.</p></body></html>"));
end ConcEffect;
