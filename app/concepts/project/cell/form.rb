module Project::Cell
  class Form < Trailblazer::Cell
    # https://github.com/trailblazer/cells-rails/issues/23
    def protect_against_forgery?
      controller.send(:protect_against_forgery?)
    end

    def form_authenticity_token(*args)
      controller.send(:form_authenticity_token, *args)
    end
  end
end
