class UniversitiesController < ApplicationController
  before_action :set_university, only: [:show]

  def index
    @faculties = Faculty.all
    if params[:faculty_id]
      @universities = find_universities
    else
      @universities = University.all
    end
  end

  def show
    if current_user
      @user_id = current_user.id
      @user = User.find(@user_id)
      @orders = @user.orders.build
    end
    @comments = @university.comments.build

  end

  private
    def  find_universities
      @universities_faculties = FacultiesUniversity.where(faculty_id: params[:faculty_id])
      @universities_ids = Array.new
      @universities_faculties.each do |associaty|
        @universities_ids << associaty.university_id
      end
      @universities = University.where(id: @universities_ids)
    end

    def set_university
      @university = University.find(params[:id])
    end

    def university_params
      params.require(:university).permit(:name, :description, :image, :location, :city, :url)
    end
end
