class PotterService

  def get_house_data(url, params)
    response = conn.get(url, params)
    parsed_data = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://www.potterapi.com/v1/') do |f|
      f.adapter Faraday.default_adapter
      f.params[:key] = ENV['POTTER_API_KEY']
    end
  end

end
