class ChangeResetFromDatetimeToTimestamp < ActiveRecord::Migration
  def change
    remove_column :users, :reset_password_sent_at, :datetime
    add_column :users, :reset_password_sent_at, :timestamp
  end
end
