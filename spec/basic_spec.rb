RSpec.describe "Outer Example Group" do
  describe 'Nested Example Group' do
    it 'tests simple calculation of a,b addition' do
      expect(5+8).to eq 13
    end
  end

  context 'Other Nested Example Group' do
    it 'test simple calculation of a,b substraction' do
      expect(10-5).to eq 5
    end
  end
end