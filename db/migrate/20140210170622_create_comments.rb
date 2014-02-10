class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :messagetext

      t.timestamps
    end
  end
end
