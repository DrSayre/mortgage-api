# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rate = HTTParty.get('http://www.zillow.com/webservice/GetRateSummary.htm?zws-id=X1-ZWz19v7o09o16z_9myga&output=json')
Rate.where(rate_date: Date.today).first_or_create(fifteen_year_fixed: (rate['response']['today']['fifteenYearFixed'].to_f/100))
