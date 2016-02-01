class Product < ActiveRecord::Base

  validates :name, presence: { message: "Required" }
  validates :email, presence: { message: "Required" }
end
