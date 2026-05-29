-;;; -*- Gerbil -*-
;;; © vyzo
;;; format deserializer
(import :std/error
	:std/interface
	:std/io/interface
	:std/io/bio/api
	:std/io/bio/cache
	:std/serde/interface
        :std/serde/deserialize
	:std/iter
	./env
	./ascii
	./ioutil)
(export #t)

(def (reader-environment opt:             (opt : ReaderOpt := (ReaderOpt))
                         allow-class:     (allow-class? : :procedure := (lambda (x) #t))
                         allow-procedure: (allow-procedure? : :procedure := (lambda (x) #f))
                         intern-symbol:   (intern-symbol : :procedure := string->symbol)
                         intern-keyword:  (intern-keyword : :procedure := string->keyword)
                         dag:             (dag?            : :boolean := #f))
  => ReaderEnv
  (ReaderEnv
   ctx: (ReadContext allow-class:     allow-class?
                     allow-procedure: allow-procedure?
                     intern-symbol:   intern-symbol
                     intern-keyword:  intern-keyword
                     dag:             dag?)
   opt: opt
   sharp: __sharp-readtable))

(def (parse (reader : BufferedReader)
            (env    : ReaderEnv)
            (anchor : Anchor))
  (let loop ((sk [] :- :list) (esc? #f :- :boolean))
    (let (next (reader.peek-char-utf8))
      (cond
       ((eof-object? next)
        (if (null? sk)
          #!eof
          (parse-symbolic sk env anchor)))
       ((null? sk)
        ;; new token
        (cond
         ;; symbolic escape
         ((eq? next #\|)
          (loop (cons (reader.read-char-utf8) sk) #t))
         ;; sharp
         ((eq? next #\#)
          (parse-sharp reader env anchor))
         ;; string
         ((eq? next #\")
          (parse-string reader env anchor))
         ;; parenoid
         ((memq next '(#\( #\[ #\{))
          (parse-list reader env anchor))
         ;; stray parenoid end
         ((memq next '(#\) #\] #\}))
          (reader.read-char-utf8)
          (raise-parse-error parse "unexpected delimiter" char: next anchor: anchor))
         ;; quotoid
         ((memq next '(#\' #\` #\,))
          (parse-quote reader env anchor))
         ;; comment
         ((eq? next #\;)
          (reader.read-char-utf8)
          (skip-line-comment reader)
          (loop [] #f))
         ;; whitespace, skip
         ((char-whitespace? next)
          (reader.read-char-utf8)
          (loop sk #f))
         ;; readable?
         ((char-readable? next)
          ;; start a printable char stack
          (loop [(reader.read-char-utf8)] #f))
         (else
          (reader.read-char-utf8)
          (raise-parse-error parse "unreadable character" char: next anchor: anchor))))
       (esc?
        (if (eq? next #\|)
          (loop (cons (reader.read-char-utf8) sk) #f)
          (loop (cons (reader.read-char-utf8) sk) #t)))
       ;; delimiter
       ((char-symbolic-delimiter? next)
        (parse-symbolic sk env anchor))
       ;; add to the stack
       ((char-readable? next)
        (loop (cons (reader.read-char-utf8) sk) esc?))
       (else
        (parse-symbolic sk env anchor))))))

(def (parse-sharp (reader : BufferedReader)
                  (env : ReaderEnv)
                  (anchor : Anchor))
  ;; eat #
  (reader.read-char-utf8)
  ;; dispatch
  (let (next (reader.peek-char-utf8))
    (if (eof-object? next)
      (raise-premature-end-of-input parse-sharp)
      (let (int (char->integer next))
        (cond
         ((and (fx< int (vector-length env.sharp))
               (##vector-ref env.sharp int))
          => (lambda ((parsef :- :procedure))
               (parsef reader env anchor)))
         (else
          (reader.read-char-utf8)
          (raise-parse-error parse-sharp "unreadable sharp token" char: next anchor: anchor)))))))

(def (parse-string (reader : BufferedReader)
                   (env : ReaderEnv)
                   (anchor : Anchor))
  (reader.read-char-utf8)
  (defrule (sk->string sk)
    (anchor.set! (list->string (reverse! sk))))
  (let loop ((sk [] :- :list))
    (let (next (reader.peek-char-utf8))
      (cond
       ((eof-object? next)
        (sk->string sk))
       ((eq? #\" next)
        (reader.read-char-utf8)
        (sk->string sk))
       ((eq? #\\ next)
        (reader.read-char-utf8)
        (let (next (reader.read-char-utf8))
          (case next
            ((#\\)
             (loop (cons #\\ sk)))
            ;; hex ascii encoding
            ((#\x)
             (let (char (parse-hex-char reader env anchor 2))
               (loop (cons char sk))))
            ;; unicode encoding
            ((#\u)
             (let (char (parse-hex-char reader env anchor 4))
               (loop (cons char sk))))
            (else
             (try-string-escape-char
              next
              (lambda (char)
                (loop (cons char sk)))
              (lambda () (raise-parse-error parse-string "invalid escape char" char: next anchor: anchor)))))))
       ((eq? next #\")
        (reader.read-char-utf8)
        (sk->string sk))
       ((char-readable? next)
        (loop (cons (reader.read-char-utf8) sk)))
       (else
        (reader.read-char-utf8)
        (raise-parse-error parse-string "unexpected character" char: next anchor: anchor))))))

(def (parse-hex-char (reader : BufferedReader)
                     (env    : ReaderEnv)
                     (anchor : Anchor)
                     (gits   : :fixnum))
  (reader.read-char-utf8)
  (let loop ((i 0 :- :fixnum) (int 0))
    (if (fx< i gits)
      (let (b (reader.read-char-utf8))
        (if (eof-object? b)
          (raise-premature-end-of-input parse-hex-char)
          (let* ((x (char->integer b))
                 (x (or (and (fx< x (vector-length __sharp-hex-alphabet))
                             (##vector-ref __sharp-hex-alphabet x))
                        (raise-parse-error parse-hex-char "invalid hex char" char: b anchor: anchor))))
            (loop (fx+ i 1) (fxior (fxshift int 4) (:- x :fixnum))))))
      (integer->char int))))

(def (parse-list (reader : BufferedReader)
                 (env    : ReaderEnv)
                 (anchor : Anchor)
                 (allow-improper? #t : :boolean))
  (let* ((start (reader.read-char-utf8))
         (end
          (case start
            ((#\() #\))
            ((#\[) #\])
            ((#\{) #\})
            (else (BUG parse-list "unexpected delimiter" start))))
         (lst
          (let loop ((lst []))
            (let (next (reader.peek-char-utf8))
              (cond
               ((eof-object? next)
                (raise-premature-end-of-input parse-list))
               ((eq? next end)
                (reader.read-char-utf8)
                (reverse! lst))
               ((char-whitespace? next)
                (reader.read-char-utf8)
                (loop lst))
               ((eq? next #\;)
                (reader.read-char-utf8)
                (skip-line-comment reader)
                (loop lst))
               ((eq? next #\.)
                (reader.read-char-utf8)
                (cond
                 ((not allow-improper?)
                  (raise-parse-error parse-list "unexpected character; improper list not allowed" char: next anchor: anchor))
                 ((null? lst)
                  (raise-parse-error parse-list "unexpected character; improper tail" char: next anchor: anchor))
                 (else
                  (let loop-tail ((tail? #f) (tail #f))
                    (let (next (reader.peek-char-utf8))
                      (cond
                       ((eof-object? next)
                        (raise-premature-end-of-input parse-list))
                       ((char-whitespace? next)
                        (reader.read-char-utf8)
                        (loop-tail tail? tail))
                       ((eq? next #\;)
                        (reader.read-char-utf8)
                        (skip-line-comment reader)
                        (loop-tail tail? tail))
                       ((char-readable? next)
                        (if tail?
                          (begin
                            (reader.read-char-utf8)
                            (if (eq? next end)
                              (foldl cons tail lst)
                              (raise-parse-error parse-list "unexpected character; expected list delimiter" char: next anchor: anchor)))
                          (let (tail (parse reader env (anchor.temporary)))
                            (loop-tail #t tail))))
                       (else
                        (raise-parse-error parse-list "unexpected character" char: next anchor: anchor))))))))
               (else
                (let (next (parse reader env (anchor.temporary)))
                  (loop (cons next lst))))))))
         (lst
          (case start
            ((#\() lst)
            ((#\[)
             (if env.opt.bracket
               (cons env.opt.bracket lst)
               lst))
            ((#\{)
             (if env.opt.brace
               (cons env.opt.brace lst)
               lst))
            (else
             (BUG parse-list "unexpected delimiter" start)))))
    (anchor.set! lst)))

(def (parse-quote (reader : BufferedReader)
                  (env    : ReaderEnv)
                  (anchor : Anchor))
  (let* ((next (reader.read-char-utf8))
         (obj  (parse reader env anchor))
         (lst
          (case next
            ((#\')
             (if env.opt.quote
               [env.opt.quote obj]
               (raise-parse-error parse-quote "unexpected quote" anchor: anchor)))
            ((#\`)
             (if env.opt.quasiquote
               [env.opt.quasiquote obj]
               (raise-parse-error parse-quote "unexpected quasiquote" anchor: anchor)))
            ((#\,)
             (let (next (reader.peek-char-utf8))
               (if (eq? next #\@)
                 (begin
                   (reader.read-char-utf8)
                   (if env.opt.unquote-splicing
                     [env.opt.unquote-splicing obj]
                     (raise-parse-error parse-quote "unexpected unquote-splicing" anchor: anchor)))
                 (if env.opt.unquote
                   [env.opt.unquote obj]
                   (raise-parse-error parse-quote "unexpected unquote" anchor: anchor)))))
            (else
             (BUG parse-quote "unespected quote character" next)))))
    (anchor.set! lst)))

;; symbol, keyword or number
(def (parse-symbolic (sk : :list) (env : ReaderEnv) (anchor : Anchor))
  ;; NOTE maybe hand-write this parser, but feeley's code is fine
  ;;      for now
  (def (string->object str)
    (call-with-input-string str read))

  (let* ((lst (reverse! sk))
         (str (list->string lst))
         (obj
          (try (string->object str)
               (catch (e)
                 (raise-parse-error parse-symbolic "malformed symbolic sequence" sequence: str error: e)))))
    (if (or (symbol? obj)
            (keyword? obj)
            (number? obj))
      (anchor.set! obj)
      (BUG parse-symbolic "unexpected object" sk obj))))

(def (skip-line-comment (reader : BufferedReader))
  => :void
  (let loop ()
    (let (next (reader.peek-char-utf8))
      (unless (or (eof-object? next) (eq? next #\newline))
        (reader.read-char-utf8)
        (loop)))))

(def __readable-chars
  (let (rt (make-vector 128 #t))
    ;; 0-19 are ascii special
    (for (i (in-range 0 20))
      (vector-set! rt i #f))
    ;; but whitespace is readable
    (for (c (in-list '(#\space #\tab #\newline)))
      (vector-set! rt (char->integer c) #t))
    ;; DEL is not readable
    (vector-set! rt 127 #f)
    rt))

(def (char-readable? (char : :char))
  => :boolean
  (let (int (char->integer char))
    (and (fx< int (##vector-length __readable-chars))
         (:- (##vector-ref __readable-chars int)
             :boolean))))

(def __symbolic-delimiter-chars
  (let (rt (make-vector 128 #f))
    (for (c (in-list '(#\" #\( #\) #\[ #\] #\{ #\} #\' #\` #\, #\; #\space #\tab #\newline)))
      (vector-set! rt (char->integer c) #t))
    rt))

(def (char-symbolic-delimiter? (char : :char))
  => :boolean
  (let (int (char->integer char))
    (and (fx< int (##vector-length __symbolic-delimiter-chars))
         (:- (##vector-ref __symbolic-delimiter-chars int)
             :boolean))))

(def (parse-sharp-index (reader : BufferedReader)
                        (env    : ReaderEnv)
                        (anchor : Anchor))
  (let loop ((sk [] :- :list))
    => :t
    (let (next (reader.read-char-utf8))
      (cond
       ((eof-object? next)
        (raise-premature-end-of-input parse-sharp-index))
       ((char-numeric? next)
        (loop (cons next sk)))
       ;; anchor
       ((eq? next #\=)
        (parse-sharp-anchor (sharp-index->fixnum sk) reader env anchor))
       ;; reference
       ((eq? next #\#)
        (parse-sharp-reference (sharp-index->fixnum sk) env anchor))
       (else
        (raise-parse-error parse-sharp-index "unexpected characater" char: next))))))

(def (parse-sharp-reference (index  : :fixnum)
                            (env    : ReaderEnv)
                            (anchor : Anchor))
  (anchor.set! (env.ctx.methods.reference index env.ctx)))

(def (parse-sharp-anchor (index  : :fixnum)
                         (reader : BufferedReader)
                         (env    : ReaderEnv)
                         (anchor : Anchor))
  (let (ranchor (env.ctx.methods.anchor! index anchor env.ctx))
    (anchor.set! (parse reader env ranchor))))

(def (sharp-index->fixnum (sk : :list))
  => :fixnum
  (let loop ((rest sk) (val 0))
    (match rest
      ([char . rest]
       (let (digit (fx- (char->integer char) (@char->int #\0)))
         (loop rest (fx+ (fx* val 10) digit))))
      (else val))))

(def (parse-sharp-vector (reader : BufferedReader)
                         (env    : ReaderEnv)
                         (anchor : Anchor))
  (let (lst (parse-list reader env (anchor.temporary) #f))
    (anchor.set! (list->vector lst))))

(def (parse-sharp-values (reader : BufferedReader)
                         (env    : ReaderEnv)
                         (anchor : Anchor))
  (let (lst (parse-list reader (if env.opt.bracket (@derive-reader-env env (bracket #f)) env) (anchor.temporary) #f))
    (anchor.set! (##list->values lst))))

(def (parse-sharp-box (reader : BufferedReader)
                      (env    : ReaderEnv)
                      (anchor : Anchor))
  (reader.read-char-utf8)
  (let (obj (parse reader env (anchor.temporary)))
    (anchor.set! (box obj))))

(def (parse-sharp-object (reader : BufferedReader)
                         (env    : ReaderEnv)
                         (anchor : Anchor))
  (let* ((lst        (parse-list reader (if env.opt.brace (@derive-reader-env env (brace #f)) env) (anchor.temporary) #f))
         (klass-name (car lst))
         (klass      (env.ctx.methods.resolve-class! klass-name env.ctx)))
    (using (kons (anchor.cons! klass #f) : ObjectBuilder)
      (let loop ((rest (cdr lst)))
        (match rest
          ([slot val . rest]
           (kons.push! val slot env.ctx)
           (loop rest))
          ([]
           (kons.finish!))
          (else
           (raise-parse-error parse-sharp-object "invalid object body" class: klass rest: rest anchor: anchor)))))))

(def (parse-sharp-table (reader : BufferedReader)
                        (env    : ReaderEnv)
                        (anchor : Anchor))
  (reader.read-char-utf8)
  (let* ((lst        (parse-list reader (if env.opt.brace (@derive-reader-env env (brace #f)) env) (anchor.temporary) #f))
         (klass-name (car lst))
         (klass      (env.ctx.methods.resolve-class! klass-name env.ctx)))
    (using (kons (anchor.cons! klass #f) : ObjectBuilder)
      (let loop ((rest (cadr lst)))
        (match rest
          ([[key . val] . rest]
           (kons.push! val key env.ctx)
           (loop rest))
          ([]
           (kons.finish!))
          (else
           (raise-parse-error parse-sharp-table "invalid hash table body" class: klass rest: rest anchor: anchor)))))))

(def (parse-sharp-true (reader : BufferedReader)
                       (env    : ReaderEnv)
                       (anchor : Anchor))
  (reader.read-char-utf8)
  (anchor.set! #t))

(def (parse-sharp-false-or-fhvector (reader : BufferedReader)
                                    (env    : ReaderEnv)
                                    (anchor : Anchor))
  (reader.read-char-utf8)
  (let (next (reader.peek-char-utf8))
    (cond
     ((or (eof-object? next)
          (char-symbolic-delimiter? next))
      (anchor.set! #f))
     ((char-numeric? next)
      (reader.put-back (@char->int #\f))
      (parse-sharp-fhvector reader env anchor))
     (else
      (raise-parse-error parse-sharp-false-of-fhvector "unexpected character" char: next anchor: anchor)))))

(defsyntax-case @parse-hvector ()
  ((_ reader env anchor case-clause ...)
   (with-identifiers ((anchor.temporary #'anchor #'anchor ".temporary")
                      (anchor.set! #'anchor #'anchor ".set!"))
     #'(let* ((size (parse reader env (anchor.temporary)))
              (list->hvector
               (case size
                 case-clause ...
                 (else
                  (raise-parse-error parse-sharp-hvector "bad hvector size indicator" size: size anchor: anchor))))
              (body (parse-list reader env (anchor.temporary) #f))
              (obj
               (try (list->hvector body)
                    (catch (e)
                      (raise-parse-error parse-sharp-hvector "bad hvector body" body: body error: e)))))
         (anchor.set! obj)))))

(def (parse-sharp-uhvector (reader : BufferedReader)
                           (env    : ReaderEnv)
                           (anchor : Anchor))
  (reader.read-char-utf8)
  (@parse-hvector reader env anchor
    ((8) list->u8vector)
    ((16) list->u16vector)
    ((32) list->u32vector)
    ((64) list->u64vector)))

(def (parse-sharp-shvector (reader : BufferedReader)
                           (env    : ReaderEnv)
                           (anchor : Anchor))
  (reader.read-char-utf8)
  (@parse-hvector reader env anchor
    ((8) list->s8vector)
    ((16) list->s16vector)
    ((32) list->s32vector)
    ((64) list->s64vector)))

(def (parse-sharp-fhvector (reader : BufferedReader)
                           (env    : ReaderEnv)
                           (anchor : Anchor))
  (reader.read-char-utf8)
  (@parse-hvector reader env anchor
    ((32) list->f32vector)
    ((64) list->f64vector)))

(def (parse-sharp-syntax (reader : BufferedReader)
                         (env    : ReaderEnv)
                         (anchor : Anchor))
  (let* ((next (reader.read-char-utf8))
         (obj (parse reader env (anchor.temporary)))
         (lst
          (case next
            ((#\')
             (if env.opt.syntax
               [env.opt.syntax obj]
               (raise-parse-error parse-sharp-syntax "unexpected quote" anchor: anchor)))
            ((#\`)
             (if env.opt.quasisyntax
               [env.opt.quasisyntax obj]
               (raise-parse-error parse-sharp-syntax "unexpected quasiquote" anchor: anchor)))
            ((#\,)
             (let (next (reader.peek-char-utf8))
               (if (eq? next #\@)
                 (begin
                   (reader.read-char-utf8)
                   (if env.opt.unsyntax-splicing
                     [env.opt.unsyntax-splicing obj]
                     (raise-parse-error parse-sharp-syntax "unexpected unsyntax-splicing" anchor: anchor)))
                 (if env.opt.unsyntax
                   [env.opt.unsyntax obj]
                   (raise-parse-error parse-sharp-syntax "unexpected unsyntax" anchor: anchor)))))
            (else
             (BUG parse-sharp-syntax "unespected syntax character" next)))))
    (anchor.set! lst)))

(def (parse-sharp-bang (reader : BufferedReader)
                       (env    : ReaderEnv)
                       (anchor : Anchor))
  (reader.read-char-utf8)
  (let loop ((sk [] :- :list))
    (let (next (reader.read-char-utf8))
      (cond
       ((eof-object? next)
        (anchor.set! (sharp-bang->special sk)))
       ((or (char-alphabetic? next)
            (char-numeric? next))
        (loop (cons next sk)))
       ((char-symbolic-delimiter? next)
        (anchor.set! (sharp-bang->special sk)))
       (else
        (raise-parse-error parse-sharp-bang "unexpected character" char: next anchor: anchor))))))

(extern namespace: #f
  macro-unused-obj
  macro-deleted-obj
  macro-absent-obj)

(def (sharp-bang->special (sk : :list))
  => :special
  (let (str (list->string (reverse! sk)))
    (case str
      (("void")     #!void)
      (("eof")      #!eof)
      (("unbound")  #!unbound)
      (("unbound2") #!unbound2)
      (("unused")   (macro-unused-obj))
      (("deleted")  (macro-deleted-obj))
      (("absent")   (macro-absent-obj))
      (("key")      #!key)
      (("rest")     #!rest)
      (("optional") #!optional)
      (else
       (raise-parse-error parse-sharp-bang "unknown special object" name: str)))))

(def (parse-sharp-comment (reader : BufferedReader)
                          (env    : ReaderEnv)
                          (anchor : Anchor))
  (reader.read-char-utf8)
  ;; skip one
  (parse reader env (anchor.temporary))
  ;; recur to read next object
  (parse reader env anchor))

(defrule (@sharp-alphabet (char int) ...)
  (let (rt (make-vector 128 #f))
    (vector-set! rt (@char->int char) int) ...
    rt))

(def __sharp-binary-alphabet
  (@sharp-alphabet (#\0 0) (#\1 1)))

(def __sharp-octal-alphabet
  (@sharp-alphabet (#\0 0) (#\1 1) (#\2 2) (#\3 3) (#\4 4) (#\5 5) (#\6 6) (#\7 7)))

(def __sharp-hex-alphabet
  (@sharp-alphabet (#\0 0) (#\1 1) (#\2 2) (#\3 3) (#\4 4) (#\5 5) (#\6 6) (#\7 7) (#\8 8) (#\9 9) (#\a 10) (#\A 10) (#\b 11) (#\B 11) (#\c 12) (#\C 12) (#\d 13) (#\D 13) (#\e 14) (#\E 14) (#\f 15) (#\F 15)))

(defsyntax-case @parse-sharp-integer ()
  ((_ reader env anchor alphabet shift)
   (with-identifiers ((reader.read-char-utf8
                       #'reader #'reader ".read-char-utf8")
                      (reader.peek-char-utf8
                       #'reader #'reader ".peek-char-utf8")
                      (anchor.set!
                       #'anchor #'anchor ".set!"))
     #'(begin
         (reader.read-char-utf8)
         (let loop ((val 0))
           (let (next (reader.peek-char-utf8))
             (cond
              ((eof-object? next)
               (anchor.set! val))
              ((char-symbolic-delimiter? next)
               (anchor.set! val))
              ((char-readable? next)
               (reader.read-char-utf8)
               (let (int (char->integer next))
                 (cond
                  ((and (fx< int (vector-length alphabet))
                        (##vector-ref alphabet int))
                   => (lambda (nval)
                        (loop (bitwise-ior (arithmetic-shift val shift) nval))))
                  (else
                   (raise-parse-error parse-sharp-integer "unexpected character" char: next anchor: anchor)))))
              (else
               (reader.read-char-utf8)
               (raise-parse-error parse-sharp-integer "unexpected character" char: next anchor: anchor)))))))))

(def (parse-sharp-binary (reader : BufferedReader)
                         (env    : ReaderEnv)
                         (anchor : Anchor))
  (@parse-sharp-integer reader env anchor __sharp-binary-alphabet 1))

(def (parse-sharp-octal (reader : BufferedReader)
                        (env    : ReaderEnv)
                        (anchor : Anchor))
  (@parse-sharp-integer reader env anchor __sharp-octal-alphabet 3))

(def (parse-sharp-hex (reader : BufferedReader)
                      (env    : ReaderEnv)
                      (anchor : Anchor))
  (@parse-sharp-integer reader env anchor __sharp-hex-alphabet 4))

(def __sharp-readtable
  (let (rt (make-vector 128 #f))
    (for (i (in-range 48 58))
      (vector-set! rt i parse-sharp-index))
    (vector-set! rt (@char->int #\() parse-sharp-vector)
    (vector-set! rt (@char->int #\[) parse-sharp-values)
    (vector-set! rt (@char->int #\{) parse-sharp-object)
    (vector-set! rt (@char->int #\&) parse-sharp-box)
    (vector-set! rt (@char->int #\:) parse-sharp-table)
    (vector-set! rt (@char->int #\t) parse-sharp-true)
    (vector-set! rt (@char->int #\f) parse-sharp-false-or-fhvector)
    (vector-set! rt (@char->int #\u) parse-sharp-uhvector)
    (vector-set! rt (@char->int #\s) parse-sharp-shvector)
    (for (c (in-list '(#\' #\` #\,)))
      (vector-set! rt (char->integer c) parse-sharp-syntax))
    (vector-set! rt (@char->int #\!) parse-sharp-bang)
    (vector-set! rt (@char->int #\;) parse-sharp-comment)
    (vector-set! rt (@char->int #\b) parse-sharp-binary)
    (vector-set! rt (@char->int #\o) parse-sharp-octal)
    (vector-set! rt (@char->int #\x) parse-sharp-hex)
    rt))
