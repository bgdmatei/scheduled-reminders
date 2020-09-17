class Reminder < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :description, presence: true
    validates :date_scheduled, presence: true

    belongs_to :user
end
