require "rails_helper"

describe PeopleController do
  describe "#create" do
    context "when person is valid" do
      it "redirects to #show" do
        visit '/people/new'
        fill_in 'first_name', with: "James"
        click "Create Person"
        puts page
        expect(page).to have_content "James"
      end
    end

    context "when person is invalid" do
      it "renders the 'new' template" do
        pending "create this test"
      end
    end
  end
end
