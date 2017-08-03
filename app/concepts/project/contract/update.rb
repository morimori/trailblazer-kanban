module Project::Contract
  class Update < Reform::Form
    include Dry

    property :name
    property :goal

    validation do
      required(:name).filled
      required(:goal).filled
    end
  end
end
