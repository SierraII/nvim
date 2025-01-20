return {
    'lewis6991/gitsigns.nvim',
    config = function()
        require('gitsigns').setup({
            current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
            current_line_blame_opts = {
                virt_text = true,
                virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                delay = 1000,
                ignore_whitespace = false,
                virt_text_priority = 100,
                use_focus = true,
            },
            current_line_blame_formatter = '<author>, <author_time:%R> - <summary>',
        })
        vim.keymap.set("n", "<leader>gb", ":Gitsigns blame<CR>", { desc = "[G]it [B]lame Chunk"})
    end
}

