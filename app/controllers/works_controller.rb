class WorksController < ApplicationController
  def index
    @work = Work.all.order('id DESC')
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @work = Work.find(params[:id])
  end

  private
  def work_params
    params.require(:work).permit(:work_name, :category_id, :video, :shipping_area_id, :shipping_day_id,
                                 :shipping_cost_id, :value, :description).merge(user_id: current_user.id)
  end
end
