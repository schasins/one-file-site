class ResumeItemsController < ApplicationController

   def create
      @user = User.find(params[:id])
      @resume = Resume.find(params[:id])
      @resumeItem = @resume.resumeItems.create(params[:resume_item])
      redirect_to user_resume_resume_item_path(@user, @resume, @resumeItem)
   end


  def new

    @resumeItem = ResumeItem.new


    respond_to do |format|

      format.html # new.html.erb

      format.json { render json: @user }

    end

  end



  def edit

    @user = User.find(params[:id])

    @resume = Resume.find(params[:id])
    @resumeItem = ResumeItem.find(params[:id])
  end


end
