(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1734131746)
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
      (lambda _%$args118311%_
        (apply make-instance gx#identifier-wrap::t _%$args118311%_)))
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
      (lambda _%$args118308%_
        (apply make-instance gx#syntax-wrap::t _%$args118308%_)))
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
      (lambda _%$args118305%_
        (apply make-instance gx#syntax-quote::t _%$args118305%_)))
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
      (lambda (_%stx118303%_) (symbol? (gx#stx-e _%stx118303%_))))
    (define gx#identifier-quote?
      (lambda (_%stx118301%_)
        (if (##structure-direct-instance-of? _%stx118301%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx118301%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx118296%_)
        (if (##structure-direct-instance-of? _%stx118296%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx118296%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx118296%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx118291%_)
        (if (##structure-direct-instance-of? _%stx118291%_ 'gx#syntax-quote::t)
            _%stx118291%_
            (if (##structure-direct-instance-of?
                 _%stx118291%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx118291%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx118265%_)
        (if (##structure-direct-instance-of? _%stx118265%_ 'gx#syntax-wrap::t)
            (let _%lp118268%_ ((_%e118270%_
                                (##unchecked-structure-ref
                                 _%stx118265%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks118271%_
                                (cons (##unchecked-structure-ref
                                       _%stx118265%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e118270%_)
                  (let ((_%$e118274%_
                         (##type-id (##structure-type _%e118270%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e118274%_)
                        (_%lp118268%_
                         (##unchecked-structure-ref _%e118270%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e118270%_ '3 '#f '#f)
                          _%marks118271%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e118274%_)
                                (eq? 'gx#identifier-wrap::t _%$e118274%_))
                            (##unchecked-structure-ref _%e118270%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e118274%_)
                                (_%lp118268%_
                                 (##unchecked-structure-ref
                                  _%e118270%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks118271%_)
                                _%e118270%_))))
                  (if (null? _%marks118271%_)
                      _%e118270%_
                      (if (pair? _%e118270%_)
                          (cons (gx#stx-wrap
                                 (##car _%e118270%_)
                                 _%marks118271%_)
                                (gx#stx-wrap
                                 (##cdr _%e118270%_)
                                 _%marks118271%_))
                          (if (vector? _%e118270%_)
                              (vector-map
                               (lambda (_%g118282118284%_)
                                 (gx#stx-wrap
                                  _%g118282118284%_
                                  _%marks118271%_))
                               _%e118270%_)
                              (if (box? _%e118270%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e118270%_)
                                        _%marks118271%_))
                                  _%e118270%_))))))
            (if (##structure-instance-of? _%stx118265%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx118265%_ '1 '#f '#f)
                _%stx118265%_))))
    (define gx#syntax->datum
      (lambda (_%stx118258%_)
        (if (##structure-instance-of? _%stx118258%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx118258%_ '1 '#f '#f))
            (if (pair? _%stx118258%_)
                (cons (gx#syntax->datum (##car _%stx118258%_))
                      (gx#syntax->datum (##cdr _%stx118258%_)))
                (if (vector? _%stx118258%_)
                    (vector-map gx#syntax->datum _%stx118258%_)
                    (if (box? _%stx118258%_)
                        (box (gx#syntax->datum (unbox _%stx118258%_)))
                        _%stx118258%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx118192%_ _%datum118193%_ _%src118194%_ _%quote?118195%_)
        (letrec ((_%wrap-datum118197%_
                  (lambda (_%e118230%_ _%marks118231%_)
                    (_%wrap-inner118199%_
                     _%e118230%_
                     (lambda (_%g118232118234%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g118232118234%_
                        _%src118194%_
                        _%marks118231%_)))))
                 (_%wrap-quote118198%_
                  (lambda (_%e118222%_ _%ctx118223%_ _%marks118224%_)
                    (_%wrap-inner118199%_
                     _%e118222%_
                     (lambda (_%g118225118227%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g118225118227%_
                        _%src118194%_
                        _%ctx118223%_
                        _%marks118224%_)))))
                 (_%wrap-inner118199%_
                  (lambda (_%e118210%_ _%wrap-e118211%_)
                    (let _%recur118213%_ ((_%e118215%_ _%e118210%_))
                      (if (symbol? _%e118215%_)
                          (_%wrap-e118211%_ _%e118215%_)
                          (if (pair? _%e118215%_)
                              (cons (_%recur118213%_ (##car _%e118215%_))
                                    (_%recur118213%_ (##cdr _%e118215%_)))
                              (if (vector? _%e118215%_)
                                  (vector-map _%recur118213%_ _%e118215%_)
                                  (if (box? _%e118215%_)
                                      (box (_%recur118213%_
                                            (unbox _%e118215%_)))
                                      _%e118215%_)))))))
                 (_%wrap-outer118200%_
                  (lambda (_%e118208%_)
                    (if (##structure-instance-of? _%e118208%_ 'gerbil#AST::t)
                        _%e118208%_
                        (##structure gx#AST::t _%e118208%_ _%src118194%_)))))
          (if (##structure-instance-of? _%datum118193%_ 'gerbil#AST::t)
              _%datum118193%_
              (if (not _%stx118192%_)
                  (##structure gx#AST::t _%datum118193%_ _%src118194%_)
                  (if (gx#identifier? _%stx118192%_)
                      (let ((_%stx118205%_ (gx#stx-unwrap__0 _%stx118192%_)))
                        (_%wrap-outer118200%_
                         (if (##structure-direct-instance-of?
                              _%stx118205%_
                              'gx#syntax-quote::t)
                             (if _%quote?118195%_
                                 (_%wrap-quote118198%_
                                  _%datum118193%_
                                  (##unchecked-structure-ref
                                   _%stx118205%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx118205%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum118197%_
                                  _%datum118193%_
                                  (##unchecked-structure-ref
                                   _%stx118205%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum118197%_
                              _%datum118193%_
                              (##unchecked-structure-ref
                               _%stx118205%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx118192%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx118240%_ _%datum118241%_)
        (let* ((_%src118243%_ '#f) (_%quote?118245%_ '#t))
          (gx#datum->syntax__%
           _%stx118240%_
           _%datum118241%_
           _%src118243%_
           _%quote?118245%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx118247%_ _%datum118248%_ _%src118249%_)
        (let ((_%quote?118251%_ '#t))
          (gx#datum->syntax__%
           _%stx118247%_
           _%datum118248%_
           _%src118249%_
           _%quote?118251%_))))
    (define gx#datum->syntax
      (lambda _g118392_
        (let ((_g118391_ (##length _g118392_)))
          (cond ((##fx= _g118391_ 2) (apply gx#datum->syntax__0 _g118392_))
                ((##fx= _g118391_ 3) (apply gx#datum->syntax__1 _g118392_))
                ((##fx= _g118391_ 4) (apply gx#datum->syntax__% _g118392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g118392_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx118158%_ _%marks118159%_)
        (let _%lp118161%_ ((_%e118163%_ _%stx118158%_)
                           (_%marks118164%_ _%marks118159%_)
                           (_%src118165%_ (gx#stx-source _%stx118158%_)))
          (if (##structure-direct-instance-of? _%e118163%_ 'gx#syntax-wrap::t)
              (_%lp118161%_
               (##unchecked-structure-ref _%e118163%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e118163%_ '3 '#f '#f)
                _%marks118164%_)
               (##unchecked-structure-ref _%e118163%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e118163%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks118164%_)
                      _%e118163%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e118163%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e118163%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e118163%_ '3 '#f '#f)
                        _%marks118164%_)))
                  (if (##structure-direct-instance-of?
                       _%e118163%_
                       'gx#syntax-quote::t)
                      _%e118163%_
                      (if (##structure-instance-of? _%e118163%_ 'gerbil#AST::t)
                          (_%lp118161%_
                           (##unchecked-structure-ref _%e118163%_ '1 '#f '#f)
                           _%marks118164%_
                           (##unchecked-structure-ref _%e118163%_ '2 '#f '#f))
                          (if (symbol? _%e118163%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e118163%_
                               _%src118165%_
                               (reverse _%marks118164%_))
                              (if (null? _%marks118164%_)
                                  _%e118163%_
                                  (if (pair? _%e118163%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e118163%_)
                                             _%marks118164%_)
                                            (gx#stx-wrap
                                             (##cdr _%e118163%_)
                                             _%marks118164%_))
                                      (if (vector? _%e118163%_)
                                          (vector-map
                                           (lambda (_%g118174118176%_)
                                             (gx#stx-wrap
                                              _%g118174118176%_
                                              _%marks118164%_))
                                           _%e118163%_)
                                          (if (box? _%e118163%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e118163%_)
                                                    _%marks118164%_))
                                              _%e118163%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx118184%_)
        (let ((_%marks118186%_ '()))
          (gx#stx-unwrap__% _%stx118184%_ _%marks118186%_))))
    (define gx#stx-unwrap
      (lambda _g118394_
        (let ((_g118393_ (##length _g118394_)))
          (cond ((##fx= _g118393_ 1) (apply gx#stx-unwrap__0 _g118394_))
                ((##fx= _g118393_ 2) (apply gx#stx-unwrap__% _g118394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g118394_))))))
    (define gx#stx-wrap
      (lambda (_%stx118151%_ _%marks118152%_)
        (__foldl1
         (lambda (_%mark118154%_ _%stx118155%_)
           (gx#stx-apply-mark _%stx118155%_ _%mark118154%_))
         _%stx118151%_
         _%marks118152%_)))
    (define gx#stx-rewrap
      (lambda (_%stx118145%_ _%marks118146%_)
        (__foldr1
         (lambda (_%mark118148%_ _%stx118149%_)
           (gx#stx-apply-mark _%stx118149%_ _%mark118148%_))
         _%stx118145%_
         _%marks118146%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx118139%_ _%mark118140%_)
        (if (##structure-direct-instance-of? _%stx118139%_ 'gx#syntax-quote::t)
            _%stx118139%_
            (if (and (##structure-direct-instance-of?
                      _%stx118139%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark118140%_
                          (##unchecked-structure-ref
                           _%stx118139%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx118139%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx118139%_
                 (gx#stx-source _%stx118139%_)
                 _%mark118140%_)))))
    (define gx#apply-mark
      (lambda (_%mark118103%_ _%marks118104%_)
        (let* ((_%marks118105118113%_ _%marks118104%_)
               (_%else118107118121%_
                (lambda () (cons _%mark118103%_ _%marks118104%_)))
               (_%K118109118127%_
                (lambda (_%rest118124%_ _%hd118125%_)
                  (if (eq? _%mark118103%_ _%hd118125%_)
                      _%rest118124%_
                      (cons _%mark118103%_ _%marks118104%_)))))
          (if (pair? _%marks118105118113%_)
              (let ((_%hd118110118130%_ (##car _%marks118105118113%_))
                    (_%tl118111118132%_ (##cdr _%marks118105118113%_)))
                (let* ((_%hd118135%_ _%hd118110118130%_)
                       (_%rest118137%_ _%tl118111118132%_))
                  (_%K118109118127%_ _%rest118137%_ _%hd118135%_)))
              (_%else118107118121%_)))))
    (define gx#stx-e
      (lambda (_%stx118098%_)
        (if (##structure-direct-instance-of? _%stx118098%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx118098%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx118098%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx118098%_ '1 '#f '#f)
                _%stx118098%_))))
    (define gx#stx-source
      (lambda (_%stx118096%_)
        (if (##structure-instance-of? _%stx118096%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx118096%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx118090%_ _%src118091%_)
        (if (or (##structure-instance-of? _%stx118090%_ 'gerbil#AST::t)
                (not _%src118091%_))
            _%stx118090%_
            (##structure gx#AST::t _%stx118090%_ _%src118091%_))))
    (define gx#stx-datum?
      (lambda (_%stx118088%_) (gx#self-quoting? (gx#stx-e _%stx118088%_))))
    (define gx#self-quoting?
      (lambda (_%x118071%_)
        (let ((_%$e118073%_ (immediate? _%x118071%_)))
          (if _%$e118073%_
              _%$e118073%_
              (let ((_%$e118076%_ (number? _%x118071%_)))
                (if _%$e118076%_
                    _%$e118076%_
                    (let ((_%$e118079%_ (keyword? _%x118071%_)))
                      (if _%$e118079%_
                          _%$e118079%_
                          (let ((_%$e118082%_ (string? _%x118071%_)))
                            (if _%$e118082%_
                                _%$e118082%_
                                (let ((_%$e118085%_ (vector? _%x118071%_)))
                                  (if _%$e118085%_
                                      _%$e118085%_
                                      (u8vector? _%x118071%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e118069%_) (boolean? (gx#stx-e _%e118069%_))))
    (define gx#stx-keyword?
      (lambda (_%e118067%_) (keyword? (gx#stx-e _%e118067%_))))
    (define gx#stx-char? (lambda (_%e118065%_) (char? (gx#stx-e _%e118065%_))))
    (define gx#stx-number?
      (lambda (_%e118063%_) (number? (gx#stx-e _%e118063%_))))
    (define gx#stx-fixnum?
      (lambda (_%e118061%_) (fixnum? (gx#stx-e _%e118061%_))))
    (define gx#stx-string?
      (lambda (_%e118059%_) (string? (gx#stx-e _%e118059%_))))
    (define gx#stx-null? (lambda (_%e118057%_) (null? (gx#stx-e _%e118057%_))))
    (define gx#stx-pair? (lambda (_%e118055%_) (pair? (gx#stx-e _%e118055%_))))
    (define gx#stx-list?
      (lambda (_%e118017%_)
        (let* ((_%g118018118027%_ (gx#stx-e _%e118017%_))
               (_%E118021118031%_
                (lambda ()
                  (error '"No clause matching"
                         _%g118018118027%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K118023118047%_
                 (lambda (_%rest118045%_) (gx#stx-list? _%rest118045%_)))
                (_%K118022118037%_
                 (lambda (_%tail118035%_) (null? _%tail118035%_))))
            (if (pair? _%g118018118027%_)
                (let* ((_%tl118025118050%_ (##cdr _%g118018118027%_))
                       (_%rest118053%_ _%tl118025118050%_))
                  (gx#stx-list? _%rest118053%_))
                (let ((_%tail118040%_ _%g118018118027%_))
                  (null? _%tail118040%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e118010%_)
        (let* ((_%e118012%_ (gx#stx-e _%e118010%_))
               (_%$e118014%_ (pair? _%e118012%_)))
          (if _%$e118014%_ _%$e118014%_ (null? _%e118012%_)))))
    (define gx#stx-vector?
      (lambda (_%e118008%_) (vector? (gx#stx-e _%e118008%_))))
    (define gx#stx-box? (lambda (_%e118006%_) (box? (gx#stx-e _%e118006%_))))
    (define gx#stx-eq?
      (lambda (_%x118003%_ _%y118004%_)
        (eq? (gx#stx-e _%x118003%_) (gx#stx-e _%y118004%_))))
    (define gx#stx-eqv?
      (lambda (_%x118000%_ _%y118001%_)
        (eqv? (gx#stx-e _%x118000%_) (gx#stx-e _%y118001%_))))
    (define gx#stx-equal?
      (lambda (_%x117997%_ _%y117998%_)
        (equal? (gx#stx-e _%x117997%_) (gx#stx-e _%y117998%_))))
    (define gx#stx-false? (lambda (_%x117995%_) (not (gx#stx-e _%x117995%_))))
    (define gx#stx-identifier
      (lambda (_%template117992%_ . _%args117993%_)
        (gx#datum->syntax__1
         _%template117992%_
         (apply make-symbol (gx#syntax->datum _%args117993%_))
         (gx#stx-source _%template117992%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx117990%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx117990%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx117985%_)
        (if (##structure-direct-instance-of?
             _%stx117985%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx117985%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx117985%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx117985%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx117985%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx117981%_)
        (let ((_%stx117983%_ (gx#stx-unwrap__0 _%stx117981%_)))
          (if (gx#identifier-quote? _%stx117983%_)
              (##unchecked-structure-ref _%stx117983%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx117936%_)
        (let* ((_%g117937117947%_ (gx#stx-e _%stx117936%_))
               (_%else117940117955%_ (lambda () '#f)))
          (let ((_%K117943117969%_
                 (lambda (_%rest117966%_ _%hd117967%_)
                   (if (gx#identifier? _%hd117967%_)
                       (gx#identifier-list? _%rest117966%_)
                       '#f)))
                (_%K117942117960%_ (lambda () '#t)))
            (let ((_%try-match117939117963%_
                   (lambda ()
                     (if (null? _%g117937117947%_)
                         (_%K117942117960%_)
                         (_%else117940117955%_)))))
              (if (pair? _%g117937117947%_)
                  (let ((_%tl117945117974%_ (##cdr _%g117937117947%_))
                        (_%hd117944117972%_ (##car _%g117937117947%_)))
                    (let ((_%hd117977%_ _%hd117944117972%_)
                          (_%rest117979%_ _%tl117945117974%_))
                      (_%K117943117969%_ _%rest117979%_ _%hd117977%_)))
                  (_%try-match117939117963%_)))))))
    (define gx#genident__%
      (lambda (_%e117913%_ _%src117914%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e117916%_ (gx#stx-e _%e117913%_)))
                   (if (interned-symbol? _%e117916%_) _%e117916%_ 'g)))
         (let ((_%$e117918%_ (gx#stx-source _%e117913%_)))
           (if _%$e117918%_ _%$e117918%_ _%src117914%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e117925%_ 'g) (_%src117927%_ '#f))
          (gx#genident__% _%e117925%_ _%src117927%_))))
    (define gx#genident__1
      (lambda (_%e117929%_)
        (let ((_%src117931%_ '#f))
          (gx#genident__% _%e117929%_ _%src117931%_))))
    (define gx#genident
      (lambda _g118396_
        (let ((_g118395_ (##length _g118396_)))
          (cond ((##fx= _g118395_ 0) (apply gx#genident__0 _g118396_))
                ((##fx= _g118395_ 1) (apply gx#genident__1 _g118396_))
                ((##fx= _g118395_ 2) (apply gx#genident__% _g118396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g118396_))))))
    (define gx#gentemps
      (lambda (_%stx-lst117910%_) (gx#stx-map1 gx#genident _%stx-lst117910%_)))
    (define gx#syntax->list
      (lambda (_%stx117908%_) (gx#stx-map1 values _%stx117908%_)))
    (define gx#stx-car
      (lambda (_%stx117905%_)
        (declare (safe))
        (car (gx#syntax-e _%stx117905%_))))
    (define gx#stx-cdr
      (lambda (_%stx117902%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx117902%_))))
    (define gx#stx-length
      (lambda (_%stx117867%_)
        (let _%lp117869%_ ((_%rest117871%_ _%stx117867%_) (_%n117872%_ '0))
          (let* ((_%g117873117881%_ (gx#stx-e _%rest117871%_))
                 (_%else117875117889%_ (lambda () _%n117872%_))
                 (_%K117877117894%_
                  (lambda (_%rest117892%_)
                    (_%lp117869%_ _%rest117892%_ (##fx+ _%n117872%_ '1)))))
            (if (pair? _%g117873117881%_)
                (let* ((_%tl117879117897%_ (##cdr _%g117873117881%_))
                       (_%rest117900%_ _%tl117879117897%_))
                  (_%K117877117894%_ _%rest117900%_))
                (_%else117875117889%_))))))
    (define gx#stx-for-each
      (lambda _g118398_
        (let ((_g118397_ (##length _g118398_)))
          (cond ((##fx= _g118397_ 2) (apply gx#stx-for-each1 _g118398_))
                ((##fx= _g118397_ 3) (apply gx#stx-for-each2 _g118398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g118398_))))))
    (define gx#stx-for-each1
      (lambda (_%f117810%_ _%stx117811%_)
        (if (procedure? _%f117810%_)
            '#!void
            (error '"expected procedure" _%f117810%_))
        (let _%lp117813%_ ((_%rest117815%_ _%stx117811%_))
          (let* ((_%g117816117826%_ (gx#syntax-e _%rest117815%_))
                 (_%else117819117834%_
                  (lambda () (_%f117810%_ _%rest117815%_))))
            (let ((_%K117822117848%_
                   (lambda (_%rest117845%_ _%hd117846%_)
                     (_%f117810%_ _%hd117846%_)
                     (_%lp117813%_ _%rest117845%_)))
                  (_%K117821117839%_ (lambda () '#!void)))
              (let ((_%try-match117818117842%_
                     (lambda ()
                       (if (null? _%g117816117826%_)
                           (_%K117821117839%_)
                           (_%else117819117834%_)))))
                (if (pair? _%g117816117826%_)
                    (let ((_%tl117824117853%_ (##cdr _%g117816117826%_))
                          (_%hd117823117851%_ (##car _%g117816117826%_)))
                      (let ((_%hd117856%_ _%hd117823117851%_)
                            (_%rest117858%_ _%tl117824117853%_))
                        (_%K117822117848%_ _%rest117858%_ _%hd117856%_)))
                    (_%try-match117818117842%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f117715%_ _%xstx117716%_ _%ystx117717%_)
        (if (procedure? _%f117715%_)
            '#!void
            (error '"expected procedure" _%f117715%_))
        (let _%lp117719%_ ((_%xrest117721%_ _%xstx117716%_)
                           (_%yrest117722%_ _%ystx117717%_))
          (let* ((_%g117723117733%_ (gx#syntax-e _%xrest117721%_))
                 (_%else117726117741%_ (lambda () '#!void)))
            (let ((_%K117729117798%_
                   (lambda (_%xrest117767%_ _%xhd117768%_)
                     (let* ((_%g117769117776%_ (gx#syntax-e _%yrest117722%_))
                            (_%E117771117780%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g117769117776%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K117772117786%_
                             (lambda (_%yrest117783%_ _%yhd117784%_)
                               (_%f117715%_ _%xhd117768%_ _%yhd117784%_)
                               (_%lp117719%_
                                _%xrest117767%_
                                _%yrest117783%_))))
                       (if (pair? _%g117769117776%_)
                           (let ((_%hd117773117789%_ (##car _%g117769117776%_))
                                 (_%tl117774117791%_
                                  (##cdr _%g117769117776%_)))
                             (let* ((_%yhd117794%_ _%hd117773117789%_)
                                    (_%yrest117796%_ _%tl117774117791%_))
                               (_%K117772117786%_
                                _%yrest117796%_
                                _%yhd117794%_)))
                           (_%E117771117780%_)))))
                  (_%K117728117761%_
                   (lambda ()
                     (let* ((_%yrest117745117750%_ _%yrest117722%_)
                            (_%E117747117754%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest117745117750%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K117748117758%_
                             (lambda ()
                               (_%f117715%_ _%xrest117721%_ _%yrest117722%_))))
                       (if (gx#stx-null? _%yrest117745117750%_)
                           (_%E117747117754%_)
                           (_%K117748117758%_))))))
              (let ((_%try-match117725117764%_
                     (lambda ()
                       (if (null? _%g117723117733%_)
                           (_%else117726117741%_)
                           (_%K117728117761%_)))))
                (if (pair? _%g117723117733%_)
                    (let ((_%tl117731117803%_ (##cdr _%g117723117733%_))
                          (_%hd117730117801%_ (##car _%g117723117733%_)))
                      (let ((_%xhd117806%_ _%hd117730117801%_)
                            (_%xrest117808%_ _%tl117731117803%_))
                        (_%K117729117798%_ _%xrest117808%_ _%xhd117806%_)))
                    (_%try-match117725117764%_))))))))
    (define gx#stx-map
      (lambda _g118400_
        (let ((_g118399_ (##length _g118400_)))
          (cond ((##fx= _g118399_ 2) (apply gx#stx-map1 _g118400_))
                ((##fx= _g118399_ 3) (apply gx#stx-map2 _g118400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g118400_))))))
    (define gx#stx-map1
      (lambda (_%f117658%_ _%stx117659%_)
        (if (procedure? _%f117658%_)
            '#!void
            (error '"expected procedure" _%f117658%_))
        (let _%recur117661%_ ((_%rest117663%_ _%stx117659%_))
          (let* ((_%g117664117674%_ (gx#syntax-e _%rest117663%_))
                 (_%else117667117682%_
                  (lambda () (_%f117658%_ _%rest117663%_))))
            (let ((_%K117670117696%_
                   (lambda (_%rest117693%_ _%hd117694%_)
                     (cons (_%f117658%_ _%hd117694%_)
                           (_%recur117661%_ _%rest117693%_))))
                  (_%K117669117687%_ (lambda () '())))
              (let ((_%try-match117666117690%_
                     (lambda ()
                       (if (null? _%g117664117674%_)
                           (_%K117669117687%_)
                           (_%else117667117682%_)))))
                (if (pair? _%g117664117674%_)
                    (let ((_%tl117672117701%_ (##cdr _%g117664117674%_))
                          (_%hd117671117699%_ (##car _%g117664117674%_)))
                      (let ((_%hd117704%_ _%hd117671117699%_)
                            (_%rest117706%_ _%tl117672117701%_))
                        (_%K117670117696%_ _%rest117706%_ _%hd117704%_)))
                    (_%try-match117666117690%_))))))))
    (define gx#stx-map2
      (lambda (_%f117563%_ _%xstx117564%_ _%ystx117565%_)
        (if (procedure? _%f117563%_)
            '#!void
            (error '"expected procedure" _%f117563%_))
        (let _%recur117567%_ ((_%xrest117569%_ _%xstx117564%_)
                              (_%yrest117570%_ _%ystx117565%_))
          (let* ((_%g117571117581%_ (gx#syntax-e _%xrest117569%_))
                 (_%else117574117589%_ (lambda () '())))
            (let ((_%K117577117646%_
                   (lambda (_%xrest117615%_ _%xhd117616%_)
                     (let* ((_%g117617117624%_ (gx#syntax-e _%yrest117570%_))
                            (_%E117619117628%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g117617117624%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K117620117634%_
                             (lambda (_%yrest117631%_ _%yhd117632%_)
                               (cons (_%f117563%_ _%xhd117616%_ _%yhd117632%_)
                                     (_%recur117567%_
                                      _%xrest117615%_
                                      _%yrest117631%_)))))
                       (if (pair? _%g117617117624%_)
                           (let ((_%hd117621117637%_ (##car _%g117617117624%_))
                                 (_%tl117622117639%_
                                  (##cdr _%g117617117624%_)))
                             (let* ((_%yhd117642%_ _%hd117621117637%_)
                                    (_%yrest117644%_ _%tl117622117639%_))
                               (_%K117620117634%_
                                _%yrest117644%_
                                _%yhd117642%_)))
                           (_%E117619117628%_)))))
                  (_%K117576117609%_
                   (lambda ()
                     (let* ((_%yrest117593117598%_ _%yrest117570%_)
                            (_%E117595117602%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest117593117598%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K117596117606%_
                             (lambda ()
                               (_%f117563%_ _%xrest117569%_ _%yrest117570%_))))
                       (if (gx#stx-null? _%yrest117593117598%_)
                           (_%E117595117602%_)
                           (_%K117596117606%_))))))
              (let ((_%try-match117573117612%_
                     (lambda ()
                       (if (null? _%g117571117581%_)
                           (_%else117574117589%_)
                           (_%K117576117609%_)))))
                (if (pair? _%g117571117581%_)
                    (let ((_%tl117579117651%_ (##cdr _%g117571117581%_))
                          (_%hd117578117649%_ (##car _%g117571117581%_)))
                      (let ((_%xhd117654%_ _%hd117578117649%_)
                            (_%xrest117656%_ _%tl117579117651%_))
                        (_%K117577117646%_ _%xrest117656%_ _%xhd117654%_)))
                    (_%try-match117573117612%_))))))))
    (define gx#stx-andmap
      (lambda (_%f117513%_ _%stx117514%_)
        (if (procedure? _%f117513%_)
            '#!void
            (error '"expected procedure" _%f117513%_))
        (let _%lp117516%_ ((_%rest117518%_ _%stx117514%_))
          (let* ((_%g117519117529%_ (gx#syntax-e _%rest117518%_))
                 (_%else117522117537%_
                  (lambda () (_%f117513%_ _%rest117518%_))))
            (let ((_%K117525117551%_
                   (lambda (_%rest117548%_ _%hd117549%_)
                     (if (_%f117513%_ _%hd117549%_)
                         (_%lp117516%_ _%rest117548%_)
                         '#f)))
                  (_%K117524117542%_ (lambda () '#t)))
              (let ((_%try-match117521117545%_
                     (lambda ()
                       (if (null? _%g117519117529%_)
                           (_%K117524117542%_)
                           (_%else117522117537%_)))))
                (if (pair? _%g117519117529%_)
                    (let ((_%tl117527117556%_ (##cdr _%g117519117529%_))
                          (_%hd117526117554%_ (##car _%g117519117529%_)))
                      (let ((_%hd117559%_ _%hd117526117554%_)
                            (_%rest117561%_ _%tl117527117556%_))
                        (_%K117525117551%_ _%rest117561%_ _%hd117559%_)))
                    (_%try-match117521117545%_))))))))
    (define gx#stx-ormap
      (lambda (_%f117460%_ _%stx117461%_)
        (if (procedure? _%f117460%_)
            '#!void
            (error '"expected procedure" _%f117460%_))
        (let _%lp117463%_ ((_%rest117465%_ _%stx117461%_))
          (let* ((_%g117466117476%_ (gx#syntax-e _%rest117465%_))
                 (_%else117469117484%_
                  (lambda () (_%f117460%_ _%rest117465%_))))
            (let ((_%K117472117501%_
                   (lambda (_%rest117495%_ _%hd117496%_)
                     (let ((_%$e117498%_ (_%f117460%_ _%hd117496%_)))
                       (if _%$e117498%_
                           _%$e117498%_
                           (_%lp117463%_ _%rest117495%_)))))
                  (_%K117471117489%_ (lambda () '#f)))
              (let ((_%try-match117468117492%_
                     (lambda ()
                       (if (null? _%g117466117476%_)
                           (_%K117471117489%_)
                           (_%else117469117484%_)))))
                (if (pair? _%g117466117476%_)
                    (let ((_%tl117474117506%_ (##cdr _%g117466117476%_))
                          (_%hd117473117504%_ (##car _%g117466117476%_)))
                      (let ((_%hd117509%_ _%hd117473117504%_)
                            (_%rest117511%_ _%tl117474117506%_))
                        (_%K117472117501%_ _%rest117511%_ _%hd117509%_)))
                    (_%try-match117468117492%_))))))))
    (define gx#stx-foldl
      (lambda (_%f117408%_ _%iv117409%_ _%stx117410%_)
        (if (procedure? _%f117408%_)
            '#!void
            (error '"expected procedure" _%f117408%_))
        (let _%lp117412%_ ((_%r117414%_ _%iv117409%_)
                           (_%rest117415%_ _%stx117410%_))
          (let* ((_%g117416117426%_ (gx#syntax-e _%rest117415%_))
                 (_%else117419117434%_
                  (lambda () (_%f117408%_ _%rest117415%_ _%r117414%_))))
            (let ((_%K117422117448%_
                   (lambda (_%rest117445%_ _%hd117446%_)
                     (_%lp117412%_
                      (_%f117408%_ _%hd117446%_ _%r117414%_)
                      _%rest117445%_)))
                  (_%K117421117439%_ (lambda () _%r117414%_)))
              (let ((_%try-match117418117442%_
                     (lambda ()
                       (if (null? _%g117416117426%_)
                           (_%K117421117439%_)
                           (_%else117419117434%_)))))
                (if (pair? _%g117416117426%_)
                    (let ((_%tl117424117453%_ (##cdr _%g117416117426%_))
                          (_%hd117423117451%_ (##car _%g117416117426%_)))
                      (let ((_%hd117456%_ _%hd117423117451%_)
                            (_%rest117458%_ _%tl117424117453%_))
                        (_%K117422117448%_ _%rest117458%_ _%hd117456%_)))
                    (_%try-match117418117442%_))))))))
    (define gx#stx-foldr
      (lambda (_%f117357%_ _%iv117358%_ _%stx117359%_)
        (if (procedure? _%f117357%_)
            '#!void
            (error '"expected procedure" _%f117357%_))
        (let _%recur117361%_ ((_%rest117363%_ _%stx117359%_))
          (let* ((_%g117364117374%_ (gx#syntax-e _%rest117363%_))
                 (_%else117367117382%_
                  (lambda () (_%f117357%_ _%rest117363%_ _%iv117358%_))))
            (let ((_%K117370117396%_
                   (lambda (_%rest117393%_ _%hd117394%_)
                     (_%f117357%_
                      _%hd117394%_
                      (_%recur117361%_ _%rest117393%_))))
                  (_%K117369117387%_ (lambda () _%iv117358%_)))
              (let ((_%try-match117366117390%_
                     (lambda ()
                       (if (null? _%g117364117374%_)
                           (_%K117369117387%_)
                           (_%else117367117382%_)))))
                (if (pair? _%g117364117374%_)
                    (let ((_%tl117372117401%_ (##cdr _%g117364117374%_))
                          (_%hd117371117399%_ (##car _%g117364117374%_)))
                      (let ((_%hd117404%_ _%hd117371117399%_)
                            (_%rest117406%_ _%tl117372117401%_))
                        (_%K117370117396%_ _%rest117406%_ _%hd117404%_)))
                    (_%try-match117366117390%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx117355%_) (gx#stx-foldl cons '() _%stx117355%_)))
    (define gx#stx-last
      (lambda (_%stx117316%_)
        (let _%lp117318%_ ((_%rest117320%_ _%stx117316%_))
          (let* ((_%g117321117329%_ (gx#syntax-e _%rest117320%_))
                 (_%else117323117337%_ (lambda () _%rest117320%_))
                 (_%K117325117343%_
                  (lambda (_%rest117340%_ _%hd117341%_)
                    (if (gx#stx-null? _%rest117340%_)
                        _%hd117341%_
                        (_%lp117318%_ _%rest117340%_)))))
            (if (pair? _%g117321117329%_)
                (let ((_%hd117326117346%_ (##car _%g117321117329%_))
                      (_%tl117327117348%_ (##cdr _%g117321117329%_)))
                  (let* ((_%hd117351%_ _%hd117326117346%_)
                         (_%rest117353%_ _%tl117327117348%_))
                    (_%K117325117343%_ _%rest117353%_ _%hd117351%_)))
                (_%else117323117337%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx117287%_)
        (let _%lp117289%_ ((_%hd117291%_ _%stx117287%_))
          (let* ((_%g117292117299%_ (gx#syntax-e _%hd117291%_))
                 (_%E117294117303%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g117292117299%_
                           '([_ . rest]))
                    '#!void))
                 (_%K117295117308%_
                  (lambda (_%rest117306%_)
                    (if (gx#stx-pair? _%rest117306%_)
                        (_%lp117289%_ _%rest117306%_)
                        _%hd117291%_))))
            (if (pair? _%g117292117299%_)
                (let* ((_%tl117297117311%_ (##cdr _%g117292117299%_))
                       (_%rest117314%_ _%tl117297117311%_))
                  (_%K117295117308%_ _%rest117314%_))
                (_%E117294117303%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx117256%_ _%k117257%_)
        (let _%lp117259%_ ((_%rest117261%_ _%stx117256%_)
                           (_%k117262%_ _%k117257%_))
          (if (fxpositive? _%k117262%_)
              (let* ((_%g117263117270%_ (gx#syntax-e _%rest117261%_))
                     (_%E117265117274%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g117263117270%_
                               '([_ . rest]))
                        '#!void))
                     (_%K117266117279%_
                      (lambda (_%rest117277%_)
                        (_%lp117259%_ _%rest117277%_ (##fx- _%k117262%_ '1)))))
                (if (pair? _%g117263117270%_)
                    (let* ((_%tl117268117282%_ (##cdr _%g117263117270%_))
                           (_%rest117285%_ _%tl117268117282%_))
                      (_%K117266117279%_ _%rest117285%_))
                    (_%E117265117274%_)))
              _%rest117261%_))))
    (define gx#stx-list-ref
      (lambda (_%stx117253%_ _%k117254%_)
        (gx#stx-car (gx#stx-list-tail _%stx117253%_ _%k117254%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx117165%_ _%key?117166%_)
        (if (procedure? _%key?117166%_)
            '#!void
            (error '"expected procedure" _%key?117166%_))
        (let _%lp117168%_ ((_%rest117170%_ _%stx117165%_))
          (let* ((_%g117171117181%_ (gx#stx-e _%rest117170%_))
                 (_%else117174117189%_ (lambda () '#f)))
            (let ((_%K117177117231%_
                   (lambda (_%rest117200%_ _%hd117201%_)
                     (if (_%key?117166%_ _%hd117201%_)
                         (let* ((_%g117202117210%_ (gx#stx-e _%rest117200%_))
                                (_%else117204117218%_ (lambda () '#f))
                                (_%K117206117223%_
                                 (lambda (_%rest117221%_)
                                   (_%lp117168%_ _%rest117221%_))))
                           (if (pair? _%g117202117210%_)
                               (let* ((_%tl117208117226%_
                                       (##cdr _%g117202117210%_))
                                      (_%rest117229%_ _%tl117208117226%_))
                                 (_%lp117168%_ _%rest117229%_))
                               (_%else117204117218%_)))
                         '#f)))
                  (_%K117176117194%_ (lambda () '#t)))
              (let ((_%try-match117173117197%_
                     (lambda ()
                       (if (null? _%g117171117181%_)
                           (_%K117176117194%_)
                           (_%else117174117189%_)))))
                (if (pair? _%g117171117181%_)
                    (let ((_%tl117179117236%_ (##cdr _%g117171117181%_))
                          (_%hd117178117234%_ (##car _%g117171117181%_)))
                      (let ((_%hd117239%_ _%hd117178117234%_)
                            (_%rest117241%_ _%tl117179117236%_))
                        (_%K117177117231%_ _%rest117241%_ _%hd117239%_)))
                    (_%try-match117173117197%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx117246%_)
        (let ((_%key?117248%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx117246%_ _%key?117248%_))))
    (define gx#stx-plist?
      (lambda _g118402_
        (let ((_g118401_ (##length _g118402_)))
          (cond ((##fx= _g118401_ 1) (apply gx#stx-plist?__0 _g118402_))
                ((##fx= _g118401_ 2) (apply gx#stx-plist?__% _g118402_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g118402_))))))
    (define gx#stx-getq__%
      (lambda (_%key117083%_ _%stx117084%_ _%key=?117085%_)
        (if (procedure? _%key=?117085%_)
            '#!void
            (error '"expected procedure" _%key=?117085%_))
        (let _%lp117087%_ ((_%rest117089%_ _%stx117084%_))
          (let* ((_%g117090117098%_ (gx#syntax-e _%rest117089%_))
                 (_%else117092117106%_ (lambda () '#f))
                 (_%K117094117140%_
                  (lambda (_%rest117109%_ _%hd117110%_)
                    (let* ((_%g117111117118%_ (gx#syntax-e _%rest117109%_))
                           (_%E117113117122%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g117111117118%_
                                     '([val . rest]))
                              '#!void))
                           (_%K117114117128%_
                            (lambda (_%rest117125%_ _%val117126%_)
                              (if (_%key=?117085%_ _%hd117110%_ _%key117083%_)
                                  _%val117126%_
                                  (_%lp117087%_ _%rest117125%_)))))
                      (if (pair? _%g117111117118%_)
                          (let ((_%hd117115117131%_ (##car _%g117111117118%_))
                                (_%tl117116117133%_ (##cdr _%g117111117118%_)))
                            (let* ((_%val117136%_ _%hd117115117131%_)
                                   (_%rest117138%_ _%tl117116117133%_))
                              (_%K117114117128%_
                               _%rest117138%_
                               _%val117136%_)))
                          (_%E117113117122%_))))))
            (if (pair? _%g117090117098%_)
                (let ((_%hd117095117143%_ (##car _%g117090117098%_))
                      (_%tl117096117145%_ (##cdr _%g117090117098%_)))
                  (let* ((_%hd117148%_ _%hd117095117143%_)
                         (_%rest117150%_ _%tl117096117145%_))
                    (_%K117094117140%_ _%rest117150%_ _%hd117148%_)))
                (_%else117092117106%_))))))
    (define gx#stx-getq__0
      (lambda (_%key117155%_ _%stx117156%_)
        (let ((_%key=?117158%_ gx#stx-eq?))
          (gx#stx-getq__% _%key117155%_ _%stx117156%_ _%key=?117158%_))))
    (define gx#stx-getq
      (lambda _g118404_
        (let ((_g118403_ (##length _g118404_)))
          (cond ((##fx= _g118403_ 2) (apply gx#stx-getq__0 _g118404_))
                ((##fx= _g118403_ 3) (apply gx#stx-getq__% _g118404_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g118404_))))))))
