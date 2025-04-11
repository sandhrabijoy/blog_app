class AddDarkModeToUsers < ActiveRecord::Migration[7.0]
  def change
    unless column_exists?(:users, :dark_mode)
      add_column :users, :dark_mode, :boolean, default: false
    end
  end
end
