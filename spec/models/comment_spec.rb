require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :body }
    it { is_expected.to have_db_column :commenter }
end

    describe 'Validations' do
        it { is_expected.to validate_presence_of :body}
    end

    describe 'Factory' do
        it 'should have valid factory' do
            expect(FactoryBot.create(:comment)).to be_valid
        end
    end
end