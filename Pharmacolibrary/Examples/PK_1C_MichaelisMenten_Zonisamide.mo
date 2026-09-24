within Pharmacolibrary.Examples;

model PK_1C_MichaelisMenten_Zonisamide "Zonisamide, 1-compartment Michaelis-Menten model (Hashimoto 1994, via nlmixr2lib)"
  extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C_MichaelisMenten(
    weight        = 33,
    VdPerKg       = 0.00127,
    Vmax          = 1.0541666666666667e-08,
    Km            = 0.0459,
    F             = 1,
    adminTime     = 0,
    adminDuration = 60,
    adminPeriod   = 43200,
    adminMass     = 100 / 1000000,
    adminCount    = -1,
    Cmin          = 0.01,
    Cmax          = 0.04,
    Ctox_peak     = 0.04,
    Ctox_trough   = 0.04);
  // Hashimoto 1994 Table II, typical 33-kg patient without carbamazepine (CONMED_CBZ = 0):
  //   Vc   = 1.27 L/kg * 33 kg = 41.91 L                -> VdPerKg = 0.00127 m3/kg
  //   Vmax = 27.6 mg/d/kg * 33 kg = 910.8 mg/day        -> 910.8e-6 kg / 86400 s
  //   Km   = 45.9 mg/L                                  -> 0.0459 kg/m3
  //   F    = 1, oral dose treated as an instantaneous bolus (no absorption phase) -> 60 s infusion
  // Dosing is illustrative (nlmixr2lib fixes no dose): 100 mg every 12 h, i.e. ~6 mg/kg/day.
  // Cmin/Cmax: commonly used zonisamide reference range 10-40 mg/L; the source reports
  // no toxic threshold, so Ctox_* are set to the upper end of that range.
  annotation(
    experiment(StartTime = 0, StopTime = 2419200, Tolerance = 1e-09, Interval = 600),
    Documentation(info = "<html><head></head><body>
<p>Example instance of <a href=\"modelica://Pharmacolibrary.Pharmacokinetic.Models.PK_1C_MichaelisMenten\">PK_1C_MichaelisMenten</a>: it only sets parameters.</p>
<p>Structure and typical values are taken from the nlmixr2lib model <code>Hashimoto_1994_zonisamide</code>: one compartment, Michaelis-Menten elimination, oral doses entered as an instantaneous bolus with F = 1. Typical patient: 33 kg, no concomitant carbamazepine (carbamazepine multiplies Vmax by 1.13). Between-subject variability and residual error are not modelled.</p>
<table>
<tr><td>Vd</td><td>1.27 L/kg (41.9 L at 33 kg)</td></tr>
<tr><td>Vmax</td><td>27.6 mg/day/kg (910.8 mg/day at 33 kg)</td></tr>
<tr><td>Km</td><td>45.9 mg/L</td></tr>
</table>
<p>At 100 mg every 12 h the average steady state is Km*R/(Vmax-R) = 12.9 mg/L (trough 11.8, peak 14.1), and 90 % of it is reached by day 5. Doubling the dose raises it to about 35.6 mg/L (2.8x) and 90 % takes until day 9. That disproportionate rise, and the slower approach to steady state, are what a linear PK_1C cannot reproduce.</p>
<h4>References</h4><ol><li><p>Hashimoto Y, Odani A, Tanigawara Y, Yasuhara M, Okuno T, Hori R (1994). Population analysis of the dose-dependent pharmacokinetics of zonisamide in epileptic patients. <i>Biol Pharm Bull</i> 17(2):323-326. DOI:<a href=\"https://doi.org/10.1248/bpb.17.323\">10.1248/bpb.17.323</a></p></li>
<li><p>nlmixr2lib model <code>Hashimoto_1994_zonisamide</code>, <a href=\"https://github.com/nlmixr2/nlmixr2lib/blob/main/inst/modeldb/specificDrugs/Hashimoto_1994_zonisamide.R\">inst/modeldb/specificDrugs/Hashimoto_1994_zonisamide.R</a></p></li></ol>
</body></html>",
      revisions = "<html><body><ul><li>09/2026 Tomas Kulhanek, imported from nlmixr2lib (Hashimoto_1994_zonisamide)</li></ul></body></html>"));
end PK_1C_MichaelisMenten_Zonisamide;
