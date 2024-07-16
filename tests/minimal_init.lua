local M = {}

-- Run tests using
-- nvim --headless --noplugin -u tests/minimal_init.lua -c "lua require('plenary.test_harness').test_directory('/path/bufferline.nvim/tests', {minimal_init = 'tests/minimal_init.lua'})"

function M.root(root)
<<<<<<< HEAD
  local f = debug.getinfo(1, 'S').source:sub(2)
  return vim.fn.fnamemodify(f, ':p:h:h') .. '/' .. (root or '')
=======
  local f = debug.getinfo(1, "S").source:sub(2)
  return vim.fn.fnamemodify(f, ":p:h:h") .. "/" .. (root or "")
>>>>>>> 90940a1 (Groups Functionality)
end

---@param plugin string
function M.load(plugin)
<<<<<<< HEAD
  local name = plugin:match('.*/(.*)')
  local package_root = M.root('.tests/site/pack/deps/start/')
  if not vim.loop.fs_stat(package_root .. name) then
    print('Installing ' .. plugin)
    vim.fn.mkdir(package_root, 'p')
    vim.fn.system({
      'git',
      'clone',
      '--depth=1',
      'https://github.com/' .. plugin .. '.git',
      package_root .. '/' .. name,
=======
  local name = plugin:match(".*/(.*)")
  local package_root = M.root(".tests/site/pack/deps/start/")
  if not vim.loop.fs_stat(package_root .. name) then
    print("Installing " .. plugin)
    vim.fn.mkdir(package_root, "p")
    vim.fn.system({
      "git",
      "clone",
      "--depth=1",
      "https://github.com/" .. plugin .. ".git",
      package_root .. "/" .. name,
>>>>>>> 90940a1 (Groups Functionality)
    })
  end
end

function M.setup()
  vim.cmd([[set runtimepath=$VIMRUNTIME]])
  vim.opt.runtimepath:append(M.root())
<<<<<<< HEAD
  vim.opt.packpath = { M.root('.tests/site') }
  M.load('nvim-lua/plenary.nvim')
  M.load('nvim-tree/nvim-web-devicons')
  vim.env.XDG_CONFIG_HOME = M.root('.tests/config')
  vim.env.XDG_DATA_HOME = M.root('.tests/data')
  vim.env.XDG_STATE_HOME = M.root('.tests/state')
  vim.env.XDG_CACHE_HOME = M.root('.tests/cache')
=======
  vim.opt.packpath = { M.root(".tests/site") }
  M.load("nvim-lua/plenary.nvim")
  M.load("nvim-tree/nvim-web-devicons")
  vim.env.XDG_CONFIG_HOME = M.root(".tests/config")
  vim.env.XDG_DATA_HOME = M.root(".tests/data")
  vim.env.XDG_STATE_HOME = M.root(".tests/state")
  vim.env.XDG_CACHE_HOME = M.root(".tests/cache")
>>>>>>> 90940a1 (Groups Functionality)
end

vim.o.swapfile = false
_G.__TEST = true

M.setup()
