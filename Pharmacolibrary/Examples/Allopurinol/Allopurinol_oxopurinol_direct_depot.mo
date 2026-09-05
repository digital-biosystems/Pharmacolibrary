within Pharmacolibrary.Examples.Allopurinol;

model Allopurinol_oxopurinol_direct_depot
extends Pharmacolibrary.Pharmacokinetic.Models.PK_1C_enteral(ka = 2.0833333333333335e-4, adminCount = 1, Cl = 4.833333333333333e-7, Vd = 0.057);
annotation(
    experiment(StartTime = 0, StopTime = 172800, Tolerance = 1e-06, Interval = 345.6));


end Allopurinol_oxopurinol_direct_depot;
