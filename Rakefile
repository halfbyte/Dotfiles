require 'fileutils'
desc "check for collisions with real files"
task :check_collisions do
  Dir['**/*'].each do |file|
    if file != 'Rakefile'
      target_file = file.gsub(/DOT/, '.')
      dirname = File.dirname(target_file)
      path = File.expand_path(File.join("~", dirname))
      target = File.join(path, File.basename(target_file))
      if File.exist?(target) && !File.directory?(target) && !File.symlink?(target)
        fail "C #{target}"
      end
    end
  end
end
desc "symlink all them"
task :symlink_all => :check_collisions do
  Dir['**/*'].each do |file|
    if file != 'Rakefile' && !File.directory?(file)
      target_file = file.gsub(/DOT/, '.')
      dirname = File.dirname(target_file)
      path = File.expand_path(File.join("~", dirname))
      unless File.exist?(path)
        puts "M #{path}"
        FileUtils.mkdir_p(path)
      end
      target = File.join(path, File.basename(target_file))
      source = File.expand_path(file)
      
      if File.symlink?(target)
        puts "D #{target}"
        File.delete(target) 
      end
      puts "L #{source} -> #{target}"
      File.symlink(source, target)
    end
  end
end