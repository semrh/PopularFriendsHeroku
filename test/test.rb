ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require_relative '../twitter.rb'

include Rack::Test::Methods

  def app
     Sinatra::Application
  end

describe "Popularidad en Twitter" do
  @seguidores = PopularUser.new
  @client = my_twitter_client()
  @name = "dewrrm"

  it "carga la pagina en el servidor?" do
    get '/'
    assert last_response.ok?
  end

  it "el titulo de la pagina es popularidad en twitter?" do
    get '/'
    assert last_response.body.include?("<title>Popularidad en Twitter</title>"), "El titulo debe ser 'Popularidad en Twitter'"
  end

  it "existe formulario donde preguntar nombre y cantidad de amigos a contar?" do
    get '/'
    assert last_response.body.include?("Introduzca su nombre en Twitter:"), "El body debe contener nombre usuario."
    assert last_response.body.include?("Introduzca el numero de seguidores que desea:"), "El body debe contener cuantos amigos."	
  end
#  it "existe el usuario?" do
#    assert @seguidores.usuario(@client, @name)
#  end
end
