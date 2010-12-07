class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token

  require 'will_paginate'
#before_filter :require_user :only => [:show, :edit, :update, :new, :create ],
before_filter :require_admin, :only => [:index, :new]

  def index
  
    @categories = Category.find(:all, :conditions => {:id => [1,2]})

    if current_user.group_id == 3
       if !params[:search_word].nil?
       @users = User.search(params[:search_word], nil, :order => 'name ASC').paginate :per_page => 20, :page => params[:page]
       @total = @users.total_entries.to_s
       else
       @users = User.find(:all, :limit => 0).paginate :per_page => 20, :page => params[:page]
       end
    else
    @users = current_user.user_incharge.paginate :per_page => 10, :page => params[:page]
    end
  end
    

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.name = @user.name.upcase
    @user.paterno = @user.paterno.upcase
    @user.materno = @user.materno.upcase
    @user.rfc = @user.rfc.upcase
    if params[:user][:email] == ""
      @user.email = (params[:user][:login] + rand(100).to_s + "@sersalud.df.gob.mx").to_s
    end


    if @user.save
      flash[:notice] = "Cuenta Registrada!"
      redirect_back_or_default user_url(@user)
    else
      render :action => :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def change_password
    @user = User.find(params[:id])
  end

  def update
@user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = "Cuenta Actualizada!"
      redirect_to :action => 'index'
    else
      render :action => :edit
    end
  end

  #def destroy
  #  @user = User.find(params[:id])
  #  @user.destroy

  #  respond_to do |format|
  #    format.html { redirect_to(users_url) }
  #    format.xml  { head :ok }
  #  end
  #end

    def select_category

      @dependencies = Dependency.find_all_by_category_id(7)

      case params[:category_select]
      when "1"
        return render(:partial => 'category_select_juri', :layout => false) if request.xhr?
      when "2"
        return render(:partial => 'category_select_centro', :layout => false) if request.xhr?
      else
        return render(:partial => 'category_select_error', :layout => false) if request.xhr?
      end
    end

   def get_centros
    @centros = Dependency.find(:all, :conditions => ['dependency_id = ?', params[:select_juris_id]])
    return render(:partial => 'get_centros', :layout => false) if request.xhr?
   end

  def get_results
    @users = User.find(:all, :conditions => ['dependency_id = ?', params[:select_centro_id]])
    return render(:partial => 'advanced_results', :layout => false) if request.xhr?
  end

  def get_results_juris
    @users = []

    @dependencies = Dependency.find(params[:select_juris_id]).dependencies
    @users << User.find(:all, :conditions => ['dependency_id = ?', params[:select_juris_id]])

          @dependencies.each { |dependency|
          @users << User.find(:all, :conditions => ["dependency_id = ?", dependency.id], :order => "dependency_id DESC")
        }
        @users = @users.flatten
    return render(:partial => 'advanced_results', :layout => false) if request.xhr?
  end

end
