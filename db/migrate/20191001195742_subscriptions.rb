class Subscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :members
      t.string :specialists
      t.string :points
    end
  end
end
