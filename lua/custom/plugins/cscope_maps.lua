return {
  {
    'dhananjaylatkar/cscope_maps.nvim',
    lazy = false,
    config = function()
      require('cscope_maps').setup({
        -- Add any configuration options here
        -- maps related defaults
        disable_maps = false, -- "true" disables default keymaps
        skip_input_prompt = false, -- "true" doesn't ask for input
        prefix = "<leader>c", -- prefix to trigger maps

        -- cscope related defaults
        cscope = {
          -- location of cscope db file. cscope db file is ini same level as the base source folder
          db_file = "./cscope.out",
          -- cscope executable
          exec = "cscope", -- "cscope" or "gtags-cscope"
          -- choose your fav picker
          picker = "quickfix", -- "telescope", "fzf-lua" or "quickfix"
          -- "true" does not open picker for single result, just JUMP
          skip_picker_for_single_result = false, -- "false" or "true"
          -- these args are directly passed to "cscope -f <db_file> <args>"
          cscope_db_build_cmd = { args = { "-bqkv", "-i", "cscope.files" } },
          -- statusline indicator, default is cscope executable
          statusline_indicator = nil,
        },
      })
    end,
  },
}

-- Default Keymaps in cscope_maps.vim
-- <prefix> can be configured using prefix option. Default value for prefix is <leader>c.

-- Keymaps Description
-- <prefix>s find all references to the token under cursor
-- <prefix>g find global definition(s) of the token under cursor
-- <prefix>c find all calls to the function name under cursor
-- <prefix>t find all instances of the text under cursor
-- <prefix>e egrep search for the word under cursor
-- <prefix>f open the filename under cursor
-- <prefix>i find files that include the filename under cursor
-- <prefix>d find functions that function under cursor calls
-- <prefix>a find places where this symbol is assigned a value
-- <prefix>b build cscope database
-- Ctrl-]  do :Cstag <cword>
