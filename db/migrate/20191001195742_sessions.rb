class Sessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :members
      t.string :specialists
      t.string :times
    end
  end
end
