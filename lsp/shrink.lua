local blink = require("blink.cmp")

return {
  cmd = {
    "java", "-jar", vim.fn.expand("~/.local/share/langservers/shrink.jar")
  },
  root_markers = { 'src/', '.git', },
  filetypes = { 'java' },
  name = 'shrink',
  settings = {},
  capabilities = vim.tbl_deep_extend(
        "force",
        {},
        vim.lsp.protocol.make_client_capabilities(),
        blink.get_lsp_capabilities()
    ),
}
