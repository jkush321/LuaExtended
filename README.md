# LuaExtended
"Things that should be in vanilla Lua, " +  "but aren't."

Current version: 0.1

**Convenient ways to manipulate objects:**

Concatenate strings with +

    print("hello " + "world")

Remove pieces of strings with -

    print("Hello!" - "o")
	
Reverse strings with -

    print(-"sdrawkcab")

Repeat strings with *

    print("-" * 20)

Format strings with %

    print("Hello %s, you are %d years old" % {"Bob",10})
    print("I like %s" % "potatoes") 

gmatch strings with ^

    "I like potatoes" ^ "%a+" => {"I","like","potatoes"}

Split strings with /

    "arg1 arg2 arg3" / " " => {"arg1","arg2","arg3"}

Print strings by calling them

    s = "this will be printed to console!"
    s()

Want to print a dashed line 50 characters long?

    ("-"*50)()

