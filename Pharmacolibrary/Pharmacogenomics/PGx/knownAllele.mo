within Pharmacolibrary.Pharmacogenomics.PGx;

function knownAllele "true when *a* appears in the gene's allele table (or is a permitted blank)"
  // Plain arrays, and no Inline: this is called from an assert, and an inlined call whose
  // arguments are all parameters can be constant-folded away together with the assert.
  input  String allele[:];
  input  String a;
  input  Boolean allowEmpty = false "accept \"\", used for a hemizygous X-linked genotype";
  output Boolean known;
algorithm
  known := allowEmpty and a == "";
  if not known then
    for i in 1:size(allele, 1) loop
      if allele[i] == a then
        known := true;
        break;
      end if;
    end for;
  end if;
  annotation(Documentation(info = "<html><body><p>Exists because every lookup in this package
FAILS SOFT on an unrecognised allele, and each failure is silent and in the dangerous
direction: <code>activityOf</code> scores an unlisted allele as fully functional, so a
mistyped no-function allele turns a poor metaboliser into a normal one;
<code>deficiencyOf</code> returns Indeterminate; <code>isCarrier</code> returns false, so a
typo in <code>*57:01</code> reads as a subject who may safely receive the drug.</p>
<p>The soft defaults are right for the FUNCTIONS, which must stay total. The components assert
membership instead, so a typo stops the translation rather than quietly changing the
answer.</p></body></html>"));
end knownAllele;
