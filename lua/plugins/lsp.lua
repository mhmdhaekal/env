vim.pack.add({
	{
		src = "https://github.com/mason-org/mason.nvim"
	},
	{
		src = "https://github.com/neovim/nvim-lspconfig"
	}
})


require("mason").setup()

local vue_language_server_path = vim.fn.stdpath("data")
	.. "/mason/packages/vue-language-server/node_modules/@vue/language-server"

local vue_plugin = {
	name = "@vue/typescript-plugin",
	location = vue_language_server_path,
	languages = { "vue" },
	configNamespace = "typescript",
}

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')



local servers = {
	gopls = {},
	rust_analyzer = {
		settings = {
			["rust-analyzer"] = {
				diagnostics = {
					enable = false,
				},
			},
		},
	},
	lua_ls = {
	 settings = {
				Lua = {
					runtime = {
						-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
						version = 'LuaJIT',
						-- Setup your lua path
						path = runtime_path,
					},
					diagnostics = {
						-- Get the language server to recognize the `vim` global
						globals = {'vim'},
					},
					workspace = {
						-- Make the server aware of Neovim runtime files
						library = vim.api.nvim_get_runtime_file('', true),
					},
					-- Do not send telemetry data containing a randomized but unique identifier
					telemetry = {
						enable = false,
					},
				},
			},
	},
	tailwindcss = {},
	sourcekit = {},
	jsonls = {},
	pyrefly = {},
	vtsls = {
		settings = {
			vtsls = {
				tsserver = {
					globalPlugins = {
						vue_plugin,
					},
				},
			},
		},
		filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
	},
	vue_ls = {
		on_init = function(client)
			client.handlers["tsserver/request"] = function(_, result, context)
				local clients = vim.lsp.get_clients({ bufnr = context.bufnr, name = "vtsls" })
				if #clients == 0 then
					vim.notify(
						"Could not found `vtsls` lsp client, vue_lsp would not work without it.",
						vim.log.levels.ERROR
					)
					return
				end
				local ts_client = clients[1]

				local param = unpack(result)
				local id, command, payload = unpack(param)
				ts_client:exec_cmd({
					title = "vue",
					command = "typescript.tsserverRequest",
					arguments = {
						command,
						payload,
					},
				}, { bufnr = context.bufnr }, function(_, r)
					local response_data = { { id, r.body } }
					---@diagnostic disable-next-line: param-type-mismatch
					client:notify("tsserver/response", response_data)
				end)
			end
		end,
	},
}

for server, config in pairs(servers) do
	vim.lsp.config(server, config)
	vim.lsp.enable(server)
end
