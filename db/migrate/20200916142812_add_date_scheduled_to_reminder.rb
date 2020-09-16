class AddDateScheduledToReminder < ActiveRecord::Migration[6.0]
  def change
    add_column :reminders, :date_scheduled, :datetime
  end
end
