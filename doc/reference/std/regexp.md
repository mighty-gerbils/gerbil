# Regular Expressions

The `:std/pregexp` library provides the Dorai Sitaram's well known
portable Scheme regular expression library.

See the [pregexp](https://ds26gte.github.io/pregexp/index.html) page for details
of the regular expression language and examples.

::: tip usage
(import :std/pregexp)
:::

## pregexp

```
(pregexp regexp)
  regexp := string; the regular expression
-> <pregexp>
```

Parse a string and compile it to a regular expression.

## pregexp-match

```
(pregexp-match pat str [start #f] [end #f])
  pat := <pregexp> or string; the regular expression to match
  str := the string to match
  start := start position in the string
  end := end position in the string
-> list or #f
```

Match a string against a regular expression and return a list of matching
substrings.

## pregexp-match-positions

```
(pregexp-match-positions pat str [start #f] [end #f])
  pat := <pregexp> or string; the regular expression to match
  str := the string to match
  start := start position in the string
  end := end position in the string
-> list or #f
```

Match a string against a regular expression and return a list of index pairs
where matches have occurred.

## pregexp-split

```
(pregexp-split pat str)
  pat := <pregexp> or string; the regular expression to match
  str := the string to match
-> list
```

Split a string using a regular expression as delimiter and return a list
of matching substrings.

## pregexp-replace

```
(pregexp-replace pat str ins)
  pat := <pregexp> or string; the regular expression to match
  str := the string to match
  ins := the string to insert
=> string
```


Replace the portion of a string matched by regular expression with another string.

## pregexp-replace*

```
(pregexp-replace* pat str ins)
  pat := <pregexp> or string; the regular expression to match
  str := the string to match
  ins := the string to insert
=> string
```

Like `pregexp-replace` but replaces all occurrences of the pattern

## pregexp-quote

```
(pregexp-quote str)
  str := a string
=> string
```


Takes an arbitrary string and returns a string regular expression that represents
it precisely.
