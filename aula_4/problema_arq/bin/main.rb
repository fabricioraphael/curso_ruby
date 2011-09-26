path = ARGV[0].to_s

Dir.entries("#{path}.").each do |entry|
	unless File.directory?(entry)
		puts File.read(entry)
	end
end