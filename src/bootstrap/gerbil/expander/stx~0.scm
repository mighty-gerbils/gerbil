(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1713631266)
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
      (lambda _%$args118009%_
        (apply make-instance gx#identifier-wrap::t _%$args118009%_)))
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
      (lambda _%$args118006%_
        (apply make-instance gx#syntax-wrap::t _%$args118006%_)))
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
      (lambda _%$args118003%_
        (apply make-instance gx#syntax-quote::t _%$args118003%_)))
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
      (lambda (_%stx118001%_) (symbol? (gx#stx-e _%stx118001%_))))
    (define gx#identifier-quote?
      (lambda (_%stx117999%_)
        (if (##structure-direct-instance-of? _%stx117999%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx117999%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx117994%_)
        (if (##structure-direct-instance-of? _%stx117994%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx117994%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx117994%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx117989%_)
        (if (##structure-direct-instance-of? _%stx117989%_ 'gx#syntax-quote::t)
            _%stx117989%_
            (if (##structure-direct-instance-of?
                 _%stx117989%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx117989%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx117963%_)
        (if (##structure-direct-instance-of? _%stx117963%_ 'gx#syntax-wrap::t)
            (let _%lp117966%_ ((_%e117968%_
                                (##unchecked-structure-ref
                                 _%stx117963%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks117969%_
                                (cons (##unchecked-structure-ref
                                       _%stx117963%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e117968%_)
                  (let ((_%$e117972%_
                         (##type-id (##structure-type _%e117968%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e117972%_)
                        (_%lp117966%_
                         (##unchecked-structure-ref _%e117968%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e117968%_ '3 '#f '#f)
                          _%marks117969%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e117972%_)
                                (eq? 'gx#identifier-wrap::t _%$e117972%_))
                            (##unchecked-structure-ref _%e117968%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e117972%_)
                                (_%lp117966%_
                                 (##unchecked-structure-ref
                                  _%e117968%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks117969%_)
                                _%e117968%_))))
                  (if (null? _%marks117969%_)
                      _%e117968%_
                      (if (pair? _%e117968%_)
                          (cons (gx#stx-wrap
                                 (##car _%e117968%_)
                                 _%marks117969%_)
                                (gx#stx-wrap
                                 (##cdr _%e117968%_)
                                 _%marks117969%_))
                          (if (vector? _%e117968%_)
                              (vector-map
                               (lambda (_%g117980117982%_)
                                 (gx#stx-wrap
                                  _%g117980117982%_
                                  _%marks117969%_))
                               _%e117968%_)
                              (if (box? _%e117968%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e117968%_)
                                        _%marks117969%_))
                                  _%e117968%_))))))
            (if (##structure-instance-of? _%stx117963%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx117963%_ '1 '#f '#f)
                _%stx117963%_))))
    (define gx#syntax->datum
      (lambda (_%stx117956%_)
        (if (##structure-instance-of? _%stx117956%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx117956%_ '1 '#f '#f))
            (if (pair? _%stx117956%_)
                (cons (gx#syntax->datum (##car _%stx117956%_))
                      (gx#syntax->datum (##cdr _%stx117956%_)))
                (if (vector? _%stx117956%_)
                    (vector-map gx#syntax->datum _%stx117956%_)
                    (if (box? _%stx117956%_)
                        (box (gx#syntax->datum (unbox _%stx117956%_)))
                        _%stx117956%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx117890%_ _%datum117891%_ _%src117892%_ _%quote?117893%_)
        (letrec ((_%wrap-datum117895%_
                  (lambda (_%e117928%_ _%marks117929%_)
                    (_%wrap-inner117897%_
                     _%e117928%_
                     (lambda (_%g117930117932%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g117930117932%_
                        _%src117892%_
                        _%marks117929%_)))))
                 (_%wrap-quote117896%_
                  (lambda (_%e117920%_ _%ctx117921%_ _%marks117922%_)
                    (_%wrap-inner117897%_
                     _%e117920%_
                     (lambda (_%g117923117925%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g117923117925%_
                        _%src117892%_
                        _%ctx117921%_
                        _%marks117922%_)))))
                 (_%wrap-inner117897%_
                  (lambda (_%e117908%_ _%wrap-e117909%_)
                    (let _%recur117911%_ ((_%e117913%_ _%e117908%_))
                      (if (symbol? _%e117913%_)
                          (_%wrap-e117909%_ _%e117913%_)
                          (if (pair? _%e117913%_)
                              (cons (_%recur117911%_ (##car _%e117913%_))
                                    (_%recur117911%_ (##cdr _%e117913%_)))
                              (if (vector? _%e117913%_)
                                  (vector-map _%recur117911%_ _%e117913%_)
                                  (if (box? _%e117913%_)
                                      (box (_%recur117911%_
                                            (unbox _%e117913%_)))
                                      _%e117913%_)))))))
                 (_%wrap-outer117898%_
                  (lambda (_%e117906%_)
                    (if (##structure-instance-of? _%e117906%_ 'gerbil#AST::t)
                        _%e117906%_
                        (##structure gx#AST::t _%e117906%_ _%src117892%_)))))
          (if (##structure-instance-of? _%datum117891%_ 'gerbil#AST::t)
              _%datum117891%_
              (if (not _%stx117890%_)
                  (##structure gx#AST::t _%datum117891%_ _%src117892%_)
                  (if (gx#identifier? _%stx117890%_)
                      (let ((_%stx117903%_ (gx#stx-unwrap__0 _%stx117890%_)))
                        (_%wrap-outer117898%_
                         (if (##structure-direct-instance-of?
                              _%stx117903%_
                              'gx#syntax-quote::t)
                             (if _%quote?117893%_
                                 (_%wrap-quote117896%_
                                  _%datum117891%_
                                  (##unchecked-structure-ref
                                   _%stx117903%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx117903%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum117895%_
                                  _%datum117891%_
                                  (##unchecked-structure-ref
                                   _%stx117903%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum117895%_
                              _%datum117891%_
                              (##unchecked-structure-ref
                               _%stx117903%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx117890%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx117938%_ _%datum117939%_)
        (let* ((_%src117941%_ '#f) (_%quote?117943%_ '#t))
          (gx#datum->syntax__%
           _%stx117938%_
           _%datum117939%_
           _%src117941%_
           _%quote?117943%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx117945%_ _%datum117946%_ _%src117947%_)
        (let ((_%quote?117949%_ '#t))
          (gx#datum->syntax__%
           _%stx117945%_
           _%datum117946%_
           _%src117947%_
           _%quote?117949%_))))
    (define gx#datum->syntax
      (lambda _g118090_
        (let ((_g118089_ (##length _g118090_)))
          (cond ((##fx= _g118089_ 2) (apply gx#datum->syntax__0 _g118090_))
                ((##fx= _g118089_ 3) (apply gx#datum->syntax__1 _g118090_))
                ((##fx= _g118089_ 4) (apply gx#datum->syntax__% _g118090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g118090_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx117856%_ _%marks117857%_)
        (let _%lp117859%_ ((_%e117861%_ _%stx117856%_)
                           (_%marks117862%_ _%marks117857%_)
                           (_%src117863%_ (gx#stx-source _%stx117856%_)))
          (if (##structure-direct-instance-of? _%e117861%_ 'gx#syntax-wrap::t)
              (_%lp117859%_
               (##unchecked-structure-ref _%e117861%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e117861%_ '3 '#f '#f)
                _%marks117862%_)
               (##unchecked-structure-ref _%e117861%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e117861%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks117862%_)
                      _%e117861%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e117861%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e117861%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e117861%_ '3 '#f '#f)
                        _%marks117862%_)))
                  (if (##structure-direct-instance-of?
                       _%e117861%_
                       'gx#syntax-quote::t)
                      _%e117861%_
                      (if (##structure-instance-of? _%e117861%_ 'gerbil#AST::t)
                          (_%lp117859%_
                           (##unchecked-structure-ref _%e117861%_ '1 '#f '#f)
                           _%marks117862%_
                           (##unchecked-structure-ref _%e117861%_ '2 '#f '#f))
                          (if (symbol? _%e117861%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e117861%_
                               _%src117863%_
                               (reverse _%marks117862%_))
                              (if (null? _%marks117862%_)
                                  _%e117861%_
                                  (if (pair? _%e117861%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e117861%_)
                                             _%marks117862%_)
                                            (gx#stx-wrap
                                             (##cdr _%e117861%_)
                                             _%marks117862%_))
                                      (if (vector? _%e117861%_)
                                          (vector-map
                                           (lambda (_%g117872117874%_)
                                             (gx#stx-wrap
                                              _%g117872117874%_
                                              _%marks117862%_))
                                           _%e117861%_)
                                          (if (box? _%e117861%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e117861%_)
                                                    _%marks117862%_))
                                              _%e117861%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx117882%_)
        (let ((_%marks117884%_ '()))
          (gx#stx-unwrap__% _%stx117882%_ _%marks117884%_))))
    (define gx#stx-unwrap
      (lambda _g118092_
        (let ((_g118091_ (##length _g118092_)))
          (cond ((##fx= _g118091_ 1) (apply gx#stx-unwrap__0 _g118092_))
                ((##fx= _g118091_ 2) (apply gx#stx-unwrap__% _g118092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g118092_))))))
    (define gx#stx-wrap
      (lambda (_%stx117849%_ _%marks117850%_)
        (__foldl1
         (lambda (_%mark117852%_ _%stx117853%_)
           (gx#stx-apply-mark _%stx117853%_ _%mark117852%_))
         _%stx117849%_
         _%marks117850%_)))
    (define gx#stx-rewrap
      (lambda (_%stx117843%_ _%marks117844%_)
        (__foldr1
         (lambda (_%mark117846%_ _%stx117847%_)
           (gx#stx-apply-mark _%stx117847%_ _%mark117846%_))
         _%stx117843%_
         _%marks117844%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx117837%_ _%mark117838%_)
        (if (##structure-direct-instance-of? _%stx117837%_ 'gx#syntax-quote::t)
            _%stx117837%_
            (if (and (##structure-direct-instance-of?
                      _%stx117837%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark117838%_
                          (##unchecked-structure-ref
                           _%stx117837%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx117837%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx117837%_
                 (gx#stx-source _%stx117837%_)
                 _%mark117838%_)))))
    (define gx#apply-mark
      (lambda (_%mark117801%_ _%marks117802%_)
        (let* ((_%marks117803117811%_ _%marks117802%_)
               (_%else117805117819%_
                (lambda () (cons _%mark117801%_ _%marks117802%_)))
               (_%K117807117825%_
                (lambda (_%rest117822%_ _%hd117823%_)
                  (if (eq? _%mark117801%_ _%hd117823%_)
                      _%rest117822%_
                      (cons _%mark117801%_ _%marks117802%_)))))
          (if (pair? _%marks117803117811%_)
              (let ((_%hd117808117828%_ (##car _%marks117803117811%_))
                    (_%tl117809117830%_ (##cdr _%marks117803117811%_)))
                (let* ((_%hd117833%_ _%hd117808117828%_)
                       (_%rest117835%_ _%tl117809117830%_))
                  (_%K117807117825%_ _%rest117835%_ _%hd117833%_)))
              (_%else117805117819%_)))))
    (define gx#stx-e
      (lambda (_%stx117796%_)
        (if (##structure-direct-instance-of? _%stx117796%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx117796%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx117796%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx117796%_ '1 '#f '#f)
                _%stx117796%_))))
    (define gx#stx-source
      (lambda (_%stx117794%_)
        (if (##structure-instance-of? _%stx117794%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx117794%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx117788%_ _%src117789%_)
        (if (or (##structure-instance-of? _%stx117788%_ 'gerbil#AST::t)
                (not _%src117789%_))
            _%stx117788%_
            (##structure gx#AST::t _%stx117788%_ _%src117789%_))))
    (define gx#stx-datum?
      (lambda (_%stx117786%_) (gx#self-quoting? (gx#stx-e _%stx117786%_))))
    (define gx#self-quoting?
      (lambda (_%x117769%_)
        (let ((_%$e117771%_ (immediate? _%x117769%_)))
          (if _%$e117771%_
              _%$e117771%_
              (let ((_%$e117774%_ (number? _%x117769%_)))
                (if _%$e117774%_
                    _%$e117774%_
                    (let ((_%$e117777%_ (keyword? _%x117769%_)))
                      (if _%$e117777%_
                          _%$e117777%_
                          (let ((_%$e117780%_ (string? _%x117769%_)))
                            (if _%$e117780%_
                                _%$e117780%_
                                (let ((_%$e117783%_ (vector? _%x117769%_)))
                                  (if _%$e117783%_
                                      _%$e117783%_
                                      (u8vector? _%x117769%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e117767%_) (boolean? (gx#stx-e _%e117767%_))))
    (define gx#stx-keyword?
      (lambda (_%e117765%_) (keyword? (gx#stx-e _%e117765%_))))
    (define gx#stx-char? (lambda (_%e117763%_) (char? (gx#stx-e _%e117763%_))))
    (define gx#stx-number?
      (lambda (_%e117761%_) (number? (gx#stx-e _%e117761%_))))
    (define gx#stx-fixnum?
      (lambda (_%e117759%_) (fixnum? (gx#stx-e _%e117759%_))))
    (define gx#stx-string?
      (lambda (_%e117757%_) (string? (gx#stx-e _%e117757%_))))
    (define gx#stx-null? (lambda (_%e117755%_) (null? (gx#stx-e _%e117755%_))))
    (define gx#stx-pair? (lambda (_%e117753%_) (pair? (gx#stx-e _%e117753%_))))
    (define gx#stx-list?
      (lambda (_%e117715%_)
        (let* ((_%g117716117725%_ (gx#stx-e _%e117715%_))
               (_%E117719117729%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117716117725%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K117721117745%_
                 (lambda (_%rest117743%_) (gx#stx-list? _%rest117743%_)))
                (_%K117720117735%_
                 (lambda (_%tail117733%_) (null? _%tail117733%_))))
            (if (pair? _%g117716117725%_)
                (let* ((_%tl117723117748%_ (##cdr _%g117716117725%_))
                       (_%rest117751%_ _%tl117723117748%_))
                  (gx#stx-list? _%rest117751%_))
                (let ((_%tail117738%_ _%g117716117725%_))
                  (null? _%tail117738%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e117708%_)
        (let* ((_%e117710%_ (gx#stx-e _%e117708%_))
               (_%$e117712%_ (pair? _%e117710%_)))
          (if _%$e117712%_ _%$e117712%_ (null? _%e117710%_)))))
    (define gx#stx-vector?
      (lambda (_%e117706%_) (vector? (gx#stx-e _%e117706%_))))
    (define gx#stx-box? (lambda (_%e117704%_) (box? (gx#stx-e _%e117704%_))))
    (define gx#stx-eq?
      (lambda (_%x117701%_ _%y117702%_)
        (eq? (gx#stx-e _%x117701%_) (gx#stx-e _%y117702%_))))
    (define gx#stx-eqv?
      (lambda (_%x117698%_ _%y117699%_)
        (eqv? (gx#stx-e _%x117698%_) (gx#stx-e _%y117699%_))))
    (define gx#stx-equal?
      (lambda (_%x117695%_ _%y117696%_)
        (equal? (gx#stx-e _%x117695%_) (gx#stx-e _%y117696%_))))
    (define gx#stx-false? (lambda (_%x117693%_) (not (gx#stx-e _%x117693%_))))
    (define gx#stx-identifier
      (lambda (_%template117690%_ . _%args117691%_)
        (gx#datum->syntax__1
         _%template117690%_
         (apply make-symbol (gx#syntax->datum _%args117691%_))
         (gx#stx-source _%template117690%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx117688%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx117688%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx117683%_)
        (if (##structure-direct-instance-of?
             _%stx117683%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx117683%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx117683%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx117683%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx117683%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx117679%_)
        (let ((_%stx117681%_ (gx#stx-unwrap__0 _%stx117679%_)))
          (if (gx#identifier-quote? _%stx117681%_)
              (##unchecked-structure-ref _%stx117681%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx117634%_)
        (let* ((_%g117635117645%_ (gx#stx-e _%stx117634%_))
               (_%else117638117653%_ (lambda () '#f)))
          (let ((_%K117641117667%_
                 (lambda (_%rest117664%_ _%hd117665%_)
                   (if (gx#identifier? _%hd117665%_)
                       (gx#identifier-list? _%rest117664%_)
                       '#f)))
                (_%K117640117658%_ (lambda () '#t)))
            (let ((_%try-match117637117661%_
                   (lambda ()
                     (if (null? _%g117635117645%_)
                         (_%K117640117658%_)
                         (_%else117638117653%_)))))
              (if (pair? _%g117635117645%_)
                  (let ((_%tl117643117672%_ (##cdr _%g117635117645%_))
                        (_%hd117642117670%_ (##car _%g117635117645%_)))
                    (let ((_%hd117675%_ _%hd117642117670%_)
                          (_%rest117677%_ _%tl117643117672%_))
                      (_%K117641117667%_ _%rest117677%_ _%hd117675%_)))
                  (_%try-match117637117661%_)))))))
    (define gx#genident__%
      (lambda (_%e117611%_ _%src117612%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e117614%_ (gx#stx-e _%e117611%_)))
                   (if (interned-symbol? _%e117614%_) _%e117614%_ 'g)))
         (let ((_%$e117616%_ (gx#stx-source _%e117611%_)))
           (if _%$e117616%_ _%$e117616%_ _%src117612%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e117623%_ 'g) (_%src117625%_ '#f))
          (gx#genident__% _%e117623%_ _%src117625%_))))
    (define gx#genident__1
      (lambda (_%e117627%_)
        (let ((_%src117629%_ '#f))
          (gx#genident__% _%e117627%_ _%src117629%_))))
    (define gx#genident
      (lambda _g118094_
        (let ((_g118093_ (##length _g118094_)))
          (cond ((##fx= _g118093_ 0) (apply gx#genident__0 _g118094_))
                ((##fx= _g118093_ 1) (apply gx#genident__1 _g118094_))
                ((##fx= _g118093_ 2) (apply gx#genident__% _g118094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g118094_))))))
    (define gx#gentemps
      (lambda (_%stx-lst117608%_) (gx#stx-map1 gx#genident _%stx-lst117608%_)))
    (define gx#syntax->list
      (lambda (_%stx117606%_) (gx#stx-map1 values _%stx117606%_)))
    (define gx#stx-car
      (lambda (_%stx117603%_)
        (declare (safe))
        (car (gx#syntax-e _%stx117603%_))))
    (define gx#stx-cdr
      (lambda (_%stx117600%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx117600%_))))
    (define gx#stx-length
      (lambda (_%stx117565%_)
        (let _%lp117567%_ ((_%rest117569%_ _%stx117565%_) (_%n117570%_ '0))
          (let* ((_%g117571117579%_ (gx#stx-e _%rest117569%_))
                 (_%else117573117587%_ (lambda () _%n117570%_))
                 (_%K117575117592%_
                  (lambda (_%rest117590%_)
                    (_%lp117567%_ _%rest117590%_ (##fx+ _%n117570%_ '1)))))
            (if (pair? _%g117571117579%_)
                (let* ((_%tl117577117595%_ (##cdr _%g117571117579%_))
                       (_%rest117598%_ _%tl117577117595%_))
                  (_%K117575117592%_ _%rest117598%_))
                (_%else117573117587%_))))))
    (define gx#stx-for-each
      (lambda _g118096_
        (let ((_g118095_ (##length _g118096_)))
          (cond ((##fx= _g118095_ 2) (apply gx#stx-for-each1 _g118096_))
                ((##fx= _g118095_ 3) (apply gx#stx-for-each2 _g118096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g118096_))))))
    (define gx#stx-for-each1
      (lambda (_%f117508%_ _%stx117509%_)
        (if (procedure? _%f117508%_)
            '#!void
            (error '"expected procedure" _%f117508%_))
        (let _%lp117511%_ ((_%rest117513%_ _%stx117509%_))
          (let* ((_%g117514117524%_ (gx#syntax-e _%rest117513%_))
                 (_%else117517117532%_
                  (lambda () (_%f117508%_ _%rest117513%_))))
            (let ((_%K117520117546%_
                   (lambda (_%rest117543%_ _%hd117544%_)
                     (_%f117508%_ _%hd117544%_)
                     (_%lp117511%_ _%rest117543%_)))
                  (_%K117519117537%_ (lambda () '#!void)))
              (let ((_%try-match117516117540%_
                     (lambda ()
                       (if (null? _%g117514117524%_)
                           (_%K117519117537%_)
                           (_%else117517117532%_)))))
                (if (pair? _%g117514117524%_)
                    (let ((_%tl117522117551%_ (##cdr _%g117514117524%_))
                          (_%hd117521117549%_ (##car _%g117514117524%_)))
                      (let ((_%hd117554%_ _%hd117521117549%_)
                            (_%rest117556%_ _%tl117522117551%_))
                        (_%K117520117546%_ _%rest117556%_ _%hd117554%_)))
                    (_%try-match117516117540%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f117413%_ _%xstx117414%_ _%ystx117415%_)
        (if (procedure? _%f117413%_)
            '#!void
            (error '"expected procedure" _%f117413%_))
        (let _%lp117417%_ ((_%xrest117419%_ _%xstx117414%_)
                           (_%yrest117420%_ _%ystx117415%_))
          (let* ((_%g117421117431%_ (gx#syntax-e _%xrest117419%_))
                 (_%else117424117439%_ (lambda () '#!void)))
            (let ((_%K117427117496%_
                   (lambda (_%xrest117465%_ _%xhd117466%_)
                     (let* ((_%g117467117474%_ (gx#syntax-e _%yrest117420%_))
                            (_%E117469117478%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g117467117474%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K117470117484%_
                             (lambda (_%yrest117481%_ _%yhd117482%_)
                               (_%f117413%_ _%xhd117466%_ _%yhd117482%_)
                               (_%lp117417%_
                                _%xrest117465%_
                                _%yrest117481%_))))
                       (if (pair? _%g117467117474%_)
                           (let ((_%hd117471117487%_ (##car _%g117467117474%_))
                                 (_%tl117472117489%_
                                  (##cdr _%g117467117474%_)))
                             (let* ((_%yhd117492%_ _%hd117471117487%_)
                                    (_%yrest117494%_ _%tl117472117489%_))
                               (_%K117470117484%_
                                _%yrest117494%_
                                _%yhd117492%_)))
                           (_%E117469117478%_)))))
                  (_%K117426117459%_
                   (lambda ()
                     (let* ((_%yrest117443117448%_ _%yrest117420%_)
                            (_%E117445117452%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest117443117448%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K117446117456%_
                             (lambda ()
                               (_%f117413%_ _%xrest117419%_ _%yrest117420%_))))
                       (if (gx#stx-null? _%yrest117443117448%_)
                           (_%E117445117452%_)
                           (_%K117446117456%_))))))
              (let ((_%try-match117423117462%_
                     (lambda ()
                       (if (null? _%g117421117431%_)
                           (_%else117424117439%_)
                           (_%K117426117459%_)))))
                (if (pair? _%g117421117431%_)
                    (let ((_%tl117429117501%_ (##cdr _%g117421117431%_))
                          (_%hd117428117499%_ (##car _%g117421117431%_)))
                      (let ((_%xhd117504%_ _%hd117428117499%_)
                            (_%xrest117506%_ _%tl117429117501%_))
                        (_%K117427117496%_ _%xrest117506%_ _%xhd117504%_)))
                    (_%try-match117423117462%_))))))))
    (define gx#stx-map
      (lambda _g118098_
        (let ((_g118097_ (##length _g118098_)))
          (cond ((##fx= _g118097_ 2) (apply gx#stx-map1 _g118098_))
                ((##fx= _g118097_ 3) (apply gx#stx-map2 _g118098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g118098_))))))
    (define gx#stx-map1
      (lambda (_%f117356%_ _%stx117357%_)
        (if (procedure? _%f117356%_)
            '#!void
            (error '"expected procedure" _%f117356%_))
        (let _%recur117359%_ ((_%rest117361%_ _%stx117357%_))
          (let* ((_%g117362117372%_ (gx#syntax-e _%rest117361%_))
                 (_%else117365117380%_
                  (lambda () (_%f117356%_ _%rest117361%_))))
            (let ((_%K117368117394%_
                   (lambda (_%rest117391%_ _%hd117392%_)
                     (cons (_%f117356%_ _%hd117392%_)
                           (_%recur117359%_ _%rest117391%_))))
                  (_%K117367117385%_ (lambda () '())))
              (let ((_%try-match117364117388%_
                     (lambda ()
                       (if (null? _%g117362117372%_)
                           (_%K117367117385%_)
                           (_%else117365117380%_)))))
                (if (pair? _%g117362117372%_)
                    (let ((_%tl117370117399%_ (##cdr _%g117362117372%_))
                          (_%hd117369117397%_ (##car _%g117362117372%_)))
                      (let ((_%hd117402%_ _%hd117369117397%_)
                            (_%rest117404%_ _%tl117370117399%_))
                        (_%K117368117394%_ _%rest117404%_ _%hd117402%_)))
                    (_%try-match117364117388%_))))))))
    (define gx#stx-map2
      (lambda (_%f117261%_ _%xstx117262%_ _%ystx117263%_)
        (if (procedure? _%f117261%_)
            '#!void
            (error '"expected procedure" _%f117261%_))
        (let _%recur117265%_ ((_%xrest117267%_ _%xstx117262%_)
                              (_%yrest117268%_ _%ystx117263%_))
          (let* ((_%g117269117279%_ (gx#syntax-e _%xrest117267%_))
                 (_%else117272117287%_ (lambda () '())))
            (let ((_%K117275117344%_
                   (lambda (_%xrest117313%_ _%xhd117314%_)
                     (let* ((_%g117315117322%_ (gx#syntax-e _%yrest117268%_))
                            (_%E117317117326%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g117315117322%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K117318117332%_
                             (lambda (_%yrest117329%_ _%yhd117330%_)
                               (cons (_%f117261%_ _%xhd117314%_ _%yhd117330%_)
                                     (_%recur117265%_
                                      _%xrest117313%_
                                      _%yrest117329%_)))))
                       (if (pair? _%g117315117322%_)
                           (let ((_%hd117319117335%_ (##car _%g117315117322%_))
                                 (_%tl117320117337%_
                                  (##cdr _%g117315117322%_)))
                             (let* ((_%yhd117340%_ _%hd117319117335%_)
                                    (_%yrest117342%_ _%tl117320117337%_))
                               (_%K117318117332%_
                                _%yrest117342%_
                                _%yhd117340%_)))
                           (_%E117317117326%_)))))
                  (_%K117274117307%_
                   (lambda ()
                     (let* ((_%yrest117291117296%_ _%yrest117268%_)
                            (_%E117293117300%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest117291117296%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K117294117304%_
                             (lambda ()
                               (_%f117261%_ _%xrest117267%_ _%yrest117268%_))))
                       (if (gx#stx-null? _%yrest117291117296%_)
                           (_%E117293117300%_)
                           (_%K117294117304%_))))))
              (let ((_%try-match117271117310%_
                     (lambda ()
                       (if (null? _%g117269117279%_)
                           (_%else117272117287%_)
                           (_%K117274117307%_)))))
                (if (pair? _%g117269117279%_)
                    (let ((_%tl117277117349%_ (##cdr _%g117269117279%_))
                          (_%hd117276117347%_ (##car _%g117269117279%_)))
                      (let ((_%xhd117352%_ _%hd117276117347%_)
                            (_%xrest117354%_ _%tl117277117349%_))
                        (_%K117275117344%_ _%xrest117354%_ _%xhd117352%_)))
                    (_%try-match117271117310%_))))))))
    (define gx#stx-andmap
      (lambda (_%f117211%_ _%stx117212%_)
        (if (procedure? _%f117211%_)
            '#!void
            (error '"expected procedure" _%f117211%_))
        (let _%lp117214%_ ((_%rest117216%_ _%stx117212%_))
          (let* ((_%g117217117227%_ (gx#syntax-e _%rest117216%_))
                 (_%else117220117235%_
                  (lambda () (_%f117211%_ _%rest117216%_))))
            (let ((_%K117223117249%_
                   (lambda (_%rest117246%_ _%hd117247%_)
                     (if (_%f117211%_ _%hd117247%_)
                         (_%lp117214%_ _%rest117246%_)
                         '#f)))
                  (_%K117222117240%_ (lambda () '#t)))
              (let ((_%try-match117219117243%_
                     (lambda ()
                       (if (null? _%g117217117227%_)
                           (_%K117222117240%_)
                           (_%else117220117235%_)))))
                (if (pair? _%g117217117227%_)
                    (let ((_%tl117225117254%_ (##cdr _%g117217117227%_))
                          (_%hd117224117252%_ (##car _%g117217117227%_)))
                      (let ((_%hd117257%_ _%hd117224117252%_)
                            (_%rest117259%_ _%tl117225117254%_))
                        (_%K117223117249%_ _%rest117259%_ _%hd117257%_)))
                    (_%try-match117219117243%_))))))))
    (define gx#stx-ormap
      (lambda (_%f117158%_ _%stx117159%_)
        (if (procedure? _%f117158%_)
            '#!void
            (error '"expected procedure" _%f117158%_))
        (let _%lp117161%_ ((_%rest117163%_ _%stx117159%_))
          (let* ((_%g117164117174%_ (gx#syntax-e _%rest117163%_))
                 (_%else117167117182%_
                  (lambda () (_%f117158%_ _%rest117163%_))))
            (let ((_%K117170117199%_
                   (lambda (_%rest117193%_ _%hd117194%_)
                     (let ((_%$e117196%_ (_%f117158%_ _%hd117194%_)))
                       (if _%$e117196%_
                           _%$e117196%_
                           (_%lp117161%_ _%rest117193%_)))))
                  (_%K117169117187%_ (lambda () '#f)))
              (let ((_%try-match117166117190%_
                     (lambda ()
                       (if (null? _%g117164117174%_)
                           (_%K117169117187%_)
                           (_%else117167117182%_)))))
                (if (pair? _%g117164117174%_)
                    (let ((_%tl117172117204%_ (##cdr _%g117164117174%_))
                          (_%hd117171117202%_ (##car _%g117164117174%_)))
                      (let ((_%hd117207%_ _%hd117171117202%_)
                            (_%rest117209%_ _%tl117172117204%_))
                        (_%K117170117199%_ _%rest117209%_ _%hd117207%_)))
                    (_%try-match117166117190%_))))))))
    (define gx#stx-foldl
      (lambda (_%f117106%_ _%iv117107%_ _%stx117108%_)
        (if (procedure? _%f117106%_)
            '#!void
            (error '"expected procedure" _%f117106%_))
        (let _%lp117110%_ ((_%r117112%_ _%iv117107%_)
                           (_%rest117113%_ _%stx117108%_))
          (let* ((_%g117114117124%_ (gx#syntax-e _%rest117113%_))
                 (_%else117117117132%_
                  (lambda () (_%f117106%_ _%rest117113%_ _%r117112%_))))
            (let ((_%K117120117146%_
                   (lambda (_%rest117143%_ _%hd117144%_)
                     (_%lp117110%_
                      (_%f117106%_ _%hd117144%_ _%r117112%_)
                      _%rest117143%_)))
                  (_%K117119117137%_ (lambda () _%r117112%_)))
              (let ((_%try-match117116117140%_
                     (lambda ()
                       (if (null? _%g117114117124%_)
                           (_%K117119117137%_)
                           (_%else117117117132%_)))))
                (if (pair? _%g117114117124%_)
                    (let ((_%tl117122117151%_ (##cdr _%g117114117124%_))
                          (_%hd117121117149%_ (##car _%g117114117124%_)))
                      (let ((_%hd117154%_ _%hd117121117149%_)
                            (_%rest117156%_ _%tl117122117151%_))
                        (_%K117120117146%_ _%rest117156%_ _%hd117154%_)))
                    (_%try-match117116117140%_))))))))
    (define gx#stx-foldr
      (lambda (_%f117055%_ _%iv117056%_ _%stx117057%_)
        (if (procedure? _%f117055%_)
            '#!void
            (error '"expected procedure" _%f117055%_))
        (let _%recur117059%_ ((_%rest117061%_ _%stx117057%_))
          (let* ((_%g117062117072%_ (gx#syntax-e _%rest117061%_))
                 (_%else117065117080%_
                  (lambda () (_%f117055%_ _%rest117061%_ _%iv117056%_))))
            (let ((_%K117068117094%_
                   (lambda (_%rest117091%_ _%hd117092%_)
                     (_%f117055%_
                      _%hd117092%_
                      (_%recur117059%_ _%rest117091%_))))
                  (_%K117067117085%_ (lambda () _%iv117056%_)))
              (let ((_%try-match117064117088%_
                     (lambda ()
                       (if (null? _%g117062117072%_)
                           (_%K117067117085%_)
                           (_%else117065117080%_)))))
                (if (pair? _%g117062117072%_)
                    (let ((_%tl117070117099%_ (##cdr _%g117062117072%_))
                          (_%hd117069117097%_ (##car _%g117062117072%_)))
                      (let ((_%hd117102%_ _%hd117069117097%_)
                            (_%rest117104%_ _%tl117070117099%_))
                        (_%K117068117094%_ _%rest117104%_ _%hd117102%_)))
                    (_%try-match117064117088%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx117053%_) (gx#stx-foldl cons '() _%stx117053%_)))
    (define gx#stx-last
      (lambda (_%stx117014%_)
        (let _%lp117016%_ ((_%rest117018%_ _%stx117014%_))
          (let* ((_%g117019117027%_ (gx#syntax-e _%rest117018%_))
                 (_%else117021117035%_ (lambda () _%rest117018%_))
                 (_%K117023117041%_
                  (lambda (_%rest117038%_ _%hd117039%_)
                    (if (gx#stx-null? _%rest117038%_)
                        _%hd117039%_
                        (_%lp117016%_ _%rest117038%_)))))
            (if (pair? _%g117019117027%_)
                (let ((_%hd117024117044%_ (##car _%g117019117027%_))
                      (_%tl117025117046%_ (##cdr _%g117019117027%_)))
                  (let* ((_%hd117049%_ _%hd117024117044%_)
                         (_%rest117051%_ _%tl117025117046%_))
                    (_%K117023117041%_ _%rest117051%_ _%hd117049%_)))
                (_%else117021117035%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx116985%_)
        (let _%lp116987%_ ((_%hd116989%_ _%stx116985%_))
          (let* ((_%g116990116997%_ (gx#syntax-e _%hd116989%_))
                 (_%E116992117001%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g116990116997%_
                           '([_ . rest]))
                    '#!void))
                 (_%K116993117006%_
                  (lambda (_%rest117004%_)
                    (if (gx#stx-pair? _%rest117004%_)
                        (_%lp116987%_ _%rest117004%_)
                        _%hd116989%_))))
            (if (pair? _%g116990116997%_)
                (let* ((_%tl116995117009%_ (##cdr _%g116990116997%_))
                       (_%rest117012%_ _%tl116995117009%_))
                  (_%K116993117006%_ _%rest117012%_))
                (_%E116992117001%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx116954%_ _%k116955%_)
        (let _%lp116957%_ ((_%rest116959%_ _%stx116954%_)
                           (_%k116960%_ _%k116955%_))
          (if (fxpositive? _%k116960%_)
              (let* ((_%g116961116968%_ (gx#syntax-e _%rest116959%_))
                     (_%E116963116972%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g116961116968%_
                               '([_ . rest]))
                        '#!void))
                     (_%K116964116977%_
                      (lambda (_%rest116975%_)
                        (_%lp116957%_ _%rest116975%_ (##fx- _%k116960%_ '1)))))
                (if (pair? _%g116961116968%_)
                    (let* ((_%tl116966116980%_ (##cdr _%g116961116968%_))
                           (_%rest116983%_ _%tl116966116980%_))
                      (_%K116964116977%_ _%rest116983%_))
                    (_%E116963116972%_)))
              _%rest116959%_))))
    (define gx#stx-list-ref
      (lambda (_%stx116951%_ _%k116952%_)
        (gx#stx-car (gx#stx-list-tail _%stx116951%_ _%k116952%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx116863%_ _%key?116864%_)
        (if (procedure? _%key?116864%_)
            '#!void
            (error '"expected procedure" _%key?116864%_))
        (let _%lp116866%_ ((_%rest116868%_ _%stx116863%_))
          (let* ((_%g116869116879%_ (gx#stx-e _%rest116868%_))
                 (_%else116872116887%_ (lambda () '#f)))
            (let ((_%K116875116929%_
                   (lambda (_%rest116898%_ _%hd116899%_)
                     (if (_%key?116864%_ _%hd116899%_)
                         (let* ((_%g116900116908%_ (gx#stx-e _%rest116898%_))
                                (_%else116902116916%_ (lambda () '#f))
                                (_%K116904116921%_
                                 (lambda (_%rest116919%_)
                                   (_%lp116866%_ _%rest116919%_))))
                           (if (pair? _%g116900116908%_)
                               (let* ((_%tl116906116924%_
                                       (##cdr _%g116900116908%_))
                                      (_%rest116927%_ _%tl116906116924%_))
                                 (_%lp116866%_ _%rest116927%_))
                               (_%else116902116916%_)))
                         '#f)))
                  (_%K116874116892%_ (lambda () '#t)))
              (let ((_%try-match116871116895%_
                     (lambda ()
                       (if (null? _%g116869116879%_)
                           (_%K116874116892%_)
                           (_%else116872116887%_)))))
                (if (pair? _%g116869116879%_)
                    (let ((_%tl116877116934%_ (##cdr _%g116869116879%_))
                          (_%hd116876116932%_ (##car _%g116869116879%_)))
                      (let ((_%hd116937%_ _%hd116876116932%_)
                            (_%rest116939%_ _%tl116877116934%_))
                        (_%K116875116929%_ _%rest116939%_ _%hd116937%_)))
                    (_%try-match116871116895%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx116944%_)
        (let ((_%key?116946%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx116944%_ _%key?116946%_))))
    (define gx#stx-plist?
      (lambda _g118100_
        (let ((_g118099_ (##length _g118100_)))
          (cond ((##fx= _g118099_ 1) (apply gx#stx-plist?__0 _g118100_))
                ((##fx= _g118099_ 2) (apply gx#stx-plist?__% _g118100_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g118100_))))))
    (define gx#stx-getq__%
      (lambda (_%key116781%_ _%stx116782%_ _%key=?116783%_)
        (if (procedure? _%key=?116783%_)
            '#!void
            (error '"expected procedure" _%key=?116783%_))
        (let _%lp116785%_ ((_%rest116787%_ _%stx116782%_))
          (let* ((_%g116788116796%_ (gx#syntax-e _%rest116787%_))
                 (_%else116790116804%_ (lambda () '#f))
                 (_%K116792116838%_
                  (lambda (_%rest116807%_ _%hd116808%_)
                    (let* ((_%g116809116816%_ (gx#syntax-e _%rest116807%_))
                           (_%E116811116820%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g116809116816%_
                                     '([val . rest]))
                              '#!void))
                           (_%K116812116826%_
                            (lambda (_%rest116823%_ _%val116824%_)
                              (if (_%key=?116783%_ _%hd116808%_ _%key116781%_)
                                  _%val116824%_
                                  (_%lp116785%_ _%rest116823%_)))))
                      (if (pair? _%g116809116816%_)
                          (let ((_%hd116813116829%_ (##car _%g116809116816%_))
                                (_%tl116814116831%_ (##cdr _%g116809116816%_)))
                            (let* ((_%val116834%_ _%hd116813116829%_)
                                   (_%rest116836%_ _%tl116814116831%_))
                              (_%K116812116826%_
                               _%rest116836%_
                               _%val116834%_)))
                          (_%E116811116820%_))))))
            (if (pair? _%g116788116796%_)
                (let ((_%hd116793116841%_ (##car _%g116788116796%_))
                      (_%tl116794116843%_ (##cdr _%g116788116796%_)))
                  (let* ((_%hd116846%_ _%hd116793116841%_)
                         (_%rest116848%_ _%tl116794116843%_))
                    (_%K116792116838%_ _%rest116848%_ _%hd116846%_)))
                (_%else116790116804%_))))))
    (define gx#stx-getq__0
      (lambda (_%key116853%_ _%stx116854%_)
        (let ((_%key=?116856%_ gx#stx-eq?))
          (gx#stx-getq__% _%key116853%_ _%stx116854%_ _%key=?116856%_))))
    (define gx#stx-getq
      (lambda _g118102_
        (let ((_g118101_ (##length _g118102_)))
          (cond ((##fx= _g118101_ 2) (apply gx#stx-getq__0 _g118102_))
                ((##fx= _g118101_ 3) (apply gx#stx-getq__% _g118102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g118102_))))))))
