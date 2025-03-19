(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1742237312)
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
      (lambda _%$args119251%_
        (apply make-instance gx#identifier-wrap::t _%$args119251%_)))
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
      (lambda _%$args119248%_
        (apply make-instance gx#syntax-wrap::t _%$args119248%_)))
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
      (lambda _%$args119245%_
        (apply make-instance gx#syntax-quote::t _%$args119245%_)))
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
      (lambda (_%stx119243%_) (symbol? (gx#stx-e _%stx119243%_))))
    (define gx#identifier-quote?
      (lambda (_%stx119241%_)
        (if (##structure-direct-instance-of? _%stx119241%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx119241%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx119236%_)
        (if (##structure-direct-instance-of? _%stx119236%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx119236%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx119236%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx119231%_)
        (if (##structure-direct-instance-of? _%stx119231%_ 'gx#syntax-quote::t)
            _%stx119231%_
            (if (##structure-direct-instance-of?
                 _%stx119231%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx119231%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx119205%_)
        (if (##structure-direct-instance-of? _%stx119205%_ 'gx#syntax-wrap::t)
            (let _%lp119208%_ ((_%e119210%_
                                (##unchecked-structure-ref
                                 _%stx119205%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks119211%_
                                (cons (##unchecked-structure-ref
                                       _%stx119205%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e119210%_)
                  (let ((_%$e119214%_
                         (##type-id (##structure-type _%e119210%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e119214%_)
                        (_%lp119208%_
                         (##unchecked-structure-ref _%e119210%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e119210%_ '3 '#f '#f)
                          _%marks119211%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e119214%_)
                                (eq? 'gx#identifier-wrap::t _%$e119214%_))
                            (##unchecked-structure-ref _%e119210%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e119214%_)
                                (_%lp119208%_
                                 (##unchecked-structure-ref
                                  _%e119210%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks119211%_)
                                _%e119210%_))))
                  (if (null? _%marks119211%_)
                      _%e119210%_
                      (if (pair? _%e119210%_)
                          (cons (gx#stx-wrap
                                 (##car _%e119210%_)
                                 _%marks119211%_)
                                (gx#stx-wrap
                                 (##cdr _%e119210%_)
                                 _%marks119211%_))
                          (if (vector? _%e119210%_)
                              (vector-map
                               (lambda (_%g119222119224%_)
                                 (gx#stx-wrap
                                  _%g119222119224%_
                                  _%marks119211%_))
                               _%e119210%_)
                              (if (box? _%e119210%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e119210%_)
                                        _%marks119211%_))
                                  _%e119210%_))))))
            (if (##structure-instance-of? _%stx119205%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx119205%_ '1 '#f '#f)
                _%stx119205%_))))
    (define gx#syntax->datum
      (lambda (_%stx119198%_)
        (if (##structure-instance-of? _%stx119198%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx119198%_ '1 '#f '#f))
            (if (pair? _%stx119198%_)
                (cons (gx#syntax->datum (##car _%stx119198%_))
                      (gx#syntax->datum (##cdr _%stx119198%_)))
                (if (vector? _%stx119198%_)
                    (vector-map gx#syntax->datum _%stx119198%_)
                    (if (box? _%stx119198%_)
                        (box (gx#syntax->datum (unbox _%stx119198%_)))
                        _%stx119198%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx119132%_ _%datum119133%_ _%src119134%_ _%quote?119135%_)
        (letrec ((_%wrap-datum119137%_
                  (lambda (_%e119170%_ _%marks119171%_)
                    (_%wrap-inner119139%_
                     _%e119170%_
                     (lambda (_%g119172119174%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g119172119174%_
                        _%src119134%_
                        _%marks119171%_)))))
                 (_%wrap-quote119138%_
                  (lambda (_%e119162%_ _%ctx119163%_ _%marks119164%_)
                    (_%wrap-inner119139%_
                     _%e119162%_
                     (lambda (_%g119165119167%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g119165119167%_
                        _%src119134%_
                        _%ctx119163%_
                        _%marks119164%_)))))
                 (_%wrap-inner119139%_
                  (lambda (_%e119150%_ _%wrap-e119151%_)
                    (let _%recur119153%_ ((_%e119155%_ _%e119150%_))
                      (if (symbol? _%e119155%_)
                          (_%wrap-e119151%_ _%e119155%_)
                          (if (pair? _%e119155%_)
                              (cons (_%recur119153%_ (##car _%e119155%_))
                                    (_%recur119153%_ (##cdr _%e119155%_)))
                              (if (vector? _%e119155%_)
                                  (vector-map _%recur119153%_ _%e119155%_)
                                  (if (box? _%e119155%_)
                                      (box (_%recur119153%_
                                            (unbox _%e119155%_)))
                                      _%e119155%_)))))))
                 (_%wrap-outer119140%_
                  (lambda (_%e119148%_)
                    (if (##structure-instance-of? _%e119148%_ 'gerbil#AST::t)
                        _%e119148%_
                        (##structure gx#AST::t _%e119148%_ _%src119134%_)))))
          (if (##structure-instance-of? _%datum119133%_ 'gerbil#AST::t)
              _%datum119133%_
              (if (not _%stx119132%_)
                  (##structure gx#AST::t _%datum119133%_ _%src119134%_)
                  (if (gx#identifier? _%stx119132%_)
                      (let ((_%stx119145%_ (gx#stx-unwrap__0 _%stx119132%_)))
                        (_%wrap-outer119140%_
                         (if (##structure-direct-instance-of?
                              _%stx119145%_
                              'gx#syntax-quote::t)
                             (if _%quote?119135%_
                                 (_%wrap-quote119138%_
                                  _%datum119133%_
                                  (##unchecked-structure-ref
                                   _%stx119145%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx119145%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum119137%_
                                  _%datum119133%_
                                  (##unchecked-structure-ref
                                   _%stx119145%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum119137%_
                              _%datum119133%_
                              (##unchecked-structure-ref
                               _%stx119145%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx119132%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx119180%_ _%datum119181%_)
        (let* ((_%src119183%_ '#f) (_%quote?119185%_ '#t))
          (gx#datum->syntax__%
           _%stx119180%_
           _%datum119181%_
           _%src119183%_
           _%quote?119185%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx119187%_ _%datum119188%_ _%src119189%_)
        (let ((_%quote?119191%_ '#t))
          (gx#datum->syntax__%
           _%stx119187%_
           _%datum119188%_
           _%src119189%_
           _%quote?119191%_))))
    (define gx#datum->syntax
      (lambda _g119332_
        (let ((_g119331_ (##length _g119332_)))
          (cond ((##fx= _g119331_ 2) (apply gx#datum->syntax__0 _g119332_))
                ((##fx= _g119331_ 3) (apply gx#datum->syntax__1 _g119332_))
                ((##fx= _g119331_ 4) (apply gx#datum->syntax__% _g119332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g119332_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx119098%_ _%marks119099%_)
        (let _%lp119101%_ ((_%e119103%_ _%stx119098%_)
                           (_%marks119104%_ _%marks119099%_)
                           (_%src119105%_ (gx#stx-source _%stx119098%_)))
          (if (##structure-direct-instance-of? _%e119103%_ 'gx#syntax-wrap::t)
              (_%lp119101%_
               (##unchecked-structure-ref _%e119103%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e119103%_ '3 '#f '#f)
                _%marks119104%_)
               (##unchecked-structure-ref _%e119103%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e119103%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks119104%_)
                      _%e119103%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e119103%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e119103%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e119103%_ '3 '#f '#f)
                        _%marks119104%_)))
                  (if (##structure-direct-instance-of?
                       _%e119103%_
                       'gx#syntax-quote::t)
                      _%e119103%_
                      (if (##structure-instance-of? _%e119103%_ 'gerbil#AST::t)
                          (_%lp119101%_
                           (##unchecked-structure-ref _%e119103%_ '1 '#f '#f)
                           _%marks119104%_
                           (##unchecked-structure-ref _%e119103%_ '2 '#f '#f))
                          (if (symbol? _%e119103%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e119103%_
                               _%src119105%_
                               (reverse _%marks119104%_))
                              (if (null? _%marks119104%_)
                                  _%e119103%_
                                  (if (pair? _%e119103%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e119103%_)
                                             _%marks119104%_)
                                            (gx#stx-wrap
                                             (##cdr _%e119103%_)
                                             _%marks119104%_))
                                      (if (vector? _%e119103%_)
                                          (vector-map
                                           (lambda (_%g119114119116%_)
                                             (gx#stx-wrap
                                              _%g119114119116%_
                                              _%marks119104%_))
                                           _%e119103%_)
                                          (if (box? _%e119103%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e119103%_)
                                                    _%marks119104%_))
                                              _%e119103%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx119124%_)
        (let ((_%marks119126%_ '()))
          (gx#stx-unwrap__% _%stx119124%_ _%marks119126%_))))
    (define gx#stx-unwrap
      (lambda _g119334_
        (let ((_g119333_ (##length _g119334_)))
          (cond ((##fx= _g119333_ 1) (apply gx#stx-unwrap__0 _g119334_))
                ((##fx= _g119333_ 2) (apply gx#stx-unwrap__% _g119334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g119334_))))))
    (define gx#stx-wrap
      (lambda (_%stx119091%_ _%marks119092%_)
        (__foldl1
         (lambda (_%mark119094%_ _%stx119095%_)
           (gx#stx-apply-mark _%stx119095%_ _%mark119094%_))
         _%stx119091%_
         _%marks119092%_)))
    (define gx#stx-rewrap
      (lambda (_%stx119085%_ _%marks119086%_)
        (__foldr1
         (lambda (_%mark119088%_ _%stx119089%_)
           (gx#stx-apply-mark _%stx119089%_ _%mark119088%_))
         _%stx119085%_
         _%marks119086%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx119079%_ _%mark119080%_)
        (if (##structure-direct-instance-of? _%stx119079%_ 'gx#syntax-quote::t)
            _%stx119079%_
            (if (and (##structure-direct-instance-of?
                      _%stx119079%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark119080%_
                          (##unchecked-structure-ref
                           _%stx119079%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx119079%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx119079%_
                 (gx#stx-source _%stx119079%_)
                 _%mark119080%_)))))
    (define gx#apply-mark
      (lambda (_%mark119043%_ _%marks119044%_)
        (let* ((_%marks119045119053%_ _%marks119044%_)
               (_%else119047119061%_
                (lambda () (cons _%mark119043%_ _%marks119044%_)))
               (_%K119049119067%_
                (lambda (_%rest119064%_ _%hd119065%_)
                  (if (eq? _%mark119043%_ _%hd119065%_)
                      _%rest119064%_
                      (cons _%mark119043%_ _%marks119044%_)))))
          (if (pair? _%marks119045119053%_)
              (let ((_%hd119050119070%_ (##car _%marks119045119053%_))
                    (_%tl119051119072%_ (##cdr _%marks119045119053%_)))
                (let* ((_%hd119075%_ _%hd119050119070%_)
                       (_%rest119077%_ _%tl119051119072%_))
                  (_%K119049119067%_ _%rest119077%_ _%hd119075%_)))
              (_%else119047119061%_)))))
    (define gx#stx-e
      (lambda (_%stx119038%_)
        (if (##structure-direct-instance-of? _%stx119038%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx119038%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx119038%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx119038%_ '1 '#f '#f)
                _%stx119038%_))))
    (define gx#stx-source
      (lambda (_%stx119036%_)
        (if (##structure-instance-of? _%stx119036%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx119036%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx119030%_ _%src119031%_)
        (if (or (##structure-instance-of? _%stx119030%_ 'gerbil#AST::t)
                (not _%src119031%_))
            _%stx119030%_
            (##structure gx#AST::t _%stx119030%_ _%src119031%_))))
    (define gx#stx-datum?
      (lambda (_%stx119028%_) (gx#self-quoting? (gx#stx-e _%stx119028%_))))
    (define gx#self-quoting?
      (lambda (_%x119011%_)
        (let ((_%$e119013%_ (immediate? _%x119011%_)))
          (if _%$e119013%_
              _%$e119013%_
              (let ((_%$e119016%_ (number? _%x119011%_)))
                (if _%$e119016%_
                    _%$e119016%_
                    (let ((_%$e119019%_ (keyword? _%x119011%_)))
                      (if _%$e119019%_
                          _%$e119019%_
                          (let ((_%$e119022%_ (string? _%x119011%_)))
                            (if _%$e119022%_
                                _%$e119022%_
                                (let ((_%$e119025%_ (vector? _%x119011%_)))
                                  (if _%$e119025%_
                                      _%$e119025%_
                                      (u8vector? _%x119011%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e119009%_) (boolean? (gx#stx-e _%e119009%_))))
    (define gx#stx-keyword?
      (lambda (_%e119007%_) (keyword? (gx#stx-e _%e119007%_))))
    (define gx#stx-char? (lambda (_%e119005%_) (char? (gx#stx-e _%e119005%_))))
    (define gx#stx-number?
      (lambda (_%e119003%_) (number? (gx#stx-e _%e119003%_))))
    (define gx#stx-fixnum?
      (lambda (_%e119001%_) (fixnum? (gx#stx-e _%e119001%_))))
    (define gx#stx-string?
      (lambda (_%e118999%_) (string? (gx#stx-e _%e118999%_))))
    (define gx#stx-null? (lambda (_%e118997%_) (null? (gx#stx-e _%e118997%_))))
    (define gx#stx-pair? (lambda (_%e118995%_) (pair? (gx#stx-e _%e118995%_))))
    (define gx#stx-list?
      (lambda (_%e118957%_)
        (let* ((_%g118958118967%_ (gx#stx-e _%e118957%_))
               (_%E118961118971%_
                (lambda ()
                  (error '"No clause matching"
                         _%g118958118967%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K118963118987%_
                 (lambda (_%rest118985%_) (gx#stx-list? _%rest118985%_)))
                (_%K118962118977%_
                 (lambda (_%tail118975%_) (null? _%tail118975%_))))
            (if (pair? _%g118958118967%_)
                (let* ((_%tl118965118990%_ (##cdr _%g118958118967%_))
                       (_%rest118993%_ _%tl118965118990%_))
                  (gx#stx-list? _%rest118993%_))
                (let ((_%tail118980%_ _%g118958118967%_))
                  (null? _%tail118980%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e118950%_)
        (let* ((_%e118952%_ (gx#stx-e _%e118950%_))
               (_%$e118954%_ (pair? _%e118952%_)))
          (if _%$e118954%_ _%$e118954%_ (null? _%e118952%_)))))
    (define gx#stx-vector?
      (lambda (_%e118948%_) (vector? (gx#stx-e _%e118948%_))))
    (define gx#stx-box? (lambda (_%e118946%_) (box? (gx#stx-e _%e118946%_))))
    (define gx#stx-eq?
      (lambda (_%x118943%_ _%y118944%_)
        (eq? (gx#stx-e _%x118943%_) (gx#stx-e _%y118944%_))))
    (define gx#stx-eqv?
      (lambda (_%x118940%_ _%y118941%_)
        (eqv? (gx#stx-e _%x118940%_) (gx#stx-e _%y118941%_))))
    (define gx#stx-equal?
      (lambda (_%x118937%_ _%y118938%_)
        (equal? (gx#stx-e _%x118937%_) (gx#stx-e _%y118938%_))))
    (define gx#stx-false? (lambda (_%x118935%_) (not (gx#stx-e _%x118935%_))))
    (define gx#stx-identifier
      (lambda (_%template118932%_ . _%args118933%_)
        (gx#datum->syntax__1
         _%template118932%_
         (apply make-symbol (gx#syntax->datum _%args118933%_))
         (gx#stx-source _%template118932%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx118930%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx118930%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx118925%_)
        (if (##structure-direct-instance-of?
             _%stx118925%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx118925%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx118925%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx118925%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx118925%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx118921%_)
        (let ((_%stx118923%_ (gx#stx-unwrap__0 _%stx118921%_)))
          (if (gx#identifier-quote? _%stx118923%_)
              (##unchecked-structure-ref _%stx118923%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx118876%_)
        (let* ((_%g118877118887%_ (gx#stx-e _%stx118876%_))
               (_%else118880118895%_ (lambda () '#f)))
          (let ((_%K118883118909%_
                 (lambda (_%rest118906%_ _%hd118907%_)
                   (if (gx#identifier? _%hd118907%_)
                       (gx#identifier-list? _%rest118906%_)
                       '#f)))
                (_%K118882118900%_ (lambda () '#t)))
            (let ((_%try-match118879118903%_
                   (lambda ()
                     (if (null? _%g118877118887%_)
                         (_%K118882118900%_)
                         (_%else118880118895%_)))))
              (if (pair? _%g118877118887%_)
                  (let ((_%tl118885118914%_ (##cdr _%g118877118887%_))
                        (_%hd118884118912%_ (##car _%g118877118887%_)))
                    (let ((_%hd118917%_ _%hd118884118912%_)
                          (_%rest118919%_ _%tl118885118914%_))
                      (_%K118883118909%_ _%rest118919%_ _%hd118917%_)))
                  (_%try-match118879118903%_)))))))
    (define gx#genident__%
      (lambda (_%e118853%_ _%src118854%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e118856%_ (gx#stx-e _%e118853%_)))
                   (if (interned-symbol? _%e118856%_) _%e118856%_ 'g)))
         (let ((_%$e118858%_ (gx#stx-source _%e118853%_)))
           (if _%$e118858%_ _%$e118858%_ _%src118854%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e118865%_ 'g) (_%src118867%_ '#f))
          (gx#genident__% _%e118865%_ _%src118867%_))))
    (define gx#genident__1
      (lambda (_%e118869%_)
        (let ((_%src118871%_ '#f))
          (gx#genident__% _%e118869%_ _%src118871%_))))
    (define gx#genident
      (lambda _g119336_
        (let ((_g119335_ (##length _g119336_)))
          (cond ((##fx= _g119335_ 0) (apply gx#genident__0 _g119336_))
                ((##fx= _g119335_ 1) (apply gx#genident__1 _g119336_))
                ((##fx= _g119335_ 2) (apply gx#genident__% _g119336_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g119336_))))))
    (define gx#gentemps
      (lambda (_%stx-lst118850%_) (gx#stx-map1 gx#genident _%stx-lst118850%_)))
    (define gx#syntax->list
      (lambda (_%stx118848%_) (gx#stx-map1 values _%stx118848%_)))
    (define gx#stx-car
      (lambda (_%stx118845%_)
        (declare (safe))
        (car (gx#syntax-e _%stx118845%_))))
    (define gx#stx-cdr
      (lambda (_%stx118842%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx118842%_))))
    (define gx#stx-length
      (lambda (_%stx118807%_)
        (let _%lp118809%_ ((_%rest118811%_ _%stx118807%_) (_%n118812%_ '0))
          (let* ((_%g118813118821%_ (gx#stx-e _%rest118811%_))
                 (_%else118815118829%_ (lambda () _%n118812%_))
                 (_%K118817118834%_
                  (lambda (_%rest118832%_)
                    (_%lp118809%_ _%rest118832%_ (##fx+ _%n118812%_ '1)))))
            (if (pair? _%g118813118821%_)
                (let* ((_%tl118819118837%_ (##cdr _%g118813118821%_))
                       (_%rest118840%_ _%tl118819118837%_))
                  (_%K118817118834%_ _%rest118840%_))
                (_%else118815118829%_))))))
    (define gx#stx-for-each
      (lambda _g119338_
        (let ((_g119337_ (##length _g119338_)))
          (cond ((##fx= _g119337_ 2) (apply gx#stx-for-each1 _g119338_))
                ((##fx= _g119337_ 3) (apply gx#stx-for-each2 _g119338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g119338_))))))
    (define gx#stx-for-each1
      (lambda (_%f118750%_ _%stx118751%_)
        (if (procedure? _%f118750%_)
            '#!void
            (error '"expected procedure" _%f118750%_))
        (let _%lp118753%_ ((_%rest118755%_ _%stx118751%_))
          (let* ((_%g118756118766%_ (gx#syntax-e _%rest118755%_))
                 (_%else118759118774%_
                  (lambda () (_%f118750%_ _%rest118755%_))))
            (let ((_%K118762118788%_
                   (lambda (_%rest118785%_ _%hd118786%_)
                     (_%f118750%_ _%hd118786%_)
                     (_%lp118753%_ _%rest118785%_)))
                  (_%K118761118779%_ (lambda () '#!void)))
              (let ((_%try-match118758118782%_
                     (lambda ()
                       (if (null? _%g118756118766%_)
                           (_%K118761118779%_)
                           (_%else118759118774%_)))))
                (if (pair? _%g118756118766%_)
                    (let ((_%tl118764118793%_ (##cdr _%g118756118766%_))
                          (_%hd118763118791%_ (##car _%g118756118766%_)))
                      (let ((_%hd118796%_ _%hd118763118791%_)
                            (_%rest118798%_ _%tl118764118793%_))
                        (_%K118762118788%_ _%rest118798%_ _%hd118796%_)))
                    (_%try-match118758118782%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f118655%_ _%xstx118656%_ _%ystx118657%_)
        (if (procedure? _%f118655%_)
            '#!void
            (error '"expected procedure" _%f118655%_))
        (let _%lp118659%_ ((_%xrest118661%_ _%xstx118656%_)
                           (_%yrest118662%_ _%ystx118657%_))
          (let* ((_%g118663118673%_ (gx#syntax-e _%xrest118661%_))
                 (_%else118666118681%_ (lambda () '#!void)))
            (let ((_%K118669118738%_
                   (lambda (_%xrest118707%_ _%xhd118708%_)
                     (let* ((_%g118709118716%_ (gx#syntax-e _%yrest118662%_))
                            (_%E118711118720%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g118709118716%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K118712118726%_
                             (lambda (_%yrest118723%_ _%yhd118724%_)
                               (_%f118655%_ _%xhd118708%_ _%yhd118724%_)
                               (_%lp118659%_
                                _%xrest118707%_
                                _%yrest118723%_))))
                       (if (pair? _%g118709118716%_)
                           (let ((_%hd118713118729%_ (##car _%g118709118716%_))
                                 (_%tl118714118731%_
                                  (##cdr _%g118709118716%_)))
                             (let* ((_%yhd118734%_ _%hd118713118729%_)
                                    (_%yrest118736%_ _%tl118714118731%_))
                               (_%K118712118726%_
                                _%yrest118736%_
                                _%yhd118734%_)))
                           (_%E118711118720%_)))))
                  (_%K118668118701%_
                   (lambda ()
                     (let* ((_%yrest118685118690%_ _%yrest118662%_)
                            (_%E118687118694%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest118685118690%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K118688118698%_
                             (lambda ()
                               (_%f118655%_ _%xrest118661%_ _%yrest118662%_))))
                       (if (gx#stx-null? _%yrest118685118690%_)
                           (_%E118687118694%_)
                           (_%K118688118698%_))))))
              (let ((_%try-match118665118704%_
                     (lambda ()
                       (if (null? _%g118663118673%_)
                           (_%else118666118681%_)
                           (_%K118668118701%_)))))
                (if (pair? _%g118663118673%_)
                    (let ((_%tl118671118743%_ (##cdr _%g118663118673%_))
                          (_%hd118670118741%_ (##car _%g118663118673%_)))
                      (let ((_%xhd118746%_ _%hd118670118741%_)
                            (_%xrest118748%_ _%tl118671118743%_))
                        (_%K118669118738%_ _%xrest118748%_ _%xhd118746%_)))
                    (_%try-match118665118704%_))))))))
    (define gx#stx-map
      (lambda _g119340_
        (let ((_g119339_ (##length _g119340_)))
          (cond ((##fx= _g119339_ 2) (apply gx#stx-map1 _g119340_))
                ((##fx= _g119339_ 3) (apply gx#stx-map2 _g119340_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g119340_))))))
    (define gx#stx-map1
      (lambda (_%f118598%_ _%stx118599%_)
        (if (procedure? _%f118598%_)
            '#!void
            (error '"expected procedure" _%f118598%_))
        (let _%recur118601%_ ((_%rest118603%_ _%stx118599%_))
          (let* ((_%g118604118614%_ (gx#syntax-e _%rest118603%_))
                 (_%else118607118622%_
                  (lambda () (_%f118598%_ _%rest118603%_))))
            (let ((_%K118610118636%_
                   (lambda (_%rest118633%_ _%hd118634%_)
                     (cons (_%f118598%_ _%hd118634%_)
                           (_%recur118601%_ _%rest118633%_))))
                  (_%K118609118627%_ (lambda () '())))
              (let ((_%try-match118606118630%_
                     (lambda ()
                       (if (null? _%g118604118614%_)
                           (_%K118609118627%_)
                           (_%else118607118622%_)))))
                (if (pair? _%g118604118614%_)
                    (let ((_%tl118612118641%_ (##cdr _%g118604118614%_))
                          (_%hd118611118639%_ (##car _%g118604118614%_)))
                      (let ((_%hd118644%_ _%hd118611118639%_)
                            (_%rest118646%_ _%tl118612118641%_))
                        (_%K118610118636%_ _%rest118646%_ _%hd118644%_)))
                    (_%try-match118606118630%_))))))))
    (define gx#stx-map2
      (lambda (_%f118503%_ _%xstx118504%_ _%ystx118505%_)
        (if (procedure? _%f118503%_)
            '#!void
            (error '"expected procedure" _%f118503%_))
        (let _%recur118507%_ ((_%xrest118509%_ _%xstx118504%_)
                              (_%yrest118510%_ _%ystx118505%_))
          (let* ((_%g118511118521%_ (gx#syntax-e _%xrest118509%_))
                 (_%else118514118529%_ (lambda () '())))
            (let ((_%K118517118586%_
                   (lambda (_%xrest118555%_ _%xhd118556%_)
                     (let* ((_%g118557118564%_ (gx#syntax-e _%yrest118510%_))
                            (_%E118559118568%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g118557118564%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K118560118574%_
                             (lambda (_%yrest118571%_ _%yhd118572%_)
                               (cons (_%f118503%_ _%xhd118556%_ _%yhd118572%_)
                                     (_%recur118507%_
                                      _%xrest118555%_
                                      _%yrest118571%_)))))
                       (if (pair? _%g118557118564%_)
                           (let ((_%hd118561118577%_ (##car _%g118557118564%_))
                                 (_%tl118562118579%_
                                  (##cdr _%g118557118564%_)))
                             (let* ((_%yhd118582%_ _%hd118561118577%_)
                                    (_%yrest118584%_ _%tl118562118579%_))
                               (_%K118560118574%_
                                _%yrest118584%_
                                _%yhd118582%_)))
                           (_%E118559118568%_)))))
                  (_%K118516118549%_
                   (lambda ()
                     (let* ((_%yrest118533118538%_ _%yrest118510%_)
                            (_%E118535118542%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest118533118538%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K118536118546%_
                             (lambda ()
                               (_%f118503%_ _%xrest118509%_ _%yrest118510%_))))
                       (if (gx#stx-null? _%yrest118533118538%_)
                           (_%E118535118542%_)
                           (_%K118536118546%_))))))
              (let ((_%try-match118513118552%_
                     (lambda ()
                       (if (null? _%g118511118521%_)
                           (_%else118514118529%_)
                           (_%K118516118549%_)))))
                (if (pair? _%g118511118521%_)
                    (let ((_%tl118519118591%_ (##cdr _%g118511118521%_))
                          (_%hd118518118589%_ (##car _%g118511118521%_)))
                      (let ((_%xhd118594%_ _%hd118518118589%_)
                            (_%xrest118596%_ _%tl118519118591%_))
                        (_%K118517118586%_ _%xrest118596%_ _%xhd118594%_)))
                    (_%try-match118513118552%_))))))))
    (define gx#stx-andmap
      (lambda (_%f118453%_ _%stx118454%_)
        (if (procedure? _%f118453%_)
            '#!void
            (error '"expected procedure" _%f118453%_))
        (let _%lp118456%_ ((_%rest118458%_ _%stx118454%_))
          (let* ((_%g118459118469%_ (gx#syntax-e _%rest118458%_))
                 (_%else118462118477%_
                  (lambda () (_%f118453%_ _%rest118458%_))))
            (let ((_%K118465118491%_
                   (lambda (_%rest118488%_ _%hd118489%_)
                     (if (_%f118453%_ _%hd118489%_)
                         (_%lp118456%_ _%rest118488%_)
                         '#f)))
                  (_%K118464118482%_ (lambda () '#t)))
              (let ((_%try-match118461118485%_
                     (lambda ()
                       (if (null? _%g118459118469%_)
                           (_%K118464118482%_)
                           (_%else118462118477%_)))))
                (if (pair? _%g118459118469%_)
                    (let ((_%tl118467118496%_ (##cdr _%g118459118469%_))
                          (_%hd118466118494%_ (##car _%g118459118469%_)))
                      (let ((_%hd118499%_ _%hd118466118494%_)
                            (_%rest118501%_ _%tl118467118496%_))
                        (_%K118465118491%_ _%rest118501%_ _%hd118499%_)))
                    (_%try-match118461118485%_))))))))
    (define gx#stx-ormap
      (lambda (_%f118400%_ _%stx118401%_)
        (if (procedure? _%f118400%_)
            '#!void
            (error '"expected procedure" _%f118400%_))
        (let _%lp118403%_ ((_%rest118405%_ _%stx118401%_))
          (let* ((_%g118406118416%_ (gx#syntax-e _%rest118405%_))
                 (_%else118409118424%_
                  (lambda () (_%f118400%_ _%rest118405%_))))
            (let ((_%K118412118441%_
                   (lambda (_%rest118435%_ _%hd118436%_)
                     (let ((_%$e118438%_ (_%f118400%_ _%hd118436%_)))
                       (if _%$e118438%_
                           _%$e118438%_
                           (_%lp118403%_ _%rest118435%_)))))
                  (_%K118411118429%_ (lambda () '#f)))
              (let ((_%try-match118408118432%_
                     (lambda ()
                       (if (null? _%g118406118416%_)
                           (_%K118411118429%_)
                           (_%else118409118424%_)))))
                (if (pair? _%g118406118416%_)
                    (let ((_%tl118414118446%_ (##cdr _%g118406118416%_))
                          (_%hd118413118444%_ (##car _%g118406118416%_)))
                      (let ((_%hd118449%_ _%hd118413118444%_)
                            (_%rest118451%_ _%tl118414118446%_))
                        (_%K118412118441%_ _%rest118451%_ _%hd118449%_)))
                    (_%try-match118408118432%_))))))))
    (define gx#stx-foldl
      (lambda (_%f118348%_ _%iv118349%_ _%stx118350%_)
        (if (procedure? _%f118348%_)
            '#!void
            (error '"expected procedure" _%f118348%_))
        (let _%lp118352%_ ((_%r118354%_ _%iv118349%_)
                           (_%rest118355%_ _%stx118350%_))
          (let* ((_%g118356118366%_ (gx#syntax-e _%rest118355%_))
                 (_%else118359118374%_
                  (lambda () (_%f118348%_ _%rest118355%_ _%r118354%_))))
            (let ((_%K118362118388%_
                   (lambda (_%rest118385%_ _%hd118386%_)
                     (_%lp118352%_
                      (_%f118348%_ _%hd118386%_ _%r118354%_)
                      _%rest118385%_)))
                  (_%K118361118379%_ (lambda () _%r118354%_)))
              (let ((_%try-match118358118382%_
                     (lambda ()
                       (if (null? _%g118356118366%_)
                           (_%K118361118379%_)
                           (_%else118359118374%_)))))
                (if (pair? _%g118356118366%_)
                    (let ((_%tl118364118393%_ (##cdr _%g118356118366%_))
                          (_%hd118363118391%_ (##car _%g118356118366%_)))
                      (let ((_%hd118396%_ _%hd118363118391%_)
                            (_%rest118398%_ _%tl118364118393%_))
                        (_%K118362118388%_ _%rest118398%_ _%hd118396%_)))
                    (_%try-match118358118382%_))))))))
    (define gx#stx-foldr
      (lambda (_%f118297%_ _%iv118298%_ _%stx118299%_)
        (if (procedure? _%f118297%_)
            '#!void
            (error '"expected procedure" _%f118297%_))
        (let _%recur118301%_ ((_%rest118303%_ _%stx118299%_))
          (let* ((_%g118304118314%_ (gx#syntax-e _%rest118303%_))
                 (_%else118307118322%_
                  (lambda () (_%f118297%_ _%rest118303%_ _%iv118298%_))))
            (let ((_%K118310118336%_
                   (lambda (_%rest118333%_ _%hd118334%_)
                     (_%f118297%_
                      _%hd118334%_
                      (_%recur118301%_ _%rest118333%_))))
                  (_%K118309118327%_ (lambda () _%iv118298%_)))
              (let ((_%try-match118306118330%_
                     (lambda ()
                       (if (null? _%g118304118314%_)
                           (_%K118309118327%_)
                           (_%else118307118322%_)))))
                (if (pair? _%g118304118314%_)
                    (let ((_%tl118312118341%_ (##cdr _%g118304118314%_))
                          (_%hd118311118339%_ (##car _%g118304118314%_)))
                      (let ((_%hd118344%_ _%hd118311118339%_)
                            (_%rest118346%_ _%tl118312118341%_))
                        (_%K118310118336%_ _%rest118346%_ _%hd118344%_)))
                    (_%try-match118306118330%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx118295%_) (gx#stx-foldl cons '() _%stx118295%_)))
    (define gx#stx-last
      (lambda (_%stx118256%_)
        (let _%lp118258%_ ((_%rest118260%_ _%stx118256%_))
          (let* ((_%g118261118269%_ (gx#syntax-e _%rest118260%_))
                 (_%else118263118277%_ (lambda () _%rest118260%_))
                 (_%K118265118283%_
                  (lambda (_%rest118280%_ _%hd118281%_)
                    (if (gx#stx-null? _%rest118280%_)
                        _%hd118281%_
                        (_%lp118258%_ _%rest118280%_)))))
            (if (pair? _%g118261118269%_)
                (let ((_%hd118266118286%_ (##car _%g118261118269%_))
                      (_%tl118267118288%_ (##cdr _%g118261118269%_)))
                  (let* ((_%hd118291%_ _%hd118266118286%_)
                         (_%rest118293%_ _%tl118267118288%_))
                    (_%K118265118283%_ _%rest118293%_ _%hd118291%_)))
                (_%else118263118277%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx118227%_)
        (let _%lp118229%_ ((_%hd118231%_ _%stx118227%_))
          (let* ((_%g118232118239%_ (gx#syntax-e _%hd118231%_))
                 (_%E118234118243%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g118232118239%_
                           '([_ . rest]))
                    '#!void))
                 (_%K118235118248%_
                  (lambda (_%rest118246%_)
                    (if (gx#stx-pair? _%rest118246%_)
                        (_%lp118229%_ _%rest118246%_)
                        _%hd118231%_))))
            (if (pair? _%g118232118239%_)
                (let* ((_%tl118237118251%_ (##cdr _%g118232118239%_))
                       (_%rest118254%_ _%tl118237118251%_))
                  (_%K118235118248%_ _%rest118254%_))
                (_%E118234118243%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx118196%_ _%k118197%_)
        (let _%lp118199%_ ((_%rest118201%_ _%stx118196%_)
                           (_%k118202%_ _%k118197%_))
          (if (fxpositive? _%k118202%_)
              (let* ((_%g118203118210%_ (gx#syntax-e _%rest118201%_))
                     (_%E118205118214%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g118203118210%_
                               '([_ . rest]))
                        '#!void))
                     (_%K118206118219%_
                      (lambda (_%rest118217%_)
                        (_%lp118199%_ _%rest118217%_ (##fx- _%k118202%_ '1)))))
                (if (pair? _%g118203118210%_)
                    (let* ((_%tl118208118222%_ (##cdr _%g118203118210%_))
                           (_%rest118225%_ _%tl118208118222%_))
                      (_%K118206118219%_ _%rest118225%_))
                    (_%E118205118214%_)))
              _%rest118201%_))))
    (define gx#stx-list-ref
      (lambda (_%stx118193%_ _%k118194%_)
        (gx#stx-car (gx#stx-list-tail _%stx118193%_ _%k118194%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx118105%_ _%key?118106%_)
        (if (procedure? _%key?118106%_)
            '#!void
            (error '"expected procedure" _%key?118106%_))
        (let _%lp118108%_ ((_%rest118110%_ _%stx118105%_))
          (let* ((_%g118111118121%_ (gx#stx-e _%rest118110%_))
                 (_%else118114118129%_ (lambda () '#f)))
            (let ((_%K118117118171%_
                   (lambda (_%rest118140%_ _%hd118141%_)
                     (if (_%key?118106%_ _%hd118141%_)
                         (let* ((_%g118142118150%_ (gx#stx-e _%rest118140%_))
                                (_%else118144118158%_ (lambda () '#f))
                                (_%K118146118163%_
                                 (lambda (_%rest118161%_)
                                   (_%lp118108%_ _%rest118161%_))))
                           (if (pair? _%g118142118150%_)
                               (let* ((_%tl118148118166%_
                                       (##cdr _%g118142118150%_))
                                      (_%rest118169%_ _%tl118148118166%_))
                                 (_%lp118108%_ _%rest118169%_))
                               (_%else118144118158%_)))
                         '#f)))
                  (_%K118116118134%_ (lambda () '#t)))
              (let ((_%try-match118113118137%_
                     (lambda ()
                       (if (null? _%g118111118121%_)
                           (_%K118116118134%_)
                           (_%else118114118129%_)))))
                (if (pair? _%g118111118121%_)
                    (let ((_%tl118119118176%_ (##cdr _%g118111118121%_))
                          (_%hd118118118174%_ (##car _%g118111118121%_)))
                      (let ((_%hd118179%_ _%hd118118118174%_)
                            (_%rest118181%_ _%tl118119118176%_))
                        (_%K118117118171%_ _%rest118181%_ _%hd118179%_)))
                    (_%try-match118113118137%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx118186%_)
        (let ((_%key?118188%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx118186%_ _%key?118188%_))))
    (define gx#stx-plist?
      (lambda _g119342_
        (let ((_g119341_ (##length _g119342_)))
          (cond ((##fx= _g119341_ 1) (apply gx#stx-plist?__0 _g119342_))
                ((##fx= _g119341_ 2) (apply gx#stx-plist?__% _g119342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g119342_))))))
    (define gx#stx-getq__%
      (lambda (_%key118023%_ _%stx118024%_ _%key=?118025%_)
        (if (procedure? _%key=?118025%_)
            '#!void
            (error '"expected procedure" _%key=?118025%_))
        (let _%lp118027%_ ((_%rest118029%_ _%stx118024%_))
          (let* ((_%g118030118038%_ (gx#syntax-e _%rest118029%_))
                 (_%else118032118046%_ (lambda () '#f))
                 (_%K118034118080%_
                  (lambda (_%rest118049%_ _%hd118050%_)
                    (let* ((_%g118051118058%_ (gx#syntax-e _%rest118049%_))
                           (_%E118053118062%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g118051118058%_
                                     '([val . rest]))
                              '#!void))
                           (_%K118054118068%_
                            (lambda (_%rest118065%_ _%val118066%_)
                              (if (_%key=?118025%_ _%hd118050%_ _%key118023%_)
                                  _%val118066%_
                                  (_%lp118027%_ _%rest118065%_)))))
                      (if (pair? _%g118051118058%_)
                          (let ((_%hd118055118071%_ (##car _%g118051118058%_))
                                (_%tl118056118073%_ (##cdr _%g118051118058%_)))
                            (let* ((_%val118076%_ _%hd118055118071%_)
                                   (_%rest118078%_ _%tl118056118073%_))
                              (_%K118054118068%_
                               _%rest118078%_
                               _%val118076%_)))
                          (_%E118053118062%_))))))
            (if (pair? _%g118030118038%_)
                (let ((_%hd118035118083%_ (##car _%g118030118038%_))
                      (_%tl118036118085%_ (##cdr _%g118030118038%_)))
                  (let* ((_%hd118088%_ _%hd118035118083%_)
                         (_%rest118090%_ _%tl118036118085%_))
                    (_%K118034118080%_ _%rest118090%_ _%hd118088%_)))
                (_%else118032118046%_))))))
    (define gx#stx-getq__0
      (lambda (_%key118095%_ _%stx118096%_)
        (let ((_%key=?118098%_ gx#stx-eq?))
          (gx#stx-getq__% _%key118095%_ _%stx118096%_ _%key=?118098%_))))
    (define gx#stx-getq
      (lambda _g119344_
        (let ((_g119343_ (##length _g119344_)))
          (cond ((##fx= _g119343_ 2) (apply gx#stx-getq__0 _g119344_))
                ((##fx= _g119343_ 3) (apply gx#stx-getq__% _g119344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g119344_))))))))
