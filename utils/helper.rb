# Currently there's only one function here and I hope it will stay that forever
# because I suck at ruby. This env() function is for getting value from
# environment variable exported by Makefile
module Sass::Script::Functions
   def env(name)
      assert_type name, :String
      if ENV[name.to_s].nil?
         Sass::Script::Null.new()
      else
         Sass::Script::String.new(ENV[name.to_s])
      end
   end
   declare :env, [:name]
end
