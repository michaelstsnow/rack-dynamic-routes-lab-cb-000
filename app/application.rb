class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/songs/Sorry"
      resp.write @@songs[0].artist
    elsif req.path == "/songs/Hello"
      resp.write @@songs[1].artist
    end

    resp.finish
  end
  end
end
