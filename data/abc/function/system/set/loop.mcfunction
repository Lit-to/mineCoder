$data modify storage abc: $(key) append from storage abc: temp[-1].raw
data remove storage abc: temp[-1] 
execute unless data storage abc: {temp:[]} run function abc:system/set/loop
return 1
