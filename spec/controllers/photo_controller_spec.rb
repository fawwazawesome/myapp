require 'rails_helper'

RSpec.describe PhotoController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #store" do
    it "returns http success" do
      get :store
      expect(response).to have_http_status(:success)
    end
  end

end
