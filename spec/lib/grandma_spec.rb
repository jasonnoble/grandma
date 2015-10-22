require 'rspec'
require './lib/grandma'

describe Grandma do
  it 'should be a Grandma' do
    expect(subject).to be_a(Grandma)
  end

  describe '#talk(sentence)' do
    context 'when I say nothing' do
      it 'she replies with WHAT?!' do
        expect(subject.talk('')).to eq('WHAT?!')
      end
    end
    context 'when I ask something with a lower case letter' do
      it 'she replies with SPEAK UP, KID!' do
        expect(subject.talk('How are you grandma?')).to eq('SPEAK UP, KID!')
      end
    end
    context 'when I ask something IN ALL CAPS' do
      it 'she replies with NO, NOT SINCE 1946!' do
        expect(
          subject.talk('HOW ARE YOU GRANDMA?')
        ).to eq('NO, NOT SINCE 1946!')
      end
    end
    context "when I haven't said GOODBYE" do
      it 'she replies with LEAVING SO SOON?' do
        expect(subject.talk('GOODBYE')).to eq('LEAVING SO SOON?')
      end
    end
    context 'when I have said GOODBYE' do
      before(:each) do
        subject.talk('GOODBYE')
      end

      it 'she replies with LATER, SKATER!' do
        expect(subject.talk('GOODBYE')).to eq('LATER, SKATER!')
      end
    end
  end
end
