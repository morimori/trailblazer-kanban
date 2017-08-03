module Site::Cell
  class Layout < Trailblazer::Cell
    include ActionView::Helpers::CsrfHelper

    delegate :flash, to: :parent_controller
  end
end
