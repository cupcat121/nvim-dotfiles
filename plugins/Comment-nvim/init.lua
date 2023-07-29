return {
	-- comment plugin
	'numToStr/Comment.nvim',
	enabled = true,
	opts = {
		toggler = {
			line = 'gcc',
			block = 'gbc',
		},
		opleader = {
			line = 'gc',
			block = 'gb',
		},
	}
}
