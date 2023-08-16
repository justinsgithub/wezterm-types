---@meta

---@alias Points string
-- A value expressed in points, where 72 points == 1 inch.

---@alias Pixels string | number
-- A value expressed in raw pixels

---@alias Percent string
-- A value expressed in terms of a fraction of the maximum
-- value in the same direction.  For example, left padding
-- of 10% depends on the pixel width of that element.
-- The value is 1.0 == 100%.  It is possible to express
-- eg: 2.0 for 200%.

---@alias Cells string
-- A value expressed in terms of a fraction of the cell
-- size computed from the configured font size.
-- 1.0 == the cell size.

---@alias Dimension Points | Pixels | Percent | Cells
