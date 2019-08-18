class CreateWebsites < ActiveRecord::Migration[5.2]
  def change
    create_table :websites do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.string :recipient

      t.timestamps
    end
  end
end
