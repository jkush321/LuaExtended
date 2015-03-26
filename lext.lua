---------------------------
--     Lua Extended      --
---------------------------
-- things that should be --
--  in lua, but aren't   --
---------------------------

-- Note: this is a brand new project
--    and is not near complete. It
--    does work though, and is already
--    proving to be helpful.

local version = 0.1
print("Loading Lua Extended v"..version)

--[[
	USEFUL FUNCTIONS
]]

-- iterator to table
local function i2t(...)
	local t = {}
	for v in ... do
		table.insert(t,v)
	end
	return t
end

--[[
	STRINGS
]]

-- string metatable
_s = getmetatable("")

-- concatenate with +
-- ex: print("hello " + "world")
function _s.__add(s,r)
	return s..r
end

-- replace string parts with -
-- also works with patterns!
-- ex: "Hello!" - "o" => "Hell!"
function _s.__sub(s,r)
	return s:gsub(r,"")
end

-- reverse string with negative sign
-- ex: print(-"sdrawkcab")
function _s.__unm(s)
	return s:reverse()
end

-- repeat string with multiply
-- ex: print("-" * 20)
function _s.__mul(s,n)
	return s:rep(math.floor(n))
end

-- format string with modulo
-- ex: "Hello %s, you are %d years old" % {"Bob",10}
-- ex: "I like %s" % "potatoes" 
function _s.__mod(s,d)
	if type(d) == "table" then
		return Format(s,unpack(d))
	end
	return Format(s,d)
end

-- gmatch with ^
-- ex: "I like potatoes" ^ "%a+" => {"I","like","potatoes"}
function _s.__pow(s,r)
	print(s,r)
	return i2t(s:gmatch(r))
end

-- explode/split string with /
-- ex: "arg1 arg2 arg3" / " " => {"arg1","arg2","arg3"}
function _s.__div(s,r)
	return string.Explode(r,s,false)
end

-- call strings to print them
-- ex: local a = "hello"; a()
-- NOTE: sadly this doesn't work with
--     string literals, so you have to
--     use it on a string object. Using
--     "hello"() does not work!
function _s.__call(...)
	print(...)
end

-- use # on strings to get their length
-- ex: print("length is " + #"four" + " characters")
function _s.__len(s)
	return s:len()
end



--[[
	
	EXAMPLES:
	

	These are the examples from above,
	grouped up into one convenient spot.



	print("hello " + "world")

	print("Hello!" - "o")
	
	print(-"sdrawkcab")

	print("-" * 20)

	print("Hello %s, you are %d years old" % {"Bob",10})
	print("I like %s" % "potatoes") 

	"I like potatoes" ^ "%a+" => {"I","like","potatoes"}

	"arg1 arg2 arg3" / " " => {"arg1","arg2","arg3"}

	s = "this will be printed to console!"
	s()

]]