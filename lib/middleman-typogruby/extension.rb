# Require core library
require 'middleman-core'

# Extension namespace
class MiddlemanTypogruby < ::Middleman::Extension

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
          typoContent = Typogruby.improve(File.read(assetPath))
          f = File.open(assetPath, 'w')
          f.write(typoContent)
          f.close()
      end
  end
end

::Middleman::Extensions.register(:typogruby, MiddlemanTypogruby)
