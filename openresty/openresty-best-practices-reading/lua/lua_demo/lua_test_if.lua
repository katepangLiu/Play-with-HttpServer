local score = tonumber(arg[1])
if score > 90 then
	print('Great.')
elseif score > 60 then
	print('Pass.')
else
	print('No Pass.')
end
