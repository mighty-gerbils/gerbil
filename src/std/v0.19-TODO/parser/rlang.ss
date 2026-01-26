;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser regular language parsing with derivatives

(export
  @nul @nul? @eps @eps?
  @char @charset @negset @dot
  @alt @cat @rep* @rep+ @maybe
  deriv delta recognizes?
  )

;; regular expressions for lexical tokens
(defstruct rlang ())
(defstruct (nul rlang) ()          final: #t) ; null [atom]
(defstruct (eps rlang) ()          final: #t) ; epsilon [atom]
(defstruct (char rlang) (c)        final: #t) ; character c
(defstruct (charset rlang) (chars) final: #t) ; [...]        -- character set
(defstruct (negset rlang) (chars)  final: #t) ; [^...]       -- negated charset
(defstruct (alt rlang) (L1 L2)     final: #t) ; L1 | L2      -- alternation
(defstruct (cat rlang) (L1 L2)     final: #t) ; L1 . L2      -- concatenation
(defstruct (rep rlang) (L)         final: #t) ; L*           -- Kleene star

(def @nul (make-nul))
(def @eps (make-eps))

(def (@nul? L)
  (eq? @nul L))
(def (@eps? L)
  (eq? @eps L))

;; constructors
(def (@char c)
  (make-char c))

(def (@charset chars)
  (if (null? chars)
    @nul
    (make-charset (list->hash-table-eq (map (cut cons <> #t) chars)))))

(def (@negset chars)
  (make-negset (list->hash-table-eq (map (cut cons <> #t) chars))))

(def @dot
  (@negset []))

(def* @alt
  ((L) L)
  ((L1 L2)
   (cond
    ((@nul? L1) L2)
    ((@nul? L2) L1)
    (else
     (make-alt L1 L2))))
  ((L1 L2 . rest)
   (@alt L1 (apply @alt L2 rest))))

(def* @cat
  ((L) L)
  ((L1 L2)
   (if (or (@nul? L1) (@nul? L2))
     @nul
     (make-cat L1 L2)))
  ((L1 L2 . rest)
   (@cat L1 (apply @cat L2 rest))))

(def (@rep* L)
  (if (@nul? L)
    @eps
    (make-rep L)))

(def (@rep+ L)
  (@cat L (@rep* L)))

(def (@maybe L)
  (@alt L @eps))

;; derivatives and nullability
(def (deriv L c)
  (match L
    ((? @nul?) @nul)
    ((? @eps?) @nul)
    ((char a)
     (if (eq? c a)
       @eps
       @nul))
    ((charset chars)
     (if (hash-get chars c)
       @eps
       @nul))
    ((negset chars)
     (if (hash-get chars c)
       @nul
       @eps))
    ((alt L1 L2)
     (@alt (deriv L1 c) (deriv L2 c)))
    ((cat L1 L2)
     (if (delta L1)
       (@alt (deriv L2 c)
             (@cat (deriv L1 c) L2))
       (@cat (deriv L1 c) L2)))
    ((rep Lc)
     (@cat (deriv Lc c) L))))

(def (delta L)
  (match L
    ((? @nul?) #f)
    ((? @eps?) #t)
    ((? char?) #f)
    ((? charset?) #f)
    ((? negset?) #f)
    ((alt L1 L2)
     (or (delta L1) (delta L2)))
    ((cat L1 L2)
     (and (delta L1) (delta L2)))
    ((rep L) #t)))

(def (recognizes? L chars)
  (match chars
    ([char . rest]
     (recognizes? (deriv L char) rest))
    (else
     (delta L))))
