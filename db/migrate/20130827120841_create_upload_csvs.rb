class CreateUploadCsvs < ActiveRecord::Migration
  def change
    create_table :upload_csvs do |t|

      t.timestamps
    end
  end
end
