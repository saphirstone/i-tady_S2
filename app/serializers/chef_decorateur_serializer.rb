class ChefDecorateurSerializer < ActiveModel::Serializer
  attributes :id, :nom_et_prenom, :email, :info_carriere, :specialite, :ambition
end
