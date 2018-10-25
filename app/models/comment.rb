class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :gozzip
	has_many :likes
	has_many :critics, as: :user
end
