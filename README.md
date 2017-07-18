middleman-typogruby
===================

Add this to your Gemfile:
```rb
gem 'middleman-typogruby', :git => "git://github.com/ssbx/middleman-typogruby.git"
```

And this to your config.rb (these are the default options):
```rb
activate :typogruby do |typo|
    typo.entities = false
    typo.typeamp = true
    typo.caps = true
    typo.initial_quotes = true
    typo.smartypants = true
    typo.widont = true
end
```
See [Typogruby doc](http://avdgaag.github.io/typogruby/docs/Typogruby.html) for documentation.
