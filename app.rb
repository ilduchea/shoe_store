require 'bundler/setup'

Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  @stores = Store.all
  erb :index
end

get '/create_store' do
  erb :create_store
end

post '/create_store' do
  name = params.fetch('name')
  Store.create({name: name})
  redirect '/'
end

get '/create_shoe' do
  erb :create_shoe
end

post '/create_shoe' do
  brand = params.fetch('brand')
  number = params.fetch('price').to_i
  price = Shoe.to_money(number)
  Shoe.create({brand: brand, price: price})
  redirect '/'
end

get '/store/:id' do
  store_id = params.fetch('id').to_i
  @store = Store.find(store_id)
  @store_shoes = @store.shoes
  @shoes = Shoe.order('brand')
  erb :store
end

delete '/delete_store/:id' do
  id = params.fetch('id').to_i
  store = Store.find(id)
  store.destroy
  redirect '/'
end

patch '/edit_name/:id' do
  id = params.fetch('id').to_i
  name = params.fetch('name')
  store = Store.find(id)
  store.update({name: name})
  redirect "/store/#{id}"
end
