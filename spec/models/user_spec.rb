require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
    let(:name) {User.new(email: "a@a.com", password:"1234")}
    let(:correct_email) { "bob@bob.com"}
    let(:incorrect_email)    { 'bob@bobcom' }

        context "validations" do
            it { should validate_presence_of(:email) }
            it { should validate_uniqueness_of(:email) }
        end

        context "associations" do

            it { should have_many(:authentications) }
        end


    it "oauth requires 2 arguments" do
        expect { User.create_with_auth_and_hash}.to raise_error(ArgumentError)
    end

    it "takes in a correct email" do #happy
        expect{User.create(email: correct_email)}.not_to raise_error
    end

    it "does not take an incorrect email" do #unhappy
        User.create(email: incorrect_email)
        expect( User.find_by(email: incorrect_email) ).to be nil
    end

end

