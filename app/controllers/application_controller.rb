class ApplicationController < ActionController::Base # JSONAPI::ResourceController
  include JSONAPI::ActsAsResourceController
  protect_from_forgery with: :null_session

  def render_results(operation_results)
    response_document = create_response_document(operation_results)
    logger.ap "RESPONSE: #{response_document.status}\n", :debug
    logger.ap response_document.contents, :debug

    super(operation_results)
  end

end
