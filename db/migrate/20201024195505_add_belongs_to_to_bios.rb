class AddBelongsToToBios < ActiveRecord::Migration[5.2]
  def change
    add_column :bios, :user_id, :bigint
  end
end
