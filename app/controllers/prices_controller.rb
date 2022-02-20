class PricesController < ApplicationController

    require 'rest-client'

    def get_current_price
        url = "https://api.coindesk.com/v1/bpi/currentprice.json"
        response = RestClient.get(url)
        render json: response
    end
end
