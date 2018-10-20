class Article < ApplicationRecord

	validates :title, presence: true, length: {minimum:10,maximum:20}
	validates :description, presence: true, length: {minimum:30,maximum:50}
end