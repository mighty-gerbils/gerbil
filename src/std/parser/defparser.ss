;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser generator

(import ./base
        ./rlang
        ./lexer
        (for-syntax :std/stxutil))

(export #t)

(defrules @eq ())  ; token-e equality
(defrules % ())    ; lexeme token
(defrules ! ())    ; cut that the descent (invokes the E continuation)

(def $- (make-token '$ #f #f))

;; rewind a stack of tokens from a token-stream, from xtoks down to toks
(def (parser-rewind ts xtoks toks)
  (let lp ((rest xtoks))
    (unless (eq? rest toks)
      (match rest
        ([tok . rest]
         (token-stream-unget ts tok)
         (lp rest))))))

(def (parser-fail where ts toks)
  (let (last (car toks))
    (for-each (cut token-stream-unget ts <>) toks)
    (if ($$? last)
      (raise-parse-error where "Premature end of input" last)
      (raise-parse-error where "Failed to parse input" last))))

(def (parser-input-stream input lexer)
  (if (token-stream? input)
    input
    (lexer input)))

(def (parser-parse where ts parse-e wrap-e)
  (parse-e ts [] wrap-e
           (lambda (_ tok) tok)
           (lambda (toks) (parser-fail where ts toks))))

(defsyntax (defparser stx)
  (def (rule-id? id rule-ids)
    (find (cut bound-identifier=? id <>) rule-ids))

  (def (maybe-rule? stx)
    (syntax-case stx ()
      ((id prod ...)
       (and (identifier? #'id)
            (not (underscore? #'id))))
      (_ #f)))

  (def (parse-body body)
    (let lp ((rest body) (rules []) (xrules []) (lexer #f))
      (syntax-case rest ()
        ((rule . rest)
         (maybe-rule? #'rule)
         (lp #'rest (cons #'rule rules) xrules lexer))
        ((lexer: xlexer . rest)         ; default lexer
         (identifier? #'xlexer)
         (if lexer
           (raise-syntax-error #f "Bad syntax; duplicate lexer specification" stx lexer #'xlexer)
           (lp #'rest rules xrules #'xlexer)))
        ((rules: (xrule ...) . rest)    ; external rule id for parser composition
         (identifier-list? #'(xrule ...))
         (lp #'rest rules (append xrules #'(xrule ...)) lexer))
        ((hd . rest)
         (raise-syntax-error #f "Bad syntax; malformed rule" stx #'hd))
        (_ (values (reverse rules) xrules lexer)))))

  (def (check-prod-e prod rule rule-ids)
    (syntax-case prod (@cat @rep* @rep+ @maybe @eq $$)
      ((@cat prod prods ...)
       (for-each (cut check-prod-e <> rule rule-ids) #'(prod prods ...)))
      ((@rep* prod)
       (check-prod-e #'prod rule rule-ids))
      ((@rep+ prod)
       (check-prod-e #'prod rule rule-ids))
      ((@maybe prod)
       (check-prod-e #'prod rule rule-ids))
      ((@eq expr) (void))
      ((@eq expr =?) (void))
      ((xrule bind-id)
       (and (identifier? #'xrule)
            (identifier? #'bind-id)
            (not (underscore? #'bind-id)))
       (unless (rule-id? #'xrule rule-ids)
         (raise-syntax-error #f "Bad syntax; reference to unknown rule" stx rule #'xrule)))
      ($$ (void))
      (xrule
       (identifier? #'xrule)
       (unless (rule-id? #'xrule rule-ids)
         (raise-syntax-error #f "Bad syntax; reference to unknown rule" stx rule #'xrule)))
      (_ (raise-syntax-error #f "Bad syntax; illegal production" stx rule prod))))

  (def (parse-rule-body body rule rule-ids)
    (let lp ((rest body) (prods []))
      (syntax-case rest (=> ! %)
        ((% . rest)
         (if (and (null? prods) (stx-null? #'rest))
           [#'%]
           (raise-syntax-error #f "Bad syntax; misplaced terminal production" stx rule #'%)))
        ((! . rest)
         (if (and (null? prods) (stx-null? #'rest))
           [#'!]
           (raise-syntax-error #f "Bad syntax; misplaced cut" stx rule #'!)))
        ((prod => ! . rest)
         (lp #'(prod ! . rest) prods))
        ((prod => expr . rest)
         (begin
           (check-prod-e #'prod rule rule-ids)
           (check-duplicate-identifiers (prod-e-var-ids (prod-e-vars #'prod)) rule)
           (lp #'rest (cons #'(prod => expr) prods))))
        ((prod ! . rest)
         (begin
           (check-prod-e #'prod rule rule-ids)
           (check-duplicate-identifiers (prod-e-var-ids (prod-e-vars #'prod)) rule)
           (lp #'rest (cons #'(prod !) prods))))
        ((prod . rest)
         (begin
           (check-prod-e #'prod rule rule-ids)
           (if (null? (prod-e-vars #'prod))
             (lp #'rest (cons #'prod prods))
             (raise-syntax-error #f "Bad syntax; missing production receiver" stx rule #'prod))))
        (_
         (if (null? prods)
           (raise-syntax-error #f "Bad syntax; empty production rule" stx rule)
           (reverse prods))))))

  (def (generate-prod-id base part)
    (format-id base "~a::~a" base part))

  (def (wrap-source xstx where)
    (stx-wrap-source xstx (or (stx-source where) (stx-source stx))))

  (def (prod-e-vars prod)
    (syntax-case prod (@cat @rep* @rep+ @maybe @eq)
      ((@cat prod ...)
       (apply append (map prod-e-vars #'(prod ...))))
      ((@rep* prod)
       (map list (prod-e-vars #'prod)))
      ((@rep+ prod)
       (map list (prod-e-vars #'prod)))
      ((@maybe prod)
       (prod-e-vars #'prod))
      ((@eq . _) [])
      ((rule id) [#'id])
      (_ [])))

  (def (prod-e-var-ids vars)
    (map (rec (var-id var)
           (match var
             ([var] (var-id var))
             (id id)))
         vars))

  (def (generate-prod-cat prod-id prod-ids prods defs K)
    (def (generate1 prod-ids prods vars)
      (match prod-ids
        ([prod-id]
         (match prods
           ([prod]
            (let* ((xvars (gentemps (prod-e-vars prod)))
                   (vars (append vars xvars)))
              (with-syntax ((prod-id prod-id)
                            ((rarg ...)
                             (if (null? xvars) ['_] xvars))
                            ((xarg ...)
                             (if (null? vars) ['$] vars)))
                #'(prod-id ts toks wrap-e
                           (lambda (toks rarg ...) (K toks xarg ...))
                           E))))))
        ([prod-id . rest-prod-ids]
         (match prods
           ([prod . rest-prods]
            (let* ((xvars (gentemps (prod-e-vars prod)))
                   (vars (append vars xvars)))
              (with-syntax ((prod-id prod-id)
                            ((rarg ...)
                             (if (null? xvars) ['_] xvars))
                            (body
                             (generate1 rest-prod-ids rest-prods vars)))
                #'(prod-id ts toks wrap-e
                           (lambda (toks rarg ...) body)
                           E))))))))

    (with-syntax ((prod-id prod-id)
                  (body (generate1 prod-ids prods [])))
      (let (defn (wrap-source
                  #'(def (prod-id ts toks wrap-e K E)
                      body)
                  #'prod-id))
        (K (cons defn defs)))))

  (def (generate-prod-e prod prod-id defs K)
    (syntax-case prod (@cat @rep* @rep+ @maybe @eq $$)
      ((@cat prod ...)
       (let ((prod-id-cat (generate-prod-id prod-id 'cat))
             (prods #'(prod ...)))
         (let lp ((rest prods) (k 1) (prod-ids []) (defs defs))
           (match rest
             ([prod . rest]
              (let (prod-e (generate-prod-id prod-id-cat k))
                (generate-prod-e prod prod-e defs
                  (cut lp rest (fx1+ k) (cons prod-e prod-ids) <>))))
             (else
              (generate-prod-cat prod-id (reverse prod-ids) prods defs K))))))
      ((@rep* prod)
       (let (prod-e (generate-prod-id prod-id 'rep*))
         (generate-prod-e #'prod prod-e defs
           (lambda (defs)
             (let* ((vars (gentemps (prod-e-vars #'prod)))
                    (xargs (gentemps vars)))
               (with-syntax ((prod-id prod-id)
                             (prod-e prod-e)
                             ((var ...) vars)
                             ((xarg ...) xargs)
                             ((rarg ...)
                              (if (null? xargs) '(_) xargs))
                             ((karg ...)
                              (if (null? vars) '$ vars)))
                 (let (defn (wrap-source
                             #'(def (prod-id ts toks wrap-e K E)
                                 (let lp ((toks toks) (var []) ...)
                                   (prod-e ts toks wrap-e
                                           (lambda (toks rarg ...)
                                             (lp toks (cons xarg var) ...))
                                           (lambda (xtoks)
                                             (parser-rewind ts xtoks toks)
                                             (K toks (reverse karg) ...)))))
                             #'prod-id))
                   (K (cons defn defs)))))))))
      ((@rep+ prod)
       (let (prod-e (generate-prod-id prod-id 'rep*))
         (generate-prod-e #'prod prod-e defs
           (lambda (defs)
             (let* ((vars (gentemps (prod-e-vars #'prod)))
                    (xargs (gentemps vars)))
               (with-syntax ((prod-id prod-id)
                             (prod-e prod-e)
                             ((var ...) vars)
                             ((xarg ...) xargs)
                             ((init ...) xargs)
                             ((rarg ...)
                              (if (null? xargs) '_ xargs))
                             ((karg ...)
                              (if (null? vars) '$ vars)))
                 (let (defn (wrap-source
                             #'(def (prod-id ts toks wrap-e K E)
                                 (prod-e ts toks wrap-e
                                            (lambda (toks rarg ...)
                                              (let lp ((toks toks) (var [init]) ...)
                                                (prod-e ts toks wrap-e
                                                        (lambda (toks rarg ...)
                                                          (lp toks (cons xarg var) ...))
                                                        (lambda (xtoks)
                                                          (parser-rewind ts xtoks toks)
                                                          (K toks (reverse karg) ...)))))
                                            E))
                             #'prod-id))
                   (K (cons defn defs)))))))))
      ((@maybe prod)
       (let (prod-e (generate-prod-id prod-id 'maybe))
         (generate-prod-e #'prod prod-e defs
           (lambda (defs)
             (let (vars (prod-e-vars #'prod))
               (with-syntax ((prod-id prod-id)
                             (prod-e prod-e)
                             ((nil ...)
                              (if (null? vars)
                                '($-)
                                (map (rec (var-nil var)
                                       (match var
                                         ([var] ['list (var-nil var)])
                                         (_ '$-)))
                                     vars))))
                 (let (defn (wrap-source
                             #'(def (prod-id ts toks wrap-e K E)
                                 (prod-e ts toks wrap-e K
                                         (lambda (xtoks)
                                           (parser-rewind ts xtoks toks)
                                           (K toks nil ...))))
                             #'prod-id))
                   (K (cons defn defs)))))))))
      ((@eq expr =?)
       (with-syntax ((prod-id prod-id))
         (let (defn (wrap-source
                     #'(def (prod-id ts toks wrap-e K E)
                         (let* ((next (token-stream-next ts))
                                (toks (cons next toks)))
                           (if (=? (token-e next) expr)
                             (K toks next)
                             (E toks))))
                     #'prod-id))
           (K (cons defn defs)))))
      ((@eq expr)
       (generate-prod-e #'(@eq expr eq?) prod-id defs K))
      ((rule _)
       (with-syntax ((prod-id prod-id))
         (let (defn (wrap-source
                     #'(def (prod-id ts toks wrap-e K E)
                         (rule ts toks wrap-e K E))
                     #'prod-id))
           (K (cons defn defs)))))
      ($$
       (with-syntax ((prod-id prod-id))
         (let (defn (wrap-source
                     #'(def (prod-id ts toks wrap-e K E)
                         (let* ((next (token-stream-next ts))
                                (toks (cons next toks)))
                           (if ($$? next)
                             (K toks next)
                             (E toks))))
                     #'prod-id))
           (K (cons defn defs)))))
      (rule
       (generate-prod-e #'(rule _) prod-id defs K))))

  (def (generate-prod prod prod-id rule-id defs K)
    (syntax-case prod (=> ! % $$ @eq @eqv @equal)
      ((prod => expr)
       (let (prod-e (generate-prod-id prod-id 'app))
         (generate-prod-e #'prod prod-e defs
           (lambda (defs)
             (let* ((vars (prod-e-vars #'prod))
                    (ids (prod-e-var-ids vars))
                    (xargs (gentemps ids)))
               (with-syntax* ((rule-id rule-id)
                              (prod-id prod-id)
                              (prod-e prod-e)
                              (@@ (datum->syntax #'rule-id '@@))
                              (@loc (datum->syntax #'rule-id '@loc))
                              ((var ...) ids)
                              ((rarg ...)
                               (if (null? xargs) #'(@@) xargs))
                              (recv
                               (wrap-source
                                (if (null? ids)
                                  #'(lambda (@@) expr)
                                  #'(lambda (var ...) expr))
                                #'rule-id))
                              ((xvar ...)
                               (if (null? vars)
                                 #'(@@)
                                 (map (lambda (var xarg)
                                        (let (app-e
                                              (let recur ((var var))
                                                (match var
                                                  ([var]
                                                   ['lambda '($x) ['map (recur var) '$x]])
                                                  (_ 'token-e))))
                                          [app-e xarg]))
                                      vars xargs)))
                              (body
                               #'(let* ((end (token-stream-loc ts))
                                        (@loc (location-delta* start end)))
                                   (K toks
                                      (make-token 'rule-id
                                                  (wrap-e
                                                   (recv xvar ...)
                                                   @loc)
                                                  @loc)))))
                 (let (defn (wrap-source
                             #'(def (prod-id ts toks wrap-e K E)
                                 (let (start (token-stream-loc ts))
                                   (prod-e ts toks wrap-e
                                           (lambda (toks rarg ...)
                                             body)
                                           E)))
                                 #'prod-id))
                   (K (cons defn defs)))))))))
      ((prod !)
       (let (prod-e (generate-prod-id prod-id 'app))
         (generate-prod-e #'prod prod-e defs
           (lambda (defs)
             (with-syntax ((prod-id prod-id)
                           (prod-e prod-e))
               (let (defn (wrap-source
                           #'(def (prod-id ts toks wrap-e K E)
                               (prod-e ts toks wrap-e
                                       (lambda (toks . _) (K toks))
                                       E))
                           #'prod-id))
                 (K (cons defn defs))))))))
      ((@eq expr =?)
       (with-syntax ((prod-id prod-id)
                     (rule-id rule-id))
         (let (defn (wrap-source
                     #'(def (prod-id ts toks wrap-e K E)
                         (let* ((next (token-stream-next ts))
                                (toks (cons next toks)))
                           (if (=? (token-e next) expr)
                             (K toks
                                (make-token 'rule-id (token-e next) (token-loc next)))
                             (E toks))))
                     #'prod-id))
           (K (cons defn defs)))))
      (!
       (with-syntax ((prod-id prod-id))
         (let (defn (wrap-source
                     #'(def (prod-id ts toks wrap-e K E)
                         (E toks))
                     #'prod-id))
           (K (cons defn defs)))))
      (%
       (with-syntax ((prod-id prod-id)
                     (rule-id rule-id))
         (let (defn (wrap-source
                     #'(def (prod-id ts toks wrap-e K E)
                         (let* ((next (token-stream-next ts))
                                (toks (cons next toks)))
                           (if (eq? (token-t next) 'rule-id)
                             (K toks next)
                             (E toks))))
                     #'prod-id))
           (K (cons defn defs)))))
      ($$
       (with-syntax ((prod-id prod-id))
         (let (defn (wrap-source
                     #'(def (prod-id ts toks wrap-e K E)
                         (let* ((next (token-stream-next ts))
                                (toks (cons next toks)))
                           (if ($$? next)
                             (K toks next)
                             (E toks))))
                     #'prod-id))
           (K (cons defn defs)))))
      (prod
       (let (prod-e (generate-prod-id prod-id 'app))
         (generate-prod-e #'prod prod-e defs
           (lambda (defs)
             (with-syntax ((rule-id rule-id)
                           (prod-id prod-id)
                           (prod-e prod-e))
               (let (defn (wrap-source
                           #'(def (prod-id ts toks wrap-e K E)
                               (prod-e ts toks wrap-e
                                       (lambda (toks rtok)
                                         (K toks
                                            (make-token 'rule-id (token-e rtok) (token-loc rtok))))
                                       E))
                           #'prod-id))
                 (K (cons defn defs))))))))))

  (def (generate-rule-def rule-id prod-ids prods defs K)
    (def (prod-cut? prod)
      (syntax-case prod (!)
        ((prod !) #t)
        (else #f)))

    (def (generate1 prod-ids prods)
      (match prod-ids
        ([prod-id]
         (match prods
           ([prod]
            (with-syntax ((prod-id prod-id)
                          (K* (if (prod-cut? prod) 'E 'K)))
              #'(prod-id ts toks wrap-e K* E)))))
        ([prod-id . rest]
         (match prods
           ([prod . rest-prods]
            (with-syntax ((prod-id prod-id)
                          (next (generate1 rest rest-prods))
                          (K* (if (prod-cut? prod) 'E 'K)))
              #'(prod-id ts toks wrap-e K*
                         (lambda (xtoks)
                           (parser-rewind ts xtoks toks)
                           next))))))))

    (with-syntax ((rule-id rule-id)
                  (next (generate1 prod-ids prods)))
      (let (defn (wrap-source
                  #'(def (rule-id ts toks wrap-e K E)
                      next)
                  #'rule-id))
        (K (cons defn defs)))))

  (def (generate-rule rule rule-ids defs K)
    (syntax-case rule ()
      ((rule-id . body)
       (let* (prods (parse-rule-body #'body rule rule-ids))
         (match prods
           ([prod]
            (generate-prod prod #'rule-id #'rule-id defs K))
           (else
            (let lp ((rest prods) (k 1) (prod-ids []) (defs defs))
               (match rest
                 ([prod . rest]
                  (let (prod-id (generate-prod-id #'rule-id k))
                    (generate-prod prod prod-id #'rule-id defs
                                   (cut lp rest (fx1+ k) (cons prod-id prod-ids) <>))))
                 (else
                  (generate-rule-def #'rule-id (reverse prod-ids) prods defs K))))))))))

  (def (generate-rules rules rule-ids)
    (let lp ((rest rules) (defs []))
      (match rest
        ([rule . rest]
         (generate-rule rule rule-ids defs (cut lp rest <>)))
        (else
         (reverse defs)))))

  (syntax-case stx ()
    ((_ id body ...)
     (identifier? #'id)
     (let* (((values rules xrules lexer)
             (parse-body #'(body ...)))
            (rule-ids
             (append (map stx-car rules) xrules)))
       (when (null? rules)
         (raise-syntax-error #f "Bad syntax: empty rule set" stx))
       (check-duplicate-identifiers rule-ids stx)
       (with-syntax* (((defn ...)
                       (generate-rules rules rule-ids))
                      (start-e (stx-car (car rules)))
                      (lexer-arg (if lexer ['$lexer lexer] '$lexer))
                      (parsedef
                       (stx-wrap-source
                        #'(def (id input lexer-arg (wrap-e wrap-ast))
                            (parser-parse 'id (parser-input-stream input $lexer) start-e wrap-e))
                        (stx-source stx))))
         #'(begin parsedef defn ...))))))
