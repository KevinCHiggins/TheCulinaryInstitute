# @author Kevin Higgins
class CourseModulesController < ApplicationController
  before_action :set_course_module, only: [:show, :edit, :update, :destroy]
  before_action :authorise, only: [:edit, :update, :destroy]

  # GET /course_modules
  def index
    @course_modules = CourseModule.all
  end

  # GET /course_modules/1
  def show
  end

  # GET /course_modules/new
  def new
    @course_module = CourseModule.new
  end

  # GET /course_modules/1/edit
  def edit
  end

  # POST /course_modules
  def create
    @course_module = CourseModule.new(course_module_params)

    respond_to do |format|
      if @course_module.save
        format.html { redirect_to @course_module, notice: 'Module was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /course_modules/1
  def update
    respond_to do |format|
      if @course_module.update(course_module_params)
        format.html { redirect_to @course_module, notice: 'Module was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /course_modules/1
  def destroy
    @course_module.destroy
    respond_to do |format|
      format.html { redirect_to course_modules_url, notice: 'Module was successfully deleted.' }
      #format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_course_module
    @course_module = CourseModule.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def course_module_params
    params.require(:course_module).permit(:name, :description, :credits)
  end
end
