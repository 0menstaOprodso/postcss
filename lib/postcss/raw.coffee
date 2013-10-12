# Property with trimmed and raw value (with comments and spaces)
class Raw
  constructor: (@raw, @trimmed) ->

  # Set new trimmed value and mark property as changed
  set: (value) ->
    if @trimmed != value
      @changed = true
      @trimmed = value

  # Stringify to CSS raw value if trimmed wasn’t changed
  stringify: (space = false) ->
    if @changed
      (if space then ' ' else '') + @trimmed || ''
    else
      @raw || ''

Raw.empty = new Raw()

module.exports = Raw
