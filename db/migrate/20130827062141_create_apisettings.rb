class CreateApisettings < ActiveRecord::Migration
  def change
    create_table :apisettings do |t|

      t.timestamps
    end
  end
end
