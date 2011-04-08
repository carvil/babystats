class BabiesController < ApplicationController
  # GET /babies
  # GET /babies.xml
  def index
    @babies = Baby.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @babies }
    end
  end

  # GET /babies/1
  # GET /babies/1.xml
  def show
    @baby = Baby.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @baby }
    end
  end

  # GET /babies/new
  # GET /babies/new.xml
  def new
    @baby = Baby.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @baby }
    end
  end

  # GET /babies/1/edit
  def edit
    @baby = Baby.find(params[:id])
  end

  # POST /babies
  # POST /babies.xml
  def create
    @baby = Baby.new(params[:baby])

    respond_to do |format|
      if @baby.save
        format.html { redirect_to(@baby, :notice => 'Baby was successfully created.') }
        format.xml  { render :xml => @baby, :status => :created, :location => @baby }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @baby.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /babies/1
  # PUT /babies/1.xml
  def update
    @baby = Baby.find(params[:id])

    respond_to do |format|
      if @baby.update_attributes(params[:baby])
        format.html { redirect_to(@baby, :notice => 'Baby was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @baby.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /babies/1
  # DELETE /babies/1.xml
  def destroy
    @baby = Baby.find(params[:id])
    @baby.destroy

    respond_to do |format|
      format.html { redirect_to(babies_url) }
      format.xml  { head :ok }
    end
  end
end
