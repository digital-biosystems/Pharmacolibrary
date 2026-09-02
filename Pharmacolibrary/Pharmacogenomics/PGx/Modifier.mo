within Pharmacolibrary.Pharmacogenomics.PGx;
partial model Modifier
  replaceable record Gtype = PGx.Genotype;
  replaceable Gtype g;

  // Which scale vector of the phenotype applies. Defaults to CLscale, so every existing
  // modifier keeps its current numbers; a modifier of something that is NOT a clearance
  // redeclares this (see Modifiers.FractionMetabolizedModifier / AbsorptionModifier).
  replaceable function scale = PGx.phScaleCL constrainedby PGx.partialPhScale
    annotation(choicesAllMatching = true);

  replaceable type T = Real;
  input  T base;
  output T modified;
  output PGx.MetabolizerStatus dbgStatus
       annotation(Dialog(group="Debug"));

protected
  Real pScale;
initial equation
//  modified = base;
equation
  dbgStatus = PGx.phStatusScore(g.ph, g.allele[1], g.allele[2]);
  pScale   = scale(g.ph, g.allele[1], g.allele[2]);
  modified = base*pScale;
end Modifier;
