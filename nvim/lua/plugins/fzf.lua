return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	--dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	dependencies = { "echasnovski/mini.icons" },
	opts = {},
	keys = {
		{ 
			"<leader>ff", 
			"<cmd>FzfLua files<cr>", 
			desc = "[f]uzzy-find [f]iles in CWD",
		},
		{
			"<leader>fg",
			"<cmd>FzfLua live_grep<cr>",
			desc = "[f]uzzy [g]rep current project directory",
		},
		{
			"<leader>fb",
			"<cmd>FzfLua builtin<cr>",
			desc = "list all [f]zf-lua [b]uilt-in commands",
		},
		{
			"<leader>fh",
			"<cmd>FzfLua helptags<cr>",
			desc = "[f]uzzy find [h]elp",
		},
		{
			"<leader>fk",
			"<cmd>FzfLua keymaps<cr>",
			desc = "[f]uzzy find [k]eymaps",
		},
		{
			"<leader>fw",
			"<cmd>FzfLua grep_cword<cr>",
			desc = "[f]uzzy find current [w]ord under cursor",
		},
		{
			"<leader>fW",
			"<cmd>FzfLua grep_cWORD<cr>",
			desc = "[f]uzzy find current [W]ORD under cursor",
		},
		{
			"<leader>fr",
			"<cmd>FzfLua resume<cr>",
			desc = "[f]uzzy find resume previous session",
		},
		{
			"<leader>fo",
			"<cmd>FzfLua oldfiles<cr>",
			desc = "[f]uzzy find and open most recent files across",
		},
		{
			"<leader><leader>",
			"<cmd>FzfLua buffers<cr>",
			desc = "Fuzzy Find existing buffers",
		},
		{
			"<leader>/",
			"<cmd>FzfLua lgrep_curbuf<cr>",
			desc = "[/] fuzzy search current buffer",
		}
	},
}
