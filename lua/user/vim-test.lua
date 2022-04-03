-- apparently vim addons don't need to be required

vim.g["test#python#runner"] = "pytest"
vim.g["test#python#pytest#executable"] = "docker exec TESTING /opt/conda/bin/pytest"

