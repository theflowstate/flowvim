-- plugins
require('packer').startup(function(use)
        use 'wbthomason/packer.nvim'
	use 'vimwiki/vimwiki'
	use 'nvim-tree/nvim-tree.lua'
	-- colorscheme
	use 'EdenEast/nightfox.nvim'
	vim.cmd('colorscheme nightfox')
end)

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		width = 40,
	},
	renderer = {
    		group_empty = true,
  	},
  	filters = {
    		dotfiles = true,
    	},
	update_focused_file = {
		enable = true,
		update_root = true,
	},
})

-- configs
require('vimwiki.wikis')

