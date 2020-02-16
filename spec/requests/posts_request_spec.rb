require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET index" do
    it "has a 302 status code" do
      get '/posts'
      expect(response.status).to eq(302)
    end
  end
end
