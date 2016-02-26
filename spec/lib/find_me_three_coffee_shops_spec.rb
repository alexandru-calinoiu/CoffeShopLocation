require 'spec_helper'

RSpec.describe FindMeThreeCoffeeShops do
  subject { FindMeThreeCoffeeShops.new(47.6, -122.4, File.expand_path(File.join('../../support/CoffeeShops.csv'), __FILE__)).matches }

  its(:length) { is_expected.to eq 3 }

  its('[0]') { is_expected.to eq 'Starbucks Seattle2,0.0645' }

  its('[1]') { is_expected.to eq 'Starbucks Seattle,0.0861' }

  its('[2]') { is_expected.to eq 'Starbucks SF,10.0793' }

  it 'works' do
    subject
  end
end
