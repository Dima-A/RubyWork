require "./lib/testRubyWorkGem.rb"
require 'rspec'

describe '.string' do
  describe '#valid_brackets?' do
    context 'when valid' do
      it { expect('()(()())'.valid_brackets?).to eq(true) }
    end
    context 'when valid' do
      it { expect('qwerty()'.valid_brackets?).to eq(true) }
    end
    context 'when not valid' do
      it { expect(')())'.valid_brackets?).to eq(false) }
    end
  end
  describe '#palindrome?' do
    context 'when valid' do
      it { expect("taco cat".palindrome?).to eq(true) }
    end
    context 'when valid' do
      it { expect("A man, a plan, a canal, Panama!".palindrome?).to eq(true) }
    end
    context 'when valid' do
      it { expect("abcdcba".palindrome?).to eq(true) }
    end
  end
end