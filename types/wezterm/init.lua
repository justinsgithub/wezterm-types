---@meta

---@alias ActionParam table<KeyAssignment, any>: {KeyAssignment: any}

---@class Wezterm
local Wezterm = {}

---@param param KeyAssignmentTables
Wezterm.action = function(param) end

Wezterm.action.ActivateCommandPalette = function(param) end
Wezterm.action.ActivateCopyMode = function(param) end
Wezterm.action.ActivateKeyTable = function(param) end
Wezterm.action.ActivateLastTab = function(param) end
Wezterm.action.ActivatePaneByIndex = function(param) end
Wezterm.action.ActivatePaneDirection = function(param) end
Wezterm.action.ActivateTab = function(param) end
Wezterm.action.ActivateTabRelative = function(param) end
Wezterm.action.ActivateTabRelativeNoWrap = function(param) end
Wezterm.action.ActivateWindow = function(param) end
Wezterm.action.ActivateWindowRelative = function(param) end
Wezterm.action.ActivateWindowRelativeNoWrap = function(param) end
Wezterm.action.AdjustPaneSize = function(param) end
Wezterm.action.AttachDomain = function(param) end
Wezterm.action.CharSelect = function(param) end
Wezterm.action.ClearKeyTableStack = function(param) end
Wezterm.action.ClearScrollback = function(param) end
Wezterm.action.ClearSelection = function(param) end
Wezterm.action.CloseCurrentPane = function(param) end
---@param param {confirm: boolean}
Wezterm.action.CloseCurrentTab = function(param) end
Wezterm.action.CompleteSelection = function(param) end
Wezterm.action.CompleteSelectionOrOpenLinkAtMouseCursor = function(param) end
Wezterm.action.Copy = function(param) end
Wezterm.action.CopyTo = function(param) end
Wezterm.action.DecreaseFontSize = function(param) end
Wezterm.action.DetachDomain = function(param) end
Wezterm.action.DisableDefaultAssignment = function(param) end
Wezterm.action.EmitEvent = function(param) end
Wezterm.action.ExtendSelectionToMouseCursor = function(param) end
Wezterm.action.Hide = function(param) end
Wezterm.action.HideApplication = function(param) end
Wezterm.action.IncreaseFontSize = function(param) end
Wezterm.action.InputSelector = function(param) end
Wezterm.action.MoveTab = function(param) end
Wezterm.action.MoveTabRelative = function(param) end
Wezterm.action.Multiple = function(param) end
Wezterm.action.Nop = function(param) end
Wezterm.action.OpenLinkAtMouseCursor = function(param) end
Wezterm.action.PaneSelect = function(param) end
Wezterm.action.Paste = function(param) end
Wezterm.action.PasteFrom = function(param) end
Wezterm.action.PastePrimarySelection = function(param) end
Wezterm.action.PopKeyTable = function(param) end
Wezterm.action.PromptInputLine = function(param) end
Wezterm.action.QuickSelect = function(param) end
Wezterm.action.QuickSelectArgs = function(param) end
Wezterm.action.QuitApplication = function(param) end
Wezterm.action.ReloadConfiguration = function(param) end
Wezterm.action.ResetFontAndWindowSize = function(param) end
Wezterm.action.ResetFontSize = function(param) end
Wezterm.action.ResetTerminal = function(param) end
Wezterm.action.RotatePanes = function(param) end
Wezterm.action.ScrollByCurrentEventWheelDelta = function(param) end
Wezterm.action.ScrollByLine = function(param) end
Wezterm.action.ScrollByPage = function(param) end
Wezterm.action.ScrollToBottom = function(param) end
Wezterm.action.ScrollToPrompt = function(param) end
Wezterm.action.ScrollToTop = function(param) end
Wezterm.action.Search = function(param) end
Wezterm.action.SelectTextAtMouseCursor = function(param) end
Wezterm.action.SendKey = function(param) end
Wezterm.action.SendString = function(param) end
Wezterm.action.SetPaneZoomState = function(param) end
Wezterm.action.Show = function(param) end
Wezterm.action.ShowDebugOverlay = function(param) end
Wezterm.action.ShowLauncher = function(param) end
Wezterm.action.ShowLauncherArgs = function(param) end
Wezterm.action.ShowTabNavigator = function(param) end
Wezterm.action.SpawnCommandInNewTab = function(param) end
Wezterm.action.SpawnCommandInNewWindow = function(param) end
Wezterm.action.SpawnTab = function(param) end
Wezterm.action.SpawnWindow = function(param) end
Wezterm.action.SplitHorizontal = function(param) end
Wezterm.action.SplitPane = function(param) end
Wezterm.action.SplitVertical = function(param) end
Wezterm.action.StartWindowDrag = function(param) end
Wezterm.action.SwitchToWorkspace = function(param) end
Wezterm.action.SwitchWorkspaceRelative = function(param) end
Wezterm.action.ToggleFullScreen = function(param) end
Wezterm.action.TogglePaneZoomState = function(param) end

---@param family string
---@param attributes? FontAttributes
---@return FontAttributes
Wezterm.font = function(family, attributes) end

--TODO:? specify any
