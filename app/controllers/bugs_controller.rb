class BugsController < ApplicationController
  # GET /bugs
  # GET /bugs.xml
  def index
    
	#@bugs = Bug.find(:all)
	
	@bugs = current_user.bugs

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bugs }
    end
  end

  # GET /bugs/1
  # GET /bugs/1.xml
  def show
    
	#@bug = Bug.find(params[:id])

	@bug = current_user.bugs.find(params[:id])
	
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bug }
    end
	
	rescue ActiveRecord::RecordNotFound => e
	
	prevent_access(e)
	
  end

  # GET /bugs/new
  # GET /bugs/new.xml
  def new
    @bug = Bug.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bug }
    end
  end

  # GET /bugs/1/edit
  def edit
    
	#@bug = Bug.find(params[:id])
  
	@bug = current_user.bugs.find(params[:id])
	rescue ActiveRecord::RecordNotFound => e
	prevent_access(e)
  
  end

  # POST /bugs
  # POST /bugs.xml
  def create
    
	#@bug = Bug.new(params[:bug])

    #respond_to do |format|
      #if @bug.save
        #flash[:notice] = 'Bug was successfully created.'
        #format.html { redirect_to(@bug) }
        #format.xml  { render :xml => @bug, :status => :created, :location => @bug }
      #else
        #format.html { render :action => "new" }
        #format.xml  { render :xml => @bug.errors, :status => :unprocessable_entity }
      #end
    #end
	
	@bug = current_user.bugs.build(params[:bug])
		respond_to do |format|
		if @bug.save
		format.html do
		flash[:notice] = 'The Bug was created successfully.'
		redirect_to(@bug)
	end
		format.xml { render :xml => @bug, :status => :created, :location => @bug }
	else
	
	format.html { render :action => "new" }
	format.xml { render :xml => @bug.errors, :status => :unprocessable_entity }
  end
 end
end

  # PUT /bugs/1
  # PUT /bugs/1.xml
  def update
    
    respond_to do |format|
      if @bug.update_attributes(params[:bug])
        flash[:notice] = 'Bug was successfully updated.'
        format.html { redirect_to(@bug) }
        format.xml { render :xml => @bug }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bug.errors, :status => :unprocessable_entity }
      end
    end
	
	rescue ActiveRecord::RecordNotFound => e
    prevent_access(e)
  end

  # DELETE /bugs/1
  # DELETE /bugs/1.xml
  def destroy
  
    #@bug = Bug.find(params[:id])
	@bug = current_user.bugs.find(params[:id])
    @bug.destroy

    respond_to do |format|
      format.html { redirect_to(bugs_url) }
      format.xml { render :xml => @bug }
    end
	
	rescue ActiveRecord::RecordNotFound => e
    prevent_access(e)
  end
  
  private
  def prevent_access(e)
  logger.info "BugsController#prevent_access: #{e}"
  respond_to do |format|
  format.html { redirect_to(bugs_url) }
  format.xml { render :text => "error" }
 end
end
  
end
