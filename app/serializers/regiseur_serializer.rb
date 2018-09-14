class RegiseurSerializer < ActiveModel::Serializer
  attributes :id, :nom_et_prenom, :poste, :email, :info_carriere, :ambition, :projet
end
