# frozen_string_literal: true

json.brand_options do
  json.array! @brands
end

json.category_options do
  json.array! @categories
end
