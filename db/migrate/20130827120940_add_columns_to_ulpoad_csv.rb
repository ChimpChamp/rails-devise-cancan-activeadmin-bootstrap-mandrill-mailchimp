class AddColumnsToUlpoadCsv < ActiveRecord::Migration
  def change
    add_column :upload_csvs, :mclist_id, :integer
    add_column :upload_csvs, :date_added, :string
    add_column :upload_csvs, :follow_up, :string
    add_column :upload_csvs, :clicked_link_date, :string
    add_column :upload_csvs, :pdf_url, :string
    add_column :upload_csvs, :message_sent, :boolean, :default=>0
    add_column :upload_csvs, :last_message_name, :string
    add_column :upload_csvs, :last_send_date, :string
    add_column :upload_csvs, :remove_date, :string
    add_column :upload_csvs, :remove_user, :string

  end
end
