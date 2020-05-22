 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/sports", type: :request do
  # Sport. As you add validations to Sport, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Sport.create! valid_attributes
      get sports_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      sport = Sport.create! valid_attributes
      get sport_url(sport)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_sport_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      sport = Sport.create! valid_attributes
      get edit_sport_url(sport)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Sport" do
        expect {
          post sports_url, params: { sport: valid_attributes }
        }.to change(Sport, :count).by(1)
      end

      it "redirects to the created sport" do
        post sports_url, params: { sport: valid_attributes }
        expect(response).to redirect_to(sport_url(Sport.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Sport" do
        expect {
          post sports_url, params: { sport: invalid_attributes }
        }.to change(Sport, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post sports_url, params: { sport: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested sport" do
        sport = Sport.create! valid_attributes
        patch sport_url(sport), params: { sport: new_attributes }
        sport.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the sport" do
        sport = Sport.create! valid_attributes
        patch sport_url(sport), params: { sport: new_attributes }
        sport.reload
        expect(response).to redirect_to(sport_url(sport))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        sport = Sport.create! valid_attributes
        patch sport_url(sport), params: { sport: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested sport" do
      sport = Sport.create! valid_attributes
      expect {
        delete sport_url(sport)
      }.to change(Sport, :count).by(-1)
    end

    it "redirects to the sports list" do
      sport = Sport.create! valid_attributes
      delete sport_url(sport)
      expect(response).to redirect_to(sports_url)
    end
  end
end
