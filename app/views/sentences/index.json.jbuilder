json.array!(@sentences) do |sentence|
  json.extract! sentence, :id, :title, :description
  json.url sentence_url(sentence, format: :json)
end
