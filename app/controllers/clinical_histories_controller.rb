class ClinicalHistoriesController < ApplicationController
  # GET /clinical_histories
  # GET /clinical_histories.xml
  def index
    @clinical_histories = ClinicalHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clinical_histories }
    end
  end

  # GET /clinical_histories/1
  # GET /clinical_histories/1.xml
  def show
    @clinical_history = ClinicalHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clinical_history }
    end
  end

  # GET /clinical_histories/new
  # GET /clinical_histories/new.xml
  def new
    @clinical_history = ClinicalHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clinical_history }
    end
  end

  # GET /clinical_histories/1/edit
  def edit
    @clinical_history = ClinicalHistory.find(params[:id])
  end

  # POST /clinical_histories
  # POST /clinical_histories.xml
  def create
    @clinical_history = ClinicalHistory.new(params[:clinical_history])

    respond_to do |format|
      if @clinical_history.save
        format.html { redirect_to(@clinical_history, :notice => 'ClinicalHistory was successfully created.') }
        format.xml  { render :xml => @clinical_history, :status => :created, :location => @clinical_history }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clinical_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clinical_histories/1
  # PUT /clinical_histories/1.xml
  def update
    @clinical_history = ClinicalHistory.find(params[:id])

    respond_to do |format|
      if @clinical_history.update_attributes(params[:clinical_history])
        format.html { redirect_to(@clinical_history, :notice => 'ClinicalHistory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clinical_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clinical_histories/1
  # DELETE /clinical_histories/1.xml
  def destroy
    @clinical_history = ClinicalHistory.find(params[:id])
    @clinical_history.destroy

    respond_to do |format|
      format.html { redirect_to(clinical_histories_url) }
      format.xml  { head :ok }
    end
  end
end
