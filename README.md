# BDD for the Apple II #

I like BDD, and I  like the Apple II, the machine on which I mostly
learned to program.

Others have shown how to use Cucumber to do integration testing of iOS
apps, Java apps, and more.  Wouldn't it be fun if you could do BDD with
Cucumber on the Apple II?  

Now you can, thanks to Gerard Putter's excellent (and scriptable!) [Virtual-II
emulator](http://virtualii.com), and the [rb-appscript
gem](https://rubygems.org/gems/rb-appscript) (since I'd rather not
insert an additional layer of AppleScript in there).

Why on earth would you want to do this?  Probably you wouldn't, unless,
like me, you have an
[irrational passion for
retrocomputing](http://armandofox.com/geek/categories/retrocomputing). 

To test it out:

1. bundle install
2. fire up the Virtual-][ application and boot an Apple II+ or //e VM
3. cucumber features/run_basic_program.feature

This is just a proof of concept--the lone feature file tests typing in
and running a short Applesoft BASIC program and inspecting the text
output.  Next time I want to procrastinate I'll add more; pull requests
welcome!
