require 'rails_helper'

RSpec.describe "PotterService" do
  describe "getting api data" do
    it "returns characters data by house " do

      service = PotterService.new
      raw_data = service.get_house_data("/houses")

      expect(service).to be_an_instance_of(PotterService)
      expect(raw_data).to be_a Hash
      expect(raw_data[0]).to have_key :school
      expect(raw_data[0]).to have_key :_id
    end
  end
end
