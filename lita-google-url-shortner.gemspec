Gem::Specification.new do |spec|
  spec.name          = "lita-google-url-shortner"
  spec.version       = "0.1.0"
  spec.authors       = ["neilang"]
  spec.email         = ["neilang@gmail.com"]
  spec.description   = "A lita handler to help you pick where to go for lunch"
  spec.summary       = "A lita handler to help you pick where to go for lunch"
  spec.homepage      = "https://github.com/neilang/lita-lunch"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.4"

  spec.add_development_dependency "bundler", "~> 1.3"
end