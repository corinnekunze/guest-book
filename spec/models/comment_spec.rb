require 'spec_helper'

describe Comment do
  before do
    @comment = Comment.new(message: "Hello there!")
  end

  subject { @comment }

  it { should respond_to(:message) }
  it { should be_valid }

  describe "when message is not present" do
    before { @comment.message = " " }
    it { should_not be_valid }
  end

  describe "when message is too long" do
  	before { @comment.message = "a" * 51 }
  	it { should_not be_valid }
  end
end
