-- Prefix level-1 headings with "Chapter N:" (skipping .unnumbered ones)
local n = 0
function Header(h)
  if h.level == 1 and not h.classes:includes("unnumbered") then
    n = n + 1
    table.insert(h.content, 1, pandoc.Str("Chapter " .. n .. ": "))
  end
  return h
end
