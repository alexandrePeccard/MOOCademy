class Lesson < ApplicationRecord
	belongs_to :course, optional: false
end