class Reminder < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :description, presence: true

    belongs_to :user
end
