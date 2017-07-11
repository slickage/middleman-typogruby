# Require core library
require 'middleman-core'

# Extension namespace
class MiddlemanTypogruby < ::Middleman::Extension

  option :amp, true, 'converts a & surrounded by optional whitespace or a non-breaking space to the HTML entity and surrounds it in a span with a styled class.'
  option :caps, true, 'surrounds two or more consecutive captial letters, perhaps with interspersed digits and periods in a span with a styled class.'
  option :entities, true, 'Converts special characters (excluding HTML tags) to HTML entities.'
  option :initial_quotes, true, 'encloses initial single or double quote, or their entities (optionally preceeded by a block element and perhaps an inline element) with a span that can be styled.
  '
  option :smartypants, true, 'Applies smartypants to a given piece of text.'
  option :widont, true, 'replaces space(s) before the last word (or tag before the last word) before an optional closing element (a, em, span, strong) before a closing tag (p, h[1-6], li, dt, dd) or the end of the string.'

  def initialize(app, options_hash={}, &block)
    super
    require 'typogruby'
  end

  def after_build(builder)
      rootPath = app.root
      buildDir = app.config[:build_dir]
      htmlDir = buildDir + File::SEPARATOR + '**' + File::SEPARATOR + '*.html'

      Dir.glob(htmlDir) do |file|
          assetPath = rootPath + File::SEPARATOR + file
          file.slice! buildDir + File::SEPARATOR
          puts "Typogruby build: " + file
          bodytext = File.read(assetPath)

          if options.amp
            bodytext = Typogruby.amp(bodytext)
          end
          if options.caps
            bodytext = Typogruby.caps(bodytext)
          end
          if options.entities
            bodytext = Typogruby.entities(bodytext)
          end
          if options.initial_quotes
            bodytext = Typogruby.initial_quotes(bodytext)
          end
          if options.smartypants
            bodytext = Typogruby.smartypants(bodytext)
          end
          if options.widont
            bodytext = Typogruby.widont(bodytext)
          end

          f = File.open(assetPath, 'w')
          f.write(bodytext)
          f.close()
      end
  end
end

::Middleman::Extensions.register(:typogruby, MiddlemanTypogruby)
