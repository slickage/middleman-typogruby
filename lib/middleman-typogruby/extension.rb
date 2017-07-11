# Require core library
require 'middleman-core'

# Extension namespace
class MyExtension < ::Middleman::Extension

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
          typoContent = Typogruby.improve(File.read(file))
          File.open(file, typoContent, 'w')
      end
  end
end
