using Genie, Genie.Router, HelloController

route("/hello", HelloController.greet)