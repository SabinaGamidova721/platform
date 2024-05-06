class IndexController < ApplicationController
  def select_type; end

  def home
    @services = Service.all
    @services_by_type = group_services_by_type(@services)
    # @exchange_rates = get_exchange_rates
  end

  def exchange
    @exchange_rates = get_exchange_rates
  end

  def exchange
    @exchange_rates = get_exchange_rates
  end

  private

  def group_services_by_type(services)
    services_by_type = {}
    services.each do |service|
      services_by_type[service[:service_type]] ||= []
      services_by_type[service[:service_type]] << service
    end
    services_by_type
  end

  def get_exchange_rates
    uri = URI('https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=5')
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
<<<<<<< HEAD
=======

  # def get_exchange_rates
  #   source = 'https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=5'
  #   resp = Net::HTTP.get_response(URI.parse(source))
  #   data = resp.body
  #   result = JSON.parse(data)
  #   return result
  # end
>>>>>>> 8994db95e97503f998e933da9501c0c1b79165cb
end
