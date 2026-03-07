local max_err = 0
for line in io.lines("./c++-model/err.dat") do
    local v = tonumber(line)
    if v and v > max_err then 
		max_err = v 
	end
end

if max_err < 2.15e-6 then
    print(string.format("SUKCES (max: %e)", max_err))
else
    print(string.format("PORAŻKA (max: %e)", max_err))
end
