class Dog < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :likes

  validates :name, :breed, :location, :image_url, presence: true
end
