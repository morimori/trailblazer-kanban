class Project::Delete < Trailblazer::Operation
  step Model(Project, :find_by)
  step :delete!

  def delete!(options, model:, **)
    model.destroy
  end
end
