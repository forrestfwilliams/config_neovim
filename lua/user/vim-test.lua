-- apparently vim addons don't need to be required

vim.g["test#python#runner"] = "pytest"
vim.g["test#python#pytest#executable"] = vim.env.CONDA_PREFIX .. "/bin/pytest" 

