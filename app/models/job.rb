class Job < ApplicationRecord
    validates :title, presence: true, length: {minimum: 10, maximum: 120}
    validates :description, presence: true
    validates :apply, presence: true

    belongs_to :category
end
