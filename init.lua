-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("gen").prompts["Make_Style"] =
  { prompt = "Transform the following text into the style of $input: $text", replace = true }
vim.g.lua_interpreter_path = "~/lua-5.1.5/src/lua"
