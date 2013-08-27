class AddColumnToApisettings < ActiveRecord::Migration
  def change
    add_column :apisettings, :api_key, :string
    add_column :apisettings, :list, :string
  end
end
