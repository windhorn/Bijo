require 'rails_helper'

RSpec.describe User, :type => :model do
  describe 'hello method'do
    before do
      user = User.new
      user.name = "テスト　太郎"
      user.age = 30
      user.profile = "私はエンジニアです．"
      user.save
      @user = User.where("age = ?", 30).first
    end
    context "normal case." do
      it "not null" do
        @user.hello.should_not be_nil
      end
    end
  end
end
