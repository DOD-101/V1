-- Terminal
vim.keymap.set("n", "<leader>q", function() vim.cmd("ToggleTerm") end)
vim.cmd([[autocmd! TermOpen term://*toggleterm#* lua vim.keymap.set("t", "<esc>", "<C-\\><C-n>")]])

-- Conform
vim.keymap.set({ "n", "v" }, "<leader>e", function()
    require("conform").format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
    })
end, { desc = "Format file or range (in visual mode)" })

-- Telescope
vim.keymap.set("n", "<leader>f", function()
    vim.cmd("Telescope find_files")
end)
vim.keymap.set("n", "<leader>g", function()
    vim.cmd("Telescope git_files")
end)
vim.keymap.set("n", "<leader><S-f>", function()
    vim.cmd("Telescope live_grep")
end)

-- Harpoon
local harpoon = require("harpoon")
vim.keymap.set("n", "<leader>s", function()
    harpoon:list():append()
end)
vim.keymap.set("n", "<leader>a", function()
    harpoon.ui:toggle_quick_menu(harpoon:list(), { title_pos = "center", title = " Harpoon " })
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<Tab>", function()
    harpoon:list():next()
end)
vim.keymap.set("n", "<S-Tab>", function()
    harpoon:list():prev()
end)

-- Go to numbered buffers stored within Harpoon list
vim.keymap.set("n", "<leader>z", function()
    harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>x", function()
    harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>c", function()
    harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>v", function()
    harpoon:list():select(4)
end)
vim.keymap.set("n", "<leader>b", function()
    harpoon:list():select(5)
end)
vim.keymap.set("n", "<leader>n", function()
    harpoon:list():select(6)
end)
vim.keymap.set("n", "<leader>m", function()
    harpoon:list():select(7)
end)
