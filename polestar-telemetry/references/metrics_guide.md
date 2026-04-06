# Polestar Metrics Interpretation Guide

Use this guide to translate raw Prometheus metrics into human-readable summaries.

## Metrics Mapping

| Metric Name | Description | Unit |
| ----------- | ----------- | ---- |
| `polestar_battery_level_percentage` | Current battery charge | % |
| `polestar_range_km` | Estimated distance to empty | km |
| `polestar_charging_power_watts` | Power intake (if charging) | Watts |
| `polestar_charging_current_amps` | Current intake (if charging) | Amps |
| `polestar_charging_voltage_volts` | Voltage intake (if charging) | Volts |
| `polestar_odometer_km` | Total distance driven | km |
| `polestar_avg_consumption_kwh_100km` | Energy efficiency | kWh/100km |

## Lease Calculations (CDN$)

- **Lease Start:** Dec 31, 2025 (`1735603200` Unix timestamp)
- **Allowance:** 12,000 km/year (24,000 km total for 2 years)
- **Rate:** $0.20 CAD per extra km
- **Daily Budget:** ~32.87 km/day

**Formulas:**
- `Elapsed Days` = `(now - 1735603200) / 86400`
- `KM Allowance` = `Elapsed Days * 32.87`
- `Projected KM (Total)` = `(Current Odo / Elapsed Days) * 730`
- `Estimated Penalty` = `(Projected KM - 24000) * 0.20` (Min 0)
