class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  attr_readonly :uuid
end
