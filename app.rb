require 'sinatra'
require 'sinatra/activerecord'
require './models'
set :database, "sqlite3:artest.sqlite3"

get '/' do
	@user = User.create(fname: "Casey", lname: "Stinnett")
	erb :index
end

get '/user' do
	@user = User.last
	erb :user
end