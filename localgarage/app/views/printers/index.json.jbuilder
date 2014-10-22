json.array!(@printers) do |printer|
  json.extract! printer, :id
end
