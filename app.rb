require 'bundler/setup'
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  @stores = Store.all
  erb(:index)
end
get '/about' do
  erb(:about)
end

get '/store' do
  @brands = Brand.all
  @stores = Store.all
  @store = Store.find(params.fetch('id').to_i)
  erb(:store)
end

post '/stores/new' do
  new_store = Store.new(store_name: params.fetch('store_name'), location: params.fetch('store_location'), image: params.fetch('image'))
  if new_store.save
    redirect '/'
  else
    erb(:error)
  end
end

post '/brands/new' do
  new_brand = Brand.new(brand_name: params.fetch('brand_name'), image: params.fetch('image'))
  if new_brand.save
    redirect '/stores/:id'
  else
    erb(:error)
  end
end

get '/stores/:id' do
  @brands = Brand.all
  @store = Store.find(params.fetch("id").to_i())
  erb(:store)
end

delete '/stores/:id' do
  @store = Store.find(params.fetch('id').to_i)
  @stores = Store.all
  if @store.destroy
    redirect '/'
  else
    erb(:error)
  end
end

get("/stores/:id/edit") do
  @store = Store.find(params.fetch("id").to_i)
  erb(:store_edit)
end

patch '/stores/:id/edit' do
  @store = Store.find(params.fetch('id').to_i)
  @store.update(store_name: params.fetch('store_name'), location: params.fetch('store_location'), image: params.fetch('image'))
  erb(:store)
end
