;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser grammar reader

(import <expander-runtime>
        <syntax-case>
        <syntax-sugar>
        :std/parser/rlang
        :std/parser/base
        :std/parser/stream
        :std/parser/lexer
        :std/parser/defparser
        :std/parser/deflexer)

(export read-module-body)

;; The module body starts with a body section followed by one or more
;; parser and lexer definition section.
;; The body section is a sequence of s-expressions read with read-syntax,
;; to be spliced directly to the module body
;; parser definition sections are designated with %%parser
;; lexer definition sections are designated with %%lexer
(def (read-module-body port)
  (let lp ((body []))
    (let (next (read-syntax port))
      (cond
       ((eof-object? next)
        ;; this is meaningless, barf
        (raise-syntax-error #f "Bad syntax; no parser or lexer definitions"
                            (read-error-token port)))
       ((or (eq? (stx-e next) '%%parser)
            (eq? (stx-e next) '%%lexer))
        (read-module-section port body (make-token '$$ (stx-e next) #f)))
       (else
        (lp (cons next body)))))))

(def (read-error-token port)
  (let ((name (##port-name port))
        (loc (port-location port)))
    (make-AST ['read-module-body name]
              (location->source-location loc))))

(def (read-module-section port body tok)
  (let (e (token-e tok))
    (cond
     ((eof-object? e)
      (reverse body))
     ((eq? e '%%parser)
      (read-parser-section port body))
     ((eq? e '%%lexer)
      (read-lexer-section port body))
     (else
      (raise-syntax-error #f "Bad syntax; unexpected token" (token->syntax tok))))))

(def (read-parser-section port body)
  (read-%%-section port body 'defparser read-parser-body))

(def (read-lexer-section port body)
  (read-%%-section port body 'deflexer read-lexer-body))

(def (read-%%-section port body defmacro read-body-e)
  (def (raise-e exn)
    (if (parse-error? exn)
      (apply raise-syntax-error #f
             (string-append "Bad syntax; parse error: "
                            (cond
                             ((error-trace exn) =>
                              (lambda (where)
                                (string-append (symbol->string where) " :")))
                             (else ""))
                            (error-message exn))
             (map token->syntax (error-irritants exn)))
      (raise exn)))

  (with-syntax* (((values macro-id opts)
                  (read-section-head port))
                 ((values rules end)
                  (with-catch raise-e (cut read-body-e port)))
                 (defmacro defmacro)
                 (macro-id macro-id)
                 ((macro-opt ...) opts)
                 ((rule ...) rules))
    (let (defn (stx-wrap-source
                #'(defmacro macro-id
                    macro-opt ...
                    rule ...)
                (stx-source #'macro-id)))
      (read-module-section port (cons defn body) end))))

(def (read-section-head port)
  (def (read-id)
    (let (next (peek-char port))
      (cond
       ((or (eof-object? next) (memq next '(#\newline #\# #\;)))
        (raise-syntax-error #f "Bad syntax; missing section id"
                            (read-error-token port) next))
       ((char-whitespace? next)
        (read-char port)
        (read-id))
       (else
        (let (id (read-syntax port))
          (unless (identifier? id)
            (raise-syntax-error #f "Bad syntax; expected identifier" id))
          (read-opts id []))))))

  (def (read-opts id opts)
    (let (next (peek-char port))
      (cond
       ((eof-object? next)
        (raise-syntax-error #f "Bad syntax; premature end of input"
                            (read-error-token port)))
       ((eq? #\newline next)
        (read-char port)
        (values id (reverse opts)))
       ((eq? next #\;)
        (read-line port)
        (values id (reverse opts)))
       ((eq? next #\#)
        (raise-syntax-error #f "Bad syntax; unexpected character"
                            (read-error-token port) next))
       ((char-whitespace? next)
        (read-char port)
        (read-opts id opts))
       (else
        (let (opt (read-syntax port))
          (read-opts id (cons opt opts)))))))

  (read-id))

(def (raise-unexpected-token tok)
  (raise-syntax-error #f "Bad syntax; unexpected token" (token->syntax tok)))

(def (read-parser-body port)
  (def (locat-delta* start end)
    (location->source-location
     (location-delta* (token-loc start) (token-loc end))))

  (def (make-rule rule-id prods start end)
    (make-AST (cons rule-id (reverse prods))
              (locat-delta* start end)))

  (def (parse-rule ts K E)
    (let (rule (parse-rule-head ts))
      (case (token-t rule)
        ((Rule)
         (with-syntax (((rule-id head) (token-e rule)))
           (parse-rule-k ts rule #'rule-id #'head [] K E)))
        (else
         (E ts rule #f)))))

  (def (parse-rule-k ts start rule-id head prods K E)
    (let (next (token-stream-next ts))
      (case (token-t next)
        (($$)
         (case (token-e next)
           ((ACTION)
            (parse-rule-action ts start rule-id head prods K E))
           ((ALTRULE)
            (parse-rule-altrule ts start rule-id (cons head prods) K E))
           ((ENDRULE)
            (K ts (make-rule rule-id (cons head prods) start next)))
           (else
            (E ts next (make-rule rule-id (cons head prods) start next)))))
        (else
         (raise-unexpected-token next)))))

  (def (parse-rule-action ts start rule-id head prods K E)
    (let (action (read-syntax port))
      (if (eof-object? action)
        (raise-syntax-error #f "Bad syntax; unexpected end of input" rule-id)
        (let* ((ts (lex-parser port)) ; reset
               (next (token-stream-next ts)))
          (case (token-t next)
            (($$)
             (case (token-e next)
               ((ACTION)
                (raise-unexpected-token next))
               ((ALTRULE)
                (parse-rule-altrule ts start rule-id (cons* action '=> head prods) K E))
               ((ENDRULE)
                (K ts (make-rule rule-id (cons* action '=> head prods) start next)))
               (else
                (E ts next (make-rule rule-id (cons* action '=> head prods) start next)))))
            (else
             (raise-unexpected-token next)))))))

  (def (parse-rule-altrule ts start rule-id prods K E)
    (let (prod (parse-rule-prod ts))
      (case (token-t prod)
        ((Prod)
         (let* ((prod (token-e prod))
                (next (token-stream-next ts)))
           (case (token-t next)
             (($$)
              (case (token-e next)
                ((ACTION)
                 (parse-rule-action ts start rule-id prod prods K E))
                ((ALTRULE)
                 (parse-rule-altrule ts start rule-id (cons prod prods) K E))
                ((ENDRULE)
                 (K ts (make-rule rule-id (cons prod prods) start next)))
                (else
                 (E ts next (make-rule rule-id (cons prod prods) start next)))))
             (else
              (raise-unexpected-token next)))))
        (else
         (raise-unexpected-token prod)))))

  (let lp ((ts (lex-parser port)) (rules []))
    (parse-rule
     ts
     (lambda (ts rule)
       (lp ts (cons rule rules)))
     (lambda (ts tok rule)
       (let (rules (if rule (cons rule rules) rules))
         (if (eq? (token-e tok) 'ENDRULE)
           (lp ts rules)
           (values (reverse rules) tok)))))))

(def (read-lexer-body port)
  (def (make-rule rx action end)
    (make-AST [(token-e rx) action]
              (location->source-location
               (location-delta (token-loc rx) end))))

  (def (parse-rule ts K E)
    (let (next (token-stream-next ts))
      (case (token-t next)
        ((RX)
         (parse-rule-k ts next K E))
        (else
         (E ts next)))))

  (def (parse-rule-k ts rx K E)
    (let (next (token-stream-next ts))
      (case (token-t next)
        (($$)
         (case (token-e next)
           ((ACTION)
            (let (action (read-syntax port))
              (if (eof-object? action)
                (raise-syntax-error #f "Bad syntax; unexpected end of input"
                                    (token->syntax next))
                (let* ((ts (lex-lexer port))
                       (end (token-stream-loc ts))
                       (rule (make-rule rx action end)))
                  (K ts rule)))))
           (else
            (raise-unexpected-token next))))
        (else
         (raise-unexpected-token next)))))


  (let lp ((ts (lex-lexer port)) (rules []))
    (parse-rule
     ts
     (lambda (ts rule)
       (lp ts (cons rule rules)))
     (lambda (ts tok)
       (if (eq? (token-e tok) 'ENDRULE)
         (lp ts rules)
         (values (reverse rules) tok))))))

;;; lexers and parsers
(deflexer lex-parser
  ;; macros
  ("[ \\t]"   {WS})
  ;; special tokens
  ("%%parser" ($$ '%%parser))           ; new parser section
  ("%%lexer"  ($$ '%%lexer))            ; new lexer section
  ("=>"       ($$ 'ACTION))
  ("\\|"      ($$ 'ALTRULE))
  ("\\n+{WS}+" $)                       ; indented rule
  ("\\n+"     ($$ 'ENDRULE))
  ("{WS}+"     $)                       ; whitespace
  (";[^\\n]+"  $)                       ; comment
  ;; lexemes
  ("<-"                            (PROD '<-))
  ("\\("                           (LPAREN '|(|))
  ("\\)"                           (RPAREN '|)|))
  ("'[^']*'"                       (EQ (string->token-symbol @@)))
  ("\"(\\\"|[^\"])*\""             (EQUAL (string->token-string @@)))
  ("\\*"                           (STAR '*))
  ("\\+"                           (PLUS '+))
  ("\\?"                           (MAYBE '?))
  ("[-+*/=?<>~!@$%^&:_a-zA-Z0-9]+" (Ident (string->symbol @@))))

(defparser parse-rule-head
  lexer: lex-parser
  rules: (Prod Ident)
  (Rule (@cat (Ident $1) (@eq '<-) (Prod $2))
        => [$1 $2]
        $$))

(defparser parse-rule-prod
  lexer: lex-parser
  (Prod (@rep+ (Pattern $1))
        => (simplify ['@cat $1 ...]))
  (Pattern (@cat (SimplePattern $1) (@eq '+))
           => ['@rep+ $1]
           (@cat (SimplePattern $1) (@eq '*))
           => ['@rep* $1]
           (@cat (SimplePattern $1) (@eq '?))
           => ['@maybe $1]
           (SimplePattern $1)
           => $1)
  (SimplePattern
   (@cat (@eq '|(|) (Ident $1) (Ident $2) (@eq '|)|))
   => [$1 $2]
   (Ident $1)
   => $1
   (EQ $1)
   => ['@eq ['quote $1]]
   (EQUAL $1)
   => ['@eq ['quote $1] equal?])
  (Ident %)
  (EQ %)
  (EQUAL %))

(deflexer lex-lexer
  ("%%parser" ($$ '%%parser))           ; new parser section
  ("%%lexer"  ($$ '%%lexer))            ; new lexer section
  ("{WS}+->"  ($$ 'ACTION))
  ("\\n+"     ($$ 'ENDRULE))
  ("{WS}+"     $)                       ; whitespace
  (";[^\\n]+"  $)                       ; comment
  ;; regexp
  ("(\\\\;|\\\\ |[^ \n\t;])+" (RX (escape-chars @@))))

(def (simplify cat)
  (match cat
    (['@cat e] e)
    (else cat)))

(def (string->token-symbol str)
  (string->symbol
   (string->token-string str)))

(def (string->token-string str)
  (escape-chars
   (substring str 1 (fx1- (string-length str)))))

(def (escape-chars str)
  (let lp ((rest (string->list str)) (chars []))
    (match rest
      ([char . rest]
       (if (eq? char #\\)
         (case char
           ((#\n) (lp rest (cons #\newline chars)))
           ((#\r) (lp rest (cons #\return chars)))
           ((#\t) (lp rest (cons #\tab chars)))
           (else
            (lp rest (cons char chars))))
         (lp rest (cons char chars))))
      (else
       (list->string (reverse chars))))))
