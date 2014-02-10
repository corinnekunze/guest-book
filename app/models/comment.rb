class Comment < ActiveRecord::Base
	validates :message, presence: true, length: { maximum: 50 }
end
