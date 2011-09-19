class HeadCircumferencePercentilesController < ApplicationController
  # GET /head_circumference_percentiles
  # GET /head_circumference_percentiles.xml
  def index
    @head_circumference_percentiles = HeadCircumferencePercentile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @head_circumference_percentiles }
    end
  end

  # GET /head_circumference_percentiles/1
  # GET /head_circumference_percentiles/1.xml
  def show
    @head_circumference_percentile = HeadCircumferencePercentile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @head_circumference_percentile }
    end
  end

  # GET /head_circumference_percentiles/new
  # GET /head_circumference_percentiles/new.xml
  def new
    @head_circumference_percentile = HeadCircumferencePercentile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @head_circumference_percentile }
    end
  end

  # GET /head_circumference_percentiles/1/edit
  def edit
    @head_circumference_percentile = HeadCircumferencePercentile.find(params[:id])
  end

  # POST /head_circumference_percentiles
  # POST /head_circumference_percentiles.xml
  def create
    @head_circumference_percentile = HeadCircumferencePercentile.new(params[:head_circumference_percentile])

    respond_to do |format|
      if @head_circumference_percentile.save
        format.html { redirect_to(@head_circumference_percentile, :notice => 'Head circumference percentile was successfully created.') }
        format.xml  { render :xml => @head_circumference_percentile, :status => :created, :location => @head_circumference_percentile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @head_circumference_percentile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /head_circumference_percentiles/1
  # PUT /head_circumference_percentiles/1.xml
  def update
    @head_circumference_percentile = HeadCircumferencePercentile.find(params[:id])

    respond_to do |format|
      if @head_circumference_percentile.update_attributes(params[:head_circumference_percentile])
        format.html { redirect_to(@head_circumference_percentile, :notice => 'Head circumference percentile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @head_circumference_percentile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /head_circumference_percentiles/1
  # DELETE /head_circumference_percentiles/1.xml
  def destroy
    @head_circumference_percentile = HeadCircumferencePercentile.find(params[:id])
    @head_circumference_percentile.destroy

    respond_to do |format|
      format.html { redirect_to(head_circumference_percentiles_url) }
      format.xml  { head :ok }
    end
  end
end
