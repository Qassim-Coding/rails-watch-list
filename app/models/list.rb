class List < ApplicationRecord
  has_many :bookmarks
  # il faut ajouter les bookmarks avant les films, car l'ordi ne peut pas les connaitre.
  # -> Les films se font connaitre à travers les bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
