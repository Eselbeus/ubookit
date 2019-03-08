require 'rails_helper'

RSpec.describe Musician, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  # describe Musician do
  # end

  describe "test" do
    context 'blah' do
      it 'rfjfjfj' do
        expect(Musician.find(1).rating_eligible?(0)).to be_truthy
      end
    end
  end

  # describe 'rating_eligible?' do
  #
  #     it 'returns true is > 2.5' do
  #       expect((2 + 3) == (4))
  #     end
  #
  # end
end
