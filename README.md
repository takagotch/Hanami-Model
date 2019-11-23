### Hanami-Model
---
https://github.com/hanami/model
#### Hanami
https://github.com/hanami/hanami


```
gem 'hanami-model'
bundle
gem install hanami-model
```

```ruby
require 'hanami/model'
class User < Hanami::Entity
end
class UserRepository < Hanami::Repository
end
Hanami::Model.configure do
  adapter :sql, 'postgres://username.password@localhost/bookshelf'
end.load!
repository = UserRepository.new
user = repository.create(name: 'Luca')
puts user.id # => 1
found = repository.find(user.id)
found == user # => true
updated = repository.update(user.id, age: 34)
updated.age # => 34
repository.delete(user.id)


require 'hanami/model'
class Person < Hanami::Entity
end

ActicleRepository.new.where(author_id: 23).order(:published_at).limit(8)


require 'hanami/model'
class ArticleRepository < Hanami::Repository
  def most_recent_by_author(author, limit: 8)
    articles.where(author_id: author.id).
      order(:published_at).
      limit(limit)
  end
end


require 'hanami/model'
class UserRepository < Hanami::Repository
  self.relation = :t_user_archive
  mapping do
    attribute :id, from: :i_user_id
    attribute :name, :s_name
    attribute :age, :i_age
  end
end


Mutex.new.synchronize do
  Hanami::Model.laod!
end


require 'hanami/model'
class User < Hanami::Entity
end
class UserRepository < Hanami::Repository
end
repository = UserRepository.new
user = repository.create(name: 'Luca')
puts user.created_at.to_s # => "2018-10-08 10:34:12 UTC"
puts user.updated_at.to_s # => "2018-10-08 10:34:12 UTC"
sleep 3
user = repository.update(user.id, age: 34)
puts user.created_at.to_s # => "2018-10-08 10:34:12 UTC"
puts user.updated_at.to_s # => "2018-10-08 10:34:12 UTC"

Hanami::Model.configure do
  logger "log/development.log", level: :debug
end

```
---

```
gem install hanami
hanami new bookshelf
cd bookshelf && bundle
bundle exec hanami server 
curl http://localhost:2300

git clone https://github.com/hanami/hanami.git
cd hanami && bundle
bundle exec hanami new bookshelf --hanami-head
cd bookshelf
vim Gemfile
gem 'hanami', path: '~> 0.0.0'
bundle

./script/setup
bundle exec rspec spec/path/to/file_spec.rb
./script/ci
```

