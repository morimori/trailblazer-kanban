class Project::Edit < Trailblazer::Operation
  step Model(Project, :find_by)
end
