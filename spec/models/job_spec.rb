require 'rails_helper'

RSpec.describe Job, type: :model do
  context "Validations Check" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }    
    it { should validate_presence_of(:apply) }
    
    it { should validate_length_of(:title).is_at_least(10).is_at_most(120) }
  end

  describe 'Assoications Check' do
    it { should belong_to(:category) } 
  end
end