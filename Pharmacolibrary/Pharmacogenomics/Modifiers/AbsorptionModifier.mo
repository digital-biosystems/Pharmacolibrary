within Pharmacolibrary.Pharmacogenomics.Modifiers;

/********************************************************************
 *  AbsorptionModifier  – lean version
 *
 *  Uses the default numeric type  T = Real  (fine for F, ka, …).
 *  The base class already provides:
 *    • genotype connector `g`
 *    • parameters `base`, `modified`
 *    • replaceable function `scale`
 *    • equation `modified = base*scale(g)`
 ********************************************************************/
model AbsorptionModifier
  // Fscale, not CLscale: this modifies F/ka. Before Modifier.scale became replaceable
  // this class inherited phScaleCL and silently scaled absorption by the CLEARANCE vector.
  extends PGx.Modifier(redeclare function scale = PGx.phScaleF);
end AbsorptionModifier;
