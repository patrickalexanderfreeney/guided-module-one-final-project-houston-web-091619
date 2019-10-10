class Sessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.integer :member_id
      t.integer :specialist_id
      t.integer :time
    end
  end
end
