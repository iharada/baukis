require 'rails_helper'

describe Staff::Authenticator do
	describe '#authenticate' do
		example '正しいパスワードなりtrueを返す' do
			m = build(:staff_member)
			expect(Staff::Authenticator.new(m).authenticate('pw')).to be_truthy
		end

		example '誤ったパスワードならfalseを返す' do
			m = build(:staff_member)
			expect(Staff::Authenticator.new(m).authenticate('xy')).to be_falsey
		end

		example 'パスワード未設定ならfalseを返す' do
			m = build(:staff_member, password: nil)
			expect(Staff::Authenticator.new(m).authenticate(nil)).to be_falsey
		end

		example '停止フラグが立っていればfalseを返す' do
			m = build(:staff_member, suspended: true)
			expect(Staff::Authenticator.new(m).authenticate('pw')).to be_falsey
		end
	end
end
