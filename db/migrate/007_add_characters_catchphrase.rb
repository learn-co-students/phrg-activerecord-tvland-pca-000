class AddCharactersCatchphrase < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :catchphrase, :text
    add_column :characters, :actor_id, :integer
  end
end
