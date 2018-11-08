json.sleep_array do
  json.array! (@sleep_array)
end

json.sleep_reports do
  json.array! @sleep_reports, partial: 'sleep_report', as: :sleep_report
end
