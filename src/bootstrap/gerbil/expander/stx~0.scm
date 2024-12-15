(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1734280446)
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
      (lambda _%$args119197%_
        (apply make-instance gx#identifier-wrap::t _%$args119197%_)))
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
      (lambda _%$args119194%_
        (apply make-instance gx#syntax-wrap::t _%$args119194%_)))
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
      (lambda _%$args119191%_
        (apply make-instance gx#syntax-quote::t _%$args119191%_)))
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
      (lambda (_%stx119189%_) (symbol? (gx#stx-e _%stx119189%_))))
    (define gx#identifier-quote?
      (lambda (_%stx119187%_)
        (if (##structure-direct-instance-of? _%stx119187%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx119187%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx119182%_)
        (if (##structure-direct-instance-of? _%stx119182%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx119182%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx119182%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx119177%_)
        (if (##structure-direct-instance-of? _%stx119177%_ 'gx#syntax-quote::t)
            _%stx119177%_
            (if (##structure-direct-instance-of?
                 _%stx119177%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx119177%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx119151%_)
        (if (##structure-direct-instance-of? _%stx119151%_ 'gx#syntax-wrap::t)
            (let _%lp119154%_ ((_%e119156%_
                                (##unchecked-structure-ref
                                 _%stx119151%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks119157%_
                                (cons (##unchecked-structure-ref
                                       _%stx119151%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e119156%_)
                  (let ((_%$e119160%_
                         (##type-id (##structure-type _%e119156%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e119160%_)
                        (_%lp119154%_
                         (##unchecked-structure-ref _%e119156%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e119156%_ '3 '#f '#f)
                          _%marks119157%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e119160%_)
                                (eq? 'gx#identifier-wrap::t _%$e119160%_))
                            (##unchecked-structure-ref _%e119156%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e119160%_)
                                (_%lp119154%_
                                 (##unchecked-structure-ref
                                  _%e119156%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks119157%_)
                                _%e119156%_))))
                  (if (null? _%marks119157%_)
                      _%e119156%_
                      (if (pair? _%e119156%_)
                          (cons (gx#stx-wrap
                                 (##car _%e119156%_)
                                 _%marks119157%_)
                                (gx#stx-wrap
                                 (##cdr _%e119156%_)
                                 _%marks119157%_))
                          (if (vector? _%e119156%_)
                              (vector-map
                               (lambda (_%g119168119170%_)
                                 (gx#stx-wrap
                                  _%g119168119170%_
                                  _%marks119157%_))
                               _%e119156%_)
                              (if (box? _%e119156%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e119156%_)
                                        _%marks119157%_))
                                  _%e119156%_))))))
            (if (##structure-instance-of? _%stx119151%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx119151%_ '1 '#f '#f)
                _%stx119151%_))))
    (define gx#syntax->datum
      (lambda (_%stx119144%_)
        (if (##structure-instance-of? _%stx119144%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx119144%_ '1 '#f '#f))
            (if (pair? _%stx119144%_)
                (cons (gx#syntax->datum (##car _%stx119144%_))
                      (gx#syntax->datum (##cdr _%stx119144%_)))
                (if (vector? _%stx119144%_)
                    (vector-map gx#syntax->datum _%stx119144%_)
                    (if (box? _%stx119144%_)
                        (box (gx#syntax->datum (unbox _%stx119144%_)))
                        _%stx119144%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx119078%_ _%datum119079%_ _%src119080%_ _%quote?119081%_)
        (letrec ((_%wrap-datum119083%_
                  (lambda (_%e119116%_ _%marks119117%_)
                    (_%wrap-inner119085%_
                     _%e119116%_
                     (lambda (_%g119118119120%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g119118119120%_
                        _%src119080%_
                        _%marks119117%_)))))
                 (_%wrap-quote119084%_
                  (lambda (_%e119108%_ _%ctx119109%_ _%marks119110%_)
                    (_%wrap-inner119085%_
                     _%e119108%_
                     (lambda (_%g119111119113%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g119111119113%_
                        _%src119080%_
                        _%ctx119109%_
                        _%marks119110%_)))))
                 (_%wrap-inner119085%_
                  (lambda (_%e119096%_ _%wrap-e119097%_)
                    (let _%recur119099%_ ((_%e119101%_ _%e119096%_))
                      (if (symbol? _%e119101%_)
                          (_%wrap-e119097%_ _%e119101%_)
                          (if (pair? _%e119101%_)
                              (cons (_%recur119099%_ (##car _%e119101%_))
                                    (_%recur119099%_ (##cdr _%e119101%_)))
                              (if (vector? _%e119101%_)
                                  (vector-map _%recur119099%_ _%e119101%_)
                                  (if (box? _%e119101%_)
                                      (box (_%recur119099%_
                                            (unbox _%e119101%_)))
                                      _%e119101%_)))))))
                 (_%wrap-outer119086%_
                  (lambda (_%e119094%_)
                    (if (##structure-instance-of? _%e119094%_ 'gerbil#AST::t)
                        _%e119094%_
                        (##structure gx#AST::t _%e119094%_ _%src119080%_)))))
          (if (##structure-instance-of? _%datum119079%_ 'gerbil#AST::t)
              _%datum119079%_
              (if (not _%stx119078%_)
                  (##structure gx#AST::t _%datum119079%_ _%src119080%_)
                  (if (gx#identifier? _%stx119078%_)
                      (let ((_%stx119091%_ (gx#stx-unwrap__0 _%stx119078%_)))
                        (_%wrap-outer119086%_
                         (if (##structure-direct-instance-of?
                              _%stx119091%_
                              'gx#syntax-quote::t)
                             (if _%quote?119081%_
                                 (_%wrap-quote119084%_
                                  _%datum119079%_
                                  (##unchecked-structure-ref
                                   _%stx119091%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx119091%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum119083%_
                                  _%datum119079%_
                                  (##unchecked-structure-ref
                                   _%stx119091%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum119083%_
                              _%datum119079%_
                              (##unchecked-structure-ref
                               _%stx119091%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx119078%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx119126%_ _%datum119127%_)
        (let* ((_%src119129%_ '#f) (_%quote?119131%_ '#t))
          (gx#datum->syntax__%
           _%stx119126%_
           _%datum119127%_
           _%src119129%_
           _%quote?119131%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx119133%_ _%datum119134%_ _%src119135%_)
        (let ((_%quote?119137%_ '#t))
          (gx#datum->syntax__%
           _%stx119133%_
           _%datum119134%_
           _%src119135%_
           _%quote?119137%_))))
    (define gx#datum->syntax
      (lambda _g119278_
        (let ((_g119277_ (##length _g119278_)))
          (cond ((##fx= _g119277_ 2) (apply gx#datum->syntax__0 _g119278_))
                ((##fx= _g119277_ 3) (apply gx#datum->syntax__1 _g119278_))
                ((##fx= _g119277_ 4) (apply gx#datum->syntax__% _g119278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g119278_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx119044%_ _%marks119045%_)
        (let _%lp119047%_ ((_%e119049%_ _%stx119044%_)
                           (_%marks119050%_ _%marks119045%_)
                           (_%src119051%_ (gx#stx-source _%stx119044%_)))
          (if (##structure-direct-instance-of? _%e119049%_ 'gx#syntax-wrap::t)
              (_%lp119047%_
               (##unchecked-structure-ref _%e119049%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e119049%_ '3 '#f '#f)
                _%marks119050%_)
               (##unchecked-structure-ref _%e119049%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e119049%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks119050%_)
                      _%e119049%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e119049%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e119049%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e119049%_ '3 '#f '#f)
                        _%marks119050%_)))
                  (if (##structure-direct-instance-of?
                       _%e119049%_
                       'gx#syntax-quote::t)
                      _%e119049%_
                      (if (##structure-instance-of? _%e119049%_ 'gerbil#AST::t)
                          (_%lp119047%_
                           (##unchecked-structure-ref _%e119049%_ '1 '#f '#f)
                           _%marks119050%_
                           (##unchecked-structure-ref _%e119049%_ '2 '#f '#f))
                          (if (symbol? _%e119049%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e119049%_
                               _%src119051%_
                               (reverse _%marks119050%_))
                              (if (null? _%marks119050%_)
                                  _%e119049%_
                                  (if (pair? _%e119049%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e119049%_)
                                             _%marks119050%_)
                                            (gx#stx-wrap
                                             (##cdr _%e119049%_)
                                             _%marks119050%_))
                                      (if (vector? _%e119049%_)
                                          (vector-map
                                           (lambda (_%g119060119062%_)
                                             (gx#stx-wrap
                                              _%g119060119062%_
                                              _%marks119050%_))
                                           _%e119049%_)
                                          (if (box? _%e119049%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e119049%_)
                                                    _%marks119050%_))
                                              _%e119049%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx119070%_)
        (let ((_%marks119072%_ '()))
          (gx#stx-unwrap__% _%stx119070%_ _%marks119072%_))))
    (define gx#stx-unwrap
      (lambda _g119280_
        (let ((_g119279_ (##length _g119280_)))
          (cond ((##fx= _g119279_ 1) (apply gx#stx-unwrap__0 _g119280_))
                ((##fx= _g119279_ 2) (apply gx#stx-unwrap__% _g119280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g119280_))))))
    (define gx#stx-wrap
      (lambda (_%stx119037%_ _%marks119038%_)
        (__foldl1
         (lambda (_%mark119040%_ _%stx119041%_)
           (gx#stx-apply-mark _%stx119041%_ _%mark119040%_))
         _%stx119037%_
         _%marks119038%_)))
    (define gx#stx-rewrap
      (lambda (_%stx119031%_ _%marks119032%_)
        (__foldr1
         (lambda (_%mark119034%_ _%stx119035%_)
           (gx#stx-apply-mark _%stx119035%_ _%mark119034%_))
         _%stx119031%_
         _%marks119032%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx119025%_ _%mark119026%_)
        (if (##structure-direct-instance-of? _%stx119025%_ 'gx#syntax-quote::t)
            _%stx119025%_
            (if (and (##structure-direct-instance-of?
                      _%stx119025%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark119026%_
                          (##unchecked-structure-ref
                           _%stx119025%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx119025%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx119025%_
                 (gx#stx-source _%stx119025%_)
                 _%mark119026%_)))))
    (define gx#apply-mark
      (lambda (_%mark118989%_ _%marks118990%_)
        (let* ((_%marks118991118999%_ _%marks118990%_)
               (_%else118993119007%_
                (lambda () (cons _%mark118989%_ _%marks118990%_)))
               (_%K118995119013%_
                (lambda (_%rest119010%_ _%hd119011%_)
                  (if (eq? _%mark118989%_ _%hd119011%_)
                      _%rest119010%_
                      (cons _%mark118989%_ _%marks118990%_)))))
          (if (pair? _%marks118991118999%_)
              (let ((_%hd118996119016%_ (##car _%marks118991118999%_))
                    (_%tl118997119018%_ (##cdr _%marks118991118999%_)))
                (let* ((_%hd119021%_ _%hd118996119016%_)
                       (_%rest119023%_ _%tl118997119018%_))
                  (_%K118995119013%_ _%rest119023%_ _%hd119021%_)))
              (_%else118993119007%_)))))
    (define gx#stx-e
      (lambda (_%stx118984%_)
        (if (##structure-direct-instance-of? _%stx118984%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx118984%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx118984%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx118984%_ '1 '#f '#f)
                _%stx118984%_))))
    (define gx#stx-source
      (lambda (_%stx118982%_)
        (if (##structure-instance-of? _%stx118982%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx118982%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx118976%_ _%src118977%_)
        (if (or (##structure-instance-of? _%stx118976%_ 'gerbil#AST::t)
                (not _%src118977%_))
            _%stx118976%_
            (##structure gx#AST::t _%stx118976%_ _%src118977%_))))
    (define gx#stx-datum?
      (lambda (_%stx118974%_) (gx#self-quoting? (gx#stx-e _%stx118974%_))))
    (define gx#self-quoting?
      (lambda (_%x118957%_)
        (let ((_%$e118959%_ (immediate? _%x118957%_)))
          (if _%$e118959%_
              _%$e118959%_
              (let ((_%$e118962%_ (number? _%x118957%_)))
                (if _%$e118962%_
                    _%$e118962%_
                    (let ((_%$e118965%_ (keyword? _%x118957%_)))
                      (if _%$e118965%_
                          _%$e118965%_
                          (let ((_%$e118968%_ (string? _%x118957%_)))
                            (if _%$e118968%_
                                _%$e118968%_
                                (let ((_%$e118971%_ (vector? _%x118957%_)))
                                  (if _%$e118971%_
                                      _%$e118971%_
                                      (u8vector? _%x118957%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e118955%_) (boolean? (gx#stx-e _%e118955%_))))
    (define gx#stx-keyword?
      (lambda (_%e118953%_) (keyword? (gx#stx-e _%e118953%_))))
    (define gx#stx-char? (lambda (_%e118951%_) (char? (gx#stx-e _%e118951%_))))
    (define gx#stx-number?
      (lambda (_%e118949%_) (number? (gx#stx-e _%e118949%_))))
    (define gx#stx-fixnum?
      (lambda (_%e118947%_) (fixnum? (gx#stx-e _%e118947%_))))
    (define gx#stx-string?
      (lambda (_%e118945%_) (string? (gx#stx-e _%e118945%_))))
    (define gx#stx-null? (lambda (_%e118943%_) (null? (gx#stx-e _%e118943%_))))
    (define gx#stx-pair? (lambda (_%e118941%_) (pair? (gx#stx-e _%e118941%_))))
    (define gx#stx-list?
      (lambda (_%e118903%_)
        (let* ((_%g118904118913%_ (gx#stx-e _%e118903%_))
               (_%E118907118917%_
                (lambda ()
                  (error '"No clause matching"
                         _%g118904118913%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K118909118933%_
                 (lambda (_%rest118931%_) (gx#stx-list? _%rest118931%_)))
                (_%K118908118923%_
                 (lambda (_%tail118921%_) (null? _%tail118921%_))))
            (if (pair? _%g118904118913%_)
                (let* ((_%tl118911118936%_ (##cdr _%g118904118913%_))
                       (_%rest118939%_ _%tl118911118936%_))
                  (gx#stx-list? _%rest118939%_))
                (let ((_%tail118926%_ _%g118904118913%_))
                  (null? _%tail118926%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e118896%_)
        (let* ((_%e118898%_ (gx#stx-e _%e118896%_))
               (_%$e118900%_ (pair? _%e118898%_)))
          (if _%$e118900%_ _%$e118900%_ (null? _%e118898%_)))))
    (define gx#stx-vector?
      (lambda (_%e118894%_) (vector? (gx#stx-e _%e118894%_))))
    (define gx#stx-box? (lambda (_%e118892%_) (box? (gx#stx-e _%e118892%_))))
    (define gx#stx-eq?
      (lambda (_%x118889%_ _%y118890%_)
        (eq? (gx#stx-e _%x118889%_) (gx#stx-e _%y118890%_))))
    (define gx#stx-eqv?
      (lambda (_%x118886%_ _%y118887%_)
        (eqv? (gx#stx-e _%x118886%_) (gx#stx-e _%y118887%_))))
    (define gx#stx-equal?
      (lambda (_%x118883%_ _%y118884%_)
        (equal? (gx#stx-e _%x118883%_) (gx#stx-e _%y118884%_))))
    (define gx#stx-false? (lambda (_%x118881%_) (not (gx#stx-e _%x118881%_))))
    (define gx#stx-identifier
      (lambda (_%template118878%_ . _%args118879%_)
        (gx#datum->syntax__1
         _%template118878%_
         (apply make-symbol (gx#syntax->datum _%args118879%_))
         (gx#stx-source _%template118878%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx118876%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx118876%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx118871%_)
        (if (##structure-direct-instance-of?
             _%stx118871%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx118871%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx118871%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx118871%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx118871%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx118867%_)
        (let ((_%stx118869%_ (gx#stx-unwrap__0 _%stx118867%_)))
          (if (gx#identifier-quote? _%stx118869%_)
              (##unchecked-structure-ref _%stx118869%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx118822%_)
        (let* ((_%g118823118833%_ (gx#stx-e _%stx118822%_))
               (_%else118826118841%_ (lambda () '#f)))
          (let ((_%K118829118855%_
                 (lambda (_%rest118852%_ _%hd118853%_)
                   (if (gx#identifier? _%hd118853%_)
                       (gx#identifier-list? _%rest118852%_)
                       '#f)))
                (_%K118828118846%_ (lambda () '#t)))
            (let ((_%try-match118825118849%_
                   (lambda ()
                     (if (null? _%g118823118833%_)
                         (_%K118828118846%_)
                         (_%else118826118841%_)))))
              (if (pair? _%g118823118833%_)
                  (let ((_%tl118831118860%_ (##cdr _%g118823118833%_))
                        (_%hd118830118858%_ (##car _%g118823118833%_)))
                    (let ((_%hd118863%_ _%hd118830118858%_)
                          (_%rest118865%_ _%tl118831118860%_))
                      (_%K118829118855%_ _%rest118865%_ _%hd118863%_)))
                  (_%try-match118825118849%_)))))))
    (define gx#genident__%
      (lambda (_%e118799%_ _%src118800%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e118802%_ (gx#stx-e _%e118799%_)))
                   (if (interned-symbol? _%e118802%_) _%e118802%_ 'g)))
         (let ((_%$e118804%_ (gx#stx-source _%e118799%_)))
           (if _%$e118804%_ _%$e118804%_ _%src118800%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e118811%_ 'g) (_%src118813%_ '#f))
          (gx#genident__% _%e118811%_ _%src118813%_))))
    (define gx#genident__1
      (lambda (_%e118815%_)
        (let ((_%src118817%_ '#f))
          (gx#genident__% _%e118815%_ _%src118817%_))))
    (define gx#genident
      (lambda _g119282_
        (let ((_g119281_ (##length _g119282_)))
          (cond ((##fx= _g119281_ 0) (apply gx#genident__0 _g119282_))
                ((##fx= _g119281_ 1) (apply gx#genident__1 _g119282_))
                ((##fx= _g119281_ 2) (apply gx#genident__% _g119282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g119282_))))))
    (define gx#gentemps
      (lambda (_%stx-lst118796%_) (gx#stx-map1 gx#genident _%stx-lst118796%_)))
    (define gx#syntax->list
      (lambda (_%stx118794%_) (gx#stx-map1 values _%stx118794%_)))
    (define gx#stx-car
      (lambda (_%stx118791%_)
        (declare (safe))
        (car (gx#syntax-e _%stx118791%_))))
    (define gx#stx-cdr
      (lambda (_%stx118788%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx118788%_))))
    (define gx#stx-length
      (lambda (_%stx118753%_)
        (let _%lp118755%_ ((_%rest118757%_ _%stx118753%_) (_%n118758%_ '0))
          (let* ((_%g118759118767%_ (gx#stx-e _%rest118757%_))
                 (_%else118761118775%_ (lambda () _%n118758%_))
                 (_%K118763118780%_
                  (lambda (_%rest118778%_)
                    (_%lp118755%_ _%rest118778%_ (##fx+ _%n118758%_ '1)))))
            (if (pair? _%g118759118767%_)
                (let* ((_%tl118765118783%_ (##cdr _%g118759118767%_))
                       (_%rest118786%_ _%tl118765118783%_))
                  (_%K118763118780%_ _%rest118786%_))
                (_%else118761118775%_))))))
    (define gx#stx-for-each
      (lambda _g119284_
        (let ((_g119283_ (##length _g119284_)))
          (cond ((##fx= _g119283_ 2) (apply gx#stx-for-each1 _g119284_))
                ((##fx= _g119283_ 3) (apply gx#stx-for-each2 _g119284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g119284_))))))
    (define gx#stx-for-each1
      (lambda (_%f118696%_ _%stx118697%_)
        (if (procedure? _%f118696%_)
            '#!void
            (error '"expected procedure" _%f118696%_))
        (let _%lp118699%_ ((_%rest118701%_ _%stx118697%_))
          (let* ((_%g118702118712%_ (gx#syntax-e _%rest118701%_))
                 (_%else118705118720%_
                  (lambda () (_%f118696%_ _%rest118701%_))))
            (let ((_%K118708118734%_
                   (lambda (_%rest118731%_ _%hd118732%_)
                     (_%f118696%_ _%hd118732%_)
                     (_%lp118699%_ _%rest118731%_)))
                  (_%K118707118725%_ (lambda () '#!void)))
              (let ((_%try-match118704118728%_
                     (lambda ()
                       (if (null? _%g118702118712%_)
                           (_%K118707118725%_)
                           (_%else118705118720%_)))))
                (if (pair? _%g118702118712%_)
                    (let ((_%tl118710118739%_ (##cdr _%g118702118712%_))
                          (_%hd118709118737%_ (##car _%g118702118712%_)))
                      (let ((_%hd118742%_ _%hd118709118737%_)
                            (_%rest118744%_ _%tl118710118739%_))
                        (_%K118708118734%_ _%rest118744%_ _%hd118742%_)))
                    (_%try-match118704118728%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f118601%_ _%xstx118602%_ _%ystx118603%_)
        (if (procedure? _%f118601%_)
            '#!void
            (error '"expected procedure" _%f118601%_))
        (let _%lp118605%_ ((_%xrest118607%_ _%xstx118602%_)
                           (_%yrest118608%_ _%ystx118603%_))
          (let* ((_%g118609118619%_ (gx#syntax-e _%xrest118607%_))
                 (_%else118612118627%_ (lambda () '#!void)))
            (let ((_%K118615118684%_
                   (lambda (_%xrest118653%_ _%xhd118654%_)
                     (let* ((_%g118655118662%_ (gx#syntax-e _%yrest118608%_))
                            (_%E118657118666%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g118655118662%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K118658118672%_
                             (lambda (_%yrest118669%_ _%yhd118670%_)
                               (_%f118601%_ _%xhd118654%_ _%yhd118670%_)
                               (_%lp118605%_
                                _%xrest118653%_
                                _%yrest118669%_))))
                       (if (pair? _%g118655118662%_)
                           (let ((_%hd118659118675%_ (##car _%g118655118662%_))
                                 (_%tl118660118677%_
                                  (##cdr _%g118655118662%_)))
                             (let* ((_%yhd118680%_ _%hd118659118675%_)
                                    (_%yrest118682%_ _%tl118660118677%_))
                               (_%K118658118672%_
                                _%yrest118682%_
                                _%yhd118680%_)))
                           (_%E118657118666%_)))))
                  (_%K118614118647%_
                   (lambda ()
                     (let* ((_%yrest118631118636%_ _%yrest118608%_)
                            (_%E118633118640%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest118631118636%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K118634118644%_
                             (lambda ()
                               (_%f118601%_ _%xrest118607%_ _%yrest118608%_))))
                       (if (gx#stx-null? _%yrest118631118636%_)
                           (_%E118633118640%_)
                           (_%K118634118644%_))))))
              (let ((_%try-match118611118650%_
                     (lambda ()
                       (if (null? _%g118609118619%_)
                           (_%else118612118627%_)
                           (_%K118614118647%_)))))
                (if (pair? _%g118609118619%_)
                    (let ((_%tl118617118689%_ (##cdr _%g118609118619%_))
                          (_%hd118616118687%_ (##car _%g118609118619%_)))
                      (let ((_%xhd118692%_ _%hd118616118687%_)
                            (_%xrest118694%_ _%tl118617118689%_))
                        (_%K118615118684%_ _%xrest118694%_ _%xhd118692%_)))
                    (_%try-match118611118650%_))))))))
    (define gx#stx-map
      (lambda _g119286_
        (let ((_g119285_ (##length _g119286_)))
          (cond ((##fx= _g119285_ 2) (apply gx#stx-map1 _g119286_))
                ((##fx= _g119285_ 3) (apply gx#stx-map2 _g119286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g119286_))))))
    (define gx#stx-map1
      (lambda (_%f118544%_ _%stx118545%_)
        (if (procedure? _%f118544%_)
            '#!void
            (error '"expected procedure" _%f118544%_))
        (let _%recur118547%_ ((_%rest118549%_ _%stx118545%_))
          (let* ((_%g118550118560%_ (gx#syntax-e _%rest118549%_))
                 (_%else118553118568%_
                  (lambda () (_%f118544%_ _%rest118549%_))))
            (let ((_%K118556118582%_
                   (lambda (_%rest118579%_ _%hd118580%_)
                     (cons (_%f118544%_ _%hd118580%_)
                           (_%recur118547%_ _%rest118579%_))))
                  (_%K118555118573%_ (lambda () '())))
              (let ((_%try-match118552118576%_
                     (lambda ()
                       (if (null? _%g118550118560%_)
                           (_%K118555118573%_)
                           (_%else118553118568%_)))))
                (if (pair? _%g118550118560%_)
                    (let ((_%tl118558118587%_ (##cdr _%g118550118560%_))
                          (_%hd118557118585%_ (##car _%g118550118560%_)))
                      (let ((_%hd118590%_ _%hd118557118585%_)
                            (_%rest118592%_ _%tl118558118587%_))
                        (_%K118556118582%_ _%rest118592%_ _%hd118590%_)))
                    (_%try-match118552118576%_))))))))
    (define gx#stx-map2
      (lambda (_%f118449%_ _%xstx118450%_ _%ystx118451%_)
        (if (procedure? _%f118449%_)
            '#!void
            (error '"expected procedure" _%f118449%_))
        (let _%recur118453%_ ((_%xrest118455%_ _%xstx118450%_)
                              (_%yrest118456%_ _%ystx118451%_))
          (let* ((_%g118457118467%_ (gx#syntax-e _%xrest118455%_))
                 (_%else118460118475%_ (lambda () '())))
            (let ((_%K118463118532%_
                   (lambda (_%xrest118501%_ _%xhd118502%_)
                     (let* ((_%g118503118510%_ (gx#syntax-e _%yrest118456%_))
                            (_%E118505118514%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g118503118510%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K118506118520%_
                             (lambda (_%yrest118517%_ _%yhd118518%_)
                               (cons (_%f118449%_ _%xhd118502%_ _%yhd118518%_)
                                     (_%recur118453%_
                                      _%xrest118501%_
                                      _%yrest118517%_)))))
                       (if (pair? _%g118503118510%_)
                           (let ((_%hd118507118523%_ (##car _%g118503118510%_))
                                 (_%tl118508118525%_
                                  (##cdr _%g118503118510%_)))
                             (let* ((_%yhd118528%_ _%hd118507118523%_)
                                    (_%yrest118530%_ _%tl118508118525%_))
                               (_%K118506118520%_
                                _%yrest118530%_
                                _%yhd118528%_)))
                           (_%E118505118514%_)))))
                  (_%K118462118495%_
                   (lambda ()
                     (let* ((_%yrest118479118484%_ _%yrest118456%_)
                            (_%E118481118488%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest118479118484%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K118482118492%_
                             (lambda ()
                               (_%f118449%_ _%xrest118455%_ _%yrest118456%_))))
                       (if (gx#stx-null? _%yrest118479118484%_)
                           (_%E118481118488%_)
                           (_%K118482118492%_))))))
              (let ((_%try-match118459118498%_
                     (lambda ()
                       (if (null? _%g118457118467%_)
                           (_%else118460118475%_)
                           (_%K118462118495%_)))))
                (if (pair? _%g118457118467%_)
                    (let ((_%tl118465118537%_ (##cdr _%g118457118467%_))
                          (_%hd118464118535%_ (##car _%g118457118467%_)))
                      (let ((_%xhd118540%_ _%hd118464118535%_)
                            (_%xrest118542%_ _%tl118465118537%_))
                        (_%K118463118532%_ _%xrest118542%_ _%xhd118540%_)))
                    (_%try-match118459118498%_))))))))
    (define gx#stx-andmap
      (lambda (_%f118399%_ _%stx118400%_)
        (if (procedure? _%f118399%_)
            '#!void
            (error '"expected procedure" _%f118399%_))
        (let _%lp118402%_ ((_%rest118404%_ _%stx118400%_))
          (let* ((_%g118405118415%_ (gx#syntax-e _%rest118404%_))
                 (_%else118408118423%_
                  (lambda () (_%f118399%_ _%rest118404%_))))
            (let ((_%K118411118437%_
                   (lambda (_%rest118434%_ _%hd118435%_)
                     (if (_%f118399%_ _%hd118435%_)
                         (_%lp118402%_ _%rest118434%_)
                         '#f)))
                  (_%K118410118428%_ (lambda () '#t)))
              (let ((_%try-match118407118431%_
                     (lambda ()
                       (if (null? _%g118405118415%_)
                           (_%K118410118428%_)
                           (_%else118408118423%_)))))
                (if (pair? _%g118405118415%_)
                    (let ((_%tl118413118442%_ (##cdr _%g118405118415%_))
                          (_%hd118412118440%_ (##car _%g118405118415%_)))
                      (let ((_%hd118445%_ _%hd118412118440%_)
                            (_%rest118447%_ _%tl118413118442%_))
                        (_%K118411118437%_ _%rest118447%_ _%hd118445%_)))
                    (_%try-match118407118431%_))))))))
    (define gx#stx-ormap
      (lambda (_%f118346%_ _%stx118347%_)
        (if (procedure? _%f118346%_)
            '#!void
            (error '"expected procedure" _%f118346%_))
        (let _%lp118349%_ ((_%rest118351%_ _%stx118347%_))
          (let* ((_%g118352118362%_ (gx#syntax-e _%rest118351%_))
                 (_%else118355118370%_
                  (lambda () (_%f118346%_ _%rest118351%_))))
            (let ((_%K118358118387%_
                   (lambda (_%rest118381%_ _%hd118382%_)
                     (let ((_%$e118384%_ (_%f118346%_ _%hd118382%_)))
                       (if _%$e118384%_
                           _%$e118384%_
                           (_%lp118349%_ _%rest118381%_)))))
                  (_%K118357118375%_ (lambda () '#f)))
              (let ((_%try-match118354118378%_
                     (lambda ()
                       (if (null? _%g118352118362%_)
                           (_%K118357118375%_)
                           (_%else118355118370%_)))))
                (if (pair? _%g118352118362%_)
                    (let ((_%tl118360118392%_ (##cdr _%g118352118362%_))
                          (_%hd118359118390%_ (##car _%g118352118362%_)))
                      (let ((_%hd118395%_ _%hd118359118390%_)
                            (_%rest118397%_ _%tl118360118392%_))
                        (_%K118358118387%_ _%rest118397%_ _%hd118395%_)))
                    (_%try-match118354118378%_))))))))
    (define gx#stx-foldl
      (lambda (_%f118294%_ _%iv118295%_ _%stx118296%_)
        (if (procedure? _%f118294%_)
            '#!void
            (error '"expected procedure" _%f118294%_))
        (let _%lp118298%_ ((_%r118300%_ _%iv118295%_)
                           (_%rest118301%_ _%stx118296%_))
          (let* ((_%g118302118312%_ (gx#syntax-e _%rest118301%_))
                 (_%else118305118320%_
                  (lambda () (_%f118294%_ _%rest118301%_ _%r118300%_))))
            (let ((_%K118308118334%_
                   (lambda (_%rest118331%_ _%hd118332%_)
                     (_%lp118298%_
                      (_%f118294%_ _%hd118332%_ _%r118300%_)
                      _%rest118331%_)))
                  (_%K118307118325%_ (lambda () _%r118300%_)))
              (let ((_%try-match118304118328%_
                     (lambda ()
                       (if (null? _%g118302118312%_)
                           (_%K118307118325%_)
                           (_%else118305118320%_)))))
                (if (pair? _%g118302118312%_)
                    (let ((_%tl118310118339%_ (##cdr _%g118302118312%_))
                          (_%hd118309118337%_ (##car _%g118302118312%_)))
                      (let ((_%hd118342%_ _%hd118309118337%_)
                            (_%rest118344%_ _%tl118310118339%_))
                        (_%K118308118334%_ _%rest118344%_ _%hd118342%_)))
                    (_%try-match118304118328%_))))))))
    (define gx#stx-foldr
      (lambda (_%f118243%_ _%iv118244%_ _%stx118245%_)
        (if (procedure? _%f118243%_)
            '#!void
            (error '"expected procedure" _%f118243%_))
        (let _%recur118247%_ ((_%rest118249%_ _%stx118245%_))
          (let* ((_%g118250118260%_ (gx#syntax-e _%rest118249%_))
                 (_%else118253118268%_
                  (lambda () (_%f118243%_ _%rest118249%_ _%iv118244%_))))
            (let ((_%K118256118282%_
                   (lambda (_%rest118279%_ _%hd118280%_)
                     (_%f118243%_
                      _%hd118280%_
                      (_%recur118247%_ _%rest118279%_))))
                  (_%K118255118273%_ (lambda () _%iv118244%_)))
              (let ((_%try-match118252118276%_
                     (lambda ()
                       (if (null? _%g118250118260%_)
                           (_%K118255118273%_)
                           (_%else118253118268%_)))))
                (if (pair? _%g118250118260%_)
                    (let ((_%tl118258118287%_ (##cdr _%g118250118260%_))
                          (_%hd118257118285%_ (##car _%g118250118260%_)))
                      (let ((_%hd118290%_ _%hd118257118285%_)
                            (_%rest118292%_ _%tl118258118287%_))
                        (_%K118256118282%_ _%rest118292%_ _%hd118290%_)))
                    (_%try-match118252118276%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx118241%_) (gx#stx-foldl cons '() _%stx118241%_)))
    (define gx#stx-last
      (lambda (_%stx118202%_)
        (let _%lp118204%_ ((_%rest118206%_ _%stx118202%_))
          (let* ((_%g118207118215%_ (gx#syntax-e _%rest118206%_))
                 (_%else118209118223%_ (lambda () _%rest118206%_))
                 (_%K118211118229%_
                  (lambda (_%rest118226%_ _%hd118227%_)
                    (if (gx#stx-null? _%rest118226%_)
                        _%hd118227%_
                        (_%lp118204%_ _%rest118226%_)))))
            (if (pair? _%g118207118215%_)
                (let ((_%hd118212118232%_ (##car _%g118207118215%_))
                      (_%tl118213118234%_ (##cdr _%g118207118215%_)))
                  (let* ((_%hd118237%_ _%hd118212118232%_)
                         (_%rest118239%_ _%tl118213118234%_))
                    (_%K118211118229%_ _%rest118239%_ _%hd118237%_)))
                (_%else118209118223%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx118173%_)
        (let _%lp118175%_ ((_%hd118177%_ _%stx118173%_))
          (let* ((_%g118178118185%_ (gx#syntax-e _%hd118177%_))
                 (_%E118180118189%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g118178118185%_
                           '([_ . rest]))
                    '#!void))
                 (_%K118181118194%_
                  (lambda (_%rest118192%_)
                    (if (gx#stx-pair? _%rest118192%_)
                        (_%lp118175%_ _%rest118192%_)
                        _%hd118177%_))))
            (if (pair? _%g118178118185%_)
                (let* ((_%tl118183118197%_ (##cdr _%g118178118185%_))
                       (_%rest118200%_ _%tl118183118197%_))
                  (_%K118181118194%_ _%rest118200%_))
                (_%E118180118189%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx118142%_ _%k118143%_)
        (let _%lp118145%_ ((_%rest118147%_ _%stx118142%_)
                           (_%k118148%_ _%k118143%_))
          (if (fxpositive? _%k118148%_)
              (let* ((_%g118149118156%_ (gx#syntax-e _%rest118147%_))
                     (_%E118151118160%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g118149118156%_
                               '([_ . rest]))
                        '#!void))
                     (_%K118152118165%_
                      (lambda (_%rest118163%_)
                        (_%lp118145%_ _%rest118163%_ (##fx- _%k118148%_ '1)))))
                (if (pair? _%g118149118156%_)
                    (let* ((_%tl118154118168%_ (##cdr _%g118149118156%_))
                           (_%rest118171%_ _%tl118154118168%_))
                      (_%K118152118165%_ _%rest118171%_))
                    (_%E118151118160%_)))
              _%rest118147%_))))
    (define gx#stx-list-ref
      (lambda (_%stx118139%_ _%k118140%_)
        (gx#stx-car (gx#stx-list-tail _%stx118139%_ _%k118140%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx118051%_ _%key?118052%_)
        (if (procedure? _%key?118052%_)
            '#!void
            (error '"expected procedure" _%key?118052%_))
        (let _%lp118054%_ ((_%rest118056%_ _%stx118051%_))
          (let* ((_%g118057118067%_ (gx#stx-e _%rest118056%_))
                 (_%else118060118075%_ (lambda () '#f)))
            (let ((_%K118063118117%_
                   (lambda (_%rest118086%_ _%hd118087%_)
                     (if (_%key?118052%_ _%hd118087%_)
                         (let* ((_%g118088118096%_ (gx#stx-e _%rest118086%_))
                                (_%else118090118104%_ (lambda () '#f))
                                (_%K118092118109%_
                                 (lambda (_%rest118107%_)
                                   (_%lp118054%_ _%rest118107%_))))
                           (if (pair? _%g118088118096%_)
                               (let* ((_%tl118094118112%_
                                       (##cdr _%g118088118096%_))
                                      (_%rest118115%_ _%tl118094118112%_))
                                 (_%lp118054%_ _%rest118115%_))
                               (_%else118090118104%_)))
                         '#f)))
                  (_%K118062118080%_ (lambda () '#t)))
              (let ((_%try-match118059118083%_
                     (lambda ()
                       (if (null? _%g118057118067%_)
                           (_%K118062118080%_)
                           (_%else118060118075%_)))))
                (if (pair? _%g118057118067%_)
                    (let ((_%tl118065118122%_ (##cdr _%g118057118067%_))
                          (_%hd118064118120%_ (##car _%g118057118067%_)))
                      (let ((_%hd118125%_ _%hd118064118120%_)
                            (_%rest118127%_ _%tl118065118122%_))
                        (_%K118063118117%_ _%rest118127%_ _%hd118125%_)))
                    (_%try-match118059118083%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx118132%_)
        (let ((_%key?118134%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx118132%_ _%key?118134%_))))
    (define gx#stx-plist?
      (lambda _g119288_
        (let ((_g119287_ (##length _g119288_)))
          (cond ((##fx= _g119287_ 1) (apply gx#stx-plist?__0 _g119288_))
                ((##fx= _g119287_ 2) (apply gx#stx-plist?__% _g119288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g119288_))))))
    (define gx#stx-getq__%
      (lambda (_%key117969%_ _%stx117970%_ _%key=?117971%_)
        (if (procedure? _%key=?117971%_)
            '#!void
            (error '"expected procedure" _%key=?117971%_))
        (let _%lp117973%_ ((_%rest117975%_ _%stx117970%_))
          (let* ((_%g117976117984%_ (gx#syntax-e _%rest117975%_))
                 (_%else117978117992%_ (lambda () '#f))
                 (_%K117980118026%_
                  (lambda (_%rest117995%_ _%hd117996%_)
                    (let* ((_%g117997118004%_ (gx#syntax-e _%rest117995%_))
                           (_%E117999118008%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g117997118004%_
                                     '([val . rest]))
                              '#!void))
                           (_%K118000118014%_
                            (lambda (_%rest118011%_ _%val118012%_)
                              (if (_%key=?117971%_ _%hd117996%_ _%key117969%_)
                                  _%val118012%_
                                  (_%lp117973%_ _%rest118011%_)))))
                      (if (pair? _%g117997118004%_)
                          (let ((_%hd118001118017%_ (##car _%g117997118004%_))
                                (_%tl118002118019%_ (##cdr _%g117997118004%_)))
                            (let* ((_%val118022%_ _%hd118001118017%_)
                                   (_%rest118024%_ _%tl118002118019%_))
                              (_%K118000118014%_
                               _%rest118024%_
                               _%val118022%_)))
                          (_%E117999118008%_))))))
            (if (pair? _%g117976117984%_)
                (let ((_%hd117981118029%_ (##car _%g117976117984%_))
                      (_%tl117982118031%_ (##cdr _%g117976117984%_)))
                  (let* ((_%hd118034%_ _%hd117981118029%_)
                         (_%rest118036%_ _%tl117982118031%_))
                    (_%K117980118026%_ _%rest118036%_ _%hd118034%_)))
                (_%else117978117992%_))))))
    (define gx#stx-getq__0
      (lambda (_%key118041%_ _%stx118042%_)
        (let ((_%key=?118044%_ gx#stx-eq?))
          (gx#stx-getq__% _%key118041%_ _%stx118042%_ _%key=?118044%_))))
    (define gx#stx-getq
      (lambda _g119290_
        (let ((_g119289_ (##length _g119290_)))
          (cond ((##fx= _g119289_ 2) (apply gx#stx-getq__0 _g119290_))
                ((##fx= _g119289_ 3) (apply gx#stx-getq__% _g119290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g119290_))))))))
