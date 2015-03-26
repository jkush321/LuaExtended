# LuaExtended
"Things that should be in vanilla Lua, " +  "but aren't."

Current version: 0.1

Convenient ways to manipulate objects:

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
