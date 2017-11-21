class VisitorsController < ApplicationController
  def index
  	@matrics = Vongmatric.all
  end

  def show
  		@matric = Vongmatric.find(params[:id])
  end

  	def import 
    	Vongmatric.import(params[:file])
    	redirect_to visitors_path, notice: "Report added"
    rescue
    	redirect_to visitors_path
  	end
end
