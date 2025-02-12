return {
    "tpope/vim-fugitive",
    config = function()
        -- General
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git, { desc = "[G]it [S]tatus" })
        vim.keymap.set("n", "<leader>gpl", ":Git pull<CR>", { desc = "[G]it [P]u[l]l" });
        vim.keymap.set("n", "<leader>gd", ":Git diff<CR>", { desc = "[G]it [D]iff" });

        -- Commit
        vim.keymap.set("n", "<leader>gan", ":Git commit --amend --no-edit<CR>", { desc = "[G]it Commit [A]mend [N]o Edits" });
        vim.keymap.set("n", "<leader>gae", ":Git commit --amend<CR>", { desc = "[G]it Commit [A]mend [E]dit" });
        vim.keymap.set("n", "<leader>gc", ":Git commit -m \"", { desc = "[G]it [C]ommit" });

        -- Push
        vim.keymap.set("n", "<leader>gpu", ":Git push -u origin HEAD<CR>", { desc = "[G]it [Pu]sh" })
        vim.keymap.set("n", "<leader>gpf", ":Git push --force-with-lease origin HEAD<CR>", { desc = "[G]it [P]ush [F]orce with Lease" })

        -- Checkout
        vim.keymap.set("n", "<leader>go", ":Git checkout -b ", { desc = "[G]it Check[o]ut New Branch" })
        vim.keymap.set("n", "<leader>gm", ":Git checkout master<CR>", { desc = "[G]it Checkout [M]aster" })
        vim.keymap.set("n", "<leader>g-", ":Git checkout -<CR>", { desc = "[G]it Checkout Alternative Branch" })

        -- Rebase and Resolution
        vim.keymap.set("n", "<leader>g=", "<cmd>diffget //2<CR>", { desc = "[G]it Merge Left (= Far Top Left)" })
        vim.keymap.set("n", "<leader>g-", "<cmd>diffget //3<CR>", { desc = "[G]it Merge Right (- Far Top Right)" })
        vim.keymap.set("n", "<leader>grem", ":Git rebase master<CR>", { desc = "[G]it [Re]base [M]aster" })
        vim.keymap.set("n", "<leader>gres", "<cmd>Gvdiffsplit!<CR>", { desc = "[G]it [Res]olve Conflitcs" })
        vim.keymap.set("n", "<leader>gre-", ":Git rebase --continue<CR>", { desc = "[G]it [Re]base [-]- continue" })
        vim.keymap.set("n", "<leader>grea", ":Git rebase --abort<CR>", { desc = "[G]it [Re]base [-]- abort" })
    end
}
