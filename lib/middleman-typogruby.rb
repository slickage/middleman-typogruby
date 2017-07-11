require "middleman-core"

Middleman::Extensions.register :middleman-typogruby do
  require "my-extension/extension"
  MyExtension
end
