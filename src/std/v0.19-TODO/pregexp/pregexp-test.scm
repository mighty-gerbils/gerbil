":";exec mzscheme -v -f pregexp.scm -f $0

;last substantial change 2005-04-24
;last change 2008-04-12

(load (if 'nil "tester.scm" "tester.lisp"))

;keeping the document honest

(test

  (pregexp "c.r")
  (:sub (:or (:seq #\c :any #\r)))

  (pregexp-match-positions "brain" "bird")
  #f

  (pregexp-match-positions "needle" "hay needle stack")
  ((4 . 10))

  (pregexp-match-positions "needle"
    "his hay needle stack -- my hay needle stack -- her hay needle stack"
    24 43)
  ((31 . 37))

  (pregexp-match "brain" "bird")
  #f

  (pregexp-match "needle" "hay needle stack")
  ("needle")

  (pregexp-split ":" "/bin:/usr/bin:/usr/bin/X11:/usr/local/bin")
  ("/bin" "/usr/bin" "/usr/bin/X11" "/usr/local/bin")

  (pregexp-split " " "pea soup")
  ("pea" "soup")

  (pregexp-split "" "smithereens")
  ("s" "m" "i" "t" "h" "e" "r" "e" "e" "n" "s")

  (pregexp-split " +" "split pea     soup")
  ("split" "pea" "soup")

  (pregexp-split " *" "split pea     soup")
  ("s" "p" "l" "i" "t" "p" "e" "a" "s" "o" "u" "p")

  (pregexp-replace "te" "liberte" "ty")
  "liberty"

  (pregexp-replace* "te" "liberte egalite fraternite" "ty")
  "liberty egality fratyrnity"

  (pregexp-match-positions "^contact" "first contact")
  #f

  (pregexp-match-positions "laugh$" "laugh laugh laugh laugh")
  ((18 . 23))

  (pregexp-match-positions "yack\\b" "yackety yack")
  ((8 . 12))

  (pregexp-match-positions "an\\B" "an analysis")
  ((3 . 5))

  (pregexp-match "p.t" "pet")
  ("pet")


  (pregexp-match "\\d\\d" "0 dear, 1 have to read catch 22 before 9")
  ("22")

  (pregexp-match "[[:alpha:]_]" "--x--")
  ("x")

  (pregexp-match "[[:alpha:]_]" "--_--")
  ("_")

  (pregexp-match "[[:alpha:]_]" "--:--")
  #f

  (pregexp-match "[:alpha:]" "--a--")
  ("a")

  (pregexp-match "[:alpha:]" "--_--")
  #f

  (pregexp-match-positions "c[ad]*r" "cadaddadddr")
  ((0 . 11))

  (pregexp-match-positions "c[ad]*r" "cr")
  ((0 . 2))

  (pregexp-match-positions "c[ad]+r" "cadaddadddr")
  ((0 . 11))

  (pregexp-match-positions "c[ad]+r" "cr")
  #f

  (pregexp-match-positions "c[ad]?r" "cadaddadddr")
  #f

  (pregexp-match-positions "c[ad]?r" "cr")
  ((0 . 2))

  (pregexp-match-positions "c[ad]?r" "car")
  ((0 . 3))

  (pregexp-match "[aeiou]{3}" "vacuous")
  ("uou")

  (pregexp-match "[aeiou]{3}" "evolve")
  #f

  (pregexp-match "[aeiou]{2,3}" "evolve")
  #f

  (pregexp-match "[aeiou]{2,3}" "zeugma")
  ("eu")

  (pregexp-match "<.*>" "<tag1> <tag2> <tag3>")
  ("<tag1> <tag2> <tag3>")


  (pregexp-match "<.*?>" "<tag1> <tag2> <tag3>")
  ("<tag1>")

  (pregexp-match "([a-z]+) ([0-9]+), ([0-9]+)" "jan 1, 1970")
  ("jan 1, 1970" "jan" "1" "1970")

  (pregexp-match "(poo )*" "poo poo platter")
  ("poo poo " "poo ")

  (pregexp-match "([a-z ]+;)*" "lather; rinse; repeat;")
  ("lather; rinse; repeat;" " repeat;")

  (pregexp-match "^$" "")
  ("")

  (pregexp-match "^$" "" 0 0)
  ("")
  )

(define date-re
  ;match `month year' or `month day, year'.
  ;subpattern matches day, if present
  (pregexp "([a-z]+) +([0-9]+,)? *([0-9]+)"))

(test

  (pregexp-match date-re "jan 1, 1970")
  ("jan 1, 1970" "jan" "1," "1970")

  (pregexp-match date-re "jan 1970")
  ("jan 1970" "jan" #f "1970")

  (pregexp-replace "_(.+?)_"
    "the _nina_, the _pinta_, and the _santa maria_"
    "*\\1*")
  "the *nina*, the _pinta_, and the _santa maria_"

  (pregexp-replace* "_(.+?)_"
    "the _nina_, the _pinta_, and the _santa maria_"
    "*\\1*")
  "the *nina*, the *pinta*, and the *santa maria*"

  (pregexp-replace "(\\S+) (\\S+) (\\S+)"
    "eat to live"
    "\\3 \\2 \\1")
  "live to eat"

  (pregexp-match "([a-z]+) and \\1"
    "billions and billions")
  ("billions and billions" "billions")

  (pregexp-match "([a-z]+) and \\1"
    "billions and millions")
  #f

  (pregexp-replace* "(\\S+) \\1"
    "now is the the time for all good men to to come to the aid of of the party"
    "\\1")
  "now is the time for all good men to come to the aid of the party"

  (pregexp-replace* "(\\d+)\\1"
    "123340983242432420980980234"
    "{\\1,\\1}")
  "12{3,3}40983{24,24}3242{098,098}0234"

  (pregexp-match "^(?:[a-z]*/)*([a-z]+)$" "/usr/local/bin/mzscheme")
  ("/usr/local/bin/mzscheme" "mzscheme")

  (pregexp-match "(?i:hearth)" "HeartH")
  ("HeartH")

  (pregexp-match "(?x: a   lot)" "alot")
  ("alot")

  (pregexp-match "(?x: a  \\  lot)" "a lot")
  ("a lot")

  (pregexp-match "(?x:
    a \\ man  \\; \\   ; ignore
    a \\ plan \\; \\   ; me
    a \\ canal         ; completely
    )"
    "a man; a plan; a canal")
  ("a man; a plan; a canal")

  (pregexp-match "(?ix:
    a \\ man  \\; \\   ; ignore
    a \\ plan \\; \\   ; me
    a \\ canal         ; completely
    )"
    "A Man; a Plan; a Canal")
  ("A Man; a Plan; a Canal")

  (pregexp-match "(?i:the (?-i:TeX)book)"
    "The TeXbook")
  ("The TeXbook")

  (pregexp-match "f(ee|i|o|um)" "a small, final fee")
  ("fi" "i")

  (pregexp-replace* "([yi])s(e[sdr]?|ing|ation)"
    "it is energising to analyse an organisation pulsing with noisy organisms"
    "\\1z\\2")
  "it is energizing to analyze an organization pulsing with noisy organisms"

  (pregexp-match "f(?:ee|i|o|um)" "fun for all")
  ("fo")

  (pregexp-match "call|call-with-current-continuation"
    "call-with-current-continuation")
  ("call")

  (pregexp-match "call-with-current-continuation|call"
    "call-with-current-continuation")
  ("call-with-current-continuation")

  (pregexp-match "(?:call|call-with-current-continuation) constrained"
    "call-with-current-continuation constrained")
  ("call-with-current-continuation constrained")

  (pregexp-match "(?>a+)." "aaaa")
  #f

  (pregexp-match-positions "grey(?=hound)"
    "i left my grey socks at the greyhound")
  ((28 . 32))

  (pregexp-match-positions "grey(?!hound)"
    "the gray greyhound ate the grey socks")
  ((27 . 31))

  (pregexp-match-positions "(?<=grey)hound"
    "the hound in the picture is not a greyhound")
  ((38 . 43))

  (pregexp-match-positions "(?<!grey)hound"
    "the greyhound in the picture is not a hound")
  ((38 . 43))

  )

(define n0-255
  "(?x:
  \\d          ;  0 through   9
  | \\d\\d     ; 00 through  99
  | [01]\\d\\d ;000 through 199
  | 2[0-4]\\d  ;200 through 249
  | 25[0-5]    ;250 through 255
  )")

(define ip-re1
  (string-append
    "^"        ;nothing before
    n0-255     ;the first n0-255,
    "(?x:"     ;then the subpattern of
    "\\."      ;a dot followed by
    n0-255     ;an n0-255,
    ")"        ;which is
    "{3}"      ;repeated exactly 3 times
    "$"        ;with nothing following
    ))

(test

  (pregexp-match ip-re1
    "1.2.3.4")
  ("1.2.3.4")

  (pregexp-match ip-re1
    "55.155.255.265")
  #f

  (pregexp-match ip-re1
    "0.00.000.00")
  ("0.00.000.00")

  )


(define ip-re
  (string-append
    "(?=[1-9])" ;ensure there's a non-0 digit
    ip-re1))

(test

  (pregexp-match ip-re
    "1.2.3.4")
  ("1.2.3.4")

  (pregexp-match ip-re
    "0.0.0.0")
  #f

  )

(set! ip-re
  (string-append
    "(?![0.]*$)" ;not just zeros and dots
    ;dot is not metachar inside []
    ip-re1))

(test

  (pregexp-match ip-re
    "1.2.3.4")
  ("1.2.3.4")

  (pregexp-match ip-re
    "0.0.0.0")
  #f

  ;misc

  (pregexp-match "a[^a]*b" "glauber")
  ("aub")

  (pregexp-match "a([^a]*)b" "glauber")
  ("aub" "u")

  (pregexp-match "a([^a]*)b" "ababababab")
  ("ab" "")

  (pregexp-match "(?x: s  e  * k )" "seeeeek")
  ("seeeeek")

  (pregexp-match "(?x: t  ;matches t
    h          ;   matches h
    e           ;;;   matches e
    \\              ; ; ; matches space
    \\;          ;  matches ;
    )"
    "the ;")
  ("the ;")

  (pregexp-replace* "^(.*)$" "foobar" "\\1abc")
  "foobarabc"

  (pregexp-replace* "^(.*)$" "foobar" "abc\\1")
  "abcfoobar"

  (pregexp-replace* "(.*)$" "foobar" "abc\\1")
  "abcfoobar"

  )

(test

  ;PLT bug 6095 from Neil W. Van Dyke
  (pregexp "[a-z-]")
  (:sub (:or (:seq (:one-of-chars (:char-range #\a #\z) #\-))))
  ;
  (pregexp "[-a-z]")
  (:sub (:or (:seq (:one-of-chars #\- (:char-range #\a #\z)))))

  ;PLT bug 6442 from David T. Pierson
  (pregexp-match-positions "(a(b))?c" "abc")
  ((0 . 3) (0 . 2) (1 . 2))
  ;
  (pregexp-match-positions "(a(b))?c" "c")
  ((0 . 1) #f #f)

  ;PLT bug 7233 from Edi Weitz
  (length (pregexp-match "(a)|(b)" "b"))
  3

  ;PLT bug 7232 from Neil Van Dyke
  (pregexp "[-a]")
  (:sub (:or (:seq (:one-of-chars #\- #\a))))
  ;
  (pregexp "[a-]")
  (:sub (:or (:seq (:one-of-chars #\a #\-))))

  )

(bottomline)
