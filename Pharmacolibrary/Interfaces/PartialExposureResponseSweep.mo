within Pharmacolibrary.Interfaces;

partial model PartialExposureResponseSweep
  "static exposure-response curve in which TIME IS THE SWEEP AXIS, not time"
  parameter Real E0 = 0 "response with no drug";
  // Emax and EC50 carry defaults (1, 1) so a concrete sweep class can be compiled AS IS into
  // a generic FMU template — one FMU per class, a parameter set per record — the way the PK
  // templates are. A parameter with no value makes the class uninstantiable ("neither value
  // nor start value"), and a record always overrides both anyway.
  parameter Real Emax = 1 "maximal effect term — how it enters the response is set by the extending class";
  parameter Real EC50 = 1 "exposure at half of the maximal EFFECT TERM (D50, for a dose sweep)";
  parameter Real gamma = 1 "Hill coefficient";
  parameter Real exposure_per_s = 1.0
    "exposure units per second of simulated time — the sweep rate";

  Real exposure "the driver being swept: a concentration, or a dose";
  Real frac "Hill fraction, 0..1 — the shared part of every exposure-response shape";
  Real response "modelled response at that exposure";
equation
  // TIME IS NOT TIME HERE. Nothing evolves; time is the sweep axis, so simulating 0..1000 s
  // evaluates the curve at 0..1000 exposure units. This is legitimate ONLY because the map is
  // static — no der() appears in this class or in anything extending it. A base that owned a
  // state could not be swept this way: the output would be a genuine trajectory, not a curve.
  exposure = exposure_per_s * time;
  frac = exposure^gamma / (EC50^gamma + exposure^gamma);
  // `response` is deliberately left unbound. HOW the Hill fraction enters the response is the
  // one thing that distinguishes the shapes — added for a direct Emax, reciprocal for the
  // steady state of an indirect-response turnover model — so binding it here would force every
  // curve into one algebra. Extending classes supply exactly that equation and nothing else.

  annotation(
    Documentation(info = "<html><body><h4>PartialExposureResponseSweep</h4>
<p>Base for a standalone exposure-response CURVE: the drug's effect plotted against exposure
when no PK model is available to generate that exposure over time. Sweep the driver and read the
response off the resulting curve.</p>

<h4>Why this exists next to PartialConcEffect</h4>
<p><a href=\"modelica://Pharmacolibrary.Interfaces.PartialConcEffect\">PartialConcEffect</a>
carries the same Emax algebra, but its <code>conc</code> is an <code>input</code>, so it is
usable only as a driven SUB-COMPONENT. A top-level simulated model cannot bind an input: OMC
reports \"conc = ... has size 1 but 0 variables\", and a modification in the extends clause is
ignored outright — the model then compiles, runs, and returns the drug-free baseline at every
point. This class owns its driver instead of receiving one, which is what makes a standalone,
directly simulable curve possible.</p>

<h4>Extending it</h4>
<p>Supply one equation for <code>response</code> in terms of <code>E0</code>,
<code>Emax</code> and <code>frac</code>. See
<a href=\"modelica://Pharmacolibrary.Pharmacodynamic.SigmoidEmaxSweep\">SigmoidEmaxSweep</a>
(added) and
<a href=\"modelica://Pharmacolibrary.Pharmacodynamic.IndirectTurnoverSweep\">IndirectTurnoverSweep</a>
(reciprocal). A concrete drug example then extends one of those and sets parameter values only.</p>

<h4>For a time course instead of a curve</h4>
<p>Response over time after a dose, still with no PK, is a different question and needs
<a href=\"modelica://Pharmacolibrary.Interfaces.PartialKPD\">PartialKPD</a>.</p>
</body></html>"));
end PartialExposureResponseSweep;
