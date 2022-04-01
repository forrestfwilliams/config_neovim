local status_ok, toggleterm = pcall(require, "vim-test")
if not status_ok then
	return
end

let test#python#runner = "pyunit"
