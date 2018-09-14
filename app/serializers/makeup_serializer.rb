class MakeupSerializer < ActiveModel::Serializer
  attributes :id, :nom_et_prenom, :email, :equipe, :info_carriere, :ambition, :specialite
end
