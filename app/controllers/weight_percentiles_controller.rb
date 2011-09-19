class WeightPercentilesController < ApplicationController
  # GET /weight_percentiles
  # GET /weight_percentiles.xml
  def index
    @weight_percentiles = WeightPercentile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @weight_percentiles }
    end
  end

  # GET /weight_percentiles/1
  # GET /weight_percentiles/1.xml
  def show
    @weight_percentile = WeightPercentile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @weight_percentile }
    end
  end

  # GET /weight_percentiles/new
  # GET /weight_percentiles/new.xml
  def new
    @weight_percentile = WeightPercentile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @weight_percentile }
    end
  end

  # GET /weight_percentiles/1/edit
  def edit
    @weight_percentile = WeightPercentile.find(params[:id])
  end

  # POST /weight_percentiles
  # POST /weight_percentiles.xml
  def create
    @weight_percentile = WeightPercentile.new(params[:weight_percentile])

    respond_to do |format|
      if @weight_percentile.save
        format.html { redirect_to(@weight_percentile, :notice => 'Weight percentile was successfully created.') }
        format.xml  { render :xml => @weight_percentile, :status => :created, :location => @weight_percentile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @weight_percentile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /weight_percentiles/1
  # PUT /weight_percentiles/1.xml
  def update
    @weight_percentile = WeightPercentile.find(params[:id])

    respond_to do |format|
      if @weight_percentile.update_attributes(params[:weight_percentile])
        format.html { redirect_to(@weight_percentile, :notice => 'Weight percentile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @weight_percentile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_percentiles/1
  # DELETE /weight_percentiles/1.xml
  def destroy
    @weight_percentile = WeightPercentile.find(params[:id])
    @weight_percentile.destroy

    respond_to do |format|
      format.html { redirect_to(weight_percentiles_url) }
      format.xml  { head :ok }
    end
  end
end
