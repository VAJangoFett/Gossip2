class Critic < ApplicationRecord
	belongs_to :user, polymorphic: true
end
