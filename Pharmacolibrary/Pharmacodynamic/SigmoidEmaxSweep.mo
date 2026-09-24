within Pharmacolibrary.Pharmacodynamic;

model SigmoidEmaxSweep "direct sigmoid Emax exposure-response curve, swept"
  extends Pharmacolibrary.Interfaces.PartialExposureResponseSweep;
  Real effect "change from the drug-free baseline at that exposure";
equation
  response = E0 + Emax*frac;
  effect = response - E0;
  annotation(
    experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 1),
    Documentation(info = "<html><body><h4>SigmoidEmaxSweep</h4>
<p>The curve <code>response = E0 + Emax*C^gamma/(EC50^gamma + C^gamma)</code>, swept over
exposure. <code>gamma = 1</code> (the default) gives the plain Emax curve, so this one class
covers both the <code>emax</code> and <code>sigmoid_emax</code> families.</p>
<p>Here — unlike the indirect-response case — EC50 really is the exposure at half the maximal
response, because the effect term is ADDED to the baseline.</p>
<p><code>effect</code> is reported as an absolute change rather than a percentage: a direct Emax
model is routinely fitted with <code>E0 = 0</code>, and a percentage of zero is not a number.</p>
</body></html>"));
end SigmoidEmaxSweep;
