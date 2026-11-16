within Pharmacolibrary.Pharmacodynamic;

model LinearSweep "linear exposure-response line, swept"
  extends Pharmacolibrary.Interfaces.PartialExposureResponseSweep(
    Emax = 0, EC50 = 1);
  parameter Real slope = 1 "change in response per unit of exposure (SI: response unit per kg/m3)";
  Real effect "change from the drug-free baseline at that exposure";
equation
  response = E0 + slope*exposure;
  effect = response - E0;
  annotation(
    experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 1),
    Documentation(info = "<html><body><h4>LinearSweep</h4>
<p>The line <code>response = E0 + slope*exposure</code>, swept over exposure: the PD
model of a paper that reports a slope (Q335) rather than an Emax curve.</p>
<p>A line has no maximal effect and no potency, so <code>Emax</code> and <code>EC50</code>
of the swept interface are unused (set to 0 and 1). <code>effect</code> is the absolute change
from <code>E0</code>, as in SigmoidEmaxSweep.</p>
<p>A line is usually fitted over the exposures a study observed: outside that range it
extrapolates without bound.</p>
</body></html>"));
end LinearSweep;
