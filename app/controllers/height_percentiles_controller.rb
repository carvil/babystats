class HeightPercentilesController < ApplicationController
  # GET /height_percentiles
  # GET /height_percentiles.xml
  def index
    @height_percentiles = HeightPercentile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @height_percentiles }
    end
  end

  # GET /height_percentiles/1
  # GET /height_percentiles/1.xml
  def show
    @height_percentile = HeightPercentile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @height_percentile }
    end
  end

  # GET /height_percentiles/new
  # GET /height_percentiles/new.xml
  def new
    @height_percentile = HeightPercentile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @height_percentile }
    end
  end

  # GET /height_percentiles/1/edit
  def edit
    @height_percentile = HeightPercentile.find(params[:id])
  end

  # POST /height_percentiles
  # POST /height_percentiles.xml
  def create
    @height_percentile = HeightPercentile.new(params[:height_percentile])

    respond_to do |format|
      if @height_percentile.save
        format.html { redirect_to(@height_percentile, :notice => 'Height percentile was successfully created.') }
        format.xml  { render :xml => @height_percentile, :status => :created, :location => @height_percentile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @height_percentile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /height_percentiles/1
  # PUT /height_percentiles/1.xml
  def update
    @height_percentile = HeightPercentile.find(params[:id])

    respond_to do |format|
      if @height_percentile.update_attributes(params[:height_percentile])
        format.html { redirect_to(@height_percentile, :notice => 'Height percentile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @height_percentile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /height_percentiles/1
  # DELETE /height_percentiles/1.xml
  def destroy
    @height_percentile = HeightPercentile.find(params[:id])
    @height_percentile.destroy

    respond_to do |format|
      format.html { redirect_to(height_percentiles_url) }
      format.xml  { head :ok }
    end
  end
end
