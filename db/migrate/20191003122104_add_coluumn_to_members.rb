class AddColuumnToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :email, :string
    add_column :members, :password, :string
  end
end
