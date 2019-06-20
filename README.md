# Hello World Genie Plugin

This is a simple example plugin for the Genie Framework. You can use it as a sample for developing Genie plugins or to try plugins installation in your Genie apps.

## Installation

Add the HelloPlugin package to your Genie app, just like any other Julia Pkg dependency:
```julia
pkg> add https://github.com/GenieFramework/HelloPlugin.jl
```

Bring the package into scope:
```julia
julia> using HelloPlugin
```

Install the plugin (this is a one time operation, when the package is added):
```julia
julia> HelloPlugin.install(@__DIR__)
```

Make sure you run this in the Genie app REPL or that you are in a Julia session in the app's root dir. Otherwise pass the app's root dir as the argument for `install(dest::String)`.

## Usage

The installation will add a new `hello` resource in `app/resources/hello/` in the form of `HelloController.jl` and `views/greet.jl.html`. Also, in your Genie app's `plugins/` folder you fill find a new file, `helloplugin.jl` (which is the plugins' initializer and is automatically loaded by Genie early in the bootstrap process).

The `helloplugin.jl` initializer is defining a new route `route("/hello", HelloController.greet)`. If you restart your Genie app and navigate to `/hello` you will get the plugin's greeting.

## More Info

For more information about Genie plugins read the Genie docs at <https://github.com/GenieFramework/Genie.jl/blob/master/docs/content/Genie_Plugins.md>

