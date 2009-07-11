class RepositoriesController < ApplicationController
  
  # GET /repositories
  # GET /repositories.xml
  def index
  
	@repositories = current_user.repositories

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @repositories }
    end
  end

  # GET /repositories/1
  # GET /repositories/1.xml
  def show

      @repository = current_user.repositories.find(params[:id])
   
   
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @repository }
    end
	
	rescue ActiveRecord::RecordNotFound => e
    prevent_access(e)
	
  end

  # GET /repositories/new
  # GET /repositories/new.xml
  def new
    @repository = Repository.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @repository }
    end
  end

  # GET /repositories/1/edit
  def edit
   
	@repository = current_user.repositories.find(params[:id])
        rescue ActiveRecord::RecordNotFound => e
        prevent_access(e)
  end

  # POST /repositories
  # POST /repositories.xml
  def create
  
	@repository= current_user.repositories.build(params[:repository])
	
    respond_to do |format|
      if @repository.save
	  
	  format.html do
	  
        flash[:notice] = 'Repository was successfully created.'
        redirect_to(@repository) 
		
		end
		
        format.xml  { render :xml => @repository, :status => :created, :location => @repository }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @repository.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /repositories/1
  # PUT /repositories/1.xml
  def update
  
	@repository = current_user.repositories.find(params[:id])

    respond_to do |format|
      if @repository.update_attributes(params[:repository])
        flash[:notice] = 'Repository was successfully updated.'
        format.html { redirect_to(@repository) }
        format.xml { render :xml => @repository }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @repository.errors, :status => :unprocessable_entity }
      end
    end
	
	rescue ActiveRecord::RecordNotFound => e
    prevent_access(e)
	
  end

  # DELETE /repositories/1
  # DELETE /repositories/1.xml
  def destroy

	  @repository = current_user.repositories.find(params[:id])
      @repository.destroy

    respond_to do |format|
      format.html { redirect_to(repositories_url) }
      format.xml { render :xml => @repository }
    end

  rescue ActiveRecord::RecordNotFound => e
  prevent_access(e)
  
end


	private
	def prevent_access(e)
	logger.info "RepositoriesController#prevent_access: #{e}"
	respond_to do |format|
	format.html { redirect_to(repositories_url) }
	format.xml { render :text => "error" }
  end
 end
end
