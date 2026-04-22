return {
    {
        "tpope/vim-dispatch", -- 異步執行任務
        lazy = false,
    },
    {
        "skywind3000/asynctasks.vim", -- 任務系統
        dependencies = { "skywind3000/asyncrun.vim" },
        config = function()
            vim.g.asynctasks_term_pos = "bottom" -- 在下方打開終端
            vim.g.asynctasks_term_rows = 10 -- 終端高度
            vim.g.asynctasks_term_reuse = 1 -- 重複使用終端
            
            -- JetBrains-like Run (Shift + F10)
            -- 這裡建立一個簡單的指令來執行當前的 PHP 檔案
            vim.keymap.set("n", "<S-F10>", function()
                local file_type = vim.bo.filetype
                if file_type == "php" then
                    vim.cmd("AsyncRun -raw php %")
                elseif file_type == "javascript" then
                    vim.cmd("AsyncRun -raw node %")
                else
                    print("No runner configured for " .. file_type)
                end
            end, { desc = "Run current file" })
        end,
    },
}
