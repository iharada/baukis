require 'rails_helper'

RSpec.describe Administrator, :type => :model do

  #pending "add some examples to (or delete) #{__FILE__}"

  describe '#password=' do
  	example '文字列を与えると、hashed_passwordの長さは６０文字になる' do
  		a = Administrator.new
  		a.password = 'qwerty'
  		expect(a.hashed_password).to be_kind_of(String)
  		expect(a.hashed_password.size).to eq(60)
  	end
  end
end
