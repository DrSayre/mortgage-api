module Api
  module V1
    # app/controllers/api/v1/rates_controller.rb
    class RatesController < ApplicationController
      def index
        @rate = Rate.find_by(rate_date: Date.today)
        if @rate.nil?
          rate = HTTParty.get('http://www.zillow.com/webservice/GetRateSummary.htm?zws-id=X1-ZWz19v7o09o16z_9myga&output=json')
          @rate = Rate.create(rate_date: Date.today, fifteen_year_fixed: (rate['response']['today']['fifteenYearFixed'].to_f/100))
        end
        render json: @rate
      end
    end
  end
end
