```ruby
require "gro"

chan = Channel.new

go {
  chan << "hello"
  chan << "world"
}

puts "#{~chan} #{~chan}"
```

Take a look at lib/gro.rb
