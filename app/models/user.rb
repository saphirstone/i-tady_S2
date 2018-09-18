# Copyright (c) 2015, @sudharti(Sudharsanan Muralidharan)
# Socify is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  has_merit
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
    :recoverable, :rememberable, :trackable, :validatable
  acts_as_voter
  acts_as_follower
  acts_as_followable

  has_many :posts
  has_many :comments
  has_many :events
  has_many :producteurs
  has_many :acteurs
  has_many :assistant_realisateurs
  has_many :chef_decorateurs
  has_many :chef_operateurs
  has_many :makeups
  has_many :monteur_videos
  has_many :regiseurs
  has_many :perchistes
  has_many :cadreurs
  has_many :scenaristes
  has_many :dirphots
  has_many :chef_electriciens
  has_many :scriptes
  has_many :directeur_de_prods
  has_many :inge_sons
  has_many :vfxes
  has_many :photographes
  has_many :dev_mobiles
  has_many :referenceur_webs
  has_many :integrateur_webs
  has_many :web_designers
  has_many :web_masters
  has_many :flash_designers
  has_many :chef_de_projet_webs
  has_many :realisateurs





  








  mount_uploader :avatar, AvatarUploader
  mount_uploader :cover, AvatarUploader

  validates_presence_of :name

  self.per_page = 10

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
end
