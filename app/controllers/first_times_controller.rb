class FirstTimesController < ApplicationController
  # GET /first_times
  # GET /first_times.xml
  def index
    @first_times = FirstTime.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @first_times }
    end
  end

  # GET /first_times/1
  # GET /first_times/1.xml
  def show
    @first_time = FirstTime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @first_time }
    end
  end

  # GET /first_times/new
  # GET /first_times/new.xml
  def new
    @first_time = FirstTime.new(:patient_id => params[:id])
  end

  # GET /first_times/1/edit
  def edit
    @first_time = FirstTime.find(params[:id])
  end

  # POST /first_times
  # POST /first_times.xml
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

  # PUT /first_times/1
  # PUT /first_times/1.xml
  def update
    @first_time = FirstTime.find(params[:id])

    respond_to do |format|
      if @first_time.update_attributes(params[:first_time])
        format.html { redirect_to(@first_time, :notice => 'FirstTime was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @first_time.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /first_times/1
  # DELETE /first_times/1.xml
  def destroy
    @first_time = FirstTime.find(params[:id])
    @first_time.destroy

    respond_to do |format|
      format.html { redirect_to(first_times_url) }
      format.xml  { head :ok }
    end
  end
end
