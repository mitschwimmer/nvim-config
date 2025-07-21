local blink = require("blink.cmp")

return {
  cmd = {
    "java", "-jar", "/home/henner/Projects/public/work.archaic/shrink/shrink.jar"
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
