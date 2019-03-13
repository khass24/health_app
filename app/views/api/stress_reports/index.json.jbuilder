json.stress_array do
  json.array! (@stress_array)
end

json.stress_reports do
  json.array! @stress_reports, partial: 'stress_report', as: :stress_report
end