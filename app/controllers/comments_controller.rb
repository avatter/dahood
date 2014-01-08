class CommentsController < ApplicationController
 

 


  def create
    @location = Location.find(params[:location_id])
    @comment = @location.comments.create(comment_params)

    redirect_to location_path(@location)
  end

 

  def destroy
  	@comment = Comment.find(params[:id])
  	@location = Location.find(params[:location_id])
    @comment.destroy
    respond_to do |format|
    format.html { redirect_to :back }
    format.json { head :no_content }
    end
  end




 
  private
    def comment_params
      params.require(:comment).permit(:body, :created_at)
    end




end