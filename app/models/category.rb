class Category < ActiveRecord::Base
	validates :nombre, presence:true, length: { minimum: 3 }
	has_many :posts, dependent: :destroy
end
