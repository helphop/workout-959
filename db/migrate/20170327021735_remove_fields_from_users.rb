class RemoveFieldsFromUsers < ActiveRecord::Migration[5.0]
  def change
    change_table(:users) do |t|
      # Authlogic::ActsAsAuthentic::PersistenceToken
      t.remove    :persistence_token
      t.remove     :persistence_token

      # Authlogic::ActsAsAuthentic::SingleAccessToken
      t.remove    :single_access_token
      t.remove    :single_access_token

      # Authlogic::ActsAsAuthentic::PerishableToken
      t.remove    :perishable_token
      t.remove    :perishable_token

      # Authlogic::Session::MagicColumns
      t.remove   :login_count
      t.remove   :failed_login_count
      t.remove   :last_request_at
      t.remove   :current_login_at
      t.remove   :last_login_at
      t.remove   :current_login_ip
      t.remove   :last_login_ip

      # Authlogic::Session::MagicStates
      t.remove   :active
      t.remove   :approved
      t.remove   :confirmed
    end
  end
end
