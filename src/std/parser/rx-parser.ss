;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser for lexeme regular expressions
package: std/parser

(import :std/parser/base
        :std/parser/rlang
        :std/parser/lexer
        :std/parser/defparser)
(export parse-rx)

(defparser parse-rx
  lexer: lex-chars
  (RX (@cat (@rep* (L $1)) $$)
      => ['@cat $1 ...])
  (L  (@cat (L1 $1) (@eq #\*))
      => ['@rep* $1]
      (@cat (L1 $1) (@eq #\+))
      => ['@rep+ $1]
      (@cat (L1 $1) (@eq #\?))
      => ['@maybe $1]
      (@rep+ (L1 $1))
      => ['@cat $1 ...])
  (L1 (@cat (@eq #\() (L $1) (@rep* (@cat (@eq #\|) (L $2))) (@eq #\)))
      => ['@alt $1 $2 ...]
      (@cat (@eq #\{) (@rep+ (IdentifierChar $1)) (@eq #\}))
      => (string->symbol (list->string $1))
      (@rep+ (L2 $1))
      => ['@cat $1 ...])
  (L2 (EscapedChar $1)
      => ['@char $1]
      NegSet
      CharSet
      (@eq #\.)
      => '@dot
      SpecialChar
      !
      (Char $1)
      => ['@char $1])
  (EscapedChar
   (@cat (@eq #\\) (Char $1))
   => (escape-char $1))
  (CharSet
   (@cat (@eq #\[) (@eq #\-) (@rep* (CharRange $1)) (@eq #\]))
   => ['@charset (apply append [#\-] (map unwrap-ast $1))]
   (@cat (@eq #\[) (@rep+ (CharRange $1)) (@eq #\]))
   => ['@charset (apply append (map unwrap-ast $1))])
  (NegSet
   (@cat (@eq #\[) (@eq #\^) (@eq #\-) (@rep* (CharRange $1)) (@eq #\]))
   => ['@negset (apply append [#\-] (map unwrap-ast $1))]
   (@cat (@eq #\[) (@eq #\^) (@rep+ (CharRange $1)) (@eq #\]))
   => ['@negset (apply append (map unwrap-ast $1))])
  (CharRange
   (@cat (CharRangeChar $1) (@eq #\-) (CharRangeChar $2))
   => (make-char-range $1 $2 @loc)
   (CharRangeChar $1)
   => [$1])
  (CharRangeChar
   (@eq #\]) !                      ; cut, we hit the end of the range
   (@eq #\-)
   => (raise-parse-error 'parse-rx "Illegal character range" @@)
   EscapedChar
   Char)
  (IdentifierChar
   (@eq #\}) !                      ; cut, we hit the end of macro name
   SeparatorChar
   => (raise-parse-error 'parse-rx "Illegal identifier character" @@)
   Char)
  (SpecialChar
   (@eq #\*)
   (@eq #\+)
   (@eq #\?)
   (@eq #\.)
   SeparatorChar)
  (SeparatorChar
   (@eq #\()
   (@eq #\))
   (@eq #\|)
   (@eq #\{)
   (@eq #\}))
  (Char %))

(def (escape-char char)
  (case char
    ((#\n) #\newline)
    ((#\r) #\return)
    ((#\t) #\tab)
    (else char)))

(def (make-char-range char-start char-end loc)
  (let ((start (char->integer char-start))
        (end (char->integer char-end)))
    (if (fx<= start end)
      (let lp ((k start) (chars []))
        (if (fx< k end)
          (lp (fx1+ k) (cons (integer->char k) chars))
          (reverse chars)))
      (raise-parse-error 'parse-rx "Illegal character range"
                         (make-token 'CharRange [char-start char-end] loc)))))
