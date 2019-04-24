require 'rails_helper'

@omniauth_test
describe User, :type => :model do
    context ".from_omniauth" do
        before :each do
            @time = DateTime.now
            @auth = {
                provider: "github",
                uid: "44305943",
                info: {
                  name: "Devina Dhuri",
                  email: "ddhuri1@binghamton.edu"
                }
              }
            
            @new_user = {
                provider: "facebook",
                uid: "2260413947314920",
                info:{
                    name: "Candice Dhuri",
                    email: "candicedhuri@gmail.com"
                }
            }
        end
        it "receives from_omniauth method on User" do
          expect(User).to receive(:find_with_omniauth).with(@auth).and_return(@user)
          User.find_with_omniauth(@auth)
        end
    
        it "returns correct provider"  do
            allow(User).to receive(:find_with_omniauth).with(@auth).and_return(@new_user)
            expect(@new_user[:provider]).to eq("facebook")
            @new_user = User.find_with_omniauth(@auth)
        end
        
        it "returns correct uid" do
            allow(User).to receive(:find_with_omniauth).with(@auth).and_return(@new_user)
            @new_user = User.find_with_omniauth(@auth)
            expect(@new_user[:uid]).to eq("2260413947314920")
        end
        
        
        it "returns correct info" do
            allow(User).to receive(:find_with_omniauth).with(@info).and_return(@new_user)
            @new_user = User.find_with_omniauth(@info)
            expect(@new_user[:info][:name]).to eq("Candice Dhuri")
            expect(@new_user[:info][:email]).to eq("candicedhuri@gmail.com")
        end
    end
end