json.array!(@satellites) do |satellite|
  json.SatelliteName satellite.name
  json.CycleSpan satellite.cycle_span
end
