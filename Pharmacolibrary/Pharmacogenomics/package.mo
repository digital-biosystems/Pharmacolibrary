within Pharmacolibrary;

package Pharmacogenomics
  extends Modelica.Icons.Package;
  annotation(
    Diagram(graphics),
    Icon(graphics = {Text(origin = {-41, 34}, extent = {{-75, 64}, {75, -64}}, textString = "P", fontName = "DejaVu Serif"), Text(origin = {20, 0}, extent = {{-62, 54}, {62, -54}}, textString = "Gx", fontName = "DejaVu Serif")}),
  Documentation(info = "<html><head></head><body><b>Pharmacogenomics<br></b><div><br></div><br><table cellspacing=\"0\" cellpadding=\"2\" border=\"1\"><tbody>
<tr>
<td valign=\"top\"><p><img src=\"modelica://Pharmacolibrary/Resources/Icons/PGx.png\" width=\"90%\"></p></td>
<td valign=\"middle\"><p><a href=\"modelica://Pharmacolibrary.Pharmacogenomic\">Pharmacogenomic</a></p><p>Pharmacogenomic (PGx) can model dynamic influence of Genotype/Phenotype by altering parameters of PK/PD absorption, clearance, metabolism and effect.</p></td>
</tr>
</tbody></table>

<h4>Three gene shapes</h4>
<p>A gene enters a model as exactly one of three kinds, and CPIC's own <code>lookupmethod</code>
decides which, so it is not a judgement call in this library:</p>
<ul>
<li><b>Gene</b> + <b>Effect</b> — an activity axis. Alleles carry activity scores, the diplotype
maps to a <code>MetabolizerStatus</code>, and an <code>Effect</code> turns that into a
dimensionless factor on ONE model parameter. This is the only shape that touches a PK or PD
equation.</li>
<li><b>RiskGene</b> — allele carriage (HLA-A, HLA-B). A Boolean, not a factor: there is no dose
at which an HLA-B*57:01 carrier may receive abacavir, so no multiplier on a parameter expresses
it.</li>
<li><b>GradedGene</b> — an ordered deficiency severity (G6PD's WHO classes I-IV). Neither an
activity axis nor a binary flag.</li>
</ul>

<h4>Where the decision to fail belongs</h4>
<p><b>The model layer computes and reports; the simulation layer decides.</b> A risk carrier's
pharmacokinetics are perfectly well defined, and simulating them is often the whole point — you
may want the exposure profile precisely because this is the subject you are worried about. So
nothing here refuses to solve on account of a genotype.</p>
<p>What the model exposes instead: each risk component publishes its own state
(<code>CarriageComponent.carrier</code>, <code>DeficiencyComponent.level</code> and
<code>.deficient</code>), and <code>Modifiers.RiskSummary</code> aggregates any number of them
into the single <code>atRisk</code> flag plus a count that an application reads to decide
whether to proceed, warn a user, or refuse to prescribe. Those are prescribing decisions, and
they belong above the model.</p>
<p>Warnings are advisory and switchable — <code>warnIfCarrier</code>,
<code>warnIfDeficient</code>, <code>warnIfAtRisk</code> — and none of them fails a run.</p>
<p>Exactly ONE condition raises an error: an allele name that appears in no table for its gene
(<code>checkAlleles</code>, on by default). That is not a finding about a patient, it is a
malformed model — the requested genotype does not exist — and every lookup here fails soft and
silently in the dangerous direction if it is allowed through. An unlisted allele scores as
fully functional, so a mistyped no-function allele turns a poor metaboliser into a normal one,
and a mistyped <code>*57:01</code> reads as a subject who may safely receive the drug. Better
to stop.</p>
</body></html>"));
end Pharmacogenomics;