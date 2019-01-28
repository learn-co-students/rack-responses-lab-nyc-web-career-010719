class Application

  def call(env)
    resp = Rack::Response.new

    if 5 < Time.now.hour < 12
      resp.write "Good Morning!"
    elseif 12 < Time.now.hour < 17
      resp.write "Good Afternoon!"
    elseif 17 < Time.now.hour || Time.now.hour < 5
      resp.write "Good Evening!"
    end

    resp.finish
  end

end
