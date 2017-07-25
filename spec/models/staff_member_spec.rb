require 'rails_helper'

RSpec.describe StaffMember, :type => :model do
  
  #pending "add some examples to (or delete) #{__FILE__}"

  describe '#password=' do
  	example '文字列を与えると、hashed_passwordの長さは６０文字になる' do
  		member = StaffMember.new
  		member.password = 'baukis'
  		expect(member.hashed_password).to be_kind_of(String)
  		expect(member.hashed_password.size).to eq(60)
  	end
  end
end
