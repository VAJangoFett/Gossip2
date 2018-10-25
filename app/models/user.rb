class User < ApplicationRecord
	belongs_to :city
	has_many :gozzips
	has_many :comments
	has_many :likes
	has_many :critics, as: :user
	has_and_belongs_to_many :privatemessages
end

