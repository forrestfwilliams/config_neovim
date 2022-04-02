local status_ok, vimtest = pcall(require, "vim-test")
if not status_ok then
  return
end

vim.cmd [[
  let#test#python#runner = "nose"
  let#test#python#pytest#executable = "docker exec testing /opt/conda/bin/py.test"
]]
