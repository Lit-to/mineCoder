setblock ~ ~-1 ~ gray_concrete destroy
data modify storage abc: input set value []
data modify storage abc: temp set from block ~ ~ ~ Items[0].components."minecraft:written_book_content".pages
data modify storage abc: key set value "input"
function abc:system/set/loop with storage abc:
data remove storage abc: temp

data modify storage abc: expected set value []
data modify storage abc: temp set from block ~ ~ ~ Items[4].components."minecraft:written_book_content".pages
data modify storage abc: key set value "expected"
function abc:system/set/loop with storage abc:
data remove storage abc: temp

# 実行
execute if function #abc:main run function abc:system/check
# 実行ここまで



