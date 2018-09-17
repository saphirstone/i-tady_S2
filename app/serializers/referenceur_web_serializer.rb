class ReferenceurWebSerializer < ActiveModel::Serializer
  attributes :id, :nom_et_prenom, :numero, :email, :info_carriere, :ambition
end
