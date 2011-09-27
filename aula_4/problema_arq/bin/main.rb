path = ARGV[0].to_s
  
  arq1 = []
  arq2 = []
  arq3 = []
  
Dir.entries("#{path}").each do |entry|
	unless File.directory?("#{path}/#{entry}")
		arqx = File.read("#{path}/#{entry}")
		
		if arqx  =~ /\|\d+\|/
      arq1 << arqx
    elsif arqx =~ /\>\>\>\>\>\(\d+\)/
      arq2 << arqx
    elsif arqx =~ /\d:+/
      arq3 << arqx
    end
	end
end


File.open("arq_1.txt", 'w') do |file|
  x = 0
  while x < arq1.size
    file.write arq1[x]
    x += 1
  end
end

File.open("arq_2.txt", 'w') do |file|
  x = 0
  while x < arq2.size
    file.write arq2[x]
    x += 1
  end
end

File.open("arq_3.txt", 'w') do |file|
  x = 0
  while x < arq3.size
    file.write arq3[x]
    x += 1
  end
end