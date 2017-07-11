middleman-typogruby
===================

Add this to your Gemfile:
```rb
gem 'middleman-typogruby', :git => "git://github.com/ssbx/middleman-typogruby.git"
```

And this to your config.rb:
```rb
activate :typogruby do |f|
    f.amp = true
    f.caps = true
    f.entities = true
    f.initial_quotes = true
    f.smartypants = true
    f.widont = true
end
```
