require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :views }
    it { is_expected.to have_db_column :email }
end

    describe 'Validations' do
        it { is_expected.to validate_presence_of :views}
    end

    describe 'Factory' do
        it 'should have valid factory' do
            expect(FactoryBot.create(:comment)).to be_valid
        end
    end
end