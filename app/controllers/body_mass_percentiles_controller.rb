class BodyMassPercentilesController < ApplicationController
  # GET /body_mass_percentiles
  # GET /body_mass_percentiles.xml
  def index
    @body_mass_percentiles = BodyMassPercentile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @body_mass_percentiles }
    end
  end

  # GET /body_mass_percentiles/1
  # GET /body_mass_percentiles/1.xml
  def show
    @body_mass_percentile = BodyMassPercentile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @body_mass_percentile }
    end
  end

  # GET /body_mass_percentiles/new
  # GET /body_mass_percentiles/new.xml
  def new
    @body_mass_percentile = BodyMassPercentile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @body_mass_percentile }
    end
  end

  # GET /body_mass_percentiles/1/edit
  def edit
    @body_mass_percentile = BodyMassPercentile.find(params[:id])
  end

  # POST /body_mass_percentiles
  # POST /body_mass_percentiles.xml
  def create
    @body_mass_percentile = BodyMassPercentile.new(params[:body_mass_percentile])

    respond_to do |format|
      if @body_mass_percentile.save
        format.html { redirect_to(@body_mass_percentile, :notice => 'Body mass percentile was successfully created.') }
        format.xml  { render :xml => @body_mass_percentile, :status => :created, :location => @body_mass_percentile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @body_mass_percentile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /body_mass_percentiles/1
  # PUT /body_mass_percentiles/1.xml
  def update
    @body_mass_percentile = BodyMassPercentile.find(params[:id])

    respond_to do |format|
      if @body_mass_percentile.update_attributes(params[:body_mass_percentile])
        format.html { redirect_to(@body_mass_percentile, :notice => 'Body mass percentile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @body_mass_percentile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /body_mass_percentiles/1
  # DELETE /body_mass_percentiles/1.xml
  def destroy
    @body_mass_percentile = BodyMassPercentile.find(params[:id])
    @body_mass_percentile.destroy

    respond_to do |format|
      format.html { redirect_to(body_mass_percentiles_url) }
      format.xml  { head :ok }
    end
  end
end
