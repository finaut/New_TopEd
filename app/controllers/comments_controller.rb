class CommentsController < ApplicationController
  def create
    @university = University.find(params[:university_id])
    @comment = @university.comments.create set_params
    flash[:comment_errors] = []
    if @comment.errors.any?
      flash[:comment_errors] << @comment.errors
    end
    redirect_to university_path(@university)
  end

  private
  def set_params
    params.require(:comment).permit(:name, :description, :university_id)
  end
end
