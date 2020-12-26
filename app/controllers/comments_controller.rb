class CommentsController < ApplicationController
  def create
    @university = University.find(params[:university_id])
    @comment = @university.comments.create set_params
  end

  private
  def set_params
    params.require(:comment).permit(:name, :description, :university_id)
  end
end
