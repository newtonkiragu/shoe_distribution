require 'spec_helper'

describe Store do
  it 'Capitalizes a store\'s name' do
    store = Store.new(store_name: 'kiatu', location: 'Rongai', image: 'image')
    store.save
    expect(store.store_name).to eq('KIATU')
  end

  it 'validates presence of a store name' do
    store = Store.new(store_name: '', location: 'Rongai', image: 'image')
    expect(store.save).to eq(true)
  end
end
