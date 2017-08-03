require 'reform/form/dry'

module Project::Contract
  class Create < Reform::Form
    include Dry

    property :name
    property :goal

    validation do
      required(:name).filled
      required(:goal).filled
    end
  end
end
