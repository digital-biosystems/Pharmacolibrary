within Pharmacolibrary.Pharmacogenomics.PGx;

connector RiskBus
  "collects pharmacogene risk contributions; sizes itself from the connections"
  Real level "potential: 1 when the set is flagged, 0 otherwise (driven by RiskSummary)";
  flow Real nRisk "number of flagged risk sources — contributions sum at the connection";
  annotation(
    Icon(graphics = {Ellipse(fillColor = {255, 190, 111}, fillPattern = FillPattern.Solid, extent = {{-40, 40}, {40, -40}})}),
    Documentation(info = "<html><body>
<p>Every pharmacogene component that can flag a risk carries one of these, and
<code>Modifiers.RiskSummary</code> carries one too. Connect them all together and the summary
reports how many are flagged, with NOTHING to keep in step by hand.</p>
<h4>Why a flow variable, and why not literally an expandable connector</h4>
<p>An expandable connector is the obvious first choice for a self-sizing bus, but it cannot do
this job twice over: Modelica forbids the <code>flow</code> prefix inside one, and there is no
way to iterate its members, so routing Booleans through it would never aggregate to \"is any of
these true\".</p>
<p>A <code>flow</code> variable on a plain connector aggregates by construction, because
Modelica requires the flow variables of a connection set to sum to zero. Each source
contributes its own count as a negative flow and the one unassigned port is left holding the
positive total, so the bus sizes itself from whatever is connected and the <code>nu</code>
parameter that the vector-input version made every model maintain by hand disappears.</p>
<p><code>level</code> exists to balance the connector — Modelica requires as many potential as
flow variables — and carries something useful rather than a dummy: RiskSummary drives it to 1
when the set is flagged, so a component may read the aggregate verdict back off the bus.</p>
</body></html>"));
end RiskBus;
