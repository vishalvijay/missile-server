class CreateMissiles < ActiveRecord::Migration
  def change
    create_table :missiles do |t|
      t.string :title
      t.text :message

      t.timestamps
    end
  end
end
