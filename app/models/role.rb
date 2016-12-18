class Role < ActiveRecord::Base
	validates :nombre, presence:true, length: { minimum: 3 }
	has_many :equipos, dependent: :destroy
end
