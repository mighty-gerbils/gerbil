;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/misc/lru test

(import :std/misc/lru
        :std/test
        :std/sugar)
(export lru-test)

(def lru-test
  (test-suite "test :std/misc/lru"
    (test-case "test LRU cache ops"
      (def c (make-lru-cache 3))

      (lru-cache-put! c 'a 1)
      (lru-cache-put! c 'b 2)
      (lru-cache-put! c 'c 3)

      (check (lru-cache-size c) => 3)
      (check (lru-cache->list c) => '((c . 3) (b . 2) (a . 1)))

      (check (lru-cache-get c 'a) => 1)
      (check (lru-cache->list c) => '((a . 1) (c . 3) (b . 2)))

      (check (lru-cache-get c 'b) => 2)
      (check (lru-cache->list c) => '((b . 2) (a . 1) (c . 3)))

      (check (lru-cache-get c 'c) => 3)
      (check (lru-cache->list c) => '((c . 3) (b . 2) (a . 1)))

      (lru-cache-put! c 'd 4)
      (check (lru-cache-size c) => 3)
      (check (lru-cache-get c 'a) => #f)
      (check (lru-cache-get c 'd) => 4)
      (check (lru-cache->list c) => '((d . 4) (c . 3) (b . 2)))

      (check (lru-cache-get c 'd) => 4)
      (check (lru-cache->list c) => '((d . 4) (c . 3) (b . 2)))

      (check (lru-cache-get c 'c) => 3)
      (check (lru-cache->list c) => '((c . 3) (d . 4) (b . 2)))

      (check (lru-cache-get c 'b) => 2)
      (check (lru-cache->list c) => '((b . 2) (c . 3) (d . 4)))

      (lru-cache-remove! c 'd)
      (check (lru-cache-size c) => 2)
      (check (lru-cache-get c 'd) => #f)
      (check (lru-cache->list c) => '((b . 2) (c . 3)))

      (lru-cache-remove! c 'b)
      (check (lru-cache-size c) => 1)
      (check (lru-cache-get c 'b) => #f)
      (check (lru-cache->list c) => '((c . 3)))

      (lru-cache-remove! c 'c)
      (check (lru-cache-size c) => 0)
      (check (lru-cache-get c 'c) => #f)
      (check (lru-cache->list c) => '())

      (lru-cache-put! c 'a 1)
      (lru-cache-put! c 'b 2)
      (lru-cache-put! c 'c 3)
      (check (lru-cache-size c) => 3)

      (lru-cache-remove! c 'b)
      (check (lru-cache-size c) => 2)
      (check (lru-cache->list c) => '((c . 3) (a . 1)))

      (lru-cache-put! c 'b 2)
      (lru-cache-remove! c 'b)
      (check (lru-cache-size c) => 2)
      (check (lru-cache->list c) => '((c . 3) (a . 1)))

      (lru-cache-flush! c)
      (check (lru-cache-size c) => 0)
      (check (lru-cache->list c) => '()))))
