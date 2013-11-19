class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.integer :data_type_id
      t.float :value
    end
  end
end
