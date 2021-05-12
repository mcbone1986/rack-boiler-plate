require 'pry'
require 'json'

class Application

  

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    def index
      [200, {'Content-Type' => 'application/json'}, [Games.all.to_json] ]
    end

    def consoles_index
      [200, {'Content-Type' => 'application/json'}, [Console.all.to_json] ]
    end
    
    def developer_index
      [200, {'Content-Type' => 'application/json'}, [Developer.all.to_json] ]
    end
    
    if req.path.match('/games') && req.get?
      return index 
    end

    if req.path.match('/consoles') && req.get?
      return consoles_index 
    end

    if req.path.match('/developers') && req.get?
      return developer_index 
    end

  end

end
