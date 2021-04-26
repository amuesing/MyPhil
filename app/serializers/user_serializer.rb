class UserSerializer < ActiveModel::Serializer
  # has_many :tickets
  attributes :id, :email, :passphrase, :credit, :first_name, :last_name, :address1, :address2, :city, :state, :zip
end
