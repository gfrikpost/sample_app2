require 'spec_helper'

describe "MicropostPages" do

  subject { page }
  
  let(:user) { FactoryGirl.create(:user) }
  before { sign_in user }
  
  describe "micropost creation" do
    before { visit root_path }
    
    describe "with invalid information" do
      
      it "should not create a micropost" do
        expect { click_button "Post" }.not_to change(Micropost, :count)
      end
      
<<<<<<< HEAD
      describe "error message" do
=======
      describe "error messages" do
>>>>>>> 426d1f5d66ed4d0e98c87b3d4ca88430cea09651
        before { click_button "Post" }
        it { should have_content('error') }
      end
    end
    
    describe "with valid information" do
      
      before { fill_in 'micropost_content', with: "Lorem ipsum" }
      it "should create a micropost" do
        expect { click_button "Post" }.to change(Micropost, :count).by(1)
      end
    end
  end
<<<<<<< HEAD

=======
>>>>>>> 426d1f5d66ed4d0e98c87b3d4ca88430cea09651
end
