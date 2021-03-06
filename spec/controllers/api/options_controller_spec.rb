require "rails_helper"
require "controllers/shared_examples/login_behavior"

RSpec.describe Api::OptionsController, type: :controller do
  describe "GET index" do
    let(:current_user) { create :user, :with_listings_that_have_rented_out }
    let(:action) { :index }
    let(:params) {}
    let(:expected_keys) { ["brand_options", "category_options"] }
    let(:return_content) { JSON.parse(response.body) }

    it_behaves_like "logged and not logged in"

    context "logged in" do
      before { get(action, session: { session_token: current_user.session_token }) }

      it "returns the correct data format" do
        expect(return_content.keys).to match_array(expected_keys)
      end
    end
  end
end
