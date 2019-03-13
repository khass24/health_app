json.movement_array do
  json.array! (@movement_array)
end

json.movement_reports do
  json.array! @movement_reports, partial: 'movement_report', as: :movement_report
end