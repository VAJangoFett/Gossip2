class Like < ApplicationRecord
	belongs_to :user
	belongs_to :gozzip
	belongs_to :comment
end
