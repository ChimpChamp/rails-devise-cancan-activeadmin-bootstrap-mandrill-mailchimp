class ApisettingsController < ApplicationController

  def new
    @apisetting = Apisetting.new
    if params.present?
    @listloaded = params[:listloaded]
     @api_key = params[:api_key]
    end

  end

  def load_list
    @api_key = params[:key]
    gb = Gibbon::API.new(@api_key)
    Gibbon::API.api_key = @api_key
    Gibbon::API.timeout = 15
    Gibbon::API.throws_exceptions = false

    # ------------load lists--------------

    @lists = Gibbon::API.lists.list
    @listloaded = []
    @lists['data'].each_with_index do |list, index|
      @listloaded[index] = {}
      @listloaded[index]["id"] = list["id"]
      @listloaded[index]["name"] = list["name"]
    end
    redirect_to new_apisetting_path({:listloaded => @listloaded, :api_key => @api_key})
  end


  def create
    @apisetting = Apisetting.first
    if @apisetting.present?
      @apisetting.update_attributes!(params[:apisetting])
      redirect_to root_url, :notice => "Successfully updated"
    else
      @apisetting = Apisetting.new(params[:apisetting])
      @apisetting.save!
      redirect_to root_url, :notice => "Successfully created"
   end

  end

end
