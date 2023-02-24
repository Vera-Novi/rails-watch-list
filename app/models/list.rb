# frozen_string_literal: true

# Service to download ftp files from the server
class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates_associated :bookmarks
  validates_associated :movies
end
