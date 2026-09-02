within Pharmacolibrary.Pharmacogenomics.PGx;

record GradedGene "a gene whose consequence is a GRADED deficiency — neither activity nor carriage"
  parameter String symbol = "" "HGNC symbol, e.g. \"G6PD\"";
  parameter String[:] allele = fill("", 0);
  // Per-allele severity as a DeficiencyLevel index (Integer, because Modelica cannot hold an
  // enumeration array in a record modification as compactly).
  parameter Integer[:] alleleClass = fill(1, 0);
  parameter String outcome = "" "what the deficiency risks, e.g. \"acute haemolytic anaemia\"";
  parameter Boolean xLinked = true
    "true when a single allele (hemizygous male) is a complete genotype";
  annotation(Documentation(info = "<html><body>
<p>The third shape, alongside <code>Gene</code> and <code>RiskGene</code>. G6PD fits neither:
its WHO classes I-IV are an ORDERED severity, so a Boolean carrier flag throws away real
information, but they are not metaboliser activity either, so summing activity scores and
banding them is meaningless — there is no 'ultrarapid' G6PD.</p>
<h4>Still not a factor on any PK or PD parameter</h4>
<p>Like carriage, a deficiency level does not scale a clearance or an EC50. What it grades is
the SEVERITY of a safety consequence — the haemolysis risk when an oxidative drug is given —
so <code>DeficiencyComponent</code> reports a level and warns in proportion to it, and drives
no equation. If a drug's PK genuinely differed by G6PD status, that would be an
<code>Effect</code> on that gene, not this record.</p>
<h4>X-linked</h4>
<p>G6PD sits on the X chromosome, so a hemizygous male has ONE allele and that allele decides
the phenotype, while a heterozygous female is <code>Variable</code> rather than deficient
because X-inactivation makes expression a mosaic. <code>deficiencyOf</code> implements exactly
that, and the rule reproduces all 17765 of CPIC's G6PD diplotype calls.</p></body></html>"));
end GradedGene;
