module Project::Cell
  class Index < Trailblazer::Cell
    def total
      return "No element" if model.size == 0
    end
  end
end
