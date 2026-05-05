# NeoVim Keybind Reference

---

## General / File Operations

| Key | Mode | Description |
|:---|:---:|:---|
| `<leader>f` | Normal | Open lf file manager |
| `<leader>t` | Normal | Open Themery (theme picker) |
| `<leader>z` | Normal | Fzf file finder |

## Navigation

| Key | Mode | Description |
|:---|:---:|:---|
| `[d` | Normal | Previous diagnostic |
| `]d` | Normal | Next diagnostic |

## LSP (`<leader>l`)

| Key | Mode | Description |
|:---|:---:|:---|
| `<leader>lg` | Normal | Go to definition |
| `<leader>lr` | Normal | Find references |
| `<leader>ln` | Normal | Rename symbol |
| `<leader>la` | Normal | Code action |
| `<leader>lh` | Normal | Hover documentation |
| `<leader>lf` | Normal | Format buffer |

## Diagnostics (`<leader>d`)

| Key | Mode | Description |
|:---|:---:|:---|
| `<leader>dd` | Normal | Show diagnostic under cursor |
| `<leader>dq` | Normal | Diagnostics in location list |

## Terminal

| Key | Mode | Description |
|:---|:---:|:---|
| `<C-\>` | Normal | Toggle floating terminal |

## blink.cmp (Completion)

| Key | Mode | Description |
|:---|:---:|:---|
| `<Tab>` | Insert / Cmp | Select next item or open menu |
| `<S-Tab>` | Insert / Cmp | Select previous item |
| `<CR>` | Insert / Cmp | Accept completion (with auto-import) |
| `<C-e>` | Insert / Cmp | Hide completion menu |
