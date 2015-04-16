json.array!(@diseases) do |disease|
  json.extract! disease, :id, :name, :cause, :symptom, :treatment
  json.url disease_url(disease, format: :json)
end
