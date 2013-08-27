class UploadCsvsController < ApplicationController
  def new
    @upload_csv = UploadCsv.new
  end
end
