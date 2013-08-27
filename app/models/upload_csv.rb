class UploadCsv < ActiveRecord::Base
  attr_accessible  :mclist_id, :date_added,:follow_up,:clicked_link_date,  :pdf_url,:message_sent,:last_message_name,:last_send_date,:remove_date,:remove_user
end
