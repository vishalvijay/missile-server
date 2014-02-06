class CreateMissilesTagsJoinTable < ActiveRecord::Migration
  def change
    create_table :missiles_tags, :id => false do |t|
      t.integer :missile_id
      t.integer :tag_id
    end

    add_index :missiles_tags, [:missile_id, :tag_id]
  end
end
