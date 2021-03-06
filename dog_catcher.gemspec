Gem::Specification.new do |s|
  s.name     = "dog_catcher"
  s.version  = "0.1.1"
  s.date     = "2009-03-30"
  s.summary  = "Find and cleanly shut down any and all mongrels running on your system."
  s.email    = "greg@mfdz.com"
  s.homepage = "http://github.com/atduskgreg/dog_catcher"
  s.description = "Find and cleanly shut down any and all mongrels running on your system."
  s.has_rdoc = true
  s.authors  = ["Greg Borenstein"]
  s.executables = %w(dog_catcher)
  s.files    = ["History.txt", 
		"README.rdoc",
                "Manifest.txt",
                "bin/dog_catcher",
                "lib/dog_catcher.rb",
		"Rakefile", 
		"dog_catcher.gemspec"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
end
