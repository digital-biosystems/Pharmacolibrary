within Pharmacolibrary.Pharmacogenomics.PGx;

function scaleOf "diplotype -> the unitless factor this effect applies to its target parameter"
  input  Effect e;
  input  String a1;
  input  String a2;
  output Real f;
algorithm
  f := e.scale[Integer(statusOf(e.gene, a1, a2))];
  annotation(Inline = true);
end scaleOf;
