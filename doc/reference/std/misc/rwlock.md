

# Read/Write Locks

The `:std/misc/rwlock` include an implementation of read/write locks.

The implementation queues additional readers when there are writers
waiting, so that no new readers will acquire the lock until all
writers are done.  This ensures that writers cannot be starved, which
is a very important property for read/write locks.

::: tip To use bindings from this module:
```scheme
(import :std/misc/rwlock)
```
:::

## make-rwlock
```scheme
(make-rwlock [name 'rwlock]) -> rwlock
```

Creates a (named) read-write lock.

## rwlock?
```scheme
(rwlock? obj) -> bool
```

Type predicate for rwlocks.

## rwlock-read-lock!
```scheme
(rwlock-read-lock! rwlock)
```

Acquires a read lock on `rwlock`; multiple readers can acquire the read lock simultaneously.

## rwlock-read-unlock!
```scheme
(rwlock-read-unlock! rwlock)
```

Releases a read lock on `rwlock`.

## rwlock-write-lock!
```scheme
(rwlock-write-lock! rwlock)
```

Acquires an exclusive write lock on `rwlock`.

## rwlock-write-unlock!
```scheme
(rwlock-write-unlock! rwlock)
```

Release an exclusive write lock on `rwlock`.

## with-read-lock
```scheme
(with-read-lock rwlock proc)
```

Evaluates `proc` while holding a read lock on `rwlock` and returns the result.

## with-write-lock
```scheme
(with-write-lock rwlock proc)
```

Evaluates `proc` while holding a write lock on `rwlock` and returns the result.
