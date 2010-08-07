class MeetingsController < ApplicationController
  # GET /meetings
  # GET /meetings.xml
  def index

    @meetings = Meeting.find(:all, :conditions => ["starttime >= '#{Time.at(params['start'].to_i).to_formatted_s(:db)}' and endtime <= '#{Time.at(params['end'].to_i).to_formatted_s(:db)}'"])
    meetings = [] 
    @meetings.each do |meeting|
      meetings << {:id => meeting.id, :title => "xxx", :description => "descripcion de la prueba" || "Some cool description here...", :start => "#{meeting.starttime.iso8601}", :end => "#{meeting.endtime.iso8601}", :allDay => meeting.all_day}
    end
    render :text => meetings.to_json
  end

  # GET /meetings/1
  # GET /meetings/1.xml
  def show
    @meeting = Meeting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @meeting }
    end
  end

  # GET /meetings/new
  # GET /meetings/new.xml
  def new
    @meeting = Meeting.new

    respond_to do |format|
      format.html { render :partial => 'form.html.haml', :layout => false}
      format.xml  { render :xml => @meeting }
    end
  end

  # GET /meetings/1/edit
  def edit
    @meeting = Meeting.find(params[:id])
  end

  # POST /meetings
  # POST /meetings.xml
  def create
    @meeting = Meeting.new(params[:meeting])

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to(@meeting, :notice => 'Meeting was successfully created.') }
        format.xml  { render :xml => @meeting, :status => :created, :location => @meeting }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @meeting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /meetings/1
  # PUT /meetings/1.xml
  def update
    @meeting = Meeting.find(params[:id])

    respond_to do |format|
      if @meeting.update_attributes(params[:meeting])
        format.html { redirect_to(@meeting, :notice => 'Meeting was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @meeting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /meetings/1
  # DELETE /meetings/1.xml
  def destroy
    @meeting = Meeting.find(params[:id])
    @meeting.destroy

    respond_to do |format|
      format.html { redirect_to(meetings_url) }
      format.xml  { head :ok }
    end
  end

  def get_meetings
    @meetings = Meeting.find(:all, :conditions => ["starttime >= '#{Time.at(params['start'].to_i).to_formatted_s(:db)}' and endtime <= '#{Time.at(params['end'].to_i).to_formatted_s(:db)}'"])
    meetings = [] 
    @meetings.each do |meeting|
      meetings << {:id => meeting.id, :title => "xxx", :description => meeting.description || "Some cool description here...", :start => "#{meeting.starttime.iso8601}", :end => "#{meeting.endtime.iso8601}", :allDay => meeting.all_day}
    end
    render :text => meetings.to_json
  end
end
