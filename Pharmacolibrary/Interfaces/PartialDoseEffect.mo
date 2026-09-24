within Pharmacolibrary.Interfaces;
partial model PartialDoseEffect "empirical dose-response; no PK/concentration"
  parameter Real E0    = 0   "baseline effect (no drug)";
  parameter Real Emax        "maximal effect";
  parameter Real D50         "dose at half-maximal effect (a DOSE, not EC50)";
  parameter Real gamma = 1   "Hill/sigmoidicity";
  input  Real dose           "administered dose";
  output Real effect;
equation
  effect = E0 + Emax*dose^gamma / (D50^gamma + dose^gamma);
  annotation(
    Icon(graphics = {Polygon(origin = {12, -1}, lineColor = {152, 112, 187}, fillColor = {255, 255, 255}, fillPattern = FillPattern.Solid, lineThickness = 4, points = {{-28, 99}, {-62, 1}, {42, -11}, {-20, -99}, {86, 3}, {-26, 15}, {16, 99}, {-28, 99}, {-28, 99}})}),
    Documentation(info = "<html><head></head><body><p>Dose-driven, algebraic (no compartments, no ODE, no ConcentrationPort) empirical effect curve. Not mechanistic: D50 bakes in the (unknown) PK, so it is regimen/population-specific, not a true EC50. No time course &mdash; a static map of dose to steady-state-ish effect. Use only when no PK model exists for the paper (see PartialEffect for the concentration-driven, mechanistic form, which the engineer should prefer whenever a PK model is available).</p></body></html>"));
end PartialDoseEffect;
