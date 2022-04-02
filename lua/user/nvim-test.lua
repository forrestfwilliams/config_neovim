local status_ok, nvimtest = pcall(require, "nvim-test")
if not status_ok then
	return
end

local pytest_runner = require('nvim-test.runners.pytest').setup {
    command = "docker exec testing /opt/conda/bin/py.test",
} 

nvimtest.setup {
  commands_create = true,   -- create commands (TestFile, TestLast, ...)
  silent = true,           -- less notifications
  run = true,               -- run test commands
  term = "toggleterm",        -- a terminal to run (terminal|toggleterm)
  termOpts = {
    direction = "float", -- terminal's direction (horizontal|vertical|float)
    width = 10,             -- terminal's width (for vertical|float)
    height = 10,            -- terminal's height (for horizontal|float)
    go_back = true,        -- return focus to original window after executing
    stopinsert = true,     -- exit from insert mode
    keep_one = false,        -- only for term 'terminal', use only one buffer for testing
  },
  runners = {               -- setup tests runners
     python = "nvim-test.runners.pytest" 
--    python = pytest_runner,
  }
}

