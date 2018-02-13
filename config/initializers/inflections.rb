# Be sure to restart your server when you modify this file.

 ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.singular "criteria", "criterion"
  inflect.plural "criterion", "criteria"
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
 end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
