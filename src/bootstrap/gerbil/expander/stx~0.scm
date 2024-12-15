(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1734225193)
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
      (lambda _%$args119207%_
        (apply make-instance gx#identifier-wrap::t _%$args119207%_)))
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
      (lambda _%$args119204%_
        (apply make-instance gx#syntax-wrap::t _%$args119204%_)))
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
      (lambda _%$args119201%_
        (apply make-instance gx#syntax-quote::t _%$args119201%_)))
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
      (lambda (_%stx119199%_) (symbol? (gx#stx-e _%stx119199%_))))
    (define gx#identifier-quote?
      (lambda (_%stx119197%_)
        (if (##structure-direct-instance-of? _%stx119197%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx119197%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx119192%_)
        (if (##structure-direct-instance-of? _%stx119192%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx119192%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx119192%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx119187%_)
        (if (##structure-direct-instance-of? _%stx119187%_ 'gx#syntax-quote::t)
            _%stx119187%_
            (if (##structure-direct-instance-of?
                 _%stx119187%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx119187%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx119161%_)
        (if (##structure-direct-instance-of? _%stx119161%_ 'gx#syntax-wrap::t)
            (let _%lp119164%_ ((_%e119166%_
                                (##unchecked-structure-ref
                                 _%stx119161%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks119167%_
                                (cons (##unchecked-structure-ref
                                       _%stx119161%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e119166%_)
                  (let ((_%$e119170%_
                         (##type-id (##structure-type _%e119166%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e119170%_)
                        (_%lp119164%_
                         (##unchecked-structure-ref _%e119166%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e119166%_ '3 '#f '#f)
                          _%marks119167%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e119170%_)
                                (eq? 'gx#identifier-wrap::t _%$e119170%_))
                            (##unchecked-structure-ref _%e119166%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e119170%_)
                                (_%lp119164%_
                                 (##unchecked-structure-ref
                                  _%e119166%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks119167%_)
                                _%e119166%_))))
                  (if (null? _%marks119167%_)
                      _%e119166%_
                      (if (pair? _%e119166%_)
                          (cons (gx#stx-wrap
                                 (##car _%e119166%_)
                                 _%marks119167%_)
                                (gx#stx-wrap
                                 (##cdr _%e119166%_)
                                 _%marks119167%_))
                          (if (vector? _%e119166%_)
                              (vector-map
                               (lambda (_%g119178119180%_)
                                 (gx#stx-wrap
                                  _%g119178119180%_
                                  _%marks119167%_))
                               _%e119166%_)
                              (if (box? _%e119166%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e119166%_)
                                        _%marks119167%_))
                                  _%e119166%_))))))
            (if (##structure-instance-of? _%stx119161%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx119161%_ '1 '#f '#f)
                _%stx119161%_))))
    (define gx#syntax->datum
      (lambda (_%stx119154%_)
        (if (##structure-instance-of? _%stx119154%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx119154%_ '1 '#f '#f))
            (if (pair? _%stx119154%_)
                (cons (gx#syntax->datum (##car _%stx119154%_))
                      (gx#syntax->datum (##cdr _%stx119154%_)))
                (if (vector? _%stx119154%_)
                    (vector-map gx#syntax->datum _%stx119154%_)
                    (if (box? _%stx119154%_)
                        (box (gx#syntax->datum (unbox _%stx119154%_)))
                        _%stx119154%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx119088%_ _%datum119089%_ _%src119090%_ _%quote?119091%_)
        (letrec ((_%wrap-datum119093%_
                  (lambda (_%e119126%_ _%marks119127%_)
                    (_%wrap-inner119095%_
                     _%e119126%_
                     (lambda (_%g119128119130%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g119128119130%_
                        _%src119090%_
                        _%marks119127%_)))))
                 (_%wrap-quote119094%_
                  (lambda (_%e119118%_ _%ctx119119%_ _%marks119120%_)
                    (_%wrap-inner119095%_
                     _%e119118%_
                     (lambda (_%g119121119123%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g119121119123%_
                        _%src119090%_
                        _%ctx119119%_
                        _%marks119120%_)))))
                 (_%wrap-inner119095%_
                  (lambda (_%e119106%_ _%wrap-e119107%_)
                    (let _%recur119109%_ ((_%e119111%_ _%e119106%_))
                      (if (symbol? _%e119111%_)
                          (_%wrap-e119107%_ _%e119111%_)
                          (if (pair? _%e119111%_)
                              (cons (_%recur119109%_ (##car _%e119111%_))
                                    (_%recur119109%_ (##cdr _%e119111%_)))
                              (if (vector? _%e119111%_)
                                  (vector-map _%recur119109%_ _%e119111%_)
                                  (if (box? _%e119111%_)
                                      (box (_%recur119109%_
                                            (unbox _%e119111%_)))
                                      _%e119111%_)))))))
                 (_%wrap-outer119096%_
                  (lambda (_%e119104%_)
                    (if (##structure-instance-of? _%e119104%_ 'gerbil#AST::t)
                        _%e119104%_
                        (##structure gx#AST::t _%e119104%_ _%src119090%_)))))
          (if (##structure-instance-of? _%datum119089%_ 'gerbil#AST::t)
              _%datum119089%_
              (if (not _%stx119088%_)
                  (##structure gx#AST::t _%datum119089%_ _%src119090%_)
                  (if (gx#identifier? _%stx119088%_)
                      (let ((_%stx119101%_ (gx#stx-unwrap__0 _%stx119088%_)))
                        (_%wrap-outer119096%_
                         (if (##structure-direct-instance-of?
                              _%stx119101%_
                              'gx#syntax-quote::t)
                             (if _%quote?119091%_
                                 (_%wrap-quote119094%_
                                  _%datum119089%_
                                  (##unchecked-structure-ref
                                   _%stx119101%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx119101%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum119093%_
                                  _%datum119089%_
                                  (##unchecked-structure-ref
                                   _%stx119101%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum119093%_
                              _%datum119089%_
                              (##unchecked-structure-ref
                               _%stx119101%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx119088%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx119136%_ _%datum119137%_)
        (let* ((_%src119139%_ '#f) (_%quote?119141%_ '#t))
          (gx#datum->syntax__%
           _%stx119136%_
           _%datum119137%_
           _%src119139%_
           _%quote?119141%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx119143%_ _%datum119144%_ _%src119145%_)
        (let ((_%quote?119147%_ '#t))
          (gx#datum->syntax__%
           _%stx119143%_
           _%datum119144%_
           _%src119145%_
           _%quote?119147%_))))
    (define gx#datum->syntax
      (lambda _g119288_
        (let ((_g119287_ (##length _g119288_)))
          (cond ((##fx= _g119287_ 2) (apply gx#datum->syntax__0 _g119288_))
                ((##fx= _g119287_ 3) (apply gx#datum->syntax__1 _g119288_))
                ((##fx= _g119287_ 4) (apply gx#datum->syntax__% _g119288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g119288_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx119054%_ _%marks119055%_)
        (let _%lp119057%_ ((_%e119059%_ _%stx119054%_)
                           (_%marks119060%_ _%marks119055%_)
                           (_%src119061%_ (gx#stx-source _%stx119054%_)))
          (if (##structure-direct-instance-of? _%e119059%_ 'gx#syntax-wrap::t)
              (_%lp119057%_
               (##unchecked-structure-ref _%e119059%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e119059%_ '3 '#f '#f)
                _%marks119060%_)
               (##unchecked-structure-ref _%e119059%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e119059%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks119060%_)
                      _%e119059%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e119059%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e119059%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e119059%_ '3 '#f '#f)
                        _%marks119060%_)))
                  (if (##structure-direct-instance-of?
                       _%e119059%_
                       'gx#syntax-quote::t)
                      _%e119059%_
                      (if (##structure-instance-of? _%e119059%_ 'gerbil#AST::t)
                          (_%lp119057%_
                           (##unchecked-structure-ref _%e119059%_ '1 '#f '#f)
                           _%marks119060%_
                           (##unchecked-structure-ref _%e119059%_ '2 '#f '#f))
                          (if (symbol? _%e119059%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e119059%_
                               _%src119061%_
                               (reverse _%marks119060%_))
                              (if (null? _%marks119060%_)
                                  _%e119059%_
                                  (if (pair? _%e119059%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e119059%_)
                                             _%marks119060%_)
                                            (gx#stx-wrap
                                             (##cdr _%e119059%_)
                                             _%marks119060%_))
                                      (if (vector? _%e119059%_)
                                          (vector-map
                                           (lambda (_%g119070119072%_)
                                             (gx#stx-wrap
                                              _%g119070119072%_
                                              _%marks119060%_))
                                           _%e119059%_)
                                          (if (box? _%e119059%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e119059%_)
                                                    _%marks119060%_))
                                              _%e119059%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx119080%_)
        (let ((_%marks119082%_ '()))
          (gx#stx-unwrap__% _%stx119080%_ _%marks119082%_))))
    (define gx#stx-unwrap
      (lambda _g119290_
        (let ((_g119289_ (##length _g119290_)))
          (cond ((##fx= _g119289_ 1) (apply gx#stx-unwrap__0 _g119290_))
                ((##fx= _g119289_ 2) (apply gx#stx-unwrap__% _g119290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g119290_))))))
    (define gx#stx-wrap
      (lambda (_%stx119047%_ _%marks119048%_)
        (__foldl1
         (lambda (_%mark119050%_ _%stx119051%_)
           (gx#stx-apply-mark _%stx119051%_ _%mark119050%_))
         _%stx119047%_
         _%marks119048%_)))
    (define gx#stx-rewrap
      (lambda (_%stx119041%_ _%marks119042%_)
        (__foldr1
         (lambda (_%mark119044%_ _%stx119045%_)
           (gx#stx-apply-mark _%stx119045%_ _%mark119044%_))
         _%stx119041%_
         _%marks119042%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx119035%_ _%mark119036%_)
        (if (##structure-direct-instance-of? _%stx119035%_ 'gx#syntax-quote::t)
            _%stx119035%_
            (if (and (##structure-direct-instance-of?
                      _%stx119035%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark119036%_
                          (##unchecked-structure-ref
                           _%stx119035%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx119035%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx119035%_
                 (gx#stx-source _%stx119035%_)
                 _%mark119036%_)))))
    (define gx#apply-mark
      (lambda (_%mark118999%_ _%marks119000%_)
        (let* ((_%marks119001119009%_ _%marks119000%_)
               (_%else119003119017%_
                (lambda () (cons _%mark118999%_ _%marks119000%_)))
               (_%K119005119023%_
                (lambda (_%rest119020%_ _%hd119021%_)
                  (if (eq? _%mark118999%_ _%hd119021%_)
                      _%rest119020%_
                      (cons _%mark118999%_ _%marks119000%_)))))
          (if (pair? _%marks119001119009%_)
              (let ((_%hd119006119026%_ (##car _%marks119001119009%_))
                    (_%tl119007119028%_ (##cdr _%marks119001119009%_)))
                (let* ((_%hd119031%_ _%hd119006119026%_)
                       (_%rest119033%_ _%tl119007119028%_))
                  (_%K119005119023%_ _%rest119033%_ _%hd119031%_)))
              (_%else119003119017%_)))))
    (define gx#stx-e
      (lambda (_%stx118994%_)
        (if (##structure-direct-instance-of? _%stx118994%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx118994%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx118994%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx118994%_ '1 '#f '#f)
                _%stx118994%_))))
    (define gx#stx-source
      (lambda (_%stx118992%_)
        (if (##structure-instance-of? _%stx118992%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx118992%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx118986%_ _%src118987%_)
        (if (or (##structure-instance-of? _%stx118986%_ 'gerbil#AST::t)
                (not _%src118987%_))
            _%stx118986%_
            (##structure gx#AST::t _%stx118986%_ _%src118987%_))))
    (define gx#stx-datum?
      (lambda (_%stx118984%_) (gx#self-quoting? (gx#stx-e _%stx118984%_))))
    (define gx#self-quoting?
      (lambda (_%x118967%_)
        (let ((_%$e118969%_ (immediate? _%x118967%_)))
          (if _%$e118969%_
              _%$e118969%_
              (let ((_%$e118972%_ (number? _%x118967%_)))
                (if _%$e118972%_
                    _%$e118972%_
                    (let ((_%$e118975%_ (keyword? _%x118967%_)))
                      (if _%$e118975%_
                          _%$e118975%_
                          (let ((_%$e118978%_ (string? _%x118967%_)))
                            (if _%$e118978%_
                                _%$e118978%_
                                (let ((_%$e118981%_ (vector? _%x118967%_)))
                                  (if _%$e118981%_
                                      _%$e118981%_
                                      (u8vector? _%x118967%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e118965%_) (boolean? (gx#stx-e _%e118965%_))))
    (define gx#stx-keyword?
      (lambda (_%e118963%_) (keyword? (gx#stx-e _%e118963%_))))
    (define gx#stx-char? (lambda (_%e118961%_) (char? (gx#stx-e _%e118961%_))))
    (define gx#stx-number?
      (lambda (_%e118959%_) (number? (gx#stx-e _%e118959%_))))
    (define gx#stx-fixnum?
      (lambda (_%e118957%_) (fixnum? (gx#stx-e _%e118957%_))))
    (define gx#stx-string?
      (lambda (_%e118955%_) (string? (gx#stx-e _%e118955%_))))
    (define gx#stx-null? (lambda (_%e118953%_) (null? (gx#stx-e _%e118953%_))))
    (define gx#stx-pair? (lambda (_%e118951%_) (pair? (gx#stx-e _%e118951%_))))
    (define gx#stx-list?
      (lambda (_%e118913%_)
        (let* ((_%g118914118923%_ (gx#stx-e _%e118913%_))
               (_%E118917118927%_
                (lambda ()
                  (error '"No clause matching"
                         _%g118914118923%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K118919118943%_
                 (lambda (_%rest118941%_) (gx#stx-list? _%rest118941%_)))
                (_%K118918118933%_
                 (lambda (_%tail118931%_) (null? _%tail118931%_))))
            (if (pair? _%g118914118923%_)
                (let* ((_%tl118921118946%_ (##cdr _%g118914118923%_))
                       (_%rest118949%_ _%tl118921118946%_))
                  (gx#stx-list? _%rest118949%_))
                (let ((_%tail118936%_ _%g118914118923%_))
                  (null? _%tail118936%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e118906%_)
        (let* ((_%e118908%_ (gx#stx-e _%e118906%_))
               (_%$e118910%_ (pair? _%e118908%_)))
          (if _%$e118910%_ _%$e118910%_ (null? _%e118908%_)))))
    (define gx#stx-vector?
      (lambda (_%e118904%_) (vector? (gx#stx-e _%e118904%_))))
    (define gx#stx-box? (lambda (_%e118902%_) (box? (gx#stx-e _%e118902%_))))
    (define gx#stx-eq?
      (lambda (_%x118899%_ _%y118900%_)
        (eq? (gx#stx-e _%x118899%_) (gx#stx-e _%y118900%_))))
    (define gx#stx-eqv?
      (lambda (_%x118896%_ _%y118897%_)
        (eqv? (gx#stx-e _%x118896%_) (gx#stx-e _%y118897%_))))
    (define gx#stx-equal?
      (lambda (_%x118893%_ _%y118894%_)
        (equal? (gx#stx-e _%x118893%_) (gx#stx-e _%y118894%_))))
    (define gx#stx-false? (lambda (_%x118891%_) (not (gx#stx-e _%x118891%_))))
    (define gx#stx-identifier
      (lambda (_%template118888%_ . _%args118889%_)
        (gx#datum->syntax__1
         _%template118888%_
         (apply make-symbol (gx#syntax->datum _%args118889%_))
         (gx#stx-source _%template118888%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx118886%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx118886%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx118881%_)
        (if (##structure-direct-instance-of?
             _%stx118881%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx118881%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx118881%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx118881%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx118881%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx118877%_)
        (let ((_%stx118879%_ (gx#stx-unwrap__0 _%stx118877%_)))
          (if (gx#identifier-quote? _%stx118879%_)
              (##unchecked-structure-ref _%stx118879%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx118832%_)
        (let* ((_%g118833118843%_ (gx#stx-e _%stx118832%_))
               (_%else118836118851%_ (lambda () '#f)))
          (let ((_%K118839118865%_
                 (lambda (_%rest118862%_ _%hd118863%_)
                   (if (gx#identifier? _%hd118863%_)
                       (gx#identifier-list? _%rest118862%_)
                       '#f)))
                (_%K118838118856%_ (lambda () '#t)))
            (let ((_%try-match118835118859%_
                   (lambda ()
                     (if (null? _%g118833118843%_)
                         (_%K118838118856%_)
                         (_%else118836118851%_)))))
              (if (pair? _%g118833118843%_)
                  (let ((_%tl118841118870%_ (##cdr _%g118833118843%_))
                        (_%hd118840118868%_ (##car _%g118833118843%_)))
                    (let ((_%hd118873%_ _%hd118840118868%_)
                          (_%rest118875%_ _%tl118841118870%_))
                      (_%K118839118865%_ _%rest118875%_ _%hd118873%_)))
                  (_%try-match118835118859%_)))))))
    (define gx#genident__%
      (lambda (_%e118809%_ _%src118810%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e118812%_ (gx#stx-e _%e118809%_)))
                   (if (interned-symbol? _%e118812%_) _%e118812%_ 'g)))
         (let ((_%$e118814%_ (gx#stx-source _%e118809%_)))
           (if _%$e118814%_ _%$e118814%_ _%src118810%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e118821%_ 'g) (_%src118823%_ '#f))
          (gx#genident__% _%e118821%_ _%src118823%_))))
    (define gx#genident__1
      (lambda (_%e118825%_)
        (let ((_%src118827%_ '#f))
          (gx#genident__% _%e118825%_ _%src118827%_))))
    (define gx#genident
      (lambda _g119292_
        (let ((_g119291_ (##length _g119292_)))
          (cond ((##fx= _g119291_ 0) (apply gx#genident__0 _g119292_))
                ((##fx= _g119291_ 1) (apply gx#genident__1 _g119292_))
                ((##fx= _g119291_ 2) (apply gx#genident__% _g119292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g119292_))))))
    (define gx#gentemps
      (lambda (_%stx-lst118806%_) (gx#stx-map1 gx#genident _%stx-lst118806%_)))
    (define gx#syntax->list
      (lambda (_%stx118804%_) (gx#stx-map1 values _%stx118804%_)))
    (define gx#stx-car
      (lambda (_%stx118801%_)
        (declare (safe))
        (car (gx#syntax-e _%stx118801%_))))
    (define gx#stx-cdr
      (lambda (_%stx118798%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx118798%_))))
    (define gx#stx-length
      (lambda (_%stx118763%_)
        (let _%lp118765%_ ((_%rest118767%_ _%stx118763%_) (_%n118768%_ '0))
          (let* ((_%g118769118777%_ (gx#stx-e _%rest118767%_))
                 (_%else118771118785%_ (lambda () _%n118768%_))
                 (_%K118773118790%_
                  (lambda (_%rest118788%_)
                    (_%lp118765%_ _%rest118788%_ (##fx+ _%n118768%_ '1)))))
            (if (pair? _%g118769118777%_)
                (let* ((_%tl118775118793%_ (##cdr _%g118769118777%_))
                       (_%rest118796%_ _%tl118775118793%_))
                  (_%K118773118790%_ _%rest118796%_))
                (_%else118771118785%_))))))
    (define gx#stx-for-each
      (lambda _g119294_
        (let ((_g119293_ (##length _g119294_)))
          (cond ((##fx= _g119293_ 2) (apply gx#stx-for-each1 _g119294_))
                ((##fx= _g119293_ 3) (apply gx#stx-for-each2 _g119294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g119294_))))))
    (define gx#stx-for-each1
      (lambda (_%f118706%_ _%stx118707%_)
        (if (procedure? _%f118706%_)
            '#!void
            (error '"expected procedure" _%f118706%_))
        (let _%lp118709%_ ((_%rest118711%_ _%stx118707%_))
          (let* ((_%g118712118722%_ (gx#syntax-e _%rest118711%_))
                 (_%else118715118730%_
                  (lambda () (_%f118706%_ _%rest118711%_))))
            (let ((_%K118718118744%_
                   (lambda (_%rest118741%_ _%hd118742%_)
                     (_%f118706%_ _%hd118742%_)
                     (_%lp118709%_ _%rest118741%_)))
                  (_%K118717118735%_ (lambda () '#!void)))
              (let ((_%try-match118714118738%_
                     (lambda ()
                       (if (null? _%g118712118722%_)
                           (_%K118717118735%_)
                           (_%else118715118730%_)))))
                (if (pair? _%g118712118722%_)
                    (let ((_%tl118720118749%_ (##cdr _%g118712118722%_))
                          (_%hd118719118747%_ (##car _%g118712118722%_)))
                      (let ((_%hd118752%_ _%hd118719118747%_)
                            (_%rest118754%_ _%tl118720118749%_))
                        (_%K118718118744%_ _%rest118754%_ _%hd118752%_)))
                    (_%try-match118714118738%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f118611%_ _%xstx118612%_ _%ystx118613%_)
        (if (procedure? _%f118611%_)
            '#!void
            (error '"expected procedure" _%f118611%_))
        (let _%lp118615%_ ((_%xrest118617%_ _%xstx118612%_)
                           (_%yrest118618%_ _%ystx118613%_))
          (let* ((_%g118619118629%_ (gx#syntax-e _%xrest118617%_))
                 (_%else118622118637%_ (lambda () '#!void)))
            (let ((_%K118625118694%_
                   (lambda (_%xrest118663%_ _%xhd118664%_)
                     (let* ((_%g118665118672%_ (gx#syntax-e _%yrest118618%_))
                            (_%E118667118676%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g118665118672%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K118668118682%_
                             (lambda (_%yrest118679%_ _%yhd118680%_)
                               (_%f118611%_ _%xhd118664%_ _%yhd118680%_)
                               (_%lp118615%_
                                _%xrest118663%_
                                _%yrest118679%_))))
                       (if (pair? _%g118665118672%_)
                           (let ((_%hd118669118685%_ (##car _%g118665118672%_))
                                 (_%tl118670118687%_
                                  (##cdr _%g118665118672%_)))
                             (let* ((_%yhd118690%_ _%hd118669118685%_)
                                    (_%yrest118692%_ _%tl118670118687%_))
                               (_%K118668118682%_
                                _%yrest118692%_
                                _%yhd118690%_)))
                           (_%E118667118676%_)))))
                  (_%K118624118657%_
                   (lambda ()
                     (let* ((_%yrest118641118646%_ _%yrest118618%_)
                            (_%E118643118650%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest118641118646%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K118644118654%_
                             (lambda ()
                               (_%f118611%_ _%xrest118617%_ _%yrest118618%_))))
                       (if (gx#stx-null? _%yrest118641118646%_)
                           (_%E118643118650%_)
                           (_%K118644118654%_))))))
              (let ((_%try-match118621118660%_
                     (lambda ()
                       (if (null? _%g118619118629%_)
                           (_%else118622118637%_)
                           (_%K118624118657%_)))))
                (if (pair? _%g118619118629%_)
                    (let ((_%tl118627118699%_ (##cdr _%g118619118629%_))
                          (_%hd118626118697%_ (##car _%g118619118629%_)))
                      (let ((_%xhd118702%_ _%hd118626118697%_)
                            (_%xrest118704%_ _%tl118627118699%_))
                        (_%K118625118694%_ _%xrest118704%_ _%xhd118702%_)))
                    (_%try-match118621118660%_))))))))
    (define gx#stx-map
      (lambda _g119296_
        (let ((_g119295_ (##length _g119296_)))
          (cond ((##fx= _g119295_ 2) (apply gx#stx-map1 _g119296_))
                ((##fx= _g119295_ 3) (apply gx#stx-map2 _g119296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g119296_))))))
    (define gx#stx-map1
      (lambda (_%f118554%_ _%stx118555%_)
        (if (procedure? _%f118554%_)
            '#!void
            (error '"expected procedure" _%f118554%_))
        (let _%recur118557%_ ((_%rest118559%_ _%stx118555%_))
          (let* ((_%g118560118570%_ (gx#syntax-e _%rest118559%_))
                 (_%else118563118578%_
                  (lambda () (_%f118554%_ _%rest118559%_))))
            (let ((_%K118566118592%_
                   (lambda (_%rest118589%_ _%hd118590%_)
                     (cons (_%f118554%_ _%hd118590%_)
                           (_%recur118557%_ _%rest118589%_))))
                  (_%K118565118583%_ (lambda () '())))
              (let ((_%try-match118562118586%_
                     (lambda ()
                       (if (null? _%g118560118570%_)
                           (_%K118565118583%_)
                           (_%else118563118578%_)))))
                (if (pair? _%g118560118570%_)
                    (let ((_%tl118568118597%_ (##cdr _%g118560118570%_))
                          (_%hd118567118595%_ (##car _%g118560118570%_)))
                      (let ((_%hd118600%_ _%hd118567118595%_)
                            (_%rest118602%_ _%tl118568118597%_))
                        (_%K118566118592%_ _%rest118602%_ _%hd118600%_)))
                    (_%try-match118562118586%_))))))))
    (define gx#stx-map2
      (lambda (_%f118459%_ _%xstx118460%_ _%ystx118461%_)
        (if (procedure? _%f118459%_)
            '#!void
            (error '"expected procedure" _%f118459%_))
        (let _%recur118463%_ ((_%xrest118465%_ _%xstx118460%_)
                              (_%yrest118466%_ _%ystx118461%_))
          (let* ((_%g118467118477%_ (gx#syntax-e _%xrest118465%_))
                 (_%else118470118485%_ (lambda () '())))
            (let ((_%K118473118542%_
                   (lambda (_%xrest118511%_ _%xhd118512%_)
                     (let* ((_%g118513118520%_ (gx#syntax-e _%yrest118466%_))
                            (_%E118515118524%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g118513118520%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K118516118530%_
                             (lambda (_%yrest118527%_ _%yhd118528%_)
                               (cons (_%f118459%_ _%xhd118512%_ _%yhd118528%_)
                                     (_%recur118463%_
                                      _%xrest118511%_
                                      _%yrest118527%_)))))
                       (if (pair? _%g118513118520%_)
                           (let ((_%hd118517118533%_ (##car _%g118513118520%_))
                                 (_%tl118518118535%_
                                  (##cdr _%g118513118520%_)))
                             (let* ((_%yhd118538%_ _%hd118517118533%_)
                                    (_%yrest118540%_ _%tl118518118535%_))
                               (_%K118516118530%_
                                _%yrest118540%_
                                _%yhd118538%_)))
                           (_%E118515118524%_)))))
                  (_%K118472118505%_
                   (lambda ()
                     (let* ((_%yrest118489118494%_ _%yrest118466%_)
                            (_%E118491118498%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest118489118494%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K118492118502%_
                             (lambda ()
                               (_%f118459%_ _%xrest118465%_ _%yrest118466%_))))
                       (if (gx#stx-null? _%yrest118489118494%_)
                           (_%E118491118498%_)
                           (_%K118492118502%_))))))
              (let ((_%try-match118469118508%_
                     (lambda ()
                       (if (null? _%g118467118477%_)
                           (_%else118470118485%_)
                           (_%K118472118505%_)))))
                (if (pair? _%g118467118477%_)
                    (let ((_%tl118475118547%_ (##cdr _%g118467118477%_))
                          (_%hd118474118545%_ (##car _%g118467118477%_)))
                      (let ((_%xhd118550%_ _%hd118474118545%_)
                            (_%xrest118552%_ _%tl118475118547%_))
                        (_%K118473118542%_ _%xrest118552%_ _%xhd118550%_)))
                    (_%try-match118469118508%_))))))))
    (define gx#stx-andmap
      (lambda (_%f118409%_ _%stx118410%_)
        (if (procedure? _%f118409%_)
            '#!void
            (error '"expected procedure" _%f118409%_))
        (let _%lp118412%_ ((_%rest118414%_ _%stx118410%_))
          (let* ((_%g118415118425%_ (gx#syntax-e _%rest118414%_))
                 (_%else118418118433%_
                  (lambda () (_%f118409%_ _%rest118414%_))))
            (let ((_%K118421118447%_
                   (lambda (_%rest118444%_ _%hd118445%_)
                     (if (_%f118409%_ _%hd118445%_)
                         (_%lp118412%_ _%rest118444%_)
                         '#f)))
                  (_%K118420118438%_ (lambda () '#t)))
              (let ((_%try-match118417118441%_
                     (lambda ()
                       (if (null? _%g118415118425%_)
                           (_%K118420118438%_)
                           (_%else118418118433%_)))))
                (if (pair? _%g118415118425%_)
                    (let ((_%tl118423118452%_ (##cdr _%g118415118425%_))
                          (_%hd118422118450%_ (##car _%g118415118425%_)))
                      (let ((_%hd118455%_ _%hd118422118450%_)
                            (_%rest118457%_ _%tl118423118452%_))
                        (_%K118421118447%_ _%rest118457%_ _%hd118455%_)))
                    (_%try-match118417118441%_))))))))
    (define gx#stx-ormap
      (lambda (_%f118356%_ _%stx118357%_)
        (if (procedure? _%f118356%_)
            '#!void
            (error '"expected procedure" _%f118356%_))
        (let _%lp118359%_ ((_%rest118361%_ _%stx118357%_))
          (let* ((_%g118362118372%_ (gx#syntax-e _%rest118361%_))
                 (_%else118365118380%_
                  (lambda () (_%f118356%_ _%rest118361%_))))
            (let ((_%K118368118397%_
                   (lambda (_%rest118391%_ _%hd118392%_)
                     (let ((_%$e118394%_ (_%f118356%_ _%hd118392%_)))
                       (if _%$e118394%_
                           _%$e118394%_
                           (_%lp118359%_ _%rest118391%_)))))
                  (_%K118367118385%_ (lambda () '#f)))
              (let ((_%try-match118364118388%_
                     (lambda ()
                       (if (null? _%g118362118372%_)
                           (_%K118367118385%_)
                           (_%else118365118380%_)))))
                (if (pair? _%g118362118372%_)
                    (let ((_%tl118370118402%_ (##cdr _%g118362118372%_))
                          (_%hd118369118400%_ (##car _%g118362118372%_)))
                      (let ((_%hd118405%_ _%hd118369118400%_)
                            (_%rest118407%_ _%tl118370118402%_))
                        (_%K118368118397%_ _%rest118407%_ _%hd118405%_)))
                    (_%try-match118364118388%_))))))))
    (define gx#stx-foldl
      (lambda (_%f118304%_ _%iv118305%_ _%stx118306%_)
        (if (procedure? _%f118304%_)
            '#!void
            (error '"expected procedure" _%f118304%_))
        (let _%lp118308%_ ((_%r118310%_ _%iv118305%_)
                           (_%rest118311%_ _%stx118306%_))
          (let* ((_%g118312118322%_ (gx#syntax-e _%rest118311%_))
                 (_%else118315118330%_
                  (lambda () (_%f118304%_ _%rest118311%_ _%r118310%_))))
            (let ((_%K118318118344%_
                   (lambda (_%rest118341%_ _%hd118342%_)
                     (_%lp118308%_
                      (_%f118304%_ _%hd118342%_ _%r118310%_)
                      _%rest118341%_)))
                  (_%K118317118335%_ (lambda () _%r118310%_)))
              (let ((_%try-match118314118338%_
                     (lambda ()
                       (if (null? _%g118312118322%_)
                           (_%K118317118335%_)
                           (_%else118315118330%_)))))
                (if (pair? _%g118312118322%_)
                    (let ((_%tl118320118349%_ (##cdr _%g118312118322%_))
                          (_%hd118319118347%_ (##car _%g118312118322%_)))
                      (let ((_%hd118352%_ _%hd118319118347%_)
                            (_%rest118354%_ _%tl118320118349%_))
                        (_%K118318118344%_ _%rest118354%_ _%hd118352%_)))
                    (_%try-match118314118338%_))))))))
    (define gx#stx-foldr
      (lambda (_%f118253%_ _%iv118254%_ _%stx118255%_)
        (if (procedure? _%f118253%_)
            '#!void
            (error '"expected procedure" _%f118253%_))
        (let _%recur118257%_ ((_%rest118259%_ _%stx118255%_))
          (let* ((_%g118260118270%_ (gx#syntax-e _%rest118259%_))
                 (_%else118263118278%_
                  (lambda () (_%f118253%_ _%rest118259%_ _%iv118254%_))))
            (let ((_%K118266118292%_
                   (lambda (_%rest118289%_ _%hd118290%_)
                     (_%f118253%_
                      _%hd118290%_
                      (_%recur118257%_ _%rest118289%_))))
                  (_%K118265118283%_ (lambda () _%iv118254%_)))
              (let ((_%try-match118262118286%_
                     (lambda ()
                       (if (null? _%g118260118270%_)
                           (_%K118265118283%_)
                           (_%else118263118278%_)))))
                (if (pair? _%g118260118270%_)
                    (let ((_%tl118268118297%_ (##cdr _%g118260118270%_))
                          (_%hd118267118295%_ (##car _%g118260118270%_)))
                      (let ((_%hd118300%_ _%hd118267118295%_)
                            (_%rest118302%_ _%tl118268118297%_))
                        (_%K118266118292%_ _%rest118302%_ _%hd118300%_)))
                    (_%try-match118262118286%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx118251%_) (gx#stx-foldl cons '() _%stx118251%_)))
    (define gx#stx-last
      (lambda (_%stx118212%_)
        (let _%lp118214%_ ((_%rest118216%_ _%stx118212%_))
          (let* ((_%g118217118225%_ (gx#syntax-e _%rest118216%_))
                 (_%else118219118233%_ (lambda () _%rest118216%_))
                 (_%K118221118239%_
                  (lambda (_%rest118236%_ _%hd118237%_)
                    (if (gx#stx-null? _%rest118236%_)
                        _%hd118237%_
                        (_%lp118214%_ _%rest118236%_)))))
            (if (pair? _%g118217118225%_)
                (let ((_%hd118222118242%_ (##car _%g118217118225%_))
                      (_%tl118223118244%_ (##cdr _%g118217118225%_)))
                  (let* ((_%hd118247%_ _%hd118222118242%_)
                         (_%rest118249%_ _%tl118223118244%_))
                    (_%K118221118239%_ _%rest118249%_ _%hd118247%_)))
                (_%else118219118233%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx118183%_)
        (let _%lp118185%_ ((_%hd118187%_ _%stx118183%_))
          (let* ((_%g118188118195%_ (gx#syntax-e _%hd118187%_))
                 (_%E118190118199%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g118188118195%_
                           '([_ . rest]))
                    '#!void))
                 (_%K118191118204%_
                  (lambda (_%rest118202%_)
                    (if (gx#stx-pair? _%rest118202%_)
                        (_%lp118185%_ _%rest118202%_)
                        _%hd118187%_))))
            (if (pair? _%g118188118195%_)
                (let* ((_%tl118193118207%_ (##cdr _%g118188118195%_))
                       (_%rest118210%_ _%tl118193118207%_))
                  (_%K118191118204%_ _%rest118210%_))
                (_%E118190118199%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx118152%_ _%k118153%_)
        (let _%lp118155%_ ((_%rest118157%_ _%stx118152%_)
                           (_%k118158%_ _%k118153%_))
          (if (fxpositive? _%k118158%_)
              (let* ((_%g118159118166%_ (gx#syntax-e _%rest118157%_))
                     (_%E118161118170%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g118159118166%_
                               '([_ . rest]))
                        '#!void))
                     (_%K118162118175%_
                      (lambda (_%rest118173%_)
                        (_%lp118155%_ _%rest118173%_ (##fx- _%k118158%_ '1)))))
                (if (pair? _%g118159118166%_)
                    (let* ((_%tl118164118178%_ (##cdr _%g118159118166%_))
                           (_%rest118181%_ _%tl118164118178%_))
                      (_%K118162118175%_ _%rest118181%_))
                    (_%E118161118170%_)))
              _%rest118157%_))))
    (define gx#stx-list-ref
      (lambda (_%stx118149%_ _%k118150%_)
        (gx#stx-car (gx#stx-list-tail _%stx118149%_ _%k118150%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx118061%_ _%key?118062%_)
        (if (procedure? _%key?118062%_)
            '#!void
            (error '"expected procedure" _%key?118062%_))
        (let _%lp118064%_ ((_%rest118066%_ _%stx118061%_))
          (let* ((_%g118067118077%_ (gx#stx-e _%rest118066%_))
                 (_%else118070118085%_ (lambda () '#f)))
            (let ((_%K118073118127%_
                   (lambda (_%rest118096%_ _%hd118097%_)
                     (if (_%key?118062%_ _%hd118097%_)
                         (let* ((_%g118098118106%_ (gx#stx-e _%rest118096%_))
                                (_%else118100118114%_ (lambda () '#f))
                                (_%K118102118119%_
                                 (lambda (_%rest118117%_)
                                   (_%lp118064%_ _%rest118117%_))))
                           (if (pair? _%g118098118106%_)
                               (let* ((_%tl118104118122%_
                                       (##cdr _%g118098118106%_))
                                      (_%rest118125%_ _%tl118104118122%_))
                                 (_%lp118064%_ _%rest118125%_))
                               (_%else118100118114%_)))
                         '#f)))
                  (_%K118072118090%_ (lambda () '#t)))
              (let ((_%try-match118069118093%_
                     (lambda ()
                       (if (null? _%g118067118077%_)
                           (_%K118072118090%_)
                           (_%else118070118085%_)))))
                (if (pair? _%g118067118077%_)
                    (let ((_%tl118075118132%_ (##cdr _%g118067118077%_))
                          (_%hd118074118130%_ (##car _%g118067118077%_)))
                      (let ((_%hd118135%_ _%hd118074118130%_)
                            (_%rest118137%_ _%tl118075118132%_))
                        (_%K118073118127%_ _%rest118137%_ _%hd118135%_)))
                    (_%try-match118069118093%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx118142%_)
        (let ((_%key?118144%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx118142%_ _%key?118144%_))))
    (define gx#stx-plist?
      (lambda _g119298_
        (let ((_g119297_ (##length _g119298_)))
          (cond ((##fx= _g119297_ 1) (apply gx#stx-plist?__0 _g119298_))
                ((##fx= _g119297_ 2) (apply gx#stx-plist?__% _g119298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g119298_))))))
    (define gx#stx-getq__%
      (lambda (_%key117979%_ _%stx117980%_ _%key=?117981%_)
        (if (procedure? _%key=?117981%_)
            '#!void
            (error '"expected procedure" _%key=?117981%_))
        (let _%lp117983%_ ((_%rest117985%_ _%stx117980%_))
          (let* ((_%g117986117994%_ (gx#syntax-e _%rest117985%_))
                 (_%else117988118002%_ (lambda () '#f))
                 (_%K117990118036%_
                  (lambda (_%rest118005%_ _%hd118006%_)
                    (let* ((_%g118007118014%_ (gx#syntax-e _%rest118005%_))
                           (_%E118009118018%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g118007118014%_
                                     '([val . rest]))
                              '#!void))
                           (_%K118010118024%_
                            (lambda (_%rest118021%_ _%val118022%_)
                              (if (_%key=?117981%_ _%hd118006%_ _%key117979%_)
                                  _%val118022%_
                                  (_%lp117983%_ _%rest118021%_)))))
                      (if (pair? _%g118007118014%_)
                          (let ((_%hd118011118027%_ (##car _%g118007118014%_))
                                (_%tl118012118029%_ (##cdr _%g118007118014%_)))
                            (let* ((_%val118032%_ _%hd118011118027%_)
                                   (_%rest118034%_ _%tl118012118029%_))
                              (_%K118010118024%_
                               _%rest118034%_
                               _%val118032%_)))
                          (_%E118009118018%_))))))
            (if (pair? _%g117986117994%_)
                (let ((_%hd117991118039%_ (##car _%g117986117994%_))
                      (_%tl117992118041%_ (##cdr _%g117986117994%_)))
                  (let* ((_%hd118044%_ _%hd117991118039%_)
                         (_%rest118046%_ _%tl117992118041%_))
                    (_%K117990118036%_ _%rest118046%_ _%hd118044%_)))
                (_%else117988118002%_))))))
    (define gx#stx-getq__0
      (lambda (_%key118051%_ _%stx118052%_)
        (let ((_%key=?118054%_ gx#stx-eq?))
          (gx#stx-getq__% _%key118051%_ _%stx118052%_ _%key=?118054%_))))
    (define gx#stx-getq
      (lambda _g119300_
        (let ((_g119299_ (##length _g119300_)))
          (cond ((##fx= _g119299_ 2) (apply gx#stx-getq__0 _g119300_))
                ((##fx= _g119299_ 3) (apply gx#stx-getq__% _g119300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g119300_))))))))
