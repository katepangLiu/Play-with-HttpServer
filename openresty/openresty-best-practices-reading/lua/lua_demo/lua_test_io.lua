file = io.input("/tmp/test.txt")

repeat 
	line = file:read()
	if line == nil then
		break
	end
	
	print(line)

until (false)

file:close(file)


