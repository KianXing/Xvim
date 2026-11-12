if vim.fn.argc()>0 then
    return
end
vim.pack.add({
    {
        src = "https://github.com/nvim-tree/nvim-web-devicons",
        name = "nvim-web-devicons",
    },
    {
        src = "https://github.com/nvimdev/dashboard-nvim",
        name = "dashboard-nvim",
    }
}
-- {load = function () end}
)

-- dashboard-nvim config
require("dashboard").setup({
    theme = "doom",
    config = {
        header = {
                [[        -=--      ]],
    [[     .=-+===:     ]],
    [[    :*+======:    ]],
    [[    =+=+-+=++=    ]],
    [[    -**=-:++**-   ]],
    [[    -*+.  :-##:   ]],
    [[    =+=. .  #*.   ]],
    [[    -=%=   =#+    ]],
    [[    -+%+::*%#=    ]],
    [[   .*%%- =%%#+:   ]],
    [[   *#+   :=*#*=   ]],
    [[  **=-:::::-++*:  ]],
    [[ *+ =++#####+-*#  ]],
    [[:=  -==#*=:-*=.*: ]],
    [[   :-+##%==+##: : ]],
    [[..---+##%=+*##-.  ]],
    [[-:--++##%--#%*-:::]],
    [[.--=%**%#-:+##---:]],
        }
    }
})
