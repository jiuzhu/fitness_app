class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :user_id
      t.date :date
      t.integer :steps
      t.integer :miles
      t.integer :calories
    end
  end
end
