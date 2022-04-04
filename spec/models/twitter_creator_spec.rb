require 'rails_helper'

RSpec.describe TwitterCreator, type: :model do
  it "TwitterCreator raises ArgumentError" do
    expect do
      TwitterCreator.new
    end.to raise_error(ArgumentError)
  end
end
