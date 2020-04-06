class Job < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :apply, presence: true
end
