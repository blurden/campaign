class ProjectsController < ApplicationController
  
  # GET /campaigns/1/projects/1
  # GET /campaigns/1/projects/1.json
  def show
    @campaign = Campaign.find(params[:campaign_id])
    @project = @campaign.projects.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  # GET /campaigns/1/projects/new
  # GET /campaigns/1/projects/new.json
  def new
    @campaign = Campaign.find(params[:campaign_id])
    @project = @campaign.projects.new(params[:project])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /campaigns/1/projects/1/edit
  def edit
    @campaign = Campaign.find(params[:campaign_id])
    @project = @campaign.projects.find(params[:id])
  end

  # POST /campaigns/1/projects
  # POST /campaigns/1/projects.json
  def create
    @campaign = Campaign.find(params[:campaign_id])
    @project = @campaign.projects.create(params[:project])
    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to campaign_path(@campaign), notice: 'Project was successfully created.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /campaigns/1/projects/1
  # PUT /campaigns/1/projects/1.json
  def update
    @campaign = Campaign.find(params[:campaign_id])
    @project = @campaign.projects.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to campaign_path(@campaign), notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @campaign = Campaign.find(params[:campaign_id])
    @project = @campaign.projects.find(params[:id])
    @project.destroy
    
    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to campaign_path(@campaign), notice: 'Project was successfully deleted.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

end

