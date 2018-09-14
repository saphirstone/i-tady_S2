class MonteurVideoSerializer < ActiveModel::Serializer
  attributes :id, :nom_et_prenom, :numero, :email, :equipement, :info_carriere, :ambition
end
