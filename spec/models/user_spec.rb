require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_secure_password }
  it { is_expected.to validate_presence_of(:username) }
  it { is_expected.to validate_uniqueness_of(:username) }
end
