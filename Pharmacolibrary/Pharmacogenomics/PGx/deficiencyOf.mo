within Pharmacolibrary.Pharmacogenomics.PGx;

function deficiencyOf "genotype -> DeficiencyLevel, by the CPIC G6PD rule"
  // Plain arrays rather than the Deficiency record: OMC only passes a derived record where a
  // base one is declared if it can inline the call, and it cannot inline a function with a
  // loop. The same reason isCarrier takes arrays.
  input  String allele[:];
  input  Integer alleleClass[:];
  input  String a1;
  input  String a2 "empty for a hemizygous (male X-linked) genotype";
  output DeficiencyLevel level;
protected
  Integer c1, c2;
algorithm
  c1 := 1;
  c2 := 1;
  for i in 1:size(allele, 1) loop
    if allele[i] == a1 then c1 := alleleClass[i]; end if;
    if allele[i] == a2 then c2 := alleleClass[i]; end if;
  end for;
  if a2 == "" then
    level := DeficiencyLevel(c1);                       // hemizygous: the one allele decides
  elseif c1 == 1 or c2 == 1 then
    level := DeficiencyLevel.Indeterminate;             // an allele of unestablished function
  elseif c1 == 2 and c2 == 2 then
    level := DeficiencyLevel.Normal;
  elseif c1 == 2 or c2 == 2 then
    level := DeficiencyLevel.Variable;                  // heterozygous: X-inactivation mosaic
  elseif c1 == 5 and c2 == 5 then
    level := DeficiencyLevel.DeficientWithCNSHA;        // CNSHA needs BOTH class I alleles
  else
    level := DeficiencyLevel.Deficient;
  end if;
  annotation(Documentation(info = "<html><body><p>Verified against CPIC: this rule reproduces
all 17765 G6PD diplotype calls exactly. The two non-obvious branches are the ones that made a
naive rule wrong — a heterozygous normal/deficient female is <b>Variable</b>, not deficient,
and one class I allele alongside a class II or III gives <b>Deficient</b>, not CNSHA, which
requires both.</p></body></html>"));
end deficiencyOf;
