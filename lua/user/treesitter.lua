return {
  builtin = {
    treesitter = {
      ensure_installed = {
        "javascript",
        "typescript",
        "python",
        "java",
        "json",
        "yaml",
        "bash",
        "tsx",
        "css",
        "lua",
        "php",
        "go",
        "c",
      },
      ignore_install = { "haskell" },
      highlight = {
        enable = true,
      },
      autotag = {
        enable = true,
      },
      auto_install = true,
    },
  },
}
