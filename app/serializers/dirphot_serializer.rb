class DirphotSerializer < ActiveModel::Serializer
  attributes :id, :nom_et_prenom, :numero, :email, :info_carriere, :ambition, :equipement, :specialite
end
