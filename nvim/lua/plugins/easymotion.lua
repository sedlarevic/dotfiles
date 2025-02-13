return {

	"easymotion/vim-easymotion",
	config = function()
		-- Opcionalna podešavanja za EasyMotion
		vim.g.EasyMotion_do_mapping = 0 -- Onemogućava automatske mape, možeš dodati sopstvene ispod
		vim.g.EasyMotion_smartcase = 1
	end,
}
