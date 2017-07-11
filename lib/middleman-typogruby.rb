require "middleman-core"

::Middleman::Extensions.register(:typogruby) do
  require "middleman-typogruby/extension"
  ::Middleman::MiddlemanTypogruby
end
