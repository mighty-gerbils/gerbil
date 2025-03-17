(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1742223872)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (__make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args119232%_
        (apply make-instance gx#identifier-wrap::t _%$args119232%_)))
    (define gx#identifier-wrap-marks
      (__make-class-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (__make-class-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (__make-class-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (__make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args119229%_
        (apply make-instance gx#syntax-wrap::t _%$args119229%_)))
    (define gx#syntax-wrap-mark
      (__make-class-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (__make-class-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (__make-class-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (__make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args119226%_
        (apply make-instance gx#syntax-quote::t _%$args119226%_)))
    (define gx#syntax-quote-context
      (__make-class-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (__make-class-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e
      (__make-class-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (__make-class-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_%stx119224%_) (symbol? (gx#stx-e _%stx119224%_))))
    (define gx#identifier-quote?
      (lambda (_%stx119222%_)
        (if (##structure-direct-instance-of? _%stx119222%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx119222%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx119217%_)
        (if (##structure-direct-instance-of? _%stx119217%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx119217%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx119217%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx119212%_)
        (if (##structure-direct-instance-of? _%stx119212%_ 'gx#syntax-quote::t)
            _%stx119212%_
            (if (##structure-direct-instance-of?
                 _%stx119212%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx119212%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx119186%_)
        (if (##structure-direct-instance-of? _%stx119186%_ 'gx#syntax-wrap::t)
            (let _%lp119189%_ ((_%e119191%_
                                (##unchecked-structure-ref
                                 _%stx119186%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks119192%_
                                (cons (##unchecked-structure-ref
                                       _%stx119186%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e119191%_)
                  (let ((_%$e119195%_
                         (##type-id (##structure-type _%e119191%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e119195%_)
                        (_%lp119189%_
                         (##unchecked-structure-ref _%e119191%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e119191%_ '3 '#f '#f)
                          _%marks119192%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e119195%_)
                                (eq? 'gx#identifier-wrap::t _%$e119195%_))
                            (##unchecked-structure-ref _%e119191%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e119195%_)
                                (_%lp119189%_
                                 (##unchecked-structure-ref
                                  _%e119191%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks119192%_)
                                _%e119191%_))))
                  (if (null? _%marks119192%_)
                      _%e119191%_
                      (if (pair? _%e119191%_)
                          (cons (gx#stx-wrap
                                 (##car _%e119191%_)
                                 _%marks119192%_)
                                (gx#stx-wrap
                                 (##cdr _%e119191%_)
                                 _%marks119192%_))
                          (if (vector? _%e119191%_)
                              (vector-map
                               (lambda (_%g119203119205%_)
                                 (gx#stx-wrap
                                  _%g119203119205%_
                                  _%marks119192%_))
                               _%e119191%_)
                              (if (box? _%e119191%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e119191%_)
                                        _%marks119192%_))
                                  _%e119191%_))))))
            (if (##structure-instance-of? _%stx119186%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx119186%_ '1 '#f '#f)
                _%stx119186%_))))
    (define gx#syntax->datum
      (lambda (_%stx119179%_)
        (if (##structure-instance-of? _%stx119179%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx119179%_ '1 '#f '#f))
            (if (pair? _%stx119179%_)
                (cons (gx#syntax->datum (##car _%stx119179%_))
                      (gx#syntax->datum (##cdr _%stx119179%_)))
                (if (vector? _%stx119179%_)
                    (vector-map gx#syntax->datum _%stx119179%_)
                    (if (box? _%stx119179%_)
                        (box (gx#syntax->datum (unbox _%stx119179%_)))
                        _%stx119179%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx119113%_ _%datum119114%_ _%src119115%_ _%quote?119116%_)
        (letrec ((_%wrap-datum119118%_
                  (lambda (_%e119151%_ _%marks119152%_)
                    (_%wrap-inner119120%_
                     _%e119151%_
                     (lambda (_%g119153119155%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g119153119155%_
                        _%src119115%_
                        _%marks119152%_)))))
                 (_%wrap-quote119119%_
                  (lambda (_%e119143%_ _%ctx119144%_ _%marks119145%_)
                    (_%wrap-inner119120%_
                     _%e119143%_
                     (lambda (_%g119146119148%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g119146119148%_
                        _%src119115%_
                        _%ctx119144%_
                        _%marks119145%_)))))
                 (_%wrap-inner119120%_
                  (lambda (_%e119131%_ _%wrap-e119132%_)
                    (let _%recur119134%_ ((_%e119136%_ _%e119131%_))
                      (if (symbol? _%e119136%_)
                          (_%wrap-e119132%_ _%e119136%_)
                          (if (pair? _%e119136%_)
                              (cons (_%recur119134%_ (##car _%e119136%_))
                                    (_%recur119134%_ (##cdr _%e119136%_)))
                              (if (vector? _%e119136%_)
                                  (vector-map _%recur119134%_ _%e119136%_)
                                  (if (box? _%e119136%_)
                                      (box (_%recur119134%_
                                            (unbox _%e119136%_)))
                                      _%e119136%_)))))))
                 (_%wrap-outer119121%_
                  (lambda (_%e119129%_)
                    (if (##structure-instance-of? _%e119129%_ 'gerbil#AST::t)
                        _%e119129%_
                        (##structure gx#AST::t _%e119129%_ _%src119115%_)))))
          (if (##structure-instance-of? _%datum119114%_ 'gerbil#AST::t)
              _%datum119114%_
              (if (not _%stx119113%_)
                  (##structure gx#AST::t _%datum119114%_ _%src119115%_)
                  (if (gx#identifier? _%stx119113%_)
                      (let ((_%stx119126%_ (gx#stx-unwrap__0 _%stx119113%_)))
                        (_%wrap-outer119121%_
                         (if (##structure-direct-instance-of?
                              _%stx119126%_
                              'gx#syntax-quote::t)
                             (if _%quote?119116%_
                                 (_%wrap-quote119119%_
                                  _%datum119114%_
                                  (##unchecked-structure-ref
                                   _%stx119126%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx119126%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum119118%_
                                  _%datum119114%_
                                  (##unchecked-structure-ref
                                   _%stx119126%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum119118%_
                              _%datum119114%_
                              (##unchecked-structure-ref
                               _%stx119126%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx119113%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx119161%_ _%datum119162%_)
        (let* ((_%src119164%_ '#f) (_%quote?119166%_ '#t))
          (gx#datum->syntax__%
           _%stx119161%_
           _%datum119162%_
           _%src119164%_
           _%quote?119166%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx119168%_ _%datum119169%_ _%src119170%_)
        (let ((_%quote?119172%_ '#t))
          (gx#datum->syntax__%
           _%stx119168%_
           _%datum119169%_
           _%src119170%_
           _%quote?119172%_))))
    (define gx#datum->syntax
      (lambda _g119313_
        (let ((_g119312_ (##length _g119313_)))
          (cond ((##fx= _g119312_ 2) (apply gx#datum->syntax__0 _g119313_))
                ((##fx= _g119312_ 3) (apply gx#datum->syntax__1 _g119313_))
                ((##fx= _g119312_ 4) (apply gx#datum->syntax__% _g119313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g119313_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx119079%_ _%marks119080%_)
        (let _%lp119082%_ ((_%e119084%_ _%stx119079%_)
                           (_%marks119085%_ _%marks119080%_)
                           (_%src119086%_ (gx#stx-source _%stx119079%_)))
          (if (##structure-direct-instance-of? _%e119084%_ 'gx#syntax-wrap::t)
              (_%lp119082%_
               (##unchecked-structure-ref _%e119084%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e119084%_ '3 '#f '#f)
                _%marks119085%_)
               (##unchecked-structure-ref _%e119084%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e119084%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks119085%_)
                      _%e119084%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e119084%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e119084%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e119084%_ '3 '#f '#f)
                        _%marks119085%_)))
                  (if (##structure-direct-instance-of?
                       _%e119084%_
                       'gx#syntax-quote::t)
                      _%e119084%_
                      (if (##structure-instance-of? _%e119084%_ 'gerbil#AST::t)
                          (_%lp119082%_
                           (##unchecked-structure-ref _%e119084%_ '1 '#f '#f)
                           _%marks119085%_
                           (##unchecked-structure-ref _%e119084%_ '2 '#f '#f))
                          (if (symbol? _%e119084%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e119084%_
                               _%src119086%_
                               (reverse _%marks119085%_))
                              (if (null? _%marks119085%_)
                                  _%e119084%_
                                  (if (pair? _%e119084%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e119084%_)
                                             _%marks119085%_)
                                            (gx#stx-wrap
                                             (##cdr _%e119084%_)
                                             _%marks119085%_))
                                      (if (vector? _%e119084%_)
                                          (vector-map
                                           (lambda (_%g119095119097%_)
                                             (gx#stx-wrap
                                              _%g119095119097%_
                                              _%marks119085%_))
                                           _%e119084%_)
                                          (if (box? _%e119084%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e119084%_)
                                                    _%marks119085%_))
                                              _%e119084%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx119105%_)
        (let ((_%marks119107%_ '()))
          (gx#stx-unwrap__% _%stx119105%_ _%marks119107%_))))
    (define gx#stx-unwrap
      (lambda _g119315_
        (let ((_g119314_ (##length _g119315_)))
          (cond ((##fx= _g119314_ 1) (apply gx#stx-unwrap__0 _g119315_))
                ((##fx= _g119314_ 2) (apply gx#stx-unwrap__% _g119315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g119315_))))))
    (define gx#stx-wrap
      (lambda (_%stx119072%_ _%marks119073%_)
        (__foldl1
         (lambda (_%mark119075%_ _%stx119076%_)
           (gx#stx-apply-mark _%stx119076%_ _%mark119075%_))
         _%stx119072%_
         _%marks119073%_)))
    (define gx#stx-rewrap
      (lambda (_%stx119066%_ _%marks119067%_)
        (__foldr1
         (lambda (_%mark119069%_ _%stx119070%_)
           (gx#stx-apply-mark _%stx119070%_ _%mark119069%_))
         _%stx119066%_
         _%marks119067%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx119060%_ _%mark119061%_)
        (if (##structure-direct-instance-of? _%stx119060%_ 'gx#syntax-quote::t)
            _%stx119060%_
            (if (and (##structure-direct-instance-of?
                      _%stx119060%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark119061%_
                          (##unchecked-structure-ref
                           _%stx119060%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx119060%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx119060%_
                 (gx#stx-source _%stx119060%_)
                 _%mark119061%_)))))
    (define gx#apply-mark
      (lambda (_%mark119024%_ _%marks119025%_)
        (let* ((_%marks119026119034%_ _%marks119025%_)
               (_%else119028119042%_
                (lambda () (cons _%mark119024%_ _%marks119025%_)))
               (_%K119030119048%_
                (lambda (_%rest119045%_ _%hd119046%_)
                  (if (eq? _%mark119024%_ _%hd119046%_)
                      _%rest119045%_
                      (cons _%mark119024%_ _%marks119025%_)))))
          (if (pair? _%marks119026119034%_)
              (let ((_%hd119031119051%_ (##car _%marks119026119034%_))
                    (_%tl119032119053%_ (##cdr _%marks119026119034%_)))
                (let* ((_%hd119056%_ _%hd119031119051%_)
                       (_%rest119058%_ _%tl119032119053%_))
                  (_%K119030119048%_ _%rest119058%_ _%hd119056%_)))
              (_%else119028119042%_)))))
    (define gx#stx-e
      (lambda (_%stx119019%_)
        (if (##structure-direct-instance-of? _%stx119019%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx119019%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx119019%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx119019%_ '1 '#f '#f)
                _%stx119019%_))))
    (define gx#stx-source
      (lambda (_%stx119017%_)
        (if (##structure-instance-of? _%stx119017%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx119017%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx119011%_ _%src119012%_)
        (if (or (##structure-instance-of? _%stx119011%_ 'gerbil#AST::t)
                (not _%src119012%_))
            _%stx119011%_
            (##structure gx#AST::t _%stx119011%_ _%src119012%_))))
    (define gx#stx-datum?
      (lambda (_%stx119009%_) (gx#self-quoting? (gx#stx-e _%stx119009%_))))
    (define gx#self-quoting?
      (lambda (_%x118992%_)
        (let ((_%$e118994%_ (immediate? _%x118992%_)))
          (if _%$e118994%_
              _%$e118994%_
              (let ((_%$e118997%_ (number? _%x118992%_)))
                (if _%$e118997%_
                    _%$e118997%_
                    (let ((_%$e119000%_ (keyword? _%x118992%_)))
                      (if _%$e119000%_
                          _%$e119000%_
                          (let ((_%$e119003%_ (string? _%x118992%_)))
                            (if _%$e119003%_
                                _%$e119003%_
                                (let ((_%$e119006%_ (vector? _%x118992%_)))
                                  (if _%$e119006%_
                                      _%$e119006%_
                                      (u8vector? _%x118992%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e118990%_) (boolean? (gx#stx-e _%e118990%_))))
    (define gx#stx-keyword?
      (lambda (_%e118988%_) (keyword? (gx#stx-e _%e118988%_))))
    (define gx#stx-char? (lambda (_%e118986%_) (char? (gx#stx-e _%e118986%_))))
    (define gx#stx-number?
      (lambda (_%e118984%_) (number? (gx#stx-e _%e118984%_))))
    (define gx#stx-fixnum?
      (lambda (_%e118982%_) (fixnum? (gx#stx-e _%e118982%_))))
    (define gx#stx-string?
      (lambda (_%e118980%_) (string? (gx#stx-e _%e118980%_))))
    (define gx#stx-null? (lambda (_%e118978%_) (null? (gx#stx-e _%e118978%_))))
    (define gx#stx-pair? (lambda (_%e118976%_) (pair? (gx#stx-e _%e118976%_))))
    (define gx#stx-list?
      (lambda (_%e118938%_)
        (let* ((_%g118939118948%_ (gx#stx-e _%e118938%_))
               (_%E118942118952%_
                (lambda ()
                  (error '"No clause matching"
                         _%g118939118948%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K118944118968%_
                 (lambda (_%rest118966%_) (gx#stx-list? _%rest118966%_)))
                (_%K118943118958%_
                 (lambda (_%tail118956%_) (null? _%tail118956%_))))
            (if (pair? _%g118939118948%_)
                (let* ((_%tl118946118971%_ (##cdr _%g118939118948%_))
                       (_%rest118974%_ _%tl118946118971%_))
                  (gx#stx-list? _%rest118974%_))
                (let ((_%tail118961%_ _%g118939118948%_))
                  (null? _%tail118961%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e118931%_)
        (let* ((_%e118933%_ (gx#stx-e _%e118931%_))
               (_%$e118935%_ (pair? _%e118933%_)))
          (if _%$e118935%_ _%$e118935%_ (null? _%e118933%_)))))
    (define gx#stx-vector?
      (lambda (_%e118929%_) (vector? (gx#stx-e _%e118929%_))))
    (define gx#stx-box? (lambda (_%e118927%_) (box? (gx#stx-e _%e118927%_))))
    (define gx#stx-eq?
      (lambda (_%x118924%_ _%y118925%_)
        (eq? (gx#stx-e _%x118924%_) (gx#stx-e _%y118925%_))))
    (define gx#stx-eqv?
      (lambda (_%x118921%_ _%y118922%_)
        (eqv? (gx#stx-e _%x118921%_) (gx#stx-e _%y118922%_))))
    (define gx#stx-equal?
      (lambda (_%x118918%_ _%y118919%_)
        (equal? (gx#stx-e _%x118918%_) (gx#stx-e _%y118919%_))))
    (define gx#stx-false? (lambda (_%x118916%_) (not (gx#stx-e _%x118916%_))))
    (define gx#stx-identifier
      (lambda (_%template118913%_ . _%args118914%_)
        (gx#datum->syntax__1
         _%template118913%_
         (apply make-symbol (gx#syntax->datum _%args118914%_))
         (gx#stx-source _%template118913%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx118911%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx118911%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx118906%_)
        (if (##structure-direct-instance-of?
             _%stx118906%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx118906%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx118906%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx118906%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx118906%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx118902%_)
        (let ((_%stx118904%_ (gx#stx-unwrap__0 _%stx118902%_)))
          (if (gx#identifier-quote? _%stx118904%_)
              (##unchecked-structure-ref _%stx118904%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx118857%_)
        (let* ((_%g118858118868%_ (gx#stx-e _%stx118857%_))
               (_%else118861118876%_ (lambda () '#f)))
          (let ((_%K118864118890%_
                 (lambda (_%rest118887%_ _%hd118888%_)
                   (if (gx#identifier? _%hd118888%_)
                       (gx#identifier-list? _%rest118887%_)
                       '#f)))
                (_%K118863118881%_ (lambda () '#t)))
            (let ((_%try-match118860118884%_
                   (lambda ()
                     (if (null? _%g118858118868%_)
                         (_%K118863118881%_)
                         (_%else118861118876%_)))))
              (if (pair? _%g118858118868%_)
                  (let ((_%tl118866118895%_ (##cdr _%g118858118868%_))
                        (_%hd118865118893%_ (##car _%g118858118868%_)))
                    (let ((_%hd118898%_ _%hd118865118893%_)
                          (_%rest118900%_ _%tl118866118895%_))
                      (_%K118864118890%_ _%rest118900%_ _%hd118898%_)))
                  (_%try-match118860118884%_)))))))
    (define gx#genident__%
      (lambda (_%e118834%_ _%src118835%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e118837%_ (gx#stx-e _%e118834%_)))
                   (if (interned-symbol? _%e118837%_) _%e118837%_ 'g)))
         (let ((_%$e118839%_ (gx#stx-source _%e118834%_)))
           (if _%$e118839%_ _%$e118839%_ _%src118835%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e118846%_ 'g) (_%src118848%_ '#f))
          (gx#genident__% _%e118846%_ _%src118848%_))))
    (define gx#genident__1
      (lambda (_%e118850%_)
        (let ((_%src118852%_ '#f))
          (gx#genident__% _%e118850%_ _%src118852%_))))
    (define gx#genident
      (lambda _g119317_
        (let ((_g119316_ (##length _g119317_)))
          (cond ((##fx= _g119316_ 0) (apply gx#genident__0 _g119317_))
                ((##fx= _g119316_ 1) (apply gx#genident__1 _g119317_))
                ((##fx= _g119316_ 2) (apply gx#genident__% _g119317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g119317_))))))
    (define gx#gentemps
      (lambda (_%stx-lst118831%_) (gx#stx-map1 gx#genident _%stx-lst118831%_)))
    (define gx#syntax->list
      (lambda (_%stx118829%_) (gx#stx-map1 values _%stx118829%_)))
    (define gx#stx-car
      (lambda (_%stx118826%_)
        (declare (safe))
        (car (gx#syntax-e _%stx118826%_))))
    (define gx#stx-cdr
      (lambda (_%stx118823%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx118823%_))))
    (define gx#stx-length
      (lambda (_%stx118788%_)
        (let _%lp118790%_ ((_%rest118792%_ _%stx118788%_) (_%n118793%_ '0))
          (let* ((_%g118794118802%_ (gx#stx-e _%rest118792%_))
                 (_%else118796118810%_ (lambda () _%n118793%_))
                 (_%K118798118815%_
                  (lambda (_%rest118813%_)
                    (_%lp118790%_ _%rest118813%_ (##fx+ _%n118793%_ '1)))))
            (if (pair? _%g118794118802%_)
                (let* ((_%tl118800118818%_ (##cdr _%g118794118802%_))
                       (_%rest118821%_ _%tl118800118818%_))
                  (_%K118798118815%_ _%rest118821%_))
                (_%else118796118810%_))))))
    (define gx#stx-for-each
      (lambda _g119319_
        (let ((_g119318_ (##length _g119319_)))
          (cond ((##fx= _g119318_ 2) (apply gx#stx-for-each1 _g119319_))
                ((##fx= _g119318_ 3) (apply gx#stx-for-each2 _g119319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g119319_))))))
    (define gx#stx-for-each1
      (lambda (_%f118731%_ _%stx118732%_)
        (if (procedure? _%f118731%_)
            '#!void
            (error '"expected procedure" _%f118731%_))
        (let _%lp118734%_ ((_%rest118736%_ _%stx118732%_))
          (let* ((_%g118737118747%_ (gx#syntax-e _%rest118736%_))
                 (_%else118740118755%_
                  (lambda () (_%f118731%_ _%rest118736%_))))
            (let ((_%K118743118769%_
                   (lambda (_%rest118766%_ _%hd118767%_)
                     (_%f118731%_ _%hd118767%_)
                     (_%lp118734%_ _%rest118766%_)))
                  (_%K118742118760%_ (lambda () '#!void)))
              (let ((_%try-match118739118763%_
                     (lambda ()
                       (if (null? _%g118737118747%_)
                           (_%K118742118760%_)
                           (_%else118740118755%_)))))
                (if (pair? _%g118737118747%_)
                    (let ((_%tl118745118774%_ (##cdr _%g118737118747%_))
                          (_%hd118744118772%_ (##car _%g118737118747%_)))
                      (let ((_%hd118777%_ _%hd118744118772%_)
                            (_%rest118779%_ _%tl118745118774%_))
                        (_%K118743118769%_ _%rest118779%_ _%hd118777%_)))
                    (_%try-match118739118763%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f118636%_ _%xstx118637%_ _%ystx118638%_)
        (if (procedure? _%f118636%_)
            '#!void
            (error '"expected procedure" _%f118636%_))
        (let _%lp118640%_ ((_%xrest118642%_ _%xstx118637%_)
                           (_%yrest118643%_ _%ystx118638%_))
          (let* ((_%g118644118654%_ (gx#syntax-e _%xrest118642%_))
                 (_%else118647118662%_ (lambda () '#!void)))
            (let ((_%K118650118719%_
                   (lambda (_%xrest118688%_ _%xhd118689%_)
                     (let* ((_%g118690118697%_ (gx#syntax-e _%yrest118643%_))
                            (_%E118692118701%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g118690118697%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K118693118707%_
                             (lambda (_%yrest118704%_ _%yhd118705%_)
                               (_%f118636%_ _%xhd118689%_ _%yhd118705%_)
                               (_%lp118640%_
                                _%xrest118688%_
                                _%yrest118704%_))))
                       (if (pair? _%g118690118697%_)
                           (let ((_%hd118694118710%_ (##car _%g118690118697%_))
                                 (_%tl118695118712%_
                                  (##cdr _%g118690118697%_)))
                             (let* ((_%yhd118715%_ _%hd118694118710%_)
                                    (_%yrest118717%_ _%tl118695118712%_))
                               (_%K118693118707%_
                                _%yrest118717%_
                                _%yhd118715%_)))
                           (_%E118692118701%_)))))
                  (_%K118649118682%_
                   (lambda ()
                     (let* ((_%yrest118666118671%_ _%yrest118643%_)
                            (_%E118668118675%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest118666118671%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K118669118679%_
                             (lambda ()
                               (_%f118636%_ _%xrest118642%_ _%yrest118643%_))))
                       (if (gx#stx-null? _%yrest118666118671%_)
                           (_%E118668118675%_)
                           (_%K118669118679%_))))))
              (let ((_%try-match118646118685%_
                     (lambda ()
                       (if (null? _%g118644118654%_)
                           (_%else118647118662%_)
                           (_%K118649118682%_)))))
                (if (pair? _%g118644118654%_)
                    (let ((_%tl118652118724%_ (##cdr _%g118644118654%_))
                          (_%hd118651118722%_ (##car _%g118644118654%_)))
                      (let ((_%xhd118727%_ _%hd118651118722%_)
                            (_%xrest118729%_ _%tl118652118724%_))
                        (_%K118650118719%_ _%xrest118729%_ _%xhd118727%_)))
                    (_%try-match118646118685%_))))))))
    (define gx#stx-map
      (lambda _g119321_
        (let ((_g119320_ (##length _g119321_)))
          (cond ((##fx= _g119320_ 2) (apply gx#stx-map1 _g119321_))
                ((##fx= _g119320_ 3) (apply gx#stx-map2 _g119321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g119321_))))))
    (define gx#stx-map1
      (lambda (_%f118579%_ _%stx118580%_)
        (if (procedure? _%f118579%_)
            '#!void
            (error '"expected procedure" _%f118579%_))
        (let _%recur118582%_ ((_%rest118584%_ _%stx118580%_))
          (let* ((_%g118585118595%_ (gx#syntax-e _%rest118584%_))
                 (_%else118588118603%_
                  (lambda () (_%f118579%_ _%rest118584%_))))
            (let ((_%K118591118617%_
                   (lambda (_%rest118614%_ _%hd118615%_)
                     (cons (_%f118579%_ _%hd118615%_)
                           (_%recur118582%_ _%rest118614%_))))
                  (_%K118590118608%_ (lambda () '())))
              (let ((_%try-match118587118611%_
                     (lambda ()
                       (if (null? _%g118585118595%_)
                           (_%K118590118608%_)
                           (_%else118588118603%_)))))
                (if (pair? _%g118585118595%_)
                    (let ((_%tl118593118622%_ (##cdr _%g118585118595%_))
                          (_%hd118592118620%_ (##car _%g118585118595%_)))
                      (let ((_%hd118625%_ _%hd118592118620%_)
                            (_%rest118627%_ _%tl118593118622%_))
                        (_%K118591118617%_ _%rest118627%_ _%hd118625%_)))
                    (_%try-match118587118611%_))))))))
    (define gx#stx-map2
      (lambda (_%f118484%_ _%xstx118485%_ _%ystx118486%_)
        (if (procedure? _%f118484%_)
            '#!void
            (error '"expected procedure" _%f118484%_))
        (let _%recur118488%_ ((_%xrest118490%_ _%xstx118485%_)
                              (_%yrest118491%_ _%ystx118486%_))
          (let* ((_%g118492118502%_ (gx#syntax-e _%xrest118490%_))
                 (_%else118495118510%_ (lambda () '())))
            (let ((_%K118498118567%_
                   (lambda (_%xrest118536%_ _%xhd118537%_)
                     (let* ((_%g118538118545%_ (gx#syntax-e _%yrest118491%_))
                            (_%E118540118549%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g118538118545%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K118541118555%_
                             (lambda (_%yrest118552%_ _%yhd118553%_)
                               (cons (_%f118484%_ _%xhd118537%_ _%yhd118553%_)
                                     (_%recur118488%_
                                      _%xrest118536%_
                                      _%yrest118552%_)))))
                       (if (pair? _%g118538118545%_)
                           (let ((_%hd118542118558%_ (##car _%g118538118545%_))
                                 (_%tl118543118560%_
                                  (##cdr _%g118538118545%_)))
                             (let* ((_%yhd118563%_ _%hd118542118558%_)
                                    (_%yrest118565%_ _%tl118543118560%_))
                               (_%K118541118555%_
                                _%yrest118565%_
                                _%yhd118563%_)))
                           (_%E118540118549%_)))))
                  (_%K118497118530%_
                   (lambda ()
                     (let* ((_%yrest118514118519%_ _%yrest118491%_)
                            (_%E118516118523%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest118514118519%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K118517118527%_
                             (lambda ()
                               (_%f118484%_ _%xrest118490%_ _%yrest118491%_))))
                       (if (gx#stx-null? _%yrest118514118519%_)
                           (_%E118516118523%_)
                           (_%K118517118527%_))))))
              (let ((_%try-match118494118533%_
                     (lambda ()
                       (if (null? _%g118492118502%_)
                           (_%else118495118510%_)
                           (_%K118497118530%_)))))
                (if (pair? _%g118492118502%_)
                    (let ((_%tl118500118572%_ (##cdr _%g118492118502%_))
                          (_%hd118499118570%_ (##car _%g118492118502%_)))
                      (let ((_%xhd118575%_ _%hd118499118570%_)
                            (_%xrest118577%_ _%tl118500118572%_))
                        (_%K118498118567%_ _%xrest118577%_ _%xhd118575%_)))
                    (_%try-match118494118533%_))))))))
    (define gx#stx-andmap
      (lambda (_%f118434%_ _%stx118435%_)
        (if (procedure? _%f118434%_)
            '#!void
            (error '"expected procedure" _%f118434%_))
        (let _%lp118437%_ ((_%rest118439%_ _%stx118435%_))
          (let* ((_%g118440118450%_ (gx#syntax-e _%rest118439%_))
                 (_%else118443118458%_
                  (lambda () (_%f118434%_ _%rest118439%_))))
            (let ((_%K118446118472%_
                   (lambda (_%rest118469%_ _%hd118470%_)
                     (if (_%f118434%_ _%hd118470%_)
                         (_%lp118437%_ _%rest118469%_)
                         '#f)))
                  (_%K118445118463%_ (lambda () '#t)))
              (let ((_%try-match118442118466%_
                     (lambda ()
                       (if (null? _%g118440118450%_)
                           (_%K118445118463%_)
                           (_%else118443118458%_)))))
                (if (pair? _%g118440118450%_)
                    (let ((_%tl118448118477%_ (##cdr _%g118440118450%_))
                          (_%hd118447118475%_ (##car _%g118440118450%_)))
                      (let ((_%hd118480%_ _%hd118447118475%_)
                            (_%rest118482%_ _%tl118448118477%_))
                        (_%K118446118472%_ _%rest118482%_ _%hd118480%_)))
                    (_%try-match118442118466%_))))))))
    (define gx#stx-ormap
      (lambda (_%f118381%_ _%stx118382%_)
        (if (procedure? _%f118381%_)
            '#!void
            (error '"expected procedure" _%f118381%_))
        (let _%lp118384%_ ((_%rest118386%_ _%stx118382%_))
          (let* ((_%g118387118397%_ (gx#syntax-e _%rest118386%_))
                 (_%else118390118405%_
                  (lambda () (_%f118381%_ _%rest118386%_))))
            (let ((_%K118393118422%_
                   (lambda (_%rest118416%_ _%hd118417%_)
                     (let ((_%$e118419%_ (_%f118381%_ _%hd118417%_)))
                       (if _%$e118419%_
                           _%$e118419%_
                           (_%lp118384%_ _%rest118416%_)))))
                  (_%K118392118410%_ (lambda () '#f)))
              (let ((_%try-match118389118413%_
                     (lambda ()
                       (if (null? _%g118387118397%_)
                           (_%K118392118410%_)
                           (_%else118390118405%_)))))
                (if (pair? _%g118387118397%_)
                    (let ((_%tl118395118427%_ (##cdr _%g118387118397%_))
                          (_%hd118394118425%_ (##car _%g118387118397%_)))
                      (let ((_%hd118430%_ _%hd118394118425%_)
                            (_%rest118432%_ _%tl118395118427%_))
                        (_%K118393118422%_ _%rest118432%_ _%hd118430%_)))
                    (_%try-match118389118413%_))))))))
    (define gx#stx-foldl
      (lambda (_%f118329%_ _%iv118330%_ _%stx118331%_)
        (if (procedure? _%f118329%_)
            '#!void
            (error '"expected procedure" _%f118329%_))
        (let _%lp118333%_ ((_%r118335%_ _%iv118330%_)
                           (_%rest118336%_ _%stx118331%_))
          (let* ((_%g118337118347%_ (gx#syntax-e _%rest118336%_))
                 (_%else118340118355%_
                  (lambda () (_%f118329%_ _%rest118336%_ _%r118335%_))))
            (let ((_%K118343118369%_
                   (lambda (_%rest118366%_ _%hd118367%_)
                     (_%lp118333%_
                      (_%f118329%_ _%hd118367%_ _%r118335%_)
                      _%rest118366%_)))
                  (_%K118342118360%_ (lambda () _%r118335%_)))
              (let ((_%try-match118339118363%_
                     (lambda ()
                       (if (null? _%g118337118347%_)
                           (_%K118342118360%_)
                           (_%else118340118355%_)))))
                (if (pair? _%g118337118347%_)
                    (let ((_%tl118345118374%_ (##cdr _%g118337118347%_))
                          (_%hd118344118372%_ (##car _%g118337118347%_)))
                      (let ((_%hd118377%_ _%hd118344118372%_)
                            (_%rest118379%_ _%tl118345118374%_))
                        (_%K118343118369%_ _%rest118379%_ _%hd118377%_)))
                    (_%try-match118339118363%_))))))))
    (define gx#stx-foldr
      (lambda (_%f118278%_ _%iv118279%_ _%stx118280%_)
        (if (procedure? _%f118278%_)
            '#!void
            (error '"expected procedure" _%f118278%_))
        (let _%recur118282%_ ((_%rest118284%_ _%stx118280%_))
          (let* ((_%g118285118295%_ (gx#syntax-e _%rest118284%_))
                 (_%else118288118303%_
                  (lambda () (_%f118278%_ _%rest118284%_ _%iv118279%_))))
            (let ((_%K118291118317%_
                   (lambda (_%rest118314%_ _%hd118315%_)
                     (_%f118278%_
                      _%hd118315%_
                      (_%recur118282%_ _%rest118314%_))))
                  (_%K118290118308%_ (lambda () _%iv118279%_)))
              (let ((_%try-match118287118311%_
                     (lambda ()
                       (if (null? _%g118285118295%_)
                           (_%K118290118308%_)
                           (_%else118288118303%_)))))
                (if (pair? _%g118285118295%_)
                    (let ((_%tl118293118322%_ (##cdr _%g118285118295%_))
                          (_%hd118292118320%_ (##car _%g118285118295%_)))
                      (let ((_%hd118325%_ _%hd118292118320%_)
                            (_%rest118327%_ _%tl118293118322%_))
                        (_%K118291118317%_ _%rest118327%_ _%hd118325%_)))
                    (_%try-match118287118311%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx118276%_) (gx#stx-foldl cons '() _%stx118276%_)))
    (define gx#stx-last
      (lambda (_%stx118237%_)
        (let _%lp118239%_ ((_%rest118241%_ _%stx118237%_))
          (let* ((_%g118242118250%_ (gx#syntax-e _%rest118241%_))
                 (_%else118244118258%_ (lambda () _%rest118241%_))
                 (_%K118246118264%_
                  (lambda (_%rest118261%_ _%hd118262%_)
                    (if (gx#stx-null? _%rest118261%_)
                        _%hd118262%_
                        (_%lp118239%_ _%rest118261%_)))))
            (if (pair? _%g118242118250%_)
                (let ((_%hd118247118267%_ (##car _%g118242118250%_))
                      (_%tl118248118269%_ (##cdr _%g118242118250%_)))
                  (let* ((_%hd118272%_ _%hd118247118267%_)
                         (_%rest118274%_ _%tl118248118269%_))
                    (_%K118246118264%_ _%rest118274%_ _%hd118272%_)))
                (_%else118244118258%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx118208%_)
        (let _%lp118210%_ ((_%hd118212%_ _%stx118208%_))
          (let* ((_%g118213118220%_ (gx#syntax-e _%hd118212%_))
                 (_%E118215118224%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g118213118220%_
                           '([_ . rest]))
                    '#!void))
                 (_%K118216118229%_
                  (lambda (_%rest118227%_)
                    (if (gx#stx-pair? _%rest118227%_)
                        (_%lp118210%_ _%rest118227%_)
                        _%hd118212%_))))
            (if (pair? _%g118213118220%_)
                (let* ((_%tl118218118232%_ (##cdr _%g118213118220%_))
                       (_%rest118235%_ _%tl118218118232%_))
                  (_%K118216118229%_ _%rest118235%_))
                (_%E118215118224%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx118177%_ _%k118178%_)
        (let _%lp118180%_ ((_%rest118182%_ _%stx118177%_)
                           (_%k118183%_ _%k118178%_))
          (if (fxpositive? _%k118183%_)
              (let* ((_%g118184118191%_ (gx#syntax-e _%rest118182%_))
                     (_%E118186118195%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g118184118191%_
                               '([_ . rest]))
                        '#!void))
                     (_%K118187118200%_
                      (lambda (_%rest118198%_)
                        (_%lp118180%_ _%rest118198%_ (##fx- _%k118183%_ '1)))))
                (if (pair? _%g118184118191%_)
                    (let* ((_%tl118189118203%_ (##cdr _%g118184118191%_))
                           (_%rest118206%_ _%tl118189118203%_))
                      (_%K118187118200%_ _%rest118206%_))
                    (_%E118186118195%_)))
              _%rest118182%_))))
    (define gx#stx-list-ref
      (lambda (_%stx118174%_ _%k118175%_)
        (gx#stx-car (gx#stx-list-tail _%stx118174%_ _%k118175%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx118086%_ _%key?118087%_)
        (if (procedure? _%key?118087%_)
            '#!void
            (error '"expected procedure" _%key?118087%_))
        (let _%lp118089%_ ((_%rest118091%_ _%stx118086%_))
          (let* ((_%g118092118102%_ (gx#stx-e _%rest118091%_))
                 (_%else118095118110%_ (lambda () '#f)))
            (let ((_%K118098118152%_
                   (lambda (_%rest118121%_ _%hd118122%_)
                     (if (_%key?118087%_ _%hd118122%_)
                         (let* ((_%g118123118131%_ (gx#stx-e _%rest118121%_))
                                (_%else118125118139%_ (lambda () '#f))
                                (_%K118127118144%_
                                 (lambda (_%rest118142%_)
                                   (_%lp118089%_ _%rest118142%_))))
                           (if (pair? _%g118123118131%_)
                               (let* ((_%tl118129118147%_
                                       (##cdr _%g118123118131%_))
                                      (_%rest118150%_ _%tl118129118147%_))
                                 (_%lp118089%_ _%rest118150%_))
                               (_%else118125118139%_)))
                         '#f)))
                  (_%K118097118115%_ (lambda () '#t)))
              (let ((_%try-match118094118118%_
                     (lambda ()
                       (if (null? _%g118092118102%_)
                           (_%K118097118115%_)
                           (_%else118095118110%_)))))
                (if (pair? _%g118092118102%_)
                    (let ((_%tl118100118157%_ (##cdr _%g118092118102%_))
                          (_%hd118099118155%_ (##car _%g118092118102%_)))
                      (let ((_%hd118160%_ _%hd118099118155%_)
                            (_%rest118162%_ _%tl118100118157%_))
                        (_%K118098118152%_ _%rest118162%_ _%hd118160%_)))
                    (_%try-match118094118118%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx118167%_)
        (let ((_%key?118169%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx118167%_ _%key?118169%_))))
    (define gx#stx-plist?
      (lambda _g119323_
        (let ((_g119322_ (##length _g119323_)))
          (cond ((##fx= _g119322_ 1) (apply gx#stx-plist?__0 _g119323_))
                ((##fx= _g119322_ 2) (apply gx#stx-plist?__% _g119323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g119323_))))))
    (define gx#stx-getq__%
      (lambda (_%key118004%_ _%stx118005%_ _%key=?118006%_)
        (if (procedure? _%key=?118006%_)
            '#!void
            (error '"expected procedure" _%key=?118006%_))
        (let _%lp118008%_ ((_%rest118010%_ _%stx118005%_))
          (let* ((_%g118011118019%_ (gx#syntax-e _%rest118010%_))
                 (_%else118013118027%_ (lambda () '#f))
                 (_%K118015118061%_
                  (lambda (_%rest118030%_ _%hd118031%_)
                    (let* ((_%g118032118039%_ (gx#syntax-e _%rest118030%_))
                           (_%E118034118043%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g118032118039%_
                                     '([val . rest]))
                              '#!void))
                           (_%K118035118049%_
                            (lambda (_%rest118046%_ _%val118047%_)
                              (if (_%key=?118006%_ _%hd118031%_ _%key118004%_)
                                  _%val118047%_
                                  (_%lp118008%_ _%rest118046%_)))))
                      (if (pair? _%g118032118039%_)
                          (let ((_%hd118036118052%_ (##car _%g118032118039%_))
                                (_%tl118037118054%_ (##cdr _%g118032118039%_)))
                            (let* ((_%val118057%_ _%hd118036118052%_)
                                   (_%rest118059%_ _%tl118037118054%_))
                              (_%K118035118049%_
                               _%rest118059%_
                               _%val118057%_)))
                          (_%E118034118043%_))))))
            (if (pair? _%g118011118019%_)
                (let ((_%hd118016118064%_ (##car _%g118011118019%_))
                      (_%tl118017118066%_ (##cdr _%g118011118019%_)))
                  (let* ((_%hd118069%_ _%hd118016118064%_)
                         (_%rest118071%_ _%tl118017118066%_))
                    (_%K118015118061%_ _%rest118071%_ _%hd118069%_)))
                (_%else118013118027%_))))))
    (define gx#stx-getq__0
      (lambda (_%key118076%_ _%stx118077%_)
        (let ((_%key=?118079%_ gx#stx-eq?))
          (gx#stx-getq__% _%key118076%_ _%stx118077%_ _%key=?118079%_))))
    (define gx#stx-getq
      (lambda _g119325_
        (let ((_g119324_ (##length _g119325_)))
          (cond ((##fx= _g119324_ 2) (apply gx#stx-getq__0 _g119325_))
                ((##fx= _g119324_ 3) (apply gx#stx-getq__% _g119325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g119325_))))))))
