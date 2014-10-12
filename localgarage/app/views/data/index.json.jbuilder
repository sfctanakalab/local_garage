json.array!(@data) do |datum|
  json.extract! datum, :id, :stl_url, :gcode_url, :output_time, :finish_signal, :data_id
  json.url datum_url(datum, format: :json)
end
