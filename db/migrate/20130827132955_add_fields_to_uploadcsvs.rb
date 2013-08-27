class AddFieldsToUploadcsvs < ActiveRecord::Migration
  def change

    add_column :upload_csvs, :order_id, :integer
    add_column :upload_csvs, :patient_name, :string
    add_column :upload_csvs, :tickect_id, :string
    add_column :upload_csvs, :created_on, :string
    add_column :upload_csvs, :issue_asset, :string
    add_column :upload_csvs, :image_number, :string
    add_column :upload_csvs, :email, :string
    add_column :upload_csvs, :office_number, :string

  end
end
