module HelloController

using Genie.Router, Genie.Renderer

function greet()
  html(:hello, :greet)
end

end
