desc "check for collisions with real files"
task :check_collisions do
  Dir['*'].each do |file|
    if file != 'Rakefile'
      target = File.expand_path("~/.#{file}")
      if File.exist?(target) && !File.symlink?(target)
        fail "collision #{target} exists!"
      end
    end
  end
end
desc "symlink all them"
task :symlink_all => :check_collisions do
  Dir['*'].each do |file|
    if file != 'Rakefile'      
      target = File.expand_path("~/.#{file}")
      source = File.expand_path(file)
      puts "symlinking #{source} to #{target}"
      File.delete(target) if File.exist?(target)
      File.symlink(source, target)
    end
  end
end