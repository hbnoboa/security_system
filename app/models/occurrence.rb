class Occurrence
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :email, type: String
  field :tel, type: Integer
  field :ocurrenceType, type: String
  field :emergency, type: String
  field :description, type: String
  field :latitude, type: String
  field :longitude, type: String
  field :postalCode, type: String
  field :street, type: String
  field :neighborhood, type: String
  field :city, type: String
  field :uf, type: String
end
