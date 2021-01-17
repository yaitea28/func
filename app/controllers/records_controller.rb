class RecordsController < ApplicationController
  def new
    @record = Record.new
  end

  def create
    @record = Record.create(record_params)
    if @record.save
      redirect_to   records_new_path
    else
      render :new
    end
  end

  def index
    @records = Record.all
  end

  private

  def record_params
    params.require(:record).permit(:Url, :summary)
  end
end
