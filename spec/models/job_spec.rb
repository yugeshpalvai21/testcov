require 'rails_helper'

RSpec.describe Job, type: :model do
  context "Validations Check" do
    it 'ensure title is presence' do
      job = Job.new(description: 'some description', apply: 'instructions')
      expect(job).not_to be_valid
    end
    it 'ensure description is presence' do
      job = Job.new(title: 'some title', apply: 'instructions')
      expect(job).not_to be_valid
    end
    it 'ensure title is presence' do
      job = Job.new(description: 'some description', title: 'title')
      expect(job).not_to be_valid
    end
    it 'saves new Job with all attributes' do
      job = Job.new(title: 'some title', description: 'some description', apply: 'instructions').save
      expect(job).to eq(true)
    end
  end
end