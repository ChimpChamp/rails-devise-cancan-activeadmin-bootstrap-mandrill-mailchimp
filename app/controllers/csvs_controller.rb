class CsvsController < ApplicationController

  def new
    @csv = Csv.new
  end

  def create
    file = params[:file]
    CSV.foreach(file.path, headers: true) do |row|
      @upload_csv = UploadCsv.new
      @upload_csv.save! row.to_hash
    end
   redirect_to upload_csvs_path
  end

end



@exam.import_student(params[:file])
def import_student(file)
  @students = self.students
  index = 0
  CSV.foreach(file.path, headers: true) do |row|
    @students[index].update_attributes! row.to_hash
    index += 1
  end
end
