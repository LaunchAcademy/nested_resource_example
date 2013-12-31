class Category < ActiveRecord::Base
  has_many :products,
    dependent: :destroy,
    inverse_of: :category

  validates_presence_of :name
end
