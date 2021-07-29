local userPath = "/.vimrc"

if fs.exists(userPath) then
	os.loadAPI(userPath)
end

function get( key )
	local val
	if fs.exists(userPath) then
		-- TODO this might crash if log level is NONE
		val = _G[".vimrc"][key]
		if val == nil then 
			val = vimrcDefault[key]
		end
	else
		val = vimrcDefault[key]
	end
	return val
end
