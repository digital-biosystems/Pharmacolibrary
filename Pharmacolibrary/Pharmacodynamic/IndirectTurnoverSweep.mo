within Pharmacolibrary.Pharmacodynamic;

model IndirectTurnoverSweep
  "steady state of an indirect-response model whose driver stimulates fractional turnover"
  extends Pharmacolibrary.Interfaces.PartialExposureResponseSweep;
  Real stimulation "the (1 + Emax*frac) turnover factor at that exposure";
  Real inhibition_pct "reduction from the drug-free baseline [%]";
equation
  stimulation = 1 + Emax*frac;
  response = E0/stimulation;
  inhibition_pct = 100*(E0 - response)/E0;
  annotation(
    experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 1),
    Documentation(info = "<html><body><h4>IndirectTurnoverSweep</h4>
<p>The steady state of the indirect-response model
<code>der(R) = Kin - Kout*(1 + Emax*C^gamma/(EC50^gamma + C^gamma))*R</code>. Setting
<code>der(R) = 0</code>, with <code>E0 = Kin/Kout</code>, collapses it to
<code>response = E0/(1 + Emax*frac)</code> — a closed form, so the curve needs neither
integration nor a PK model.</p>

<h4>EC50 does NOT mean half the response here</h4>
<p>The effect term enters as a RECIPROCAL, so EC50 is the exposure at half the maximal
<em>stimulation of turnover</em>, not at half the response. With a large Emax the response has
already collapsed long before EC50: at EC50 the factor is <code>1 + Emax/2</code>, so for
Emax = 57.84 the response falls to 1/29.92 of baseline — 96.7 % of the way down. Reading EC50 as
\"half-maximal effect on the response\" would be wrong by a factor of fifteen.</p>
<p>The asymptote is <code>E0/(1 + Emax)</code>.</p>
</body></html>"));
end IndirectTurnoverSweep;
