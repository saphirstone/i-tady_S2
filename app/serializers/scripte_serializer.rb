class ScripteSerializer < ActiveModel::Serializer
  attributes :id, :nom_et_prenom, :numero, :email, :info_carriere, :specialite, :ambition
end
