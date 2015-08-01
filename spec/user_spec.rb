require 'spec_helper'

describe "User" do

  let(:connor) {User.create(name: "Connor", email: "connorboyle17@gmail.com", password:"password1234", address_1: "4 Dorking Road", suburb: "Brooklyn", city: "Wellington", post_code: "6021", phone: "0223942418")}
  before do
    User.destroy_all
  end

  describe "#address_to_s" do
    it "concatenates address fields in to a string" do
      expect(connor.address_to_s).to eq("4 Dorking Road Brooklyn Wellington 6021")
    end
  end
end
