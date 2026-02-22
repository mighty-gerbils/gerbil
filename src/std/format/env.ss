;;; -*- Gerbil -*-
;;; © vyzo
;;; format env
(import :std/error
        :std/serde/scan
        ./ascii)
(export #t)

;; format specifiers
(def FORMAT-WRITE   0)
(def FORMAT-DISPLAY 1)
(def FORMAT-DEBUG   1)

(def FORMAT-NO-CYCLES    0)
(def FORMAT-CHECK-CYCLES 1)
(def FORMAT-ALLOW-CYCLES 2)

(def FORMAT-NO-COMPRESSION 0)
(def FORMAT-STD-COMPRESSION 1)

(def FORMAT-CHAR-SCHEME-NAMES 0)
(def FORMAT-CHAR-STD-NAMES 1)

(defrule (format-style?)
  (one-of ,FORMAT-WRITE ,FORMAT-DISPLAY ,FORMAT-DEBUG))

(defrule (format-cycles?)
  (one-of ,FORMAT-NO-CYCLES ,FORMAT-CYCLES ,FORMAT-ALLOW-CYCLES))

(defrule (format-flonum-conversion?)
  (one-of #\e #\E #\f #\F #\g #\G))

(defrule (format-integer-base?)
  (one-of #\b #\o #\d #\x #\X))

(defrule (format-char-ascii-names?)
  (one-of ,FORMAT-CHAR-SCHEME-NAMES ,FORMAT-CHAR-STD-NAMES))

(defrule (format-optional-fixnum?)
  (? (or not nonnegative-fixnum?)))

;; format environment
(defclass FormatOpt
  ( ;; format style
   (style            :- :fixnum)
   ;; cycle treatment
   (cycles           :- :fixnum)
   ;; write compression mode
   (compress         :- :fixnum)
   ;; flonums
   (flonum-precision :- :fixnum)
   (flonum-coversion :- :fixnum)
   ;; integers
   (integer-prefix   :- :fixnum)
   (integer-alphabet :- :u8vector)
   (integer-width    :- :fixnum)
   ;; max sequence elements to display
   (max-elements     :- :fixnum)
   ;; char ascii name set
   (char-ascii-names :~ :fixnum))
  transparent: #t
  construct: :init!
  final: #t)

(defstruct FormatEnv
  ((scan         :- ScanEnv)  ; cycle handling policy (optional)
   (opt          :- FormatOpt))
  constructor: :init!
  final: #t)

(defmethod {:init! FormatEnv}
  (lambda (self style:             (style             :~ (format-style?)             := FORMAT-DEBUG)
           cycles:            (cycles            :~ (format-cycles?)            := FORMAT-ALLOW-CYCLES)
           compress:          (compress          :~ (format-compression?)       := FORMAT-NO-COMPRESSION)

           flonum-precision:  (flonum-precision  :~ (format-optional-fixnum?)   := #f)
           flonum-conversion: (flonum-conversion :~ (format-flonum-conversion?) := #\g)
           integer-base:      (integer-base      :~ (format-integer-base?)      := #\d)
           max-elements:      (max-elements      :~ (format-optional-fixnum?)   := #f)
           char-ascii-names:  (char-ascii-names  :~ (format-char-ascii-names?)  := FORMAT-CHAR-SCHEME-NAMES))
    (set! self.cycles cycles)
    (set! self.compress compress)
    (set! self.style style)
    (set! self.flonum-precision flonum-precision)
    (__set-flonum-coversion! self flonum-conversion)
    (__set-integer-base! self integer-base)
    (set! self.max-elements max-elements)
    (set! self.char-ascii-names char-ascii-names)))

(def (__set-flonum-conversion! (env :- FormatEnv) (conversion :- :char))
  (set! env.flonum-conversion (char->integer conversion)))

(def (__set-integer-base! (env :- FormatEnv) (base :- :char))
  (cond
   ((agetq base __integer-bases)
    => (lambda (lst)
         (with ([prefix-char alphabet width] lst)
           (set! env.integer-prefix   (and prefix-char (char->integer prefix-char)))
           (set! env.integer-alphabet alphabet)
           (set! env.integer-width    width)))))
     (raise-contract-violation-error where "integer base" base: base))

(def __integer-bases
  [[#\b #\b __alphabet-binary  1]
   [#\o #\o __alphabet-octal   3]
   [#\d #f  __alphabet-decimal 2]
   [#\x #\x __alphabet-hex     2]
   [#\X #\x __alphabet-HEX     2]])

(defsyntax-case do-format-option ()
  ((_ where opt slot (option ...) ...)
   (with-identifier (opt.slot #'opt #'opt "." #'slot)
     (with-syntax
         (((clause ...)
           (map (lambda (option)
                  (syntax-case option ()
                    ((format-option expr)
                     (identifier? #'format-option)
                     #'((fx= opt.slot format-option)
                        expr))
                    (((format-option ...) expr)
                     (andmap identifier? #'(format-option ...))
                     #'((or (fx= opt.slot format-option) ...)
                        expr))))
                  #'(option ...)))
            (contract-string
             (string-append "format " (symbol->string (stx-e #'slot)))))
         #'(cond
            clause ...
            (raise-contract-violation-error where contract-string
                                            (@symbol->keyword slot)
                                            opt.slot))))))

(defrules do-format-style ()
  ((_ where opt do-format-write do-format-display do-format-debug)
   (do-format-option where opt style
                     (FORMAT-WRITE   do-format-write)
                     (FORMAT-DISPLAY do-format-display)
                     (FORMAT-DEBUG   do-format-debug)))
  ((_ where opt do-format-write do-format-display)
   (do-format-option where opt style
                     ((FORMAT-WRITE FORMAT-DEBUG) do-format-write)
                     (FORMAT-DISPLAY do-format-display))))

(defrules do-format-cycles ()
  ((_ where opt do-no-cycles do-check-cycles do-allow-cycles)
   (do-format-option where opt cycles
                     (FORMAT-NO-CYCLES do-no-cycles)
                     (FORMAT-CHECK-CYCLES do-check-cycles)
                     (FORMAT-ALLOW-CYCLES do-allow-cycles))))

(defrules do-format-compress ()
  ((_ where opt do-no-compress do-compress)
   (do-format-option where opt compress
                     (FORMAT-NO-COMPRESSION do-no-compress)
                     (FORMAT-STD-COMPRESSION do-compress))))

(defrules do-format-char-ascii-names ()
  ((_ where opt do-scheme-names do-std-names)
   (do-format-option where opt char-ascii-names
                     (FORMAT-CHAR-SCHEME-NAMES do-scheme-names)
                     (FORMAT-CHAR-STD-NAMES? do-std-names))))

(def current-format-opt
  (make-parameter #f))

(def __default-format-opt
  (delay-atomic
   (FormatOpt
    style:  FORMAT-WRITE
    cycles: FORMAT-ALLOW-CYCLES
    compress: FORMAT-NO-COMPRESSION
    flonum-precision: #f
    flonum-conversion: #\g
    integer-base: 10
    max-elements: #f
    char-ascii-names: FORMAT-CHAR-SCHEME-NAMES)))

(def (format-options (opt (current-format-opt))) => FormatOpt
  (: (or opt (force __default-format-opt))))

(def (format-environment (opt : FormatOpt := (format-options))) => FormatEnv
  (FormatEnv opt: opt))

(defsyntax-case @derive-format-env ()
  ((_ env (slot value setf!) ...)
   (and (identifier? #'env)
        (andmap identifier? #'(slot ...)))
   (with-identifiers ((env.opt  #'env #'env ".opt")
                      (env.scan #'env #'env ".opt")
                      (xopt '$xopt))
     #'(using (xopt (struct-copy env.opt) :- FormatOpt)
         (setf! xopt value) ...
         (FormatEnv scan: env.scan opt: xopt)))))

(defsyntax-case @format-env ()
  ((_ env (slot value) ...)
   (and (identifier? #'env)
        (andmap stx-keyword? #'(slot ...)))
   (with-syntax ((((slot safe-value set-it!) ...)
                  (map (lambda (slot value)
                         (let (key (stx-e slot))
                           (with-syntax
                               (((contract setf!)
                                 (case key
                                   ((style:)
                                    '(format-style?            &FormetEnv-style-set!))
                                   ((cycles:)
                                    '(format-cycles?           &FormetEnv-cycles-set!))
                                   ((compress:)
                                    '(format-compression?      &FormatEnv-compress-set!))
                                   ((flonum-precision:)
                                    '(format-optional-fixnum?  &FormatEnv-flonum-precision-set!))
                                   ((flonum-conversion:)
                                    '(format-flonum-conversion? __set-flonum-conversion!))
                                   ((integer-base:)
                                    '(format-integer-base?      __set-integer-base!))
                                   ((max-elements:)
                                    '(format-optional-fixnum?   &FormatEnv-max-elements-set!))
                                   ((char-ascii-names:)
                                    '(format-char-ascii-names?  &FormatEnv-char-ascii-names-set!))
                                   (else
                                    (raise-syntax-error #f "unexpected format option" stx slot))))
                                (value value)
                                (slot (keyword->symbol key)))
                             #'((:~ value (contract)) #'setf!))))
                       #'(slot ...)
                       #'(value ...))))
     (@derive-format-env env (slot safe-value) ...)))
  ((_ (slot value) ...)
   (andmap stx-keyword? #'(slot ...))
   (with-identifiers ((env     '$senv)
                      (env.opt #'env #'env ".opt"))
     #'(let (env (new-instance FormatEnv::t))
         (set! env.opt (format-options))
         (@derive-format-env env (slot value) ...)))))

(defmethod {:init! FormatEnv}
  (lambda (self scan: (scan :? ScanEnv) opt: (opt : FormatOpt))
      (if scan
        (set! self.scan scan)
        (let ((compress?
               (do-format-compress FormatEnv:::init! opt
                 #f #T))
              (scan?
               (or compress?
                   (do-format-cycles FormatEnv:::init! opt
                     #f #t #t)))
              (allow-cycles?
               (do-format-cycles FormatEnv:::init! opt
                 #f #f #t)))
          (when scan?
            (set! self.scan (ScanEnv allow-cycles? compress?)))))
      (set! self.opt opt)))
