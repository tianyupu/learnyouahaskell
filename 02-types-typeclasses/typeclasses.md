# Typeclasses

## Checking types
```haskell
Prelude> :t (==)
```

## Class constraints
```haskell
(==) :: Eq a => a -> a -> Bool
```

`Eq a` is a *class constraint*. `a` must be a type which is a member of the
`Eq` class. This typeclass provides an interface for equality testing.

## Other basic typeclasses
`Ord`, `Show`, `Read`, `Enum`, `Bounded`, `Num`, `Integral`, `Floating`.

### Show
```haskell
Prelude> show 3
"3"
Prelude> show 6.323
"6.323"
Prelude> show True
"True"
```

### Read
```haskell
Prelude> read "True" || False
True
Prelude> read "10.3" + 3.1
13.4
```

`read` will complain if you just give it `read "10"`, because it does not know
what type you want to return. To explicitly declare a type, use
`read "10" :: Int`. This is an example of an *explicit type annotation*.

### Enum
Members are sequentially ordered types -- they can be enumerated. We can use
its types in list ranges. They have defined predecessors and successors (use
`pred` and `succ` to get them).

`()`, `Bool`, `Char`, `Ordering`, `Int`, `Integer`, `Float` and `Double` are
part of this class.

### Bounded
```haskell
Prelude> minBound :: Int
-9223372036854775808
Prelude> :t minBound
minBound :: Bounded a => a
```

`minBound` and `maxBound` are polymorphic constants in some sense.

### Num
A numeric typeclass, so its members have the property of behaving like numbers.

```haskell
Prelude> :t 20
20 :: (Num t) => t
Prelude> :t (*)
(*) :: Num a => a -> a -> a
```

Whole numbers are also polymorphic constants. They can act like any type that
is a member of `Num`.

### Integral and Floating
`Integral` only includes `Int` and `Integer` (whole numbers).

`Floating` only includes `Float` and `Double`.

## A useful function for dealing with numbers
```haskell
Prelude> :t fromIntegral
fromIntegral :: (Num b, Integral a) => a -> b
```

`fromIntegral` takes an integer and turns it into a more general number.
