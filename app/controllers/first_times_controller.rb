class FirstTimesController < ApplicationController
  def index
    @first_times = FirstTime.all

    respond_to do |format|
      format.html
    end
  end

  def show
    @first_time = FirstTime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @first_time = FirstTime.new(:patient_id => params[:id])
  end

  def edit
    @first_time = FirstTime.find(params[:id])
  end

  def create
    @first_time = FirstTime.new(params[:first_time])

    respond_to do |format|
      if @first_time.save
        format.js { render :action => "create" }
      else
        format.js { render :action => "new" }
      end
    end
  end

  def update
    @first_time = FirstTime.find(params[:id])

    respond_to do |format|
      if @first_time.update_attributes(params[:first_time])
        format.html { redirect_to(@first_time, :notice => 'FirstTime was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  def destroy
    @first_time = FirstTime.find(params[:id])
    @first_time.destroy

    respond_to do |format|
      format.html { redirect_to(first_times_url) }
    end
  end
end
