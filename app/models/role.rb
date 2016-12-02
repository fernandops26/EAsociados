class Role < ActiveRecord::Base
	has_many :equipos, dependent: :destroy
end
