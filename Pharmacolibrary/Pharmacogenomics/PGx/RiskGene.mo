within Pharmacolibrary.Pharmacogenomics.PGx;

record RiskGene "a gene whose clinical consequence is allele CARRIAGE, not enzyme activity"
  parameter String symbol = "" "HGNC symbol, e.g. \"HLA-B\"";
  parameter String[:] riskAllele = fill("", 0) "alleles that carry the risk, e.g. {\"*57:01\"}";
  parameter String outcome = "" "what carriage risks, e.g. \"hypersensitivity reaction\"";
  // Reported association strength. ANNOTATION ONLY — see the documentation: it is deliberately
  // not consumed by any equation in this library.
  parameter Real oddsRatio = 1.0 "reported odds/hazard ratio, 1 when not quantified";
  // CPIC keys these genes as '*57:01 positive' / '*57:01 negative' rather than by diplotype,
  // and publishes no full allele vocabulary to check a name against. So non-carriage must be
  // STATED with this label rather than implied by naming some other allele: that way a typo in
  // a risk allele fails the assert instead of silently reading as a safe subject.
  parameter String negativeLabel = "negative" "the explicit not-a-carrier value";
  annotation(Documentation(info = "<html><body>
<p>CPIC assigns these genes by ALLELE STATUS rather than by a metaboliser phenotype (its
<code>lookupmethod</code> field), and they do not belong in the <code>Gene</code>/<code>Effect</code>
machinery: carrying HLA-B*57:01 does not scale abacavir's clearance or its EC50 by any factor. It
means the drug must not be given.</p>
<h4>Why carriage is a Boolean and not a risk factor</h4>
<p>A scale factor asserts a dose-response relationship — twice the parameter, twice the effect —
and for an idiosyncratic immune reaction there is none: there is no dose at which a *57:01
carrier is safe, and no multiplier on a PK or PD parameter reproduces that. Modelling carriage as
a factor would put a number into a differential equation that the underlying biology does not
support. So <code>isCarrier</code> returns a Boolean, <code>CarriageComponent</code> emits it as a
flag and warns, and nothing here multiplies anything.</p>
<p><code>oddsRatio</code> exists so a published association can travel with the record for
reporting and for cohort-level work. It is not read by any equation. If you need it in a
calculation, that calculation is an epidemiological one about a population, not a
pharmacokinetic one about this subject.</p>
<p>Genes with GRADED deficiency (G6PD's class I-IV, for instance) fit neither this record nor
<code>Gene</code> cleanly: the severity classes are ordered but they are not metaboliser
activity. They are reported by the generator as unmapped rather than forced into either.</p>
</body></html>"));
end RiskGene;
