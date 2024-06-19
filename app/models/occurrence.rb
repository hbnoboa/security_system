class Occurrence
  include Mongoid::Document
  include Mongoid::Timestamps
  field :audio, type: String
  field :city, type: String
  field :cpf, type: String
  field :description, type: String
  field :email, type: String
  field :emergency, type: String
  field :image1, type: String
  field :image2, type: String
  field :image3, type: String
  field :image4, type: String
  field :latitude, type: String
  field :longitude, type: String
  field :neighborhood, type: String
  field :ocurrenceType, type: String
  field :postalCode, type: String
  field :street, type: String
  field :tel, type: Integer
  field :uf, type: String
  field :video1, type: String
  field :video2, type: String
end
