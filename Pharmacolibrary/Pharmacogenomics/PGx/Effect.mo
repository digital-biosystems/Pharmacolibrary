within Pharmacolibrary.Pharmacogenomics.PGx;

record Effect "the effect of ONE gene on ONE model parameter"
  replaceable parameter Gene gene constrainedby Gene annotation(choicesAllMatching = true);
  parameter String target = "" "the parameter scaled, e.g. \"CL\", \"fm1\", \"EC50\"";
  // Unitless multiplier indexed by MetabolizerStatus:
  //   {unknown, poor, intermediate, normal, rapid, ultra}
  // Deliberately NOT named after any one quantity. The predecessor record carried CLscale,
  // Fscale and fmScale as separate slots, which had to grow a slot for every new target
  // (EC50, Emax, fu, ...) while every one of them held the same thing: a dimensionless factor.
  parameter Real[6] scale = {1.0, 1.0, 1.0, 1.0, 1.0, 1.0};
  annotation(Documentation(info = "<html><body><p>Pairs a <code>Gene</code> with what one of its
phenotypes does to a single model parameter. Several effects share one gene record, so adding a
gene and adding an effect are independent.</p>
<p><b>The scale is multiplicative.</b> Papers do not always report it that way — Jung et al.
(2024) give the CYP2C19 effect on clopidogrel's fm1/fm2 as an additive shift on
<code>logit(fm)</code> — but for a fixed set of phenotypes the reported per-phenotype values
convert to exact ratios, which is what the shipped effects store.</p></body></html>"));
end Effect;
