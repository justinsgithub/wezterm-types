---@meta

--TODO: finish

---@alias SpawnDomain
---|"DefaultDomain"
---|"CurrentPaneDomain"
---|{ DomainName: string }

---@alias SpawnPosition.Origin
---|"ScreenCoordinateSystem"
---|"MainScreen"
---|"ActiveScreen"
---|{ Named: string }

---@class SpawnPosition
---@field x? integer
---@field y? integer
---@field origin? SpawnPosition.Origin

---@class SpawnCommand
---@field args string[]
---@field label? string
---@field cwd? string
---@field set_environment_variables? table<string, any>|table
---@field domain? "DefaultDomain"
---@field position? SpawnPosition
