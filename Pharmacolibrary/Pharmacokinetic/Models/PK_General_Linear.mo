within Pharmacolibrary.Pharmacokinetic.Models;

model PK_General_Linear
  "N-compartment linear model with arbitrary transfer topology (NONMEM ADVAN5/7 analogue)"

  parameter Integer nComp(min = 1) = 3 "number of compartments";
  parameter Integer centralIdx = 1 "compartment that is dosed and (by default) eliminated";

  parameter Pharmacolibrary.Types.Volume V[nComp] "volume of each compartment (m3)";
  parameter Pharmacolibrary.Types.Clearance CLelim[nComp] = zeros(nComp)
    "elimination clearance FROM each compartment (0 = no elimination there)";

  // Edge list: each row = {from, to}; CLedge[k] is the clearance from->to.
  // A reversible link is TWO rows: {i,j} and {j,i}.
  parameter Integer nEdge = 0 "number of directed transfer edges";
  parameter Integer edge[nEdge, 2] = fill(0, nEdge, 2) "each row {fromComp, toComp}";
  parameter Pharmacolibrary.Types.Clearance CLedge[nEdge] = zeros(nEdge)
    "clearance for each directed edge (from -> to)";

  // Dosing (same parameters/semantics as PK_1C)
  parameter Modelica.Units.SI.MassFraction F = 1 "bioavailability";
  parameter Pharmacolibrary.Types.Mass adminMass(displayUnit="mg") = 1e-4;
  parameter Integer adminCount = 1;
  parameter Modelica.Units.SI.Time adminTime = 60;
  parameter Modelica.Units.SI.Time adminDuration = 600;
  parameter Modelica.Units.SI.Time adminPeriod = 8*3600;

  // Component arrays — your existing primitives
  Pharmacolibrary.Pharmacokinetic.NoPerfusedTissueCompartment comp[nComp](V = V);
  Pharmacolibrary.Pharmacokinetic.ClearanceDrivenElimination elim[nComp](CL = CLelim);
  Pharmacolibrary.Pharmacokinetic.TransferFirstOrderNonSym edgeT[nEdge](
    CLa = CLedge, each CLb = 0);   // one-way edges; reversible = two rows

  replaceable Sources.PeriodicDose dose(
    adminPeriod = adminPeriod, adminMass = adminMass, doseCount = adminCount,
    adminDuration = adminDuration, F = F, firstAdminTime = adminTime)
    constrainedby Pharmacolibrary.Interfaces.PartialPeriodicDoseSource;

  Pharmacolibrary.Types.ConcentrationOutput C[nComp];
  Pharmacolibrary.Types.ConcentrationOutput C_central annotation(
    Placement(transformation(origin = {-92, 92}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-106, 80}, extent = {{-18, -18}, {18, 18}}, rotation = 180)));
equation
  for i in 1:nComp loop
    C[i] = comp[i].cport.c;
    connect(elim[i].cport, comp[i].cport);       // elim[i] with CL=0 contributes nothing
  end for;
  C_central = comp[0].cport.c;

  for k in 1:nEdge loop
    connect(edgeT[k].cport_a, comp[edge[k,1]].cport);
    connect(edgeT[k].cport_b, comp[edge[k,2]].cport);
  end for;

  connect(dose.cport, comp[centralIdx].cport);

annotation(
    Icon(graphics = {Rectangle(fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}})}));
end PK_General_Linear;