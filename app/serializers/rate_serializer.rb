# app/serializers/rate_serializer.rb
class RateSerializer < ActiveModel::Serializer
  attributes :id, :fifteen_year_fixed, :rate_date
end
