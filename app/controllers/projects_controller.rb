class ProjectsController < ApplicationController
 
  # GET /projects
  # GET /projects.xml
  def index
  
	@projects = current_user.projects

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.xml
  def show
    @project = current_user.projects.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project }
    end
   rescue ActiveRecord::RecordNotFound => e
    prevent_access(e)
  end

  # GET /projects/new
  # GET /projects/new.xml
  def new
    @project = Project.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = current_user.projects.find(params[:id])
     rescue ActiveRecord::RecordNotFound => e
     prevent_access(e)
  end

  # POST /projects
  # POST /projects.xml
  def create
    @project = current_user.projects.build(params[:project])
    respond_to do |format|
      if @project.save
        format.html do
          flash[:notice] = 'Project was successfully created.'
          redirect_to(@project)
        end
        format.xml  { render :xml => @project,
          :status => :created, :location => @project }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project.errors,
          :status => :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.xml
  def update
    @project = current_user.projects.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        flash[:notice] = 'Project was successfully updated.'
        format.html { redirect_to(@project) }
        format.xml { render :xml => @project }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project.errors, :status => :unprocessable_entity }
      end
    end
	
	rescue ActiveRecord::RecordNotFound => e
    prevent_access(e)
  end
  # DELETE /projects/1
  # DELETE /projects/1.xml
  def destroy
    @project = current_user.projects.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to(projects_url) }
      format.xml  { render :xml => @project }
    end
  rescue ActiveRecord::RecordNotFound => e
    prevent_access(e)
  end

  private
    def prevent_access(e)
      logger.info "ProjectsController#prevent_access: #{e}"
      respond_to do |format|
        format.html { redirect_to(projects_url) }
        format.xml  { render :text => "error" }
      end
    end
end