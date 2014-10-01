# -*- coding: utf-8 -*-
require 'twitter'
require 'sinatra'

require './configure'

get '/' do
  @seguidores = []
  @name = ''
  @number = 0		
  erb :twitter
end

post '/' do
  @seguidores = []
  client = my_twitter_client() 
  @name = params[:firstname] || ''
  @number = params[:n].to_i
  @number = 10 if @number > 10
  if client.user? @name 
    amigos = client.friends(@name,{})
    amigos = amigos.map { |i| [i.name, i.followers_count]}
    amigos = amigos.sort_by { | x,y | -y}
    @seguidores = amigos.take(@number)
  end      
  erb :twitter
end
