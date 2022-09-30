Table{}
Table[1]="1"
Table[2]="2"

Array{}
Array.A="A"
Array.B="B"

function SayTable(index)
    Msg("Table 1: "..Table[1].."\n")
    Msg("Table 2: "..Table[2].."\n")
end

function SayArray(index)
    Msg("Array 1: "..Array.A.."\n")
    Msg("Array 2: "..Array.B.."\n")
end
