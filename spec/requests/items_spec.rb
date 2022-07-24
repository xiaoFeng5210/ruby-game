require "rails_helper"

RSpec.describe "Items", type: :request do
  describe "GET /items" do
    it "index by page" do
      11.times do
        Item.create amount: 100
      end
      expect(Item.count).to eq(11)
      get "/api/v1/items"
      expect(response).to have_http_status(200)
      json = JSON.parse(response.body)
      expect(json['resources'].size).to eq(10)
    end
  end
end
