json.array!(@drugs) do |drug|
  json.extract! drug, :id, :name, :uses, :sideeffects, :precautions, :interactions, :overdose
  json.url drug_url(drug, format: :json)
end
