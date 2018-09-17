class PhotographeSerializer < ActiveModel::Serializer
  attributes :id, :nom_et_prenom, :numero, :email, :equipe, :info_carriere, :ambition
end
