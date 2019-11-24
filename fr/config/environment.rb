Hanami.configure do
  model do
    gateway do |g|
      g.connection.extension(:connection_validator)
    end
  end
end


