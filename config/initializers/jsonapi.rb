# class PeepsOperationsProcessor < ActiveRecordOperationsProcessor
#   after_find_operation do
#     @operation_links.merge!(
#         phone_numbers: {linkage: {id: 1, number: '123456'}}
#     )
#   end
# end

JSONAPI.configure do |config|
  #:underscored_key, :camelized_key, :dasherized_key, or custom
  config.json_key_format = :underscored_key

  #:underscored_route, :camelized_route, :dasherized_route, or custom
  config.route_format = :underscored_route

  config.top_level_meta_include_record_count = true

  config.top_level_links_include_pagination = true
  config.default_paginator = :paged

  # config.operations_processor = :peeps
end