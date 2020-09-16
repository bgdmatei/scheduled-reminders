class AddTitleAndDescriptionToReminders < ActiveRecord::Migration[6.0]
  def change
    add_column :reminders, :title, :string
    add_column :reminders, :description, :string
  end
end
