class ChefOperateurSerializer < ActiveModel::Serializer
  attributes :id, :nom_et_prenom, :email, :info_carriere, :ambition
end
