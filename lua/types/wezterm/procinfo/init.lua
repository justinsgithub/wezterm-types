---@meta

---@module 'types.object.local-process-info'

---@alias Wezterm.ProcInfo.Pid number

-- The `wezterm.procinfo` module exposes functions that allow querying information
-- about processes that are running on the local system
---@class Wezterm.ProcInfo
-- Returns the current working directory for the specified process id.
-- This function may return `nil` if it was unable to return the info
---@field current_working_dir_for_pid fun(pid: Wezterm.ProcInfo.Pid): string|nil
-- Returns the path to the executable image for the specified process id.
-- This function may return `nil` if it was unable to return the info
---@field executable_path_for_pid fun(pid: Wezterm.ProcInfo.Pid): string|nil
-- Returns a `LocalProcessInfo` object for the specified process id.
-- This function may return `nil` if it was unable to return the info
---@field get_info_for_pid fun(pid: Wezterm.ProcInfo.Pid): LocalProcessInfo|nil
-- Returns the process id for the current process
---@field pid fun(): Wezterm.ProcInfo.Pid
