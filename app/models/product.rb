class Product < ActiveRecord::Base
  belongs_to :category,
    inverse_of: :products

  validates_presence_of :category
  validates_presence_of :name
end
