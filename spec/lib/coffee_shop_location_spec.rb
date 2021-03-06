require 'spec_helper'

RSpec.describe CoffeeShopLocation do
  describe 'build' do
    subject { CoffeeShopLocation.build(input) }

    context 'with a complete valid input' do
      let(:input) { 'Starbucks Seattle,47.5809,-122.3160' }

      its(:x) { is_expected.to eq 47.5809 }

      its(:y) { is_expected.to eq -122.3160 }

      its(:name) { is_expected.to eq 'Starbucks Seattle' }

      it { is_expected.to be_valid }
    end

    context 'with incomplete input' do
      let(:input) { 'Starbucks Seattle,47.5809' }

      it { is_expected.not_to be_valid }
    end
  end
end