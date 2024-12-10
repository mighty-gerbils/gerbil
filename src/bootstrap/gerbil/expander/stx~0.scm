(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1733687559)
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
      (lambda _%$args118168%_
        (apply make-instance gx#identifier-wrap::t _%$args118168%_)))
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
      (lambda _%$args118165%_
        (apply make-instance gx#syntax-wrap::t _%$args118165%_)))
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
      (lambda _%$args118162%_
        (apply make-instance gx#syntax-quote::t _%$args118162%_)))
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
      (lambda (_%stx118160%_) (symbol? (gx#stx-e _%stx118160%_))))
    (define gx#identifier-quote?
      (lambda (_%stx118158%_)
        (if (##structure-direct-instance-of? _%stx118158%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx118158%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx118153%_)
        (if (##structure-direct-instance-of? _%stx118153%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx118153%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx118153%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx118148%_)
        (if (##structure-direct-instance-of? _%stx118148%_ 'gx#syntax-quote::t)
            _%stx118148%_
            (if (##structure-direct-instance-of?
                 _%stx118148%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx118148%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx118122%_)
        (if (##structure-direct-instance-of? _%stx118122%_ 'gx#syntax-wrap::t)
            (let _%lp118125%_ ((_%e118127%_
                                (##unchecked-structure-ref
                                 _%stx118122%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks118128%_
                                (cons (##unchecked-structure-ref
                                       _%stx118122%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e118127%_)
                  (let ((_%$e118131%_
                         (##type-id (##structure-type _%e118127%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e118131%_)
                        (_%lp118125%_
                         (##unchecked-structure-ref _%e118127%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e118127%_ '3 '#f '#f)
                          _%marks118128%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e118131%_)
                                (eq? 'gx#identifier-wrap::t _%$e118131%_))
                            (##unchecked-structure-ref _%e118127%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e118131%_)
                                (_%lp118125%_
                                 (##unchecked-structure-ref
                                  _%e118127%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks118128%_)
                                _%e118127%_))))
                  (if (null? _%marks118128%_)
                      _%e118127%_
                      (if (pair? _%e118127%_)
                          (cons (gx#stx-wrap
                                 (##car _%e118127%_)
                                 _%marks118128%_)
                                (gx#stx-wrap
                                 (##cdr _%e118127%_)
                                 _%marks118128%_))
                          (if (vector? _%e118127%_)
                              (vector-map
                               (lambda (_%g118139118141%_)
                                 (gx#stx-wrap
                                  _%g118139118141%_
                                  _%marks118128%_))
                               _%e118127%_)
                              (if (box? _%e118127%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e118127%_)
                                        _%marks118128%_))
                                  _%e118127%_))))))
            (if (##structure-instance-of? _%stx118122%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx118122%_ '1 '#f '#f)
                _%stx118122%_))))
    (define gx#syntax->datum
      (lambda (_%stx118115%_)
        (if (##structure-instance-of? _%stx118115%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx118115%_ '1 '#f '#f))
            (if (pair? _%stx118115%_)
                (cons (gx#syntax->datum (##car _%stx118115%_))
                      (gx#syntax->datum (##cdr _%stx118115%_)))
                (if (vector? _%stx118115%_)
                    (vector-map gx#syntax->datum _%stx118115%_)
                    (if (box? _%stx118115%_)
                        (box (gx#syntax->datum (unbox _%stx118115%_)))
                        _%stx118115%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx118049%_ _%datum118050%_ _%src118051%_ _%quote?118052%_)
        (letrec ((_%wrap-datum118054%_
                  (lambda (_%e118087%_ _%marks118088%_)
                    (_%wrap-inner118056%_
                     _%e118087%_
                     (lambda (_%g118089118091%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g118089118091%_
                        _%src118051%_
                        _%marks118088%_)))))
                 (_%wrap-quote118055%_
                  (lambda (_%e118079%_ _%ctx118080%_ _%marks118081%_)
                    (_%wrap-inner118056%_
                     _%e118079%_
                     (lambda (_%g118082118084%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g118082118084%_
                        _%src118051%_
                        _%ctx118080%_
                        _%marks118081%_)))))
                 (_%wrap-inner118056%_
                  (lambda (_%e118067%_ _%wrap-e118068%_)
                    (let _%recur118070%_ ((_%e118072%_ _%e118067%_))
                      (if (symbol? _%e118072%_)
                          (_%wrap-e118068%_ _%e118072%_)
                          (if (pair? _%e118072%_)
                              (cons (_%recur118070%_ (##car _%e118072%_))
                                    (_%recur118070%_ (##cdr _%e118072%_)))
                              (if (vector? _%e118072%_)
                                  (vector-map _%recur118070%_ _%e118072%_)
                                  (if (box? _%e118072%_)
                                      (box (_%recur118070%_
                                            (unbox _%e118072%_)))
                                      _%e118072%_)))))))
                 (_%wrap-outer118057%_
                  (lambda (_%e118065%_)
                    (if (##structure-instance-of? _%e118065%_ 'gerbil#AST::t)
                        _%e118065%_
                        (##structure gx#AST::t _%e118065%_ _%src118051%_)))))
          (if (##structure-instance-of? _%datum118050%_ 'gerbil#AST::t)
              _%datum118050%_
              (if (not _%stx118049%_)
                  (##structure gx#AST::t _%datum118050%_ _%src118051%_)
                  (if (gx#identifier? _%stx118049%_)
                      (let ((_%stx118062%_ (gx#stx-unwrap__0 _%stx118049%_)))
                        (_%wrap-outer118057%_
                         (if (##structure-direct-instance-of?
                              _%stx118062%_
                              'gx#syntax-quote::t)
                             (if _%quote?118052%_
                                 (_%wrap-quote118055%_
                                  _%datum118050%_
                                  (##unchecked-structure-ref
                                   _%stx118062%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx118062%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum118054%_
                                  _%datum118050%_
                                  (##unchecked-structure-ref
                                   _%stx118062%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum118054%_
                              _%datum118050%_
                              (##unchecked-structure-ref
                               _%stx118062%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx118049%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx118097%_ _%datum118098%_)
        (let* ((_%src118100%_ '#f) (_%quote?118102%_ '#t))
          (gx#datum->syntax__%
           _%stx118097%_
           _%datum118098%_
           _%src118100%_
           _%quote?118102%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx118104%_ _%datum118105%_ _%src118106%_)
        (let ((_%quote?118108%_ '#t))
          (gx#datum->syntax__%
           _%stx118104%_
           _%datum118105%_
           _%src118106%_
           _%quote?118108%_))))
    (define gx#datum->syntax
      (lambda _g118249_
        (let ((_g118248_ (##length _g118249_)))
          (cond ((##fx= _g118248_ 2) (apply gx#datum->syntax__0 _g118249_))
                ((##fx= _g118248_ 3) (apply gx#datum->syntax__1 _g118249_))
                ((##fx= _g118248_ 4) (apply gx#datum->syntax__% _g118249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g118249_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx118015%_ _%marks118016%_)
        (let _%lp118018%_ ((_%e118020%_ _%stx118015%_)
                           (_%marks118021%_ _%marks118016%_)
                           (_%src118022%_ (gx#stx-source _%stx118015%_)))
          (if (##structure-direct-instance-of? _%e118020%_ 'gx#syntax-wrap::t)
              (_%lp118018%_
               (##unchecked-structure-ref _%e118020%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e118020%_ '3 '#f '#f)
                _%marks118021%_)
               (##unchecked-structure-ref _%e118020%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e118020%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks118021%_)
                      _%e118020%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e118020%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e118020%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e118020%_ '3 '#f '#f)
                        _%marks118021%_)))
                  (if (##structure-direct-instance-of?
                       _%e118020%_
                       'gx#syntax-quote::t)
                      _%e118020%_
                      (if (##structure-instance-of? _%e118020%_ 'gerbil#AST::t)
                          (_%lp118018%_
                           (##unchecked-structure-ref _%e118020%_ '1 '#f '#f)
                           _%marks118021%_
                           (##unchecked-structure-ref _%e118020%_ '2 '#f '#f))
                          (if (symbol? _%e118020%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e118020%_
                               _%src118022%_
                               (reverse _%marks118021%_))
                              (if (null? _%marks118021%_)
                                  _%e118020%_
                                  (if (pair? _%e118020%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e118020%_)
                                             _%marks118021%_)
                                            (gx#stx-wrap
                                             (##cdr _%e118020%_)
                                             _%marks118021%_))
                                      (if (vector? _%e118020%_)
                                          (vector-map
                                           (lambda (_%g118031118033%_)
                                             (gx#stx-wrap
                                              _%g118031118033%_
                                              _%marks118021%_))
                                           _%e118020%_)
                                          (if (box? _%e118020%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e118020%_)
                                                    _%marks118021%_))
                                              _%e118020%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx118041%_)
        (let ((_%marks118043%_ '()))
          (gx#stx-unwrap__% _%stx118041%_ _%marks118043%_))))
    (define gx#stx-unwrap
      (lambda _g118251_
        (let ((_g118250_ (##length _g118251_)))
          (cond ((##fx= _g118250_ 1) (apply gx#stx-unwrap__0 _g118251_))
                ((##fx= _g118250_ 2) (apply gx#stx-unwrap__% _g118251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g118251_))))))
    (define gx#stx-wrap
      (lambda (_%stx118008%_ _%marks118009%_)
        (__foldl1
         (lambda (_%mark118011%_ _%stx118012%_)
           (gx#stx-apply-mark _%stx118012%_ _%mark118011%_))
         _%stx118008%_
         _%marks118009%_)))
    (define gx#stx-rewrap
      (lambda (_%stx118002%_ _%marks118003%_)
        (__foldr1
         (lambda (_%mark118005%_ _%stx118006%_)
           (gx#stx-apply-mark _%stx118006%_ _%mark118005%_))
         _%stx118002%_
         _%marks118003%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx117996%_ _%mark117997%_)
        (if (##structure-direct-instance-of? _%stx117996%_ 'gx#syntax-quote::t)
            _%stx117996%_
            (if (and (##structure-direct-instance-of?
                      _%stx117996%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark117997%_
                          (##unchecked-structure-ref
                           _%stx117996%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx117996%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx117996%_
                 (gx#stx-source _%stx117996%_)
                 _%mark117997%_)))))
    (define gx#apply-mark
      (lambda (_%mark117960%_ _%marks117961%_)
        (let* ((_%marks117962117970%_ _%marks117961%_)
               (_%else117964117978%_
                (lambda () (cons _%mark117960%_ _%marks117961%_)))
               (_%K117966117984%_
                (lambda (_%rest117981%_ _%hd117982%_)
                  (if (eq? _%mark117960%_ _%hd117982%_)
                      _%rest117981%_
                      (cons _%mark117960%_ _%marks117961%_)))))
          (if (pair? _%marks117962117970%_)
              (let ((_%hd117967117987%_ (##car _%marks117962117970%_))
                    (_%tl117968117989%_ (##cdr _%marks117962117970%_)))
                (let* ((_%hd117992%_ _%hd117967117987%_)
                       (_%rest117994%_ _%tl117968117989%_))
                  (_%K117966117984%_ _%rest117994%_ _%hd117992%_)))
              (_%else117964117978%_)))))
    (define gx#stx-e
      (lambda (_%stx117955%_)
        (if (##structure-direct-instance-of? _%stx117955%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx117955%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx117955%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx117955%_ '1 '#f '#f)
                _%stx117955%_))))
    (define gx#stx-source
      (lambda (_%stx117953%_)
        (if (##structure-instance-of? _%stx117953%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx117953%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx117947%_ _%src117948%_)
        (if (or (##structure-instance-of? _%stx117947%_ 'gerbil#AST::t)
                (not _%src117948%_))
            _%stx117947%_
            (##structure gx#AST::t _%stx117947%_ _%src117948%_))))
    (define gx#stx-datum?
      (lambda (_%stx117945%_) (gx#self-quoting? (gx#stx-e _%stx117945%_))))
    (define gx#self-quoting?
      (lambda (_%x117928%_)
        (let ((_%$e117930%_ (immediate? _%x117928%_)))
          (if _%$e117930%_
              _%$e117930%_
              (let ((_%$e117933%_ (number? _%x117928%_)))
                (if _%$e117933%_
                    _%$e117933%_
                    (let ((_%$e117936%_ (keyword? _%x117928%_)))
                      (if _%$e117936%_
                          _%$e117936%_
                          (let ((_%$e117939%_ (string? _%x117928%_)))
                            (if _%$e117939%_
                                _%$e117939%_
                                (let ((_%$e117942%_ (vector? _%x117928%_)))
                                  (if _%$e117942%_
                                      _%$e117942%_
                                      (u8vector? _%x117928%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e117926%_) (boolean? (gx#stx-e _%e117926%_))))
    (define gx#stx-keyword?
      (lambda (_%e117924%_) (keyword? (gx#stx-e _%e117924%_))))
    (define gx#stx-char? (lambda (_%e117922%_) (char? (gx#stx-e _%e117922%_))))
    (define gx#stx-number?
      (lambda (_%e117920%_) (number? (gx#stx-e _%e117920%_))))
    (define gx#stx-fixnum?
      (lambda (_%e117918%_) (fixnum? (gx#stx-e _%e117918%_))))
    (define gx#stx-string?
      (lambda (_%e117916%_) (string? (gx#stx-e _%e117916%_))))
    (define gx#stx-null? (lambda (_%e117914%_) (null? (gx#stx-e _%e117914%_))))
    (define gx#stx-pair? (lambda (_%e117912%_) (pair? (gx#stx-e _%e117912%_))))
    (define gx#stx-list?
      (lambda (_%e117874%_)
        (let* ((_%g117875117884%_ (gx#stx-e _%e117874%_))
               (_%E117878117888%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117875117884%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K117880117904%_
                 (lambda (_%rest117902%_) (gx#stx-list? _%rest117902%_)))
                (_%K117879117894%_
                 (lambda (_%tail117892%_) (null? _%tail117892%_))))
            (if (pair? _%g117875117884%_)
                (let* ((_%tl117882117907%_ (##cdr _%g117875117884%_))
                       (_%rest117910%_ _%tl117882117907%_))
                  (gx#stx-list? _%rest117910%_))
                (let ((_%tail117897%_ _%g117875117884%_))
                  (null? _%tail117897%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e117867%_)
        (let* ((_%e117869%_ (gx#stx-e _%e117867%_))
               (_%$e117871%_ (pair? _%e117869%_)))
          (if _%$e117871%_ _%$e117871%_ (null? _%e117869%_)))))
    (define gx#stx-vector?
      (lambda (_%e117865%_) (vector? (gx#stx-e _%e117865%_))))
    (define gx#stx-box? (lambda (_%e117863%_) (box? (gx#stx-e _%e117863%_))))
    (define gx#stx-eq?
      (lambda (_%x117860%_ _%y117861%_)
        (eq? (gx#stx-e _%x117860%_) (gx#stx-e _%y117861%_))))
    (define gx#stx-eqv?
      (lambda (_%x117857%_ _%y117858%_)
        (eqv? (gx#stx-e _%x117857%_) (gx#stx-e _%y117858%_))))
    (define gx#stx-equal?
      (lambda (_%x117854%_ _%y117855%_)
        (equal? (gx#stx-e _%x117854%_) (gx#stx-e _%y117855%_))))
    (define gx#stx-false? (lambda (_%x117852%_) (not (gx#stx-e _%x117852%_))))
    (define gx#stx-identifier
      (lambda (_%template117849%_ . _%args117850%_)
        (gx#datum->syntax__1
         _%template117849%_
         (apply make-symbol (gx#syntax->datum _%args117850%_))
         (gx#stx-source _%template117849%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx117847%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx117847%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx117842%_)
        (if (##structure-direct-instance-of?
             _%stx117842%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx117842%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx117842%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx117842%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx117842%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx117838%_)
        (let ((_%stx117840%_ (gx#stx-unwrap__0 _%stx117838%_)))
          (if (gx#identifier-quote? _%stx117840%_)
              (##unchecked-structure-ref _%stx117840%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx117793%_)
        (let* ((_%g117794117804%_ (gx#stx-e _%stx117793%_))
               (_%else117797117812%_ (lambda () '#f)))
          (let ((_%K117800117826%_
                 (lambda (_%rest117823%_ _%hd117824%_)
                   (if (gx#identifier? _%hd117824%_)
                       (gx#identifier-list? _%rest117823%_)
                       '#f)))
                (_%K117799117817%_ (lambda () '#t)))
            (let ((_%try-match117796117820%_
                   (lambda ()
                     (if (null? _%g117794117804%_)
                         (_%K117799117817%_)
                         (_%else117797117812%_)))))
              (if (pair? _%g117794117804%_)
                  (let ((_%tl117802117831%_ (##cdr _%g117794117804%_))
                        (_%hd117801117829%_ (##car _%g117794117804%_)))
                    (let ((_%hd117834%_ _%hd117801117829%_)
                          (_%rest117836%_ _%tl117802117831%_))
                      (_%K117800117826%_ _%rest117836%_ _%hd117834%_)))
                  (_%try-match117796117820%_)))))))
    (define gx#genident__%
      (lambda (_%e117770%_ _%src117771%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e117773%_ (gx#stx-e _%e117770%_)))
                   (if (interned-symbol? _%e117773%_) _%e117773%_ 'g)))
         (let ((_%$e117775%_ (gx#stx-source _%e117770%_)))
           (if _%$e117775%_ _%$e117775%_ _%src117771%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e117782%_ 'g) (_%src117784%_ '#f))
          (gx#genident__% _%e117782%_ _%src117784%_))))
    (define gx#genident__1
      (lambda (_%e117786%_)
        (let ((_%src117788%_ '#f))
          (gx#genident__% _%e117786%_ _%src117788%_))))
    (define gx#genident
      (lambda _g118253_
        (let ((_g118252_ (##length _g118253_)))
          (cond ((##fx= _g118252_ 0) (apply gx#genident__0 _g118253_))
                ((##fx= _g118252_ 1) (apply gx#genident__1 _g118253_))
                ((##fx= _g118252_ 2) (apply gx#genident__% _g118253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g118253_))))))
    (define gx#gentemps
      (lambda (_%stx-lst117767%_) (gx#stx-map1 gx#genident _%stx-lst117767%_)))
    (define gx#syntax->list
      (lambda (_%stx117765%_) (gx#stx-map1 values _%stx117765%_)))
    (define gx#stx-car
      (lambda (_%stx117762%_)
        (declare (safe))
        (car (gx#syntax-e _%stx117762%_))))
    (define gx#stx-cdr
      (lambda (_%stx117759%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx117759%_))))
    (define gx#stx-length
      (lambda (_%stx117724%_)
        (let _%lp117726%_ ((_%rest117728%_ _%stx117724%_) (_%n117729%_ '0))
          (let* ((_%g117730117738%_ (gx#stx-e _%rest117728%_))
                 (_%else117732117746%_ (lambda () _%n117729%_))
                 (_%K117734117751%_
                  (lambda (_%rest117749%_)
                    (_%lp117726%_ _%rest117749%_ (##fx+ _%n117729%_ '1)))))
            (if (pair? _%g117730117738%_)
                (let* ((_%tl117736117754%_ (##cdr _%g117730117738%_))
                       (_%rest117757%_ _%tl117736117754%_))
                  (_%K117734117751%_ _%rest117757%_))
                (_%else117732117746%_))))))
    (define gx#stx-for-each
      (lambda _g118255_
        (let ((_g118254_ (##length _g118255_)))
          (cond ((##fx= _g118254_ 2) (apply gx#stx-for-each1 _g118255_))
                ((##fx= _g118254_ 3) (apply gx#stx-for-each2 _g118255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g118255_))))))
    (define gx#stx-for-each1
      (lambda (_%f117667%_ _%stx117668%_)
        (if (procedure? _%f117667%_)
            '#!void
            (error '"expected procedure" _%f117667%_))
        (let _%lp117670%_ ((_%rest117672%_ _%stx117668%_))
          (let* ((_%g117673117683%_ (gx#syntax-e _%rest117672%_))
                 (_%else117676117691%_
                  (lambda () (_%f117667%_ _%rest117672%_))))
            (let ((_%K117679117705%_
                   (lambda (_%rest117702%_ _%hd117703%_)
                     (_%f117667%_ _%hd117703%_)
                     (_%lp117670%_ _%rest117702%_)))
                  (_%K117678117696%_ (lambda () '#!void)))
              (let ((_%try-match117675117699%_
                     (lambda ()
                       (if (null? _%g117673117683%_)
                           (_%K117678117696%_)
                           (_%else117676117691%_)))))
                (if (pair? _%g117673117683%_)
                    (let ((_%tl117681117710%_ (##cdr _%g117673117683%_))
                          (_%hd117680117708%_ (##car _%g117673117683%_)))
                      (let ((_%hd117713%_ _%hd117680117708%_)
                            (_%rest117715%_ _%tl117681117710%_))
                        (_%K117679117705%_ _%rest117715%_ _%hd117713%_)))
                    (_%try-match117675117699%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f117572%_ _%xstx117573%_ _%ystx117574%_)
        (if (procedure? _%f117572%_)
            '#!void
            (error '"expected procedure" _%f117572%_))
        (let _%lp117576%_ ((_%xrest117578%_ _%xstx117573%_)
                           (_%yrest117579%_ _%ystx117574%_))
          (let* ((_%g117580117590%_ (gx#syntax-e _%xrest117578%_))
                 (_%else117583117598%_ (lambda () '#!void)))
            (let ((_%K117586117655%_
                   (lambda (_%xrest117624%_ _%xhd117625%_)
                     (let* ((_%g117626117633%_ (gx#syntax-e _%yrest117579%_))
                            (_%E117628117637%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g117626117633%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K117629117643%_
                             (lambda (_%yrest117640%_ _%yhd117641%_)
                               (_%f117572%_ _%xhd117625%_ _%yhd117641%_)
                               (_%lp117576%_
                                _%xrest117624%_
                                _%yrest117640%_))))
                       (if (pair? _%g117626117633%_)
                           (let ((_%hd117630117646%_ (##car _%g117626117633%_))
                                 (_%tl117631117648%_
                                  (##cdr _%g117626117633%_)))
                             (let* ((_%yhd117651%_ _%hd117630117646%_)
                                    (_%yrest117653%_ _%tl117631117648%_))
                               (_%K117629117643%_
                                _%yrest117653%_
                                _%yhd117651%_)))
                           (_%E117628117637%_)))))
                  (_%K117585117618%_
                   (lambda ()
                     (let* ((_%yrest117602117607%_ _%yrest117579%_)
                            (_%E117604117611%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest117602117607%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K117605117615%_
                             (lambda ()
                               (_%f117572%_ _%xrest117578%_ _%yrest117579%_))))
                       (if (gx#stx-null? _%yrest117602117607%_)
                           (_%E117604117611%_)
                           (_%K117605117615%_))))))
              (let ((_%try-match117582117621%_
                     (lambda ()
                       (if (null? _%g117580117590%_)
                           (_%else117583117598%_)
                           (_%K117585117618%_)))))
                (if (pair? _%g117580117590%_)
                    (let ((_%tl117588117660%_ (##cdr _%g117580117590%_))
                          (_%hd117587117658%_ (##car _%g117580117590%_)))
                      (let ((_%xhd117663%_ _%hd117587117658%_)
                            (_%xrest117665%_ _%tl117588117660%_))
                        (_%K117586117655%_ _%xrest117665%_ _%xhd117663%_)))
                    (_%try-match117582117621%_))))))))
    (define gx#stx-map
      (lambda _g118257_
        (let ((_g118256_ (##length _g118257_)))
          (cond ((##fx= _g118256_ 2) (apply gx#stx-map1 _g118257_))
                ((##fx= _g118256_ 3) (apply gx#stx-map2 _g118257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g118257_))))))
    (define gx#stx-map1
      (lambda (_%f117515%_ _%stx117516%_)
        (if (procedure? _%f117515%_)
            '#!void
            (error '"expected procedure" _%f117515%_))
        (let _%recur117518%_ ((_%rest117520%_ _%stx117516%_))
          (let* ((_%g117521117531%_ (gx#syntax-e _%rest117520%_))
                 (_%else117524117539%_
                  (lambda () (_%f117515%_ _%rest117520%_))))
            (let ((_%K117527117553%_
                   (lambda (_%rest117550%_ _%hd117551%_)
                     (cons (_%f117515%_ _%hd117551%_)
                           (_%recur117518%_ _%rest117550%_))))
                  (_%K117526117544%_ (lambda () '())))
              (let ((_%try-match117523117547%_
                     (lambda ()
                       (if (null? _%g117521117531%_)
                           (_%K117526117544%_)
                           (_%else117524117539%_)))))
                (if (pair? _%g117521117531%_)
                    (let ((_%tl117529117558%_ (##cdr _%g117521117531%_))
                          (_%hd117528117556%_ (##car _%g117521117531%_)))
                      (let ((_%hd117561%_ _%hd117528117556%_)
                            (_%rest117563%_ _%tl117529117558%_))
                        (_%K117527117553%_ _%rest117563%_ _%hd117561%_)))
                    (_%try-match117523117547%_))))))))
    (define gx#stx-map2
      (lambda (_%f117420%_ _%xstx117421%_ _%ystx117422%_)
        (if (procedure? _%f117420%_)
            '#!void
            (error '"expected procedure" _%f117420%_))
        (let _%recur117424%_ ((_%xrest117426%_ _%xstx117421%_)
                              (_%yrest117427%_ _%ystx117422%_))
          (let* ((_%g117428117438%_ (gx#syntax-e _%xrest117426%_))
                 (_%else117431117446%_ (lambda () '())))
            (let ((_%K117434117503%_
                   (lambda (_%xrest117472%_ _%xhd117473%_)
                     (let* ((_%g117474117481%_ (gx#syntax-e _%yrest117427%_))
                            (_%E117476117485%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g117474117481%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K117477117491%_
                             (lambda (_%yrest117488%_ _%yhd117489%_)
                               (cons (_%f117420%_ _%xhd117473%_ _%yhd117489%_)
                                     (_%recur117424%_
                                      _%xrest117472%_
                                      _%yrest117488%_)))))
                       (if (pair? _%g117474117481%_)
                           (let ((_%hd117478117494%_ (##car _%g117474117481%_))
                                 (_%tl117479117496%_
                                  (##cdr _%g117474117481%_)))
                             (let* ((_%yhd117499%_ _%hd117478117494%_)
                                    (_%yrest117501%_ _%tl117479117496%_))
                               (_%K117477117491%_
                                _%yrest117501%_
                                _%yhd117499%_)))
                           (_%E117476117485%_)))))
                  (_%K117433117466%_
                   (lambda ()
                     (let* ((_%yrest117450117455%_ _%yrest117427%_)
                            (_%E117452117459%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest117450117455%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K117453117463%_
                             (lambda ()
                               (_%f117420%_ _%xrest117426%_ _%yrest117427%_))))
                       (if (gx#stx-null? _%yrest117450117455%_)
                           (_%E117452117459%_)
                           (_%K117453117463%_))))))
              (let ((_%try-match117430117469%_
                     (lambda ()
                       (if (null? _%g117428117438%_)
                           (_%else117431117446%_)
                           (_%K117433117466%_)))))
                (if (pair? _%g117428117438%_)
                    (let ((_%tl117436117508%_ (##cdr _%g117428117438%_))
                          (_%hd117435117506%_ (##car _%g117428117438%_)))
                      (let ((_%xhd117511%_ _%hd117435117506%_)
                            (_%xrest117513%_ _%tl117436117508%_))
                        (_%K117434117503%_ _%xrest117513%_ _%xhd117511%_)))
                    (_%try-match117430117469%_))))))))
    (define gx#stx-andmap
      (lambda (_%f117370%_ _%stx117371%_)
        (if (procedure? _%f117370%_)
            '#!void
            (error '"expected procedure" _%f117370%_))
        (let _%lp117373%_ ((_%rest117375%_ _%stx117371%_))
          (let* ((_%g117376117386%_ (gx#syntax-e _%rest117375%_))
                 (_%else117379117394%_
                  (lambda () (_%f117370%_ _%rest117375%_))))
            (let ((_%K117382117408%_
                   (lambda (_%rest117405%_ _%hd117406%_)
                     (if (_%f117370%_ _%hd117406%_)
                         (_%lp117373%_ _%rest117405%_)
                         '#f)))
                  (_%K117381117399%_ (lambda () '#t)))
              (let ((_%try-match117378117402%_
                     (lambda ()
                       (if (null? _%g117376117386%_)
                           (_%K117381117399%_)
                           (_%else117379117394%_)))))
                (if (pair? _%g117376117386%_)
                    (let ((_%tl117384117413%_ (##cdr _%g117376117386%_))
                          (_%hd117383117411%_ (##car _%g117376117386%_)))
                      (let ((_%hd117416%_ _%hd117383117411%_)
                            (_%rest117418%_ _%tl117384117413%_))
                        (_%K117382117408%_ _%rest117418%_ _%hd117416%_)))
                    (_%try-match117378117402%_))))))))
    (define gx#stx-ormap
      (lambda (_%f117317%_ _%stx117318%_)
        (if (procedure? _%f117317%_)
            '#!void
            (error '"expected procedure" _%f117317%_))
        (let _%lp117320%_ ((_%rest117322%_ _%stx117318%_))
          (let* ((_%g117323117333%_ (gx#syntax-e _%rest117322%_))
                 (_%else117326117341%_
                  (lambda () (_%f117317%_ _%rest117322%_))))
            (let ((_%K117329117358%_
                   (lambda (_%rest117352%_ _%hd117353%_)
                     (let ((_%$e117355%_ (_%f117317%_ _%hd117353%_)))
                       (if _%$e117355%_
                           _%$e117355%_
                           (_%lp117320%_ _%rest117352%_)))))
                  (_%K117328117346%_ (lambda () '#f)))
              (let ((_%try-match117325117349%_
                     (lambda ()
                       (if (null? _%g117323117333%_)
                           (_%K117328117346%_)
                           (_%else117326117341%_)))))
                (if (pair? _%g117323117333%_)
                    (let ((_%tl117331117363%_ (##cdr _%g117323117333%_))
                          (_%hd117330117361%_ (##car _%g117323117333%_)))
                      (let ((_%hd117366%_ _%hd117330117361%_)
                            (_%rest117368%_ _%tl117331117363%_))
                        (_%K117329117358%_ _%rest117368%_ _%hd117366%_)))
                    (_%try-match117325117349%_))))))))
    (define gx#stx-foldl
      (lambda (_%f117265%_ _%iv117266%_ _%stx117267%_)
        (if (procedure? _%f117265%_)
            '#!void
            (error '"expected procedure" _%f117265%_))
        (let _%lp117269%_ ((_%r117271%_ _%iv117266%_)
                           (_%rest117272%_ _%stx117267%_))
          (let* ((_%g117273117283%_ (gx#syntax-e _%rest117272%_))
                 (_%else117276117291%_
                  (lambda () (_%f117265%_ _%rest117272%_ _%r117271%_))))
            (let ((_%K117279117305%_
                   (lambda (_%rest117302%_ _%hd117303%_)
                     (_%lp117269%_
                      (_%f117265%_ _%hd117303%_ _%r117271%_)
                      _%rest117302%_)))
                  (_%K117278117296%_ (lambda () _%r117271%_)))
              (let ((_%try-match117275117299%_
                     (lambda ()
                       (if (null? _%g117273117283%_)
                           (_%K117278117296%_)
                           (_%else117276117291%_)))))
                (if (pair? _%g117273117283%_)
                    (let ((_%tl117281117310%_ (##cdr _%g117273117283%_))
                          (_%hd117280117308%_ (##car _%g117273117283%_)))
                      (let ((_%hd117313%_ _%hd117280117308%_)
                            (_%rest117315%_ _%tl117281117310%_))
                        (_%K117279117305%_ _%rest117315%_ _%hd117313%_)))
                    (_%try-match117275117299%_))))))))
    (define gx#stx-foldr
      (lambda (_%f117214%_ _%iv117215%_ _%stx117216%_)
        (if (procedure? _%f117214%_)
            '#!void
            (error '"expected procedure" _%f117214%_))
        (let _%recur117218%_ ((_%rest117220%_ _%stx117216%_))
          (let* ((_%g117221117231%_ (gx#syntax-e _%rest117220%_))
                 (_%else117224117239%_
                  (lambda () (_%f117214%_ _%rest117220%_ _%iv117215%_))))
            (let ((_%K117227117253%_
                   (lambda (_%rest117250%_ _%hd117251%_)
                     (_%f117214%_
                      _%hd117251%_
                      (_%recur117218%_ _%rest117250%_))))
                  (_%K117226117244%_ (lambda () _%iv117215%_)))
              (let ((_%try-match117223117247%_
                     (lambda ()
                       (if (null? _%g117221117231%_)
                           (_%K117226117244%_)
                           (_%else117224117239%_)))))
                (if (pair? _%g117221117231%_)
                    (let ((_%tl117229117258%_ (##cdr _%g117221117231%_))
                          (_%hd117228117256%_ (##car _%g117221117231%_)))
                      (let ((_%hd117261%_ _%hd117228117256%_)
                            (_%rest117263%_ _%tl117229117258%_))
                        (_%K117227117253%_ _%rest117263%_ _%hd117261%_)))
                    (_%try-match117223117247%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx117212%_) (gx#stx-foldl cons '() _%stx117212%_)))
    (define gx#stx-last
      (lambda (_%stx117173%_)
        (let _%lp117175%_ ((_%rest117177%_ _%stx117173%_))
          (let* ((_%g117178117186%_ (gx#syntax-e _%rest117177%_))
                 (_%else117180117194%_ (lambda () _%rest117177%_))
                 (_%K117182117200%_
                  (lambda (_%rest117197%_ _%hd117198%_)
                    (if (gx#stx-null? _%rest117197%_)
                        _%hd117198%_
                        (_%lp117175%_ _%rest117197%_)))))
            (if (pair? _%g117178117186%_)
                (let ((_%hd117183117203%_ (##car _%g117178117186%_))
                      (_%tl117184117205%_ (##cdr _%g117178117186%_)))
                  (let* ((_%hd117208%_ _%hd117183117203%_)
                         (_%rest117210%_ _%tl117184117205%_))
                    (_%K117182117200%_ _%rest117210%_ _%hd117208%_)))
                (_%else117180117194%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx117144%_)
        (let _%lp117146%_ ((_%hd117148%_ _%stx117144%_))
          (let* ((_%g117149117156%_ (gx#syntax-e _%hd117148%_))
                 (_%E117151117160%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g117149117156%_
                           '([_ . rest]))
                    '#!void))
                 (_%K117152117165%_
                  (lambda (_%rest117163%_)
                    (if (gx#stx-pair? _%rest117163%_)
                        (_%lp117146%_ _%rest117163%_)
                        _%hd117148%_))))
            (if (pair? _%g117149117156%_)
                (let* ((_%tl117154117168%_ (##cdr _%g117149117156%_))
                       (_%rest117171%_ _%tl117154117168%_))
                  (_%K117152117165%_ _%rest117171%_))
                (_%E117151117160%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx117113%_ _%k117114%_)
        (let _%lp117116%_ ((_%rest117118%_ _%stx117113%_)
                           (_%k117119%_ _%k117114%_))
          (if (fxpositive? _%k117119%_)
              (let* ((_%g117120117127%_ (gx#syntax-e _%rest117118%_))
                     (_%E117122117131%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g117120117127%_
                               '([_ . rest]))
                        '#!void))
                     (_%K117123117136%_
                      (lambda (_%rest117134%_)
                        (_%lp117116%_ _%rest117134%_ (##fx- _%k117119%_ '1)))))
                (if (pair? _%g117120117127%_)
                    (let* ((_%tl117125117139%_ (##cdr _%g117120117127%_))
                           (_%rest117142%_ _%tl117125117139%_))
                      (_%K117123117136%_ _%rest117142%_))
                    (_%E117122117131%_)))
              _%rest117118%_))))
    (define gx#stx-list-ref
      (lambda (_%stx117110%_ _%k117111%_)
        (gx#stx-car (gx#stx-list-tail _%stx117110%_ _%k117111%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx117022%_ _%key?117023%_)
        (if (procedure? _%key?117023%_)
            '#!void
            (error '"expected procedure" _%key?117023%_))
        (let _%lp117025%_ ((_%rest117027%_ _%stx117022%_))
          (let* ((_%g117028117038%_ (gx#stx-e _%rest117027%_))
                 (_%else117031117046%_ (lambda () '#f)))
            (let ((_%K117034117088%_
                   (lambda (_%rest117057%_ _%hd117058%_)
                     (if (_%key?117023%_ _%hd117058%_)
                         (let* ((_%g117059117067%_ (gx#stx-e _%rest117057%_))
                                (_%else117061117075%_ (lambda () '#f))
                                (_%K117063117080%_
                                 (lambda (_%rest117078%_)
                                   (_%lp117025%_ _%rest117078%_))))
                           (if (pair? _%g117059117067%_)
                               (let* ((_%tl117065117083%_
                                       (##cdr _%g117059117067%_))
                                      (_%rest117086%_ _%tl117065117083%_))
                                 (_%lp117025%_ _%rest117086%_))
                               (_%else117061117075%_)))
                         '#f)))
                  (_%K117033117051%_ (lambda () '#t)))
              (let ((_%try-match117030117054%_
                     (lambda ()
                       (if (null? _%g117028117038%_)
                           (_%K117033117051%_)
                           (_%else117031117046%_)))))
                (if (pair? _%g117028117038%_)
                    (let ((_%tl117036117093%_ (##cdr _%g117028117038%_))
                          (_%hd117035117091%_ (##car _%g117028117038%_)))
                      (let ((_%hd117096%_ _%hd117035117091%_)
                            (_%rest117098%_ _%tl117036117093%_))
                        (_%K117034117088%_ _%rest117098%_ _%hd117096%_)))
                    (_%try-match117030117054%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx117103%_)
        (let ((_%key?117105%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx117103%_ _%key?117105%_))))
    (define gx#stx-plist?
      (lambda _g118259_
        (let ((_g118258_ (##length _g118259_)))
          (cond ((##fx= _g118258_ 1) (apply gx#stx-plist?__0 _g118259_))
                ((##fx= _g118258_ 2) (apply gx#stx-plist?__% _g118259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g118259_))))))
    (define gx#stx-getq__%
      (lambda (_%key116940%_ _%stx116941%_ _%key=?116942%_)
        (if (procedure? _%key=?116942%_)
            '#!void
            (error '"expected procedure" _%key=?116942%_))
        (let _%lp116944%_ ((_%rest116946%_ _%stx116941%_))
          (let* ((_%g116947116955%_ (gx#syntax-e _%rest116946%_))
                 (_%else116949116963%_ (lambda () '#f))
                 (_%K116951116997%_
                  (lambda (_%rest116966%_ _%hd116967%_)
                    (let* ((_%g116968116975%_ (gx#syntax-e _%rest116966%_))
                           (_%E116970116979%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g116968116975%_
                                     '([val . rest]))
                              '#!void))
                           (_%K116971116985%_
                            (lambda (_%rest116982%_ _%val116983%_)
                              (if (_%key=?116942%_ _%hd116967%_ _%key116940%_)
                                  _%val116983%_
                                  (_%lp116944%_ _%rest116982%_)))))
                      (if (pair? _%g116968116975%_)
                          (let ((_%hd116972116988%_ (##car _%g116968116975%_))
                                (_%tl116973116990%_ (##cdr _%g116968116975%_)))
                            (let* ((_%val116993%_ _%hd116972116988%_)
                                   (_%rest116995%_ _%tl116973116990%_))
                              (_%K116971116985%_
                               _%rest116995%_
                               _%val116993%_)))
                          (_%E116970116979%_))))))
            (if (pair? _%g116947116955%_)
                (let ((_%hd116952117000%_ (##car _%g116947116955%_))
                      (_%tl116953117002%_ (##cdr _%g116947116955%_)))
                  (let* ((_%hd117005%_ _%hd116952117000%_)
                         (_%rest117007%_ _%tl116953117002%_))
                    (_%K116951116997%_ _%rest117007%_ _%hd117005%_)))
                (_%else116949116963%_))))))
    (define gx#stx-getq__0
      (lambda (_%key117012%_ _%stx117013%_)
        (let ((_%key=?117015%_ gx#stx-eq?))
          (gx#stx-getq__% _%key117012%_ _%stx117013%_ _%key=?117015%_))))
    (define gx#stx-getq
      (lambda _g118261_
        (let ((_g118260_ (##length _g118261_)))
          (cond ((##fx= _g118260_ 2) (apply gx#stx-getq__0 _g118261_))
                ((##fx= _g118260_ 3) (apply gx#stx-getq__% _g118261_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g118261_))))))))
