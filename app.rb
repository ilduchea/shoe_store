require 'bundler/setup'
require 'money'
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
