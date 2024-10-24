
data modify storage abc: output set value []
data modify storage abc: temp set from block ~ ~ ~ Items[7].components."minecraft:written_book_content".pages
data modify storage abc: key set value "output"
function abc:system/set/loop with storage abc:
data remove storage abc: temp

# data modify storage abc: check set value {A:"expected",B:"output"}
setblock ~ ~1 ~ minecraft:lime_concrete destroy
execute if function abc:system/check/ifequal run setblock ~ ~1 ~ minecraft:orange_concrete destroy


