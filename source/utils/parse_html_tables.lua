-- Parse HTML tables enclosed in <div> tags with id set to "html_table". This code ensures that HTML tables are exported to .docx.
-- Warning: I have little experience with Pandoc and almost no knowledge of lua, so this code is almost certainly not the most efficient or elegant solution.
function Div(el)
  -- Check this div is identified as an HTML table
  if el.identifier == "html_table" then
    -- Concatenate the contents of the div
    local tableText = ""
    for index, block in ipairs(el.content) do
      if block.text == nil then
        -- Assume this is the content of a cell within the table
        tableText = tableText .. pandoc.utils.stringify(block.content)
      else
        -- Assume this is an HTML tag
        tableText = tableText .. block.text
      end
    end
    -- Parse the concatenated HTML table string
    tbl = pandoc.read(tableText, "html").blocks
    -- Set the caption of the table
    if el.attributes["caption"] ~= nil then
      tbl[1].caption.long = el.attributes["caption"]
    end
    return tbl
  end
end