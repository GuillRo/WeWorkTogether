class ServiceList < ApplicationRecord
  belongs_to :service
  belongs_to :workspace
end
