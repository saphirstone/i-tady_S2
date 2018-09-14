class ScenaristeSerializer < ActiveModel::Serializer
  attributes :id, :nom_et_prenom, :numero, :email, :info_carriere, :ambition, :specialite
end
