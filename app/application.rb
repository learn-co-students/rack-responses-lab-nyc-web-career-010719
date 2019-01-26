class Application

  def call(env)
    resp = Rack::Response.new

    now = Time.now()

    # resp.write "#{time}\n"
    # binding.pry
    if now.hour < 12
    # if time > Time.new("2019-01-26 12:00:00 -0000")
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
