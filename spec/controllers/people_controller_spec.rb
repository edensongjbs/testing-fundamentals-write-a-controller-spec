require "rails_helper"

describe PeopleController do
  describe "#create" do
    context "when person is valid" do
      it "redirects to #show" do
        # person = create(:person)

        post :create, person: {first_name:"James"}
        expect(response).to redirect_to person_path
      end
    end

    context "when person is invalid" do
      it "renders the 'new' template" do
        pending "create this test"
      end
    end
  end
end
