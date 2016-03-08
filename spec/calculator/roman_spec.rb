require 'spec_helper'

describe Calculator::Roman do

  describe "Can convern roman to numeral" do

    roman_number = 'MCMXCIX'

    context "successfully" do
      it 'should convert to 1999' do
        expect(Calculator::Roman.convert_to_numeral(roman_number: roman_number)).to be 1999
      end
    end

    context "it does not provide the named parameters expected" do
      it { expect { Calculator::Roman.convert_to_numeral('foo') }.to raise_error(ArgumentError) }
    end

  end

end
