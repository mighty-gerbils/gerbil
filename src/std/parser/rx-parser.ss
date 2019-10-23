;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser for lexeme regular expressions

(import :std/parser/base
        :std/parser/rlang
        :std/parser/lexer
        :std/parser/defparser
        (only-in <expander-runtime> datum->syntax))
(export parse-rx current-rx-syntax-context)

(def (simplify e)
  (match e
    (['@cat e] e)
    (['@alt e] e)
    (else e)))

(def current-rx-syntax-context
  (make-parameter #f))

(def (wrap-identifier-e lst loc)
  (let (sym (string->symbol (list->string lst)))
    (cond
     ((current-rx-syntax-context)
      => (lambda (stx)
           (datum->syntax stx sym (location->source-location loc))))
     (else sym))))

(defparser parse-rx
  lexer: lex-chars
  (RX (@cat (@rep* (L $1)) $$)
      => (simplify ['@cat $1 ...]))
  (L  (@cat (L1 $1) (@eq #\*))
      => ['@rep* $1]
      (@cat (L1 $1) (@eq #\+))
      => ['@rep+ $1]
      (@cat (L1 $1) (@eq #\?))
      => ['@maybe $1]
      (@cat (L1 $1) (@rep* (L1+ $2)))
      => (simplify ['@cat $1 $2 ...]))
  (L1+ (@cat L1 SuffixOpChar)
       !
       L1)
  (L1 (@cat (@eq #\() (L $1) (@rep* (@cat (@eq #\|) (L $2))) (@eq #\)))
      => (simplify ['@alt $1 $2 ...])
      (@cat (@eq #\{) (@rep+ (IdentifierChar $1)) (@eq #\}))
      => (wrap-identifier-e $1 @loc)
      (@cat (L2 $1) (@rep* (L2+ $2)))
      => (simplify ['@cat $1 $2 ...]))
  (L2+ (@cat L2 SuffixOpChar)
       !
       L2)
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
   => ['@charset ['quote (apply append [#\-] (map unwrap-ast $1))]]
   (@cat (@eq #\[) (@rep+ (CharRange $1)) (@eq #\]))
   => ['@charset ['quote (apply append (map unwrap-ast $1))]])
  (NegSet
   (@cat (@eq #\[) (@eq #\^) (@eq #\-) (@rep* (CharRange $1)) (@eq #\]))
   => ['@negset ['quote (apply append [#\-] (map unwrap-ast $1))]]
   (@cat (@eq #\[) (@eq #\^) (@rep+ (CharRange $1)) (@eq #\]))
   => ['@negset ['quote (apply append (map unwrap-ast $1))]])
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
  (SuffixOpChar
   (@eq #\*)
   (@eq #\+)
   (@eq #\?))
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
        (if (fx<= k end)
          (lp (fx1+ k) (cons (integer->char k) chars))
          (reverse chars)))
      (raise-parse-error 'parse-rx "Illegal character range"
                         (make-token 'CharRange [char-start char-end] loc)))))
