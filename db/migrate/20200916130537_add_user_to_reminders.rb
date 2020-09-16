class AddUserToReminders < ActiveRecord::Migration[6.0]
  def change
    add_reference :reminders, :user, null: false, foreign_key: true
  end
end
