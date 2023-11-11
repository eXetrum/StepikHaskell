cmp :: LogLevel -> LogLevel -> Ordering
cmp Error Error = EQ
cmp Error Warning = GT
cmp Error Info = GT
cmp Warning Warning = EQ
cmp Warning Info = GT
cmp Warning Error = LT
cmp Info Info = EQ
cmp Info Error = LT
cmp Info Warning = LT