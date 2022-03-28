class User < ActiveRecord::Base
  has_many :products
  validates_presence_of :name
end

class Product < ActiveRecord::Base
  belongs_to :user
end