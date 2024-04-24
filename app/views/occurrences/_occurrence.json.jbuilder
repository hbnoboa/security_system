json.extract! occurrence, :id, :cpf, :email, :tel, :ocurrenceType, :description, :latitude, :longitude, :postalCode, :street, :neighborhood, :city, :uf, :created_at, :updated_at
json.url occurrence_url(occurrence, format: :json)
