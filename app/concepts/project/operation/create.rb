class Project::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(Project, :new)
    step Contract::Build( constant: Project::Contract::Create )
  end

  step Nested( Present )
  step Contract::Validate( key: :project )
  step Contract::Persist( )
end
