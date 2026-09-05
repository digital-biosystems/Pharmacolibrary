within Pharmacolibrary.Examples.Clopidogrel;

model PD_dose_response
  "steady-state exposure-response curve, swept with time standing in for exposure"
  parameter Real E0 = 212.67 "drug-free steady-state PRU = Kin/Kout";
  parameter Real Emax = 57.84 "maximal stimulation of PRU turnover";
  parameter Real EC50 = 67.32 "H4 concentration at half-maximal effect [ng/mL]";
  parameter Real gamma = 1.851 "Hill coefficient";
  parameter Real conc_per_s = 1.0
    "ng/mL of driver per second of simulated time — the sweep rate";

  Real conc "clopidogrel H4 concentration being swept [ng/mL]";
  Real stimulation "the (1 + E) turnover factor at that concentration";
  Real PRU_ss "steady-state PRU at that concentration";
  Real inhibition_pct "reduction from the drug-free baseline [%]";
equation
  // TIME IS NOT TIME HERE. Nothing evolves; time is the sweep axis, so simulating 0..1000 s
  // evaluates the curve at 0..1000 ng/mL. Legitimate only because the map is STATIC — there is
  // no der() below — and the reason this model must never be read as a time course.
  conc = conc_per_s * time;

  // Jung's PD submodel is an indirect response in which H4 stimulates the fractional turnover
  // of PRU:  der(PRU) = Kin - Kout*(1 + Emax*C^h/(EC50^h + C^h))*PRU.
  // Setting der(PRU) = 0, with PRU0 = Kin/Kout, collapses it to a closed form — so the
  // steady-state curve needs neither integration nor a PK model.
  stimulation = 1 + Emax * conc^gamma / (EC50^gamma + conc^gamma);
  PRU_ss = E0 / stimulation;
  inhibition_pct = 100 * (E0 - PRU_ss) / E0;

  annotation(
    experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 1),
    Documentation(info = "<html><body><h4>PD_dose_response</h4>
<p>The steady-state exposure-response curve of Jung YS et al., <i>CPT Pharmacometrics Syst
Pharmacol</i> 2024;13(1):29-40 — P2Y12 reaction units against clopidogrel H4 concentration —
obtained by sweeping the driver instead of simulating a dose.</p>

<h4>Time as a sweep axis</h4>
<p>Plot <code>PRU_ss</code> against <code>conc</code> (or against <code>time</code>, the sweep
rate being 1). The x axis is CONCENTRATION: the model has no state, no dose and no kinetics, and
running it for 1000 s simply evaluates the map at 1000 points. The technique works only for a
static map. Do not apply it to a model containing <code>der()</code> —
<a href=\"modelica://Pharmacolibrary.Interfaces.PartialKPD\">PartialKPD</a>, for instance, where
the output would be a genuine trajectory and not a curve.</p>

<h4>What it reproduces</h4>
<pre>  conc = 0          PRU 212.67    0.0 % inhibition   (drug-free baseline)
  conc = EC50       PRU   7.11   96.7 %              (half the maximal STIMULATION)
  conc = 1000       PRU   3.64   98.3 %
  conc -> infinity  PRU   3.61   98.3 %</pre>
<p>Note the second row. EC50 is the concentration at half the maximal <em>stimulation of
turnover</em>, not the concentration at half the response: at EC50 the factor is
1 + 57.84/2 = 29.92, so PRU falls to 212.67/29.92 = 7.11, already 97 % of the way down. Because
the response enters as a reciprocal, an Emax this large makes the curve collapse far below EC50
— reading EC50 as \"half-maximal effect on PRU\" would be wrong by a factor of fifteen.</p>
<p>The asymptote is the paper's own statement: Emax = 57.84 implies a maximum steady-state
reduction to 1/(1 + 57.84) = 1.7 % of baseline.</p>

<h4>Why the equation is written out rather than inherited</h4>
<p><a href=\"modelica://Pharmacolibrary.Interfaces.PartialConcEffect\">PartialConcEffect</a> is
the natural base for a static concentration-effect map and carries this very equation, but its
<code>conc</code> is an <code>input</code>. A top-level simulated model cannot bind an input:
OMC reports \"conc = ... has size 1 but 0 variables\", and a modification in the extends clause
is ignored outright — the model then compiles, runs, and returns the drug-free baseline at every
point. That base class is therefore usable only as a driven sub-component, so a standalone sweep
states the equation directly.</p>

<h4>Adapting it</h4>
<p>For a paper reporting a DOSE-response with no concentrations, the structure is identical:
sweep <code>dose</code> and read <code>D50</code> for <code>EC50</code>. For response over time
after a dose with no PK, that is a different question and needs
<a href=\"modelica://Pharmacolibrary.Interfaces.PartialKPD\">PartialKPD</a>.</p>
</body></html>"));
end PD_dose_response;
