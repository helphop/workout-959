class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
      # Authlogic::ActsAsAuthentic::PersistenceToken
      add_column :users, :persistence_token, :string
      add_index  :users, :persistence_token, unique: true
  end
end
