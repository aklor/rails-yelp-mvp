class Restaurant < ApplicationRecord
  has_many :reviews, :dependent => :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, acceptance: { accept: ['chinese', 'italian', 'french', 'japanese', 'belgian'] }
end

