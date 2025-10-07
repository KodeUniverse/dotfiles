return {
    'lmburns/lf.nvim',
    dependencies = { 'akinsho/toggleterm.nvim' },
    config = function()
        require('lf').setup({
            default_action = "edit",  -- Open file with this action
            winblend = 10,
        })
        
    end,
}
