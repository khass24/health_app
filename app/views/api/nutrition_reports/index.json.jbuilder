json.nutrition_array do
  json.array! (@nutrition_array)
end

json.nutrition_reports do
  json.array! @nutrition_reports, partial: 'nutrition_report', as: :nutrition_report
end