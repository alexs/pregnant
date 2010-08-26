class PsychologiesController < ApplicationController
  # GET /psychologies
  # GET /psychologies.xml
  def index
    @psychologies = Psychology.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @psychologies }
    end
  end

  # GET /psychologies/1
  # GET /psychologies/1.xml
  def show
    @psychology = Psychology.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @psychology }
    end
  end

  # GET /psychologies/new
  # GET /psychologies/new.xml
  def new
    @psychology = Psychology.new
  end

  # GET /psychologies/1/edit
  def edit
    @psychology = Psychology.find(params[:id])
  end

  # POST /psychologies
  # POST /psychologies.xml
  def create
    @psychology = Psychology.new(params[:psychology])

    respond_to do |format|
      if @psychology.save
        format.html { redirect_to(@psychology, :notice => 'Psychology was successfully created.') }
        format.xml  { render :xml => @psychology, :status => :created, :location => @psychology }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @psychology.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /psychologies/1
  # PUT /psychologies/1.xml
  def update
    @psychology = Psychology.find(params[:id])

    respond_to do |format|
      if @psychology.update_attributes(params[:psychology])
        format.html { redirect_to(@psychology, :notice => 'Psychology was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @psychology.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /psychologies/1
  # DELETE /psychologies/1.xml
  def destroy
    @psychology = Psychology.find(params[:id])
    @psychology.destroy

    respond_to do |format|
      format.html { redirect_to(psychologies_url) }
      format.xml  { head :ok }
    end
  end
end
