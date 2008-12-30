Gem::Specification.new do |s|
  s.name     = "dog_catcher"
  s.version  = "0.1.0"
  s.date     = "2008-12-30"
  s.summary  = "Find and cleanly shut down any and all mongrels running on your system."
  s.email    = "greg@mfdz.com"
  s.homepage = "http://github.com/atduskgreg/dog_catcher"
  s.description = "Find and cleanly shut down any and all mongrels running on your system."
  s.has_rdoc = true
  s.authors  = ["Greg Borenstein"]
  s.files    = ["History.txt", 
		"README.rdoc",
                "Maifest.txt",
                "bin/dog_catcher",
                "lib/dog_catcher.rb"
		"Rakefile", 
		"dog_catcher.gemspec"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
end
