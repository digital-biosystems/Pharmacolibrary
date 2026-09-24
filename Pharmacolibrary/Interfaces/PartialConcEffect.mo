within Pharmacolibrary.Interfaces;
partial model PartialConcEffect "empirical concentration-response; no fitted PK model"
  parameter Real E0    = 0   "baseline effect (no drug)";
  parameter Real Emax        "maximal effect";
  parameter Real EC50        "concentration at half-maximal effect";
  parameter Real gamma = 1   "Hill/sigmoidicity";
  input  Real conc           "plasma/measured concentration (reported/observed by the paper, not derived from a fitted PK compartment)";
  output Real effect;
equation
  effect = E0 + Emax*conc^gamma / (EC50^gamma + conc^gamma);
  annotation(
    Icon(graphics = {Polygon(origin = {12, -1}, lineColor = {152, 112, 187}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 4, points = {{-28, 99}, {-62, 1}, {42, -11}, {-20, -99}, {86, 3}, {-26, 15}, {16, 99}, {-28, 99}, {-28, 99}})}),
    Documentation(info = "<html><head></head><body><p>Concentration-driven, algebraic (no compartments, no ODE) empirical Emax curve for a paper that fits effect directly against a REPORTED/measured plasma concentration (e.g. NCA-derived Cp) with no population/compartmental PK model anywhere in the paper or its citations. Distinct from <code>PartialEffect</code>, which takes concentration from a <code>ConcentrationPort_a</code> wired to an upstream fitted PK compartment, and from <code>PartialDoseEffect</code>, whose independent variable is dose, not concentration. No effect-site delay/hysteresis and no time course of its own &mdash; a static map from a given concentration to effect. If concentration is itself a function of time in the source data, drive <code>conc</code> from a table/time-series, not a PK model. The engineer should prefer <code>PartialEffect</code> whenever a real PK model exists for the paper (see engineer_agent.py's driver-kind dispatch: pk_record/cited_pk &rarr; PartialEffect; conc_no_pk &rarr; this class; dose_only &rarr; PartialDoseEffect).</p></body></html>"));
end PartialConcEffect;
