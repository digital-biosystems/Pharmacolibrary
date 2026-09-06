within Pharmacolibrary.Examples.Clopidogrel;

model PD_dose_response
  "steady-state exposure-response curve, swept with time standing in for exposure"
  extends Pharmacolibrary.Pharmacodynamic.IndirectTurnoverSweep(
    E0 = 212.67,
    Emax = 57.84,
    EC50 = 67.32,
    gamma = 1.851,
    exposure_per_s = 1.0);

  annotation(
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-06, Interval = 0.01),
    Documentation(info = "<html><body><h4>PD_dose_response</h4>
<p>The steady-state exposure-response curve of Jung YS et al., <i>CPT Pharmacometrics Syst
Pharmacol</i> 2024;13(1):29-40 — P2Y12 reaction units against clopidogrel H4 concentration —
obtained by sweeping the driver instead of simulating a dose.</p>

<h4>The parameters, in the paper's terms</h4>
<pre>  E0    = 212.67  drug-free steady-state PRU = Kin/Kout
  Emax  =  57.84  maximal stimulation of PRU turnover
  EC50  =  67.32  H4 concentration at half-maximal stimulation [ng/mL]
  gamma =  1.851  Hill coefficient</pre>
<p>The model itself is
<a href=\"modelica://Pharmacolibrary.Pharmacodynamic.IndirectTurnoverSweep\">IndirectTurnoverSweep</a>;
this example only supplies the numbers. So <code>exposure</code> is the H4 concentration in
ng/mL and <code>response</code> is PRU — the library class cannot name them that, because the
same algebra serves any biomarker.</p>

<h4>How to read it</h4>
<p>Plot <code>response</code> against <code>exposure</code> (or against <code>time</code>, the
sweep rate being 1). The x axis is CONCENTRATION, not time: the model has no state, no dose and
no kinetics, and running it for 1000 s evaluates the map at 1000 points.</p>

<h4>What it reproduces</h4>
<pre>  conc = 0          PRU 212.67    0.0 % inhibition   (drug-free baseline)
  conc = EC50       PRU   7.14   96.6 %              (half the maximal STIMULATION)
  conc = 1000       PRU   3.64   98.3 %
  conc -> infinity  PRU   3.61   98.3 %</pre>
<p>Note the second row: at EC50 the response has already fallen 97 % of the way, because the
effect term enters as a reciprocal — see IndirectTurnoverSweep for why EC50 here is not
\"half-maximal effect on PRU\".</p>

<h4>Adapting it</h4>
<p>For a paper reporting a DOSE-response with no concentrations, extend the same class and read
<code>EC50</code> as D50. For a paper whose response is a direct Emax rather than an indirect
turnover, extend
<a href=\"modelica://Pharmacolibrary.Pharmacodynamic.SigmoidEmaxSweep\">SigmoidEmaxSweep</a>
instead. For response over time after a dose with no PK, that is a different question and needs
<a href=\"modelica://Pharmacolibrary.Interfaces.PartialKPD\">PartialKPD</a>.</p>
</body></html>"));
end PD_dose_response;