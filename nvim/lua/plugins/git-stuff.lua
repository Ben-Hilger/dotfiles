return {
    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gp", function()
                vim.cmd.Git("push")
            end)

            vim.keymap.set("n", "<leader>gP", function()
                vim.cmd.Git({ "pull", "--rebase" })
            end)
            vim.keymap.set("n", "<leader>gb", ":Git blame<CR>")

            vim.keymap.set("n", "<leader>G", ":Git<CR>")
            vim.keymap.set("n", "<leader>gd", ":Gdiffsplit<CR>")
            vim.keymap.set("n", "<leader>gc", ":Git commit<CR>")
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()

            vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
            vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
        end,
    },
}
