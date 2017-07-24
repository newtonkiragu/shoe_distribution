require 'spec_helper'

describe Brand do
  it 'Capitalizes a brand\'s name' do
    brand = Brand.new(brand_name: 'branda', image: 'image')
    brand.save
    expect(brand.brand_name).to eq('Branda')
  end

  it 'validates presence of a brand name' do
    brand = Brand.new(brand_name: '',  image: 'image')
    expect(brand.save).to eq(false)
  end
end
