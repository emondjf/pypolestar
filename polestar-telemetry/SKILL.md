---
name: polestar-telemetry
description: Fetch and summarize live Polestar vehicle data, charging status, and lease tracking information using the local exporter API. Use when the user asks for car status, battery level, range, or lease budget updates.
---

# Polestar Telemetry Skill

This skill allows Gemini CLI to interact with the local Polestar exporter and provide real-time updates on your vehicle.

## Workflows

### 1. Summarize Vehicle Status
When the user asks "How is my car?" or "Get car status":
1. Run `scripts/get_metrics.sh` to get live data.
2. Read `references/metrics_guide.md` to interpret the raw values.
3. Calculate the lease budget status using the formulas provided.
4. Provide a professional, Senior Engineer-style summary (Battery, Range, Charging, Lease).

### 2. Check Charging Health
When the user asks about charging:
1. Run `scripts/get_metrics.sh`.
2. Report `polestar_charging_power_watts` and verify it's within expected levels (e.g., ~11kW for Level 2).

### 3. Lease Projection
When the user asks about their lease or kilometer usage:
1. Run `scripts/get_metrics.sh`.
2. Apply the financial formulas in `references/metrics_guide.md` to estimate total costs and current delta.
