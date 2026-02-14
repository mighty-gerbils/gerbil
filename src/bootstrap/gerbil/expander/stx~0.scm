(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1771104506)
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
      (lambda _%$args173789%_
        (apply make-instance gx#identifier-wrap::t _%$args173789%_)))
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
      (lambda _%$args173786%_
        (apply make-instance gx#syntax-wrap::t _%$args173786%_)))
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
      (lambda _%$args173783%_
        (apply make-instance gx#syntax-quote::t _%$args173783%_)))
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
      (lambda (_%stx173781%_) (symbol? (gx#stx-e _%stx173781%_))))
    (define gx#identifier-quote?
      (lambda (_%stx173779%_)
        (if (##structure-direct-instance-of? _%stx173779%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx173779%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx173774%_)
        (if (##structure-direct-instance-of? _%stx173774%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx173774%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx173774%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx173769%_)
        (if (##structure-direct-instance-of? _%stx173769%_ 'gx#syntax-quote::t)
            _%stx173769%_
            (if (##structure-direct-instance-of?
                 _%stx173769%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx173769%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx173743%_)
        (if (##structure-direct-instance-of? _%stx173743%_ 'gx#syntax-wrap::t)
            (let _%lp173746%_ ((_%e173748%_
                                (##unchecked-structure-ref
                                 _%stx173743%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks173749%_
                                (cons (##unchecked-structure-ref
                                       _%stx173743%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e173748%_)
                  (let ((_%$e173752%_
                         (##type-id (##structure-type _%e173748%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e173752%_)
                        (_%lp173746%_
                         (##unchecked-structure-ref _%e173748%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e173748%_ '3 '#f '#f)
                          _%marks173749%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e173752%_)
                                (eq? 'gx#identifier-wrap::t _%$e173752%_))
                            (##unchecked-structure-ref _%e173748%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e173752%_)
                                (_%lp173746%_
                                 (##unchecked-structure-ref
                                  _%e173748%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks173749%_)
                                _%e173748%_))))
                  (if (null? _%marks173749%_)
                      _%e173748%_
                      (if (pair? _%e173748%_)
                          (cons (gx#stx-wrap
                                 (##car _%e173748%_)
                                 _%marks173749%_)
                                (gx#stx-wrap
                                 (##cdr _%e173748%_)
                                 _%marks173749%_))
                          (if (vector? _%e173748%_)
                              (vector-map
                               (lambda (_%g173760173762%_)
                                 (gx#stx-wrap
                                  _%g173760173762%_
                                  _%marks173749%_))
                               _%e173748%_)
                              (if (box? _%e173748%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e173748%_)
                                        _%marks173749%_))
                                  _%e173748%_))))))
            (if (##structure-instance-of? _%stx173743%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx173743%_ '1 '#f '#f)
                _%stx173743%_))))
    (define gx#syntax->datum
      (lambda (_%stx173736%_)
        (if (##structure-instance-of? _%stx173736%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx173736%_ '1 '#f '#f))
            (if (pair? _%stx173736%_)
                (cons (gx#syntax->datum (##car _%stx173736%_))
                      (gx#syntax->datum (##cdr _%stx173736%_)))
                (if (vector? _%stx173736%_)
                    (vector-map gx#syntax->datum _%stx173736%_)
                    (if (box? _%stx173736%_)
                        (box (gx#syntax->datum (unbox _%stx173736%_)))
                        _%stx173736%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx173670%_ _%datum173671%_ _%src173672%_ _%quote?173673%_)
        (letrec ((_%wrap-datum173675%_
                  (lambda (_%e173708%_ _%marks173709%_)
                    (_%wrap-inner173677%_
                     _%e173708%_
                     (lambda (_%g173710173712%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g173710173712%_
                        _%src173672%_
                        _%marks173709%_)))))
                 (_%wrap-quote173676%_
                  (lambda (_%e173700%_ _%ctx173701%_ _%marks173702%_)
                    (_%wrap-inner173677%_
                     _%e173700%_
                     (lambda (_%g173703173705%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g173703173705%_
                        _%src173672%_
                        _%ctx173701%_
                        _%marks173702%_)))))
                 (_%wrap-inner173677%_
                  (lambda (_%e173688%_ _%wrap-e173689%_)
                    (let _%recur173691%_ ((_%e173693%_ _%e173688%_))
                      (if (symbol? _%e173693%_)
                          (_%wrap-e173689%_ _%e173693%_)
                          (if (pair? _%e173693%_)
                              (cons (_%recur173691%_ (##car _%e173693%_))
                                    (_%recur173691%_ (##cdr _%e173693%_)))
                              (if (vector? _%e173693%_)
                                  (vector-map _%recur173691%_ _%e173693%_)
                                  (if (box? _%e173693%_)
                                      (box (_%recur173691%_
                                            (unbox _%e173693%_)))
                                      _%e173693%_)))))))
                 (_%wrap-outer173678%_
                  (lambda (_%e173686%_)
                    (if (##structure-instance-of? _%e173686%_ 'gerbil#AST::t)
                        _%e173686%_
                        (##structure gx#AST::t _%e173686%_ _%src173672%_)))))
          (if (##structure-instance-of? _%datum173671%_ 'gerbil#AST::t)
              _%datum173671%_
              (if (not _%stx173670%_)
                  (##structure gx#AST::t _%datum173671%_ _%src173672%_)
                  (if (gx#identifier? _%stx173670%_)
                      (let ((_%stx173683%_ (gx#stx-unwrap__0 _%stx173670%_)))
                        (_%wrap-outer173678%_
                         (if (##structure-direct-instance-of?
                              _%stx173683%_
                              'gx#syntax-quote::t)
                             (if _%quote?173673%_
                                 (_%wrap-quote173676%_
                                  _%datum173671%_
                                  (##unchecked-structure-ref
                                   _%stx173683%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx173683%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum173675%_
                                  _%datum173671%_
                                  (##unchecked-structure-ref
                                   _%stx173683%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum173675%_
                              _%datum173671%_
                              (##unchecked-structure-ref
                               _%stx173683%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx173670%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx173718%_ _%datum173719%_)
        (let* ((_%src173721%_ '#f) (_%quote?173723%_ '#t))
          (gx#datum->syntax__%
           _%stx173718%_
           _%datum173719%_
           _%src173721%_
           _%quote?173723%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx173725%_ _%datum173726%_ _%src173727%_)
        (let ((_%quote?173729%_ '#t))
          (gx#datum->syntax__%
           _%stx173725%_
           _%datum173726%_
           _%src173727%_
           _%quote?173729%_))))
    (define gx#datum->syntax
      (lambda _g173869_
        (let ((_g173870_ (##length _g173869_)))
          (cond ((##fx= _g173870_ 2) (apply gx#datum->syntax__0 _g173869_))
                ((##fx= _g173870_ 3) (apply gx#datum->syntax__1 _g173869_))
                ((##fx= _g173870_ 4) (apply gx#datum->syntax__% _g173869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g173869_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx173636%_ _%marks173637%_)
        (let _%lp173639%_ ((_%e173641%_ _%stx173636%_)
                           (_%marks173642%_ _%marks173637%_)
                           (_%src173643%_ (gx#stx-source _%stx173636%_)))
          (if (##structure-direct-instance-of? _%e173641%_ 'gx#syntax-wrap::t)
              (_%lp173639%_
               (##unchecked-structure-ref _%e173641%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e173641%_ '3 '#f '#f)
                _%marks173642%_)
               (##unchecked-structure-ref _%e173641%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e173641%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks173642%_)
                      _%e173641%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e173641%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e173641%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e173641%_ '3 '#f '#f)
                        _%marks173642%_)))
                  (if (##structure-direct-instance-of?
                       _%e173641%_
                       'gx#syntax-quote::t)
                      _%e173641%_
                      (if (##structure-instance-of? _%e173641%_ 'gerbil#AST::t)
                          (_%lp173639%_
                           (##unchecked-structure-ref _%e173641%_ '1 '#f '#f)
                           _%marks173642%_
                           (##unchecked-structure-ref _%e173641%_ '2 '#f '#f))
                          (if (symbol? _%e173641%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e173641%_
                               _%src173643%_
                               (reverse _%marks173642%_))
                              (if (null? _%marks173642%_)
                                  _%e173641%_
                                  (if (pair? _%e173641%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e173641%_)
                                             _%marks173642%_)
                                            (gx#stx-wrap
                                             (##cdr _%e173641%_)
                                             _%marks173642%_))
                                      (if (vector? _%e173641%_)
                                          (vector-map
                                           (lambda (_%g173652173654%_)
                                             (gx#stx-wrap
                                              _%g173652173654%_
                                              _%marks173642%_))
                                           _%e173641%_)
                                          (if (box? _%e173641%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e173641%_)
                                                    _%marks173642%_))
                                              _%e173641%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx173662%_)
        (let ((_%marks173664%_ '()))
          (gx#stx-unwrap__% _%stx173662%_ _%marks173664%_))))
    (define gx#stx-unwrap
      (lambda _g173871_
        (let ((_g173872_ (##length _g173871_)))
          (cond ((##fx= _g173872_ 1) (apply gx#stx-unwrap__0 _g173871_))
                ((##fx= _g173872_ 2) (apply gx#stx-unwrap__% _g173871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g173871_))))))
    (define gx#stx-wrap
      (lambda (_%stx173629%_ _%marks173630%_)
        (foldl__0
         (lambda (_%mark173632%_ _%stx173633%_)
           (gx#stx-apply-mark _%stx173633%_ _%mark173632%_))
         _%stx173629%_
         _%marks173630%_)))
    (define gx#stx-rewrap
      (lambda (_%stx173623%_ _%marks173624%_)
        (foldr__0
         (lambda (_%mark173626%_ _%stx173627%_)
           (gx#stx-apply-mark _%stx173627%_ _%mark173626%_))
         _%stx173623%_
         _%marks173624%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx173617%_ _%mark173618%_)
        (if (##structure-direct-instance-of? _%stx173617%_ 'gx#syntax-quote::t)
            _%stx173617%_
            (if (and (##structure-direct-instance-of?
                      _%stx173617%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark173618%_
                          (##unchecked-structure-ref
                           _%stx173617%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx173617%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx173617%_
                 (gx#stx-source _%stx173617%_)
                 _%mark173618%_)))))
    (define gx#apply-mark
      (lambda (_%mark173581%_ _%marks173582%_)
        (let* ((_%marks173583173591%_ _%marks173582%_)
               (_%else173585173599%_
                (lambda () (cons _%mark173581%_ _%marks173582%_)))
               (_%K173587173605%_
                (lambda (_%rest173602%_ _%hd173603%_)
                  (if (eq? _%mark173581%_ _%hd173603%_)
                      _%rest173602%_
                      (cons _%mark173581%_ _%marks173582%_)))))
          (if (pair? _%marks173583173591%_)
              (let ((_%hd173588173608%_ (##car _%marks173583173591%_))
                    (_%tl173589173610%_ (##cdr _%marks173583173591%_)))
                (let* ((_%hd173613%_ _%hd173588173608%_)
                       (_%rest173615%_ _%tl173589173610%_))
                  (_%K173587173605%_ _%rest173615%_ _%hd173613%_)))
              (_%else173585173599%_)))))
    (define gx#stx-e
      (lambda (_%stx173576%_)
        (if (##structure-direct-instance-of? _%stx173576%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx173576%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx173576%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx173576%_ '1 '#f '#f)
                _%stx173576%_))))
    (define gx#stx-source
      (lambda (_%stx173574%_)
        (if (##structure-instance-of? _%stx173574%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx173574%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx173568%_ _%src173569%_)
        (if (or (##structure-instance-of? _%stx173568%_ 'gerbil#AST::t)
                (not _%src173569%_))
            _%stx173568%_
            (##structure gx#AST::t _%stx173568%_ _%src173569%_))))
    (define gx#stx-datum?
      (lambda (_%stx173566%_) (gx#self-quoting? (gx#stx-e _%stx173566%_))))
    (define gx#self-quoting?
      (lambda (_%x173549%_)
        (let ((_%$e173551%_ (immediate? _%x173549%_)))
          (if _%$e173551%_
              _%$e173551%_
              (let ((_%$e173554%_ (number? _%x173549%_)))
                (if _%$e173554%_
                    _%$e173554%_
                    (let ((_%$e173557%_ (keyword? _%x173549%_)))
                      (if _%$e173557%_
                          _%$e173557%_
                          (let ((_%$e173560%_ (string? _%x173549%_)))
                            (if _%$e173560%_
                                _%$e173560%_
                                (let ((_%$e173563%_ (vector? _%x173549%_)))
                                  (if _%$e173563%_
                                      _%$e173563%_
                                      (u8vector? _%x173549%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e173547%_) (boolean? (gx#stx-e _%e173547%_))))
    (define gx#stx-keyword?
      (lambda (_%e173545%_) (keyword? (gx#stx-e _%e173545%_))))
    (define gx#stx-char? (lambda (_%e173543%_) (char? (gx#stx-e _%e173543%_))))
    (define gx#stx-number?
      (lambda (_%e173541%_) (number? (gx#stx-e _%e173541%_))))
    (define gx#stx-fixnum?
      (lambda (_%e173539%_) (fixnum? (gx#stx-e _%e173539%_))))
    (define gx#stx-string?
      (lambda (_%e173537%_) (string? (gx#stx-e _%e173537%_))))
    (define gx#stx-null? (lambda (_%e173535%_) (null? (gx#stx-e _%e173535%_))))
    (define gx#stx-pair? (lambda (_%e173533%_) (pair? (gx#stx-e _%e173533%_))))
    (define gx#stx-list?
      (lambda (_%e173495%_)
        (let* ((_%g173496173505%_ (gx#stx-e _%e173495%_))
               (_%E173499173509%_
                (lambda ()
                  (error '"No clause matching"
                         _%g173496173505%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K173501173525%_
                 (lambda (_%rest173523%_) (gx#stx-list? _%rest173523%_)))
                (_%K173500173515%_
                 (lambda (_%tail173513%_) (null? _%tail173513%_))))
            (if (pair? _%g173496173505%_)
                (let* ((_%tl173503173528%_ (##cdr _%g173496173505%_))
                       (_%rest173531%_ _%tl173503173528%_))
                  (gx#stx-list? _%rest173531%_))
                (let ((_%tail173518%_ _%g173496173505%_))
                  (null? _%tail173518%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e173488%_)
        (let* ((_%e173490%_ (gx#stx-e _%e173488%_))
               (_%$e173492%_ (pair? _%e173490%_)))
          (if _%$e173492%_ _%$e173492%_ (null? _%e173490%_)))))
    (define gx#stx-vector?
      (lambda (_%e173486%_) (vector? (gx#stx-e _%e173486%_))))
    (define gx#stx-box? (lambda (_%e173484%_) (box? (gx#stx-e _%e173484%_))))
    (define gx#stx-eq?
      (lambda (_%x173481%_ _%y173482%_)
        (eq? (gx#stx-e _%x173481%_) (gx#stx-e _%y173482%_))))
    (define gx#stx-eqv?
      (lambda (_%x173478%_ _%y173479%_)
        (eqv? (gx#stx-e _%x173478%_) (gx#stx-e _%y173479%_))))
    (define gx#stx-equal?
      (lambda (_%x173475%_ _%y173476%_)
        (equal? (gx#stx-e _%x173475%_) (gx#stx-e _%y173476%_))))
    (define gx#stx-false? (lambda (_%x173473%_) (not (gx#stx-e _%x173473%_))))
    (define gx#stx-identifier
      (lambda (_%template173470%_ . _%args173471%_)
        (gx#datum->syntax__1
         _%template173470%_
         (apply make-symbol (gx#syntax->datum _%args173471%_))
         (gx#stx-source _%template173470%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx173468%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx173468%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx173463%_)
        (if (##structure-direct-instance-of?
             _%stx173463%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx173463%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx173463%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx173463%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx173463%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx173459%_)
        (let ((_%stx173461%_ (gx#stx-unwrap__0 _%stx173459%_)))
          (if (gx#identifier-quote? _%stx173461%_)
              (##unchecked-structure-ref _%stx173461%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx173414%_)
        (let* ((_%g173415173425%_ (gx#stx-e _%stx173414%_))
               (_%else173418173433%_ (lambda () '#f)))
          (let ((_%K173421173447%_
                 (lambda (_%rest173444%_ _%hd173445%_)
                   (if (gx#identifier? _%hd173445%_)
                       (gx#identifier-list? _%rest173444%_)
                       '#f)))
                (_%K173420173438%_ (lambda () '#t)))
            (let ((_%try-match173417173441%_
                   (lambda ()
                     (if (null? _%g173415173425%_)
                         (_%K173420173438%_)
                         (_%else173418173433%_)))))
              (if (pair? _%g173415173425%_)
                  (let ((_%tl173423173452%_ (##cdr _%g173415173425%_))
                        (_%hd173422173450%_ (##car _%g173415173425%_)))
                    (let ((_%hd173455%_ _%hd173422173450%_)
                          (_%rest173457%_ _%tl173423173452%_))
                      (_%K173421173447%_ _%rest173457%_ _%hd173455%_)))
                  (_%try-match173417173441%_)))))))
    (define gx#genident__%
      (lambda (_%e173394%_ _%src173395%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src173395%_) _%src173395%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e173397%_ (gx#stx-e _%e173394%_)))
              (if (symbol? _%e173397%_) _%e173397%_ 'g)))))
         _%src173395%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e173403%_ 'g) (_%src173405%_ '#f))
          (gx#genident__% _%e173403%_ _%src173405%_))))
    (define gx#genident__1
      (lambda (_%e173407%_)
        (let ((_%src173409%_ '#f))
          (gx#genident__% _%e173407%_ _%src173409%_))))
    (define gx#genident
      (lambda _g173873_
        (let ((_g173874_ (##length _g173873_)))
          (cond ((##fx= _g173874_ 0) (apply gx#genident__0 _g173873_))
                ((##fx= _g173874_ 1) (apply gx#genident__1 _g173873_))
                ((##fx= _g173874_ 2) (apply gx#genident__% _g173873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g173873_))))))
    (define gx#gentemps
      (lambda (_%stx-lst173389%_)
        (gx#stx-map1
         (lambda (_%x173391%_) (gx#genident__% _%x173391%_ _%x173391%_))
         _%stx-lst173389%_)))
    (define gx#syntax->list
      (lambda (_%stx173387%_) (gx#stx-map1 values _%stx173387%_)))
    (define gx#stx-car
      (lambda (_%stx173384%_)
        (declare (safe))
        (car (gx#syntax-e _%stx173384%_))))
    (define gx#stx-cdr
      (lambda (_%stx173381%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx173381%_))))
    (define gx#stx-length
      (lambda (_%stx173346%_)
        (let _%lp173348%_ ((_%rest173350%_ _%stx173346%_) (_%n173351%_ '0))
          (let* ((_%g173352173360%_ (gx#stx-e _%rest173350%_))
                 (_%else173354173368%_ (lambda () _%n173351%_))
                 (_%K173356173373%_
                  (lambda (_%rest173371%_)
                    (_%lp173348%_ _%rest173371%_ (##fx+ _%n173351%_ '1)))))
            (if (pair? _%g173352173360%_)
                (let* ((_%tl173358173376%_ (##cdr _%g173352173360%_))
                       (_%rest173379%_ _%tl173358173376%_))
                  (_%K173356173373%_ _%rest173379%_))
                (_%else173354173368%_))))))
    (define gx#stx-for-each
      (lambda _g173875_
        (let ((_g173876_ (##length _g173875_)))
          (cond ((##fx= _g173876_ 2) (apply gx#stx-for-each1 _g173875_))
                ((##fx= _g173876_ 3) (apply gx#stx-for-each2 _g173875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g173875_))))))
    (define gx#stx-for-each1
      (lambda (_%f173289%_ _%stx173290%_)
        (if (procedure? _%f173289%_)
            '#!void
            (error '"expected procedure" _%f173289%_))
        (let _%lp173292%_ ((_%rest173294%_ _%stx173290%_))
          (let* ((_%g173295173305%_ (gx#syntax-e _%rest173294%_))
                 (_%else173298173313%_
                  (lambda () (_%f173289%_ _%rest173294%_))))
            (let ((_%K173301173327%_
                   (lambda (_%rest173324%_ _%hd173325%_)
                     (_%f173289%_ _%hd173325%_)
                     (_%lp173292%_ _%rest173324%_)))
                  (_%K173300173318%_ (lambda () '#!void)))
              (let ((_%try-match173297173321%_
                     (lambda ()
                       (if (null? _%g173295173305%_)
                           (_%K173300173318%_)
                           (_%else173298173313%_)))))
                (if (pair? _%g173295173305%_)
                    (let ((_%tl173303173332%_ (##cdr _%g173295173305%_))
                          (_%hd173302173330%_ (##car _%g173295173305%_)))
                      (let ((_%hd173335%_ _%hd173302173330%_)
                            (_%rest173337%_ _%tl173303173332%_))
                        (_%K173301173327%_ _%rest173337%_ _%hd173335%_)))
                    (_%try-match173297173321%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f173194%_ _%xstx173195%_ _%ystx173196%_)
        (if (procedure? _%f173194%_)
            '#!void
            (error '"expected procedure" _%f173194%_))
        (let _%lp173198%_ ((_%xrest173200%_ _%xstx173195%_)
                           (_%yrest173201%_ _%ystx173196%_))
          (let* ((_%g173202173212%_ (gx#syntax-e _%xrest173200%_))
                 (_%else173205173220%_ (lambda () '#!void)))
            (let ((_%K173208173277%_
                   (lambda (_%xrest173246%_ _%xhd173247%_)
                     (let* ((_%g173248173255%_ (gx#syntax-e _%yrest173201%_))
                            (_%E173250173259%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g173248173255%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K173251173265%_
                             (lambda (_%yrest173262%_ _%yhd173263%_)
                               (_%f173194%_ _%xhd173247%_ _%yhd173263%_)
                               (_%lp173198%_
                                _%xrest173246%_
                                _%yrest173262%_))))
                       (if (pair? _%g173248173255%_)
                           (let ((_%hd173252173268%_ (##car _%g173248173255%_))
                                 (_%tl173253173270%_
                                  (##cdr _%g173248173255%_)))
                             (let* ((_%yhd173273%_ _%hd173252173268%_)
                                    (_%yrest173275%_ _%tl173253173270%_))
                               (_%K173251173265%_
                                _%yrest173275%_
                                _%yhd173273%_)))
                           (_%E173250173259%_)))))
                  (_%K173207173240%_
                   (lambda ()
                     (let* ((_%yrest173224173229%_ _%yrest173201%_)
                            (_%E173226173233%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest173224173229%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K173227173237%_
                             (lambda ()
                               (_%f173194%_ _%xrest173200%_ _%yrest173201%_))))
                       (if (gx#stx-null? _%yrest173224173229%_)
                           (_%E173226173233%_)
                           (_%K173227173237%_))))))
              (let ((_%try-match173204173243%_
                     (lambda ()
                       (if (null? _%g173202173212%_)
                           (_%else173205173220%_)
                           (_%K173207173240%_)))))
                (if (pair? _%g173202173212%_)
                    (let ((_%tl173210173282%_ (##cdr _%g173202173212%_))
                          (_%hd173209173280%_ (##car _%g173202173212%_)))
                      (let ((_%xhd173285%_ _%hd173209173280%_)
                            (_%xrest173287%_ _%tl173210173282%_))
                        (_%K173208173277%_ _%xrest173287%_ _%xhd173285%_)))
                    (_%try-match173204173243%_))))))))
    (define gx#stx-map
      (lambda _g173877_
        (let ((_g173878_ (##length _g173877_)))
          (cond ((##fx= _g173878_ 2) (apply gx#stx-map1 _g173877_))
                ((##fx= _g173878_ 3) (apply gx#stx-map2 _g173877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g173877_))))))
    (define gx#stx-map1
      (lambda (_%f173137%_ _%stx173138%_)
        (if (procedure? _%f173137%_)
            '#!void
            (error '"expected procedure" _%f173137%_))
        (let _%recur173140%_ ((_%rest173142%_ _%stx173138%_))
          (let* ((_%g173143173153%_ (gx#syntax-e _%rest173142%_))
                 (_%else173146173161%_
                  (lambda () (_%f173137%_ _%rest173142%_))))
            (let ((_%K173149173175%_
                   (lambda (_%rest173172%_ _%hd173173%_)
                     (cons (_%f173137%_ _%hd173173%_)
                           (_%recur173140%_ _%rest173172%_))))
                  (_%K173148173166%_ (lambda () '())))
              (let ((_%try-match173145173169%_
                     (lambda ()
                       (if (null? _%g173143173153%_)
                           (_%K173148173166%_)
                           (_%else173146173161%_)))))
                (if (pair? _%g173143173153%_)
                    (let ((_%tl173151173180%_ (##cdr _%g173143173153%_))
                          (_%hd173150173178%_ (##car _%g173143173153%_)))
                      (let ((_%hd173183%_ _%hd173150173178%_)
                            (_%rest173185%_ _%tl173151173180%_))
                        (_%K173149173175%_ _%rest173185%_ _%hd173183%_)))
                    (_%try-match173145173169%_))))))))
    (define gx#stx-map2
      (lambda (_%f173042%_ _%xstx173043%_ _%ystx173044%_)
        (if (procedure? _%f173042%_)
            '#!void
            (error '"expected procedure" _%f173042%_))
        (let _%recur173046%_ ((_%xrest173048%_ _%xstx173043%_)
                              (_%yrest173049%_ _%ystx173044%_))
          (let* ((_%g173050173060%_ (gx#syntax-e _%xrest173048%_))
                 (_%else173053173068%_ (lambda () '())))
            (let ((_%K173056173125%_
                   (lambda (_%xrest173094%_ _%xhd173095%_)
                     (let* ((_%g173096173103%_ (gx#syntax-e _%yrest173049%_))
                            (_%E173098173107%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g173096173103%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K173099173113%_
                             (lambda (_%yrest173110%_ _%yhd173111%_)
                               (cons (_%f173042%_ _%xhd173095%_ _%yhd173111%_)
                                     (_%recur173046%_
                                      _%xrest173094%_
                                      _%yrest173110%_)))))
                       (if (pair? _%g173096173103%_)
                           (let ((_%hd173100173116%_ (##car _%g173096173103%_))
                                 (_%tl173101173118%_
                                  (##cdr _%g173096173103%_)))
                             (let* ((_%yhd173121%_ _%hd173100173116%_)
                                    (_%yrest173123%_ _%tl173101173118%_))
                               (_%K173099173113%_
                                _%yrest173123%_
                                _%yhd173121%_)))
                           (_%E173098173107%_)))))
                  (_%K173055173088%_
                   (lambda ()
                     (let* ((_%yrest173072173077%_ _%yrest173049%_)
                            (_%E173074173081%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest173072173077%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K173075173085%_
                             (lambda ()
                               (_%f173042%_ _%xrest173048%_ _%yrest173049%_))))
                       (if (gx#stx-null? _%yrest173072173077%_)
                           (_%E173074173081%_)
                           (_%K173075173085%_))))))
              (let ((_%try-match173052173091%_
                     (lambda ()
                       (if (null? _%g173050173060%_)
                           (_%else173053173068%_)
                           (_%K173055173088%_)))))
                (if (pair? _%g173050173060%_)
                    (let ((_%tl173058173130%_ (##cdr _%g173050173060%_))
                          (_%hd173057173128%_ (##car _%g173050173060%_)))
                      (let ((_%xhd173133%_ _%hd173057173128%_)
                            (_%xrest173135%_ _%tl173058173130%_))
                        (_%K173056173125%_ _%xrest173135%_ _%xhd173133%_)))
                    (_%try-match173052173091%_))))))))
    (define gx#stx-andmap
      (lambda (_%f172992%_ _%stx172993%_)
        (if (procedure? _%f172992%_)
            '#!void
            (error '"expected procedure" _%f172992%_))
        (let _%lp172995%_ ((_%rest172997%_ _%stx172993%_))
          (let* ((_%g172998173008%_ (gx#syntax-e _%rest172997%_))
                 (_%else173001173016%_
                  (lambda () (_%f172992%_ _%rest172997%_))))
            (let ((_%K173004173030%_
                   (lambda (_%rest173027%_ _%hd173028%_)
                     (if (_%f172992%_ _%hd173028%_)
                         (_%lp172995%_ _%rest173027%_)
                         '#f)))
                  (_%K173003173021%_ (lambda () '#t)))
              (let ((_%try-match173000173024%_
                     (lambda ()
                       (if (null? _%g172998173008%_)
                           (_%K173003173021%_)
                           (_%else173001173016%_)))))
                (if (pair? _%g172998173008%_)
                    (let ((_%tl173006173035%_ (##cdr _%g172998173008%_))
                          (_%hd173005173033%_ (##car _%g172998173008%_)))
                      (let ((_%hd173038%_ _%hd173005173033%_)
                            (_%rest173040%_ _%tl173006173035%_))
                        (_%K173004173030%_ _%rest173040%_ _%hd173038%_)))
                    (_%try-match173000173024%_))))))))
    (define gx#stx-ormap
      (lambda (_%f172939%_ _%stx172940%_)
        (if (procedure? _%f172939%_)
            '#!void
            (error '"expected procedure" _%f172939%_))
        (let _%lp172942%_ ((_%rest172944%_ _%stx172940%_))
          (let* ((_%g172945172955%_ (gx#syntax-e _%rest172944%_))
                 (_%else172948172963%_
                  (lambda () (_%f172939%_ _%rest172944%_))))
            (let ((_%K172951172980%_
                   (lambda (_%rest172974%_ _%hd172975%_)
                     (let ((_%$e172977%_ (_%f172939%_ _%hd172975%_)))
                       (if _%$e172977%_
                           _%$e172977%_
                           (_%lp172942%_ _%rest172974%_)))))
                  (_%K172950172968%_ (lambda () '#f)))
              (let ((_%try-match172947172971%_
                     (lambda ()
                       (if (null? _%g172945172955%_)
                           (_%K172950172968%_)
                           (_%else172948172963%_)))))
                (if (pair? _%g172945172955%_)
                    (let ((_%tl172953172985%_ (##cdr _%g172945172955%_))
                          (_%hd172952172983%_ (##car _%g172945172955%_)))
                      (let ((_%hd172988%_ _%hd172952172983%_)
                            (_%rest172990%_ _%tl172953172985%_))
                        (_%K172951172980%_ _%rest172990%_ _%hd172988%_)))
                    (_%try-match172947172971%_))))))))
    (define gx#stx-foldl
      (lambda (_%f172887%_ _%iv172888%_ _%stx172889%_)
        (if (procedure? _%f172887%_)
            '#!void
            (error '"expected procedure" _%f172887%_))
        (let _%lp172891%_ ((_%r172893%_ _%iv172888%_)
                           (_%rest172894%_ _%stx172889%_))
          (let* ((_%g172895172905%_ (gx#syntax-e _%rest172894%_))
                 (_%else172898172913%_
                  (lambda () (_%f172887%_ _%rest172894%_ _%r172893%_))))
            (let ((_%K172901172927%_
                   (lambda (_%rest172924%_ _%hd172925%_)
                     (_%lp172891%_
                      (_%f172887%_ _%hd172925%_ _%r172893%_)
                      _%rest172924%_)))
                  (_%K172900172918%_ (lambda () _%r172893%_)))
              (let ((_%try-match172897172921%_
                     (lambda ()
                       (if (null? _%g172895172905%_)
                           (_%K172900172918%_)
                           (_%else172898172913%_)))))
                (if (pair? _%g172895172905%_)
                    (let ((_%tl172903172932%_ (##cdr _%g172895172905%_))
                          (_%hd172902172930%_ (##car _%g172895172905%_)))
                      (let ((_%hd172935%_ _%hd172902172930%_)
                            (_%rest172937%_ _%tl172903172932%_))
                        (_%K172901172927%_ _%rest172937%_ _%hd172935%_)))
                    (_%try-match172897172921%_))))))))
    (define gx#stx-foldr
      (lambda (_%f172836%_ _%iv172837%_ _%stx172838%_)
        (if (procedure? _%f172836%_)
            '#!void
            (error '"expected procedure" _%f172836%_))
        (let _%recur172840%_ ((_%rest172842%_ _%stx172838%_))
          (let* ((_%g172843172853%_ (gx#syntax-e _%rest172842%_))
                 (_%else172846172861%_
                  (lambda () (_%f172836%_ _%rest172842%_ _%iv172837%_))))
            (let ((_%K172849172875%_
                   (lambda (_%rest172872%_ _%hd172873%_)
                     (_%f172836%_
                      _%hd172873%_
                      (_%recur172840%_ _%rest172872%_))))
                  (_%K172848172866%_ (lambda () _%iv172837%_)))
              (let ((_%try-match172845172869%_
                     (lambda ()
                       (if (null? _%g172843172853%_)
                           (_%K172848172866%_)
                           (_%else172846172861%_)))))
                (if (pair? _%g172843172853%_)
                    (let ((_%tl172851172880%_ (##cdr _%g172843172853%_))
                          (_%hd172850172878%_ (##car _%g172843172853%_)))
                      (let ((_%hd172883%_ _%hd172850172878%_)
                            (_%rest172885%_ _%tl172851172880%_))
                        (_%K172849172875%_ _%rest172885%_ _%hd172883%_)))
                    (_%try-match172845172869%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx172834%_) (gx#stx-foldl cons '() _%stx172834%_)))
    (define gx#stx-last
      (lambda (_%stx172795%_)
        (let _%lp172797%_ ((_%rest172799%_ _%stx172795%_))
          (let* ((_%g172800172808%_ (gx#syntax-e _%rest172799%_))
                 (_%else172802172816%_ (lambda () _%rest172799%_))
                 (_%K172804172822%_
                  (lambda (_%rest172819%_ _%hd172820%_)
                    (if (gx#stx-null? _%rest172819%_)
                        _%hd172820%_
                        (_%lp172797%_ _%rest172819%_)))))
            (if (pair? _%g172800172808%_)
                (let ((_%hd172805172825%_ (##car _%g172800172808%_))
                      (_%tl172806172827%_ (##cdr _%g172800172808%_)))
                  (let* ((_%hd172830%_ _%hd172805172825%_)
                         (_%rest172832%_ _%tl172806172827%_))
                    (_%K172804172822%_ _%rest172832%_ _%hd172830%_)))
                (_%else172802172816%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx172766%_)
        (let _%lp172768%_ ((_%hd172770%_ _%stx172766%_))
          (let* ((_%g172771172778%_ (gx#syntax-e _%hd172770%_))
                 (_%E172773172782%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g172771172778%_
                           '([_ . rest]))
                    '#!void))
                 (_%K172774172787%_
                  (lambda (_%rest172785%_)
                    (if (gx#stx-pair? _%rest172785%_)
                        (_%lp172768%_ _%rest172785%_)
                        _%hd172770%_))))
            (if (pair? _%g172771172778%_)
                (let* ((_%tl172776172790%_ (##cdr _%g172771172778%_))
                       (_%rest172793%_ _%tl172776172790%_))
                  (_%K172774172787%_ _%rest172793%_))
                (_%E172773172782%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx172735%_ _%k172736%_)
        (let _%lp172738%_ ((_%rest172740%_ _%stx172735%_)
                           (_%k172741%_ _%k172736%_))
          (if (fxpositive? _%k172741%_)
              (let* ((_%g172742172749%_ (gx#syntax-e _%rest172740%_))
                     (_%E172744172753%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g172742172749%_
                               '([_ . rest]))
                        '#!void))
                     (_%K172745172758%_
                      (lambda (_%rest172756%_)
                        (_%lp172738%_ _%rest172756%_ (##fx- _%k172741%_ '1)))))
                (if (pair? _%g172742172749%_)
                    (let* ((_%tl172747172761%_ (##cdr _%g172742172749%_))
                           (_%rest172764%_ _%tl172747172761%_))
                      (_%K172745172758%_ _%rest172764%_))
                    (_%E172744172753%_)))
              _%rest172740%_))))
    (define gx#stx-list-ref
      (lambda (_%stx172732%_ _%k172733%_)
        (gx#stx-car (gx#stx-list-tail _%stx172732%_ _%k172733%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx172644%_ _%key?172645%_)
        (if (procedure? _%key?172645%_)
            '#!void
            (error '"expected procedure" _%key?172645%_))
        (let _%lp172647%_ ((_%rest172649%_ _%stx172644%_))
          (let* ((_%g172650172660%_ (gx#stx-e _%rest172649%_))
                 (_%else172653172668%_ (lambda () '#f)))
            (let ((_%K172656172710%_
                   (lambda (_%rest172679%_ _%hd172680%_)
                     (if (_%key?172645%_ _%hd172680%_)
                         (let* ((_%g172681172689%_ (gx#stx-e _%rest172679%_))
                                (_%else172683172697%_ (lambda () '#f))
                                (_%K172685172702%_
                                 (lambda (_%rest172700%_)
                                   (_%lp172647%_ _%rest172700%_))))
                           (if (pair? _%g172681172689%_)
                               (let* ((_%tl172687172705%_
                                       (##cdr _%g172681172689%_))
                                      (_%rest172708%_ _%tl172687172705%_))
                                 (_%lp172647%_ _%rest172708%_))
                               (_%else172683172697%_)))
                         '#f)))
                  (_%K172655172673%_ (lambda () '#t)))
              (let ((_%try-match172652172676%_
                     (lambda ()
                       (if (null? _%g172650172660%_)
                           (_%K172655172673%_)
                           (_%else172653172668%_)))))
                (if (pair? _%g172650172660%_)
                    (let ((_%tl172658172715%_ (##cdr _%g172650172660%_))
                          (_%hd172657172713%_ (##car _%g172650172660%_)))
                      (let ((_%hd172718%_ _%hd172657172713%_)
                            (_%rest172720%_ _%tl172658172715%_))
                        (_%K172656172710%_ _%rest172720%_ _%hd172718%_)))
                    (_%try-match172652172676%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx172725%_)
        (let ((_%key?172727%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx172725%_ _%key?172727%_))))
    (define gx#stx-plist?
      (lambda _g173879_
        (let ((_g173880_ (##length _g173879_)))
          (cond ((##fx= _g173880_ 1) (apply gx#stx-plist?__0 _g173879_))
                ((##fx= _g173880_ 2) (apply gx#stx-plist?__% _g173879_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g173879_))))))
    (define gx#stx-getq__%
      (lambda (_%key172562%_ _%stx172563%_ _%key=?172564%_)
        (if (procedure? _%key=?172564%_)
            '#!void
            (error '"expected procedure" _%key=?172564%_))
        (let _%lp172566%_ ((_%rest172568%_ _%stx172563%_))
          (let* ((_%g172569172577%_ (gx#syntax-e _%rest172568%_))
                 (_%else172571172585%_ (lambda () '#f))
                 (_%K172573172619%_
                  (lambda (_%rest172588%_ _%hd172589%_)
                    (let* ((_%g172590172597%_ (gx#syntax-e _%rest172588%_))
                           (_%E172592172601%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g172590172597%_
                                     '([val . rest]))
                              '#!void))
                           (_%K172593172607%_
                            (lambda (_%rest172604%_ _%val172605%_)
                              (if (_%key=?172564%_ _%hd172589%_ _%key172562%_)
                                  _%val172605%_
                                  (_%lp172566%_ _%rest172604%_)))))
                      (if (pair? _%g172590172597%_)
                          (let ((_%hd172594172610%_ (##car _%g172590172597%_))
                                (_%tl172595172612%_ (##cdr _%g172590172597%_)))
                            (let* ((_%val172615%_ _%hd172594172610%_)
                                   (_%rest172617%_ _%tl172595172612%_))
                              (_%K172593172607%_
                               _%rest172617%_
                               _%val172615%_)))
                          (_%E172592172601%_))))))
            (if (pair? _%g172569172577%_)
                (let ((_%hd172574172622%_ (##car _%g172569172577%_))
                      (_%tl172575172624%_ (##cdr _%g172569172577%_)))
                  (let* ((_%hd172627%_ _%hd172574172622%_)
                         (_%rest172629%_ _%tl172575172624%_))
                    (_%K172573172619%_ _%rest172629%_ _%hd172627%_)))
                (_%else172571172585%_))))))
    (define gx#stx-getq__0
      (lambda (_%key172634%_ _%stx172635%_)
        (let ((_%key=?172637%_ gx#stx-eq?))
          (gx#stx-getq__% _%key172634%_ _%stx172635%_ _%key=?172637%_))))
    (define gx#stx-getq
      (lambda _g173881_
        (let ((_g173882_ (##length _g173881_)))
          (cond ((##fx= _g173882_ 2) (apply gx#stx-getq__0 _g173881_))
                ((##fx= _g173882_ 3) (apply gx#stx-getq__% _g173881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g173881_))))))))
