class DevMobileSerializer < ActiveModel::Serializer
  attributes :id, :nom_et_prenom, :numero, :email, :langage, :info_carriere, :ambition
end
