Gem::Specification.new do |spec|
  spec.name          = "lita-google-url-shortner"
  spec.version       = "0.1.3"
  spec.authors       = ["pmvieira"]
  spec.email         = ["pedrovieira@quillcontent.com"]
  spec.description   = "A lita handler to generate a google-shorten url"
  spec.summary       = "AA lita handler to generate a google-shorten url"
  spec.homepage      = "https://github.com/pmvieira/lita-google-url-shortner"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.require_paths = ["lib"]
  spec.files        = Dir['README.md', "Rakefile", 'lib/**/*']

  spec.add_runtime_dependency "lita", ">= 4.4"

  spec.add_development_dependency "bundler", "~> 1.3"
end