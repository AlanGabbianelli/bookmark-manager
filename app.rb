ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require './app/models/link.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb(:'links/index')
  end

  get '/links/new' do
    erb(:'links/form')
  end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
