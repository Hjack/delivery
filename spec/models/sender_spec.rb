require 'rails_helper'
require 'factories/senders'

RSpec.describe Sender, type: :model do
  it 'is invalid without a name' do
    sender = build(:sender, name: nil)
    sender.save
    expect(sender).to_not be_valid
    expect(sender.errors.full_messages).to include('Name can\'t be blank')
  end

  it 'is valid with a name' do
    sender = create(:sender)
    expect(sender).to be_valid
  end
end
