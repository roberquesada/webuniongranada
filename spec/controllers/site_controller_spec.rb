require 'rails_helper'

RSpec.describe SiteController, type: :controller do
  describe "GET /" do
    context "#index" do
      it "expect 200 status code" do
        get :index
        expect(response).to have_http_status(200)
      end
    end
  end
end
