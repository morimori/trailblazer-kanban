class ProjectsController < ApplicationController
  def index
    run Project::Index
    render cell(Project::Cell::Index, result["model"], layout: Site::Cell::Layout), layout: false
  end

  def new
    run Project::Create::Present
    render cell(Project::Cell::New, @form, layout: Site::Cell::Layout), layout: false
  end

  def create
    run Project::Create do |result|
      return redirect_to projects_path
    end

    flash.now[:alert] = @form.errors.messages.join("\n")
    render cell(Project::Cell::New, @form, layout: Site::Cell::Layout), layout: false
  end

  def edit
    run Project::Update::Present
    render cell(Project::Cell::Edit, @form, layout: Site::Cell::Layout), layout: false
  end

  def update
    run Project::Update do |result|
      return redirect_to projects_path
    end

    flash.now[:alert] = @form.errors.messages.map { |k, v| v.map { |msg| "#{k} #{msg}" } }.join("\n")
    render cell(Project::Cell::Edit, @form, layout: Site::Cell::Layout), layout: false
  end

  def destroy
    run Project::Delete

    flash[:alert] = "Post deleted"
    redirect_to projects_path
  end
end
