json.array!(@printers) do |printer|
  json.extract! printer, :id, :material, :machinemodel, :sizex, :sizey, :sizez, :resolution, :location, :image_url, :condition, :user_id
  json.url printer_url(printer, format: :json)
end
