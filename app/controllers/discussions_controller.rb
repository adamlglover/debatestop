class DiscussionsController < ApplicationController
  def index
    @discussions = Discussion.all
  end

  def show
    @discussion = Discussion.find(params[:id])
  end
  
  def new
    @discussion = Discussion.new
  end
  
  def create
    @discussion = Discussion.new(discussion_params)
    @discussion.user_id = current_user.id
    respond_to do |format|
      if @discussion.save
        format.html { redirect_to @discussion, notice: 'Sector was successfully created.' }
        format.json { render :show, status: :created, location: @discussion }
      else
        format.html { render :new }
        format.json { render json: @discussion.errors, status: :unprocessable_entity }
      end
    end
  end
  def discussion_params
      params.require(:discussion).permit(:title)
  end
end