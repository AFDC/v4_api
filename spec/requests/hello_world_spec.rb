require "rails_helper"

RSpec.describe "GET /", type: :request do
  let(:url) {'/'}

  context 'when the user is not logged in' do
    before { get url }

    it "responds politely" do
      json = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(json['message']).to eq('Greetings, guest!')
    end
  end
end