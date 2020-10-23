class CreateBioUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :bio_users do |t|
      t.belongs_to :bio, index: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
