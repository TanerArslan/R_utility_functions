# R utility functions
This repository includes utility functions in r that i use very often.

## char2numeric.df
Convert character data frame into numeric data frame.

```
df <- char2numeric.df(data = data)
```

## Convert IDs
Convert gene symbol or uniprot or entrez id to each other.

```
uniprot.ids <- c("P30968","P05093","P14416","O00337","A4D0S4","Q16478")

uniprot.df <- convert.id(uniprot.ids)
```