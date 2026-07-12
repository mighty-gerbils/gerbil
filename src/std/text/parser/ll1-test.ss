(import
  :std/error
  (only-in :std/text/parser/base ParseError?)
  :std/test
  :std/text/parser/char-set
  "./ll1")

(export ll1-test)

(def ll1-test
  (test-suite "test suite for std/parser/ll1"
    (test-case "empty"
      (check-function ll1
        ll1-empty "" => (void)
        (ll1-result 42) "" => 42
        (ll1-pure 42) "" => 42
        ll1-empty "foo" =>! ParseError?
        (ll1-result 42) "foo" =>! ParseError?
        (ll1-pure 42) "foo" =>! ParseError?))
    (test-case "ll1-uint"
      (check-function (cut ll1 ll1-uint <>)
        "1" => 1
        "1984" => 1984
        "010" => 10 ;; ain't no octal
        " 1" =>! ParseError? ;; no space allowed in front unless you ask
        "1 no junk allowed" =>! ParseError?)
      (check (ll1 (cut ll1-uint <> 8) "10") => 8)) ;; octal this time
    (test-case "char"
      (check-function ll1
        (ll1-char "fo") "f" => #\f
        (ll1-char "fo") "o" => #\o
        (ll1-char char-ascii-alphabetic?) "a" => #\a))
    (test-case "parser combinators"
      ;; Parser from AdventOfCode 2023 Day 2 https://adventofcode.com/2023/day/2
      (def (ll1-color color)
        (ll1-begin (ll1-string (as-string color)) (ll1-pure color)))
      (def ll1-color-drawing
        (ll1-bind ll1-uint
                  (lambda (n)
                    (ll1* cons
                          (ll1-begin (ll1-string " ")
                                     (ll1-peek "rgb")
                                     (ll1-or (ll1-color 'red)
                                             (ll1-color 'green)
                                             (ll1-color 'blue)))
                          (ll1-result n)))))
      (def ll1-end-of-drawing
        (ll1-peek [#!eof ";\n\r"]))
      (def ll1-drawing
        (ll1-separated ll1-color-drawing (ll1-string ", ") ll1-end-of-drawing))
      (def ll1-game
        (ll1* cons
              (ll1-begin (ll1-string "Game ") ll1-uint)
              (ll1-begin (ll1-string ": ")
                         (ll1-separated ll1-drawing (ll1-string "; ") ll1-eolf?))))
      (def ll1-games (ll1-repeated (ll1-begin0 ll1-game ll1-eolf) ll1-eof))
      (check-function (cut ll1 ll1-games <>)
        "Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green" =>
        '((1 ((blue . 3) (red . 4)) ((red . 1) (green . 2) (blue . 6)) ((green . 2)))
          (2 ((blue . 1) (green . 2)) ((green . 3) (blue . 4) (red . 1)) ((green . 1) (blue . 1)))
          (3 ((green . 8) (blue . 6) (red . 20)) ((blue . 5) (red . 4) (green . 13)) ((green . 5) (red . 1)))
          (4 ((green . 1) (red . 3) (blue . 6)) ((green . 3) (red . 6)) ((green . 3) (blue . 15) (red . 14)))
          (5 ((red . 6) (blue . 1) (green . 3)) ((blue . 2) (red . 1) (green . 2))))
      "Game 1: 1 red\n" => '((1 ((red . 1))))
      "Game 42: " => '((42))))
    (test-case "parser combinators #2"
      (check-function ll1
        (ll1-list ll1-sint (ll1-string "foo")) "-5foo" => [-5 "foo"]
        (ll1-n-chars 6 "ban") "banana" => "banana"
        (ll1-n-times 3 (ll1-n-chars 2 char-ascii-alphabetic?)) "banana" => '("ba" "na" "na")
        (ll1-char (hash (#\a 1) (#\b 2))) "b" => #\b
        (ll1-list (ll1-char #\b) (ll1-char? #\x) (ll1-char? #\a)
                  (ll1-char+ #\n) (ll1-char* "na")
                  ll1-skip-space* (ll1-skip-char* char-ascii-alphabetic?)
                  ll1-eol (ll1-n-digits 2) ll1-eol)
          "banana phone\n42\r\n" => '(#\b #f #\a "n" "ana" #!void #!void "\n" 42 "\r\n")
        ll1-line "foo" => "foo"
        (ll1-list ll1-line ll1-eolf) "foo\r" => '("foo" "\r")
        ll1-lines "a\nb\r\nc\r\rd" => '("a" "b" "c" "" "d")
        (cut ll1-lines <> ll1-uint) "1\n2\r\n3\r4\r5\n" => '(1 2 3 4 5)
        (ll1-list ll1-sint ll1-skip-space-to-eof) "2023    " => '(2023 #!void)
        (ll1-repeated (ll1-case (#\r (ll1-string "red"))
                                ("\r\n" ll1-eol)
                                (char-strict-whitespace? ll1-skip-space*) ; NB: contains \r\n
                                (char-ascii-digit ll1-uint)) ll1-eof)
          "\nred3   45\r\nred" => '("\n" "red" 3 #!void 45 "\r\n" "red")
        (ll1-case (#\r (ll1-string "ro"))) "o" =>! ParseError?))))
