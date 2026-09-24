within Pharmacolibrary.Interfaces;

partial model PartialKPD
  "kinetic-pharmacodynamic base: a VIRTUAL dose compartment stands in for unmeasured PK"
  parameter Pharmacolibrary.Types.Mass dose(displayUnit = "mg") = 1e-4
    "administered dose — the only exposure input this model has";
  parameter Pharmacolibrary.Types.TransferRate kDE(displayUnit = "1/h") = 1/(6*3600)
    "virtual elimination rate constant, fitted from the RESPONSE-time curve";
  parameter Real E0 = 0 "response with no drug";
  parameter Real Emax = 1 "maximal drug effect";
  parameter Pharmacolibrary.Types.Mass EDk50(displayUnit = "mg") = 5e-5
    "virtual amount giving half the maximal effect";
  parameter Real gamma(min = 0) = 1 "Hill coefficient";

  Pharmacolibrary.Types.Mass A(start = dose, fixed = true)
    "virtual amount remaining in the dose compartment";
  Real effect "drug effect term, E0 + Emax*A^gamma/(EDk50^gamma + A^gamma)";
equation
  der(A) = -kDE * A;
  effect = E0 + Emax * A^gamma / (EDk50^gamma + A^gamma);
  annotation(
    Documentation(info = "<html><body><h4>PartialKPD</h4>
<p>For the common case of a paper that reports an <b>exposure-response relationship over time
but no pharmacokinetics</b> — response measured after a known dose, with no concentrations and
no fitted PK model. The unknown kinetics are replaced by a virtual dose compartment emptying
first-order at <code>kDE</code>, and the effect is driven by what remains:</p>
<pre>  der(A) = -kDE*A,        A(0) = dose
  effect = E0 + Emax*A^gamma / (EDk50^gamma + A^gamma)</pre>

<h4>What the parameters are, and are not</h4>
<p><code>A</code> is an amount in DOSE units in a compartment whose volume is unknown, so it is
not a concentration and must not be reported as one. The volume is unidentifiable and is
absorbed into <code>EDk50</code>, which is why only the PAIR
(<code>kDE</code>, <code>EDk50</code>) is identifiable — and identifiable from response-versus-
time data alone, which is exactly what such a paper provides. <code>kDE</code> governs how fast
the RESPONSE decays; it is not an elimination rate constant and will not agree with one measured
from plasma.</p>

<h4>Where this sits among the effect bases</h4>
<ul>
<li><a href=\"modelica://Pharmacolibrary.Interfaces.PartialEffect\">PartialEffect</a> — a time
course, but it needs a <code>ConcentrationPort</code> from a fitted PK model.</li>
<li><a href=\"modelica://Pharmacolibrary.Interfaces.PartialConcEffect\">PartialConcEffect</a> and
<a href=\"modelica://Pharmacolibrary.Interfaces.PartialDoseEffect\">PartialDoseEffect</a> — no PK
needed, but static maps: they answer \"what effect at this exposure\", never \"what effect at
time t\".</li>
<li><b>PartialKPD</b> is the middle: a time course with no PK at all.</li>
</ul>

<h4>Delayed effects</h4>
<p>Extend this and drive a turnover model from <code>effect</code> rather than reporting it
directly, for a response that outlasts the drug:</p>
<pre>  der(R) = kin - kout*(1 + effect/Emax)*R</pre>
<p>which is the indirect-response structure of
<a href=\"modelica://Pharmacolibrary.Interfaces.PartialIndirectEffect\">PartialIndirectEffect</a>
with the virtual amount in place of a concentration.</p></body></html>"));
end PartialKPD;
