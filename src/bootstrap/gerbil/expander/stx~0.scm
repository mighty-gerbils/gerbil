(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1783939348)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (__make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args179792%_
        (apply make-instance gx#identifier-wrap::t _%$args179792%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args179789%_
        (apply make-instance gx#syntax-wrap::t _%$args179789%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args179786%_
        (apply make-instance gx#syntax-quote::t _%$args179786%_)))
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
      (lambda (_%stx179784%_) (symbol? (gx#stx-e _%stx179784%_))))
    (define gx#identifier-quote?
      (lambda (_%stx179782%_)
        (if (##structure-direct-instance-of? _%stx179782%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx179782%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx179777%_)
        (if (##structure-direct-instance-of? _%stx179777%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx179777%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx179777%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx179772%_)
        (if (##structure-direct-instance-of? _%stx179772%_ 'gx#syntax-quote::t)
            _%stx179772%_
            (if (##structure-direct-instance-of?
                 _%stx179772%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx179772%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx179746%_)
        (if (##structure-direct-instance-of? _%stx179746%_ 'gx#syntax-wrap::t)
            (let _%lp179749%_ ((_%e179751%_
                                (##unchecked-structure-ref
                                 _%stx179746%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks179752%_
                                (cons (##unchecked-structure-ref
                                       _%stx179746%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e179751%_)
                  (let ((_%$e179755%_
                         (##type-id (##structure-type _%e179751%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e179755%_)
                        (_%lp179749%_
                         (##unchecked-structure-ref _%e179751%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e179751%_ '3 '#f '#f)
                          _%marks179752%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e179755%_)
                                (eq? 'gx#identifier-wrap::t _%$e179755%_))
                            (##unchecked-structure-ref _%e179751%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e179755%_)
                                (_%lp179749%_
                                 (##unchecked-structure-ref
                                  _%e179751%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks179752%_)
                                _%e179751%_))))
                  (if (null? _%marks179752%_)
                      _%e179751%_
                      (if (pair? _%e179751%_)
                          (cons (gx#stx-wrap
                                 (##car _%e179751%_)
                                 _%marks179752%_)
                                (gx#stx-wrap
                                 (##cdr _%e179751%_)
                                 _%marks179752%_))
                          (if (vector? _%e179751%_)
                              (vector-map
                               (lambda (_%$%g179763179765%_)
                                 (gx#stx-wrap
                                  _%$%g179763179765%_
                                  _%marks179752%_))
                               _%e179751%_)
                              (if (box? _%e179751%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e179751%_)
                                        _%marks179752%_))
                                  _%e179751%_))))))
            (if (##structure-instance-of? _%stx179746%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx179746%_ '1 '#f '#f)
                _%stx179746%_))))
    (define gx#syntax->datum
      (lambda (_%stx179739%_)
        (if (##structure-instance-of? _%stx179739%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx179739%_ '1 '#f '#f))
            (if (pair? _%stx179739%_)
                (cons (gx#syntax->datum (##car _%stx179739%_))
                      (gx#syntax->datum (##cdr _%stx179739%_)))
                (if (vector? _%stx179739%_)
                    (vector-map gx#syntax->datum _%stx179739%_)
                    (if (box? _%stx179739%_)
                        (box (gx#syntax->datum (unbox _%stx179739%_)))
                        _%stx179739%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx179673%_ _%datum179674%_ _%src179675%_ _%quote?179676%_)
        (letrec ((_%wrap-datum179678%_
                  (lambda (_%e179711%_ _%marks179712%_)
                    (_%wrap-inner179680%_
                     _%e179711%_
                     (lambda (_%$%g179713179715%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%$%g179713179715%_
                        _%src179675%_
                        _%marks179712%_)))))
                 (_%wrap-quote179679%_
                  (lambda (_%e179703%_ _%ctx179704%_ _%marks179705%_)
                    (_%wrap-inner179680%_
                     _%e179703%_
                     (lambda (_%$%g179706179708%_)
                       (##structure
                        gx#syntax-quote::t
                        _%$%g179706179708%_
                        _%src179675%_
                        _%ctx179704%_
                        _%marks179705%_)))))
                 (_%wrap-inner179680%_
                  (lambda (_%e179691%_ _%wrap-e179692%_)
                    (let _%recur179694%_ ((_%e179696%_ _%e179691%_))
                      (if (symbol? _%e179696%_)
                          (_%wrap-e179692%_ _%e179696%_)
                          (if (pair? _%e179696%_)
                              (cons (_%recur179694%_ (##car _%e179696%_))
                                    (_%recur179694%_ (##cdr _%e179696%_)))
                              (if (vector? _%e179696%_)
                                  (vector-map _%recur179694%_ _%e179696%_)
                                  (if (box? _%e179696%_)
                                      (box (_%recur179694%_
                                            (unbox _%e179696%_)))
                                      _%e179696%_)))))))
                 (_%wrap-outer179681%_
                  (lambda (_%e179689%_)
                    (if (##structure-instance-of? _%e179689%_ 'gerbil#AST::t)
                        _%e179689%_
                        (##structure gx#AST::t _%e179689%_ _%src179675%_)))))
          (if (##structure-instance-of? _%datum179674%_ 'gerbil#AST::t)
              _%datum179674%_
              (if (not _%stx179673%_)
                  (##structure gx#AST::t _%datum179674%_ _%src179675%_)
                  (if (gx#identifier? _%stx179673%_)
                      (let ((_%stx179686%_ (gx#stx-unwrap__0 _%stx179673%_)))
                        (_%wrap-outer179681%_
                         (if (##structure-direct-instance-of?
                              _%stx179686%_
                              'gx#syntax-quote::t)
                             (if _%quote?179676%_
                                 (_%wrap-quote179679%_
                                  _%datum179674%_
                                  (##unchecked-structure-ref
                                   _%stx179686%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx179686%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum179678%_
                                  _%datum179674%_
                                  (##unchecked-structure-ref
                                   _%stx179686%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum179678%_
                              _%datum179674%_
                              (##unchecked-structure-ref
                               _%stx179686%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx179673%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx179721%_ _%datum179722%_)
        (let* ((_%src179724%_ '#f) (_%quote?179726%_ '#t))
          (gx#datum->syntax__%
           _%stx179721%_
           _%datum179722%_
           _%src179724%_
           _%quote?179726%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx179728%_ _%datum179729%_ _%src179730%_)
        (let ((_%quote?179732%_ '#t))
          (gx#datum->syntax__%
           _%stx179728%_
           _%datum179729%_
           _%src179730%_
           _%quote?179732%_))))
    (define gx#datum->syntax
      (lambda _g179872_
        (let ((_g179873_ (##length _g179872_)))
          (cond ((##fx= _g179873_ 2) (apply gx#datum->syntax__0 _g179872_))
                ((##fx= _g179873_ 3) (apply gx#datum->syntax__1 _g179872_))
                ((##fx= _g179873_ 4) (apply gx#datum->syntax__% _g179872_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g179872_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx179639%_ _%marks179640%_)
        (let _%lp179642%_ ((_%e179644%_ _%stx179639%_)
                           (_%marks179645%_ _%marks179640%_)
                           (_%src179646%_ (gx#stx-source _%stx179639%_)))
          (if (##structure-direct-instance-of? _%e179644%_ 'gx#syntax-wrap::t)
              (_%lp179642%_
               (##unchecked-structure-ref _%e179644%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e179644%_ '3 '#f '#f)
                _%marks179645%_)
               (##unchecked-structure-ref _%e179644%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e179644%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks179645%_)
                      _%e179644%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e179644%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e179644%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e179644%_ '3 '#f '#f)
                        _%marks179645%_)))
                  (if (##structure-direct-instance-of?
                       _%e179644%_
                       'gx#syntax-quote::t)
                      _%e179644%_
                      (if (##structure-instance-of? _%e179644%_ 'gerbil#AST::t)
                          (_%lp179642%_
                           (##unchecked-structure-ref _%e179644%_ '1 '#f '#f)
                           _%marks179645%_
                           (##unchecked-structure-ref _%e179644%_ '2 '#f '#f))
                          (if (symbol? _%e179644%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e179644%_
                               _%src179646%_
                               (reverse _%marks179645%_))
                              (if (null? _%marks179645%_)
                                  _%e179644%_
                                  (if (pair? _%e179644%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e179644%_)
                                             _%marks179645%_)
                                            (gx#stx-wrap
                                             (##cdr _%e179644%_)
                                             _%marks179645%_))
                                      (if (vector? _%e179644%_)
                                          (vector-map
                                           (lambda (_%$%g179655179657%_)
                                             (gx#stx-wrap
                                              _%$%g179655179657%_
                                              _%marks179645%_))
                                           _%e179644%_)
                                          (if (box? _%e179644%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e179644%_)
                                                    _%marks179645%_))
                                              _%e179644%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx179665%_)
        (let ((_%marks179667%_ '()))
          (gx#stx-unwrap__% _%stx179665%_ _%marks179667%_))))
    (define gx#stx-unwrap
      (lambda _g179874_
        (let ((_g179875_ (##length _g179874_)))
          (cond ((##fx= _g179875_ 1) (apply gx#stx-unwrap__0 _g179874_))
                ((##fx= _g179875_ 2) (apply gx#stx-unwrap__% _g179874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g179874_))))))
    (define gx#stx-wrap
      (lambda (_%stx179632%_ _%marks179633%_)
        (foldl__0
         (lambda (_%mark179635%_ _%stx179636%_)
           (gx#stx-apply-mark _%stx179636%_ _%mark179635%_))
         _%stx179632%_
         _%marks179633%_)))
    (define gx#stx-rewrap
      (lambda (_%stx179626%_ _%marks179627%_)
        (foldr__0
         (lambda (_%mark179629%_ _%stx179630%_)
           (gx#stx-apply-mark _%stx179630%_ _%mark179629%_))
         _%stx179626%_
         _%marks179627%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx179620%_ _%mark179621%_)
        (if (##structure-direct-instance-of? _%stx179620%_ 'gx#syntax-quote::t)
            _%stx179620%_
            (if (and (##structure-direct-instance-of?
                      _%stx179620%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark179621%_
                          (##unchecked-structure-ref
                           _%stx179620%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx179620%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx179620%_
                 (gx#stx-source _%stx179620%_)
                 _%mark179621%_)))))
    (define gx#apply-mark
      (lambda (_%mark179584%_ _%marks179585%_)
        (let* ((_%$%marks179586179594%_ _%marks179585%_)
               (_%$%else179588179602%_
                (lambda () (cons _%mark179584%_ _%marks179585%_)))
               (_%$%K179590179608%_
                (lambda (_%rest179605%_ _%hd179606%_)
                  (if (eq? _%mark179584%_ _%hd179606%_)
                      _%rest179605%_
                      (cons _%mark179584%_ _%marks179585%_)))))
          (if (pair? _%$%marks179586179594%_)
              (let ((_%$%hd179591179611%_ (##car _%$%marks179586179594%_))
                    (_%$%tl179592179613%_ (##cdr _%$%marks179586179594%_)))
                (let* ((_%hd179616%_ _%$%hd179591179611%_)
                       (_%rest179618%_ _%$%tl179592179613%_))
                  (_%$%K179590179608%_ _%rest179618%_ _%hd179616%_)))
              (_%$%else179588179602%_)))))
    (define gx#stx-e
      (lambda (_%stx179579%_)
        (if (##structure-direct-instance-of? _%stx179579%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx179579%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx179579%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx179579%_ '1 '#f '#f)
                _%stx179579%_))))
    (define gx#stx-source
      (lambda (_%stx179577%_)
        (if (##structure-instance-of? _%stx179577%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx179577%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx179571%_ _%src179572%_)
        (if (or (##structure-instance-of? _%stx179571%_ 'gerbil#AST::t)
                (not _%src179572%_))
            _%stx179571%_
            (##structure gx#AST::t _%stx179571%_ _%src179572%_))))
    (define gx#stx-datum?
      (lambda (_%stx179569%_) (gx#self-quoting? (gx#stx-e _%stx179569%_))))
    (define gx#self-quoting?
      (lambda (_%x179552%_)
        (let ((_%$e179554%_ (immediate? _%x179552%_)))
          (if _%$e179554%_
              _%$e179554%_
              (let ((_%$e179557%_ (number? _%x179552%_)))
                (if _%$e179557%_
                    _%$e179557%_
                    (let ((_%$e179560%_ (keyword? _%x179552%_)))
                      (if _%$e179560%_
                          _%$e179560%_
                          (let ((_%$e179563%_ (string? _%x179552%_)))
                            (if _%$e179563%_
                                _%$e179563%_
                                (let ((_%$e179566%_ (vector? _%x179552%_)))
                                  (if _%$e179566%_
                                      _%$e179566%_
                                      (u8vector? _%x179552%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e179550%_) (boolean? (gx#stx-e _%e179550%_))))
    (define gx#stx-keyword?
      (lambda (_%e179548%_) (keyword? (gx#stx-e _%e179548%_))))
    (define gx#stx-char? (lambda (_%e179546%_) (char? (gx#stx-e _%e179546%_))))
    (define gx#stx-number?
      (lambda (_%e179544%_) (number? (gx#stx-e _%e179544%_))))
    (define gx#stx-fixnum?
      (lambda (_%e179542%_) (fixnum? (gx#stx-e _%e179542%_))))
    (define gx#stx-string?
      (lambda (_%e179540%_) (string? (gx#stx-e _%e179540%_))))
    (define gx#stx-null? (lambda (_%e179538%_) (null? (gx#stx-e _%e179538%_))))
    (define gx#stx-pair? (lambda (_%e179536%_) (pair? (gx#stx-e _%e179536%_))))
    (define gx#stx-list?
      (lambda (_%e179498%_)
        (let* ((_%$%g179499179508%_ (gx#stx-e _%e179498%_))
               (_%$%E179502179512%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g179499179508%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%$%K179504179528%_
                 (lambda (_%rest179526%_) (gx#stx-list? _%rest179526%_)))
                (_%$%K179503179518%_
                 (lambda (_%tail179516%_) (null? _%tail179516%_))))
            (if (pair? _%$%g179499179508%_)
                (let* ((_%$%tl179506179531%_ (##cdr _%$%g179499179508%_))
                       (_%rest179534%_ _%$%tl179506179531%_))
                  (gx#stx-list? _%rest179534%_))
                (let ((_%tail179521%_ _%$%g179499179508%_))
                  (null? _%tail179521%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e179491%_)
        (let* ((_%e179493%_ (gx#stx-e _%e179491%_))
               (_%$e179495%_ (pair? _%e179493%_)))
          (if _%$e179495%_ _%$e179495%_ (null? _%e179493%_)))))
    (define gx#stx-vector?
      (lambda (_%e179489%_) (vector? (gx#stx-e _%e179489%_))))
    (define gx#stx-box? (lambda (_%e179487%_) (box? (gx#stx-e _%e179487%_))))
    (define gx#stx-eq?
      (lambda (_%x179484%_ _%y179485%_)
        (eq? (gx#stx-e _%x179484%_) (gx#stx-e _%y179485%_))))
    (define gx#stx-eqv?
      (lambda (_%x179481%_ _%y179482%_)
        (eqv? (gx#stx-e _%x179481%_) (gx#stx-e _%y179482%_))))
    (define gx#stx-equal?
      (lambda (_%x179478%_ _%y179479%_)
        (equal? (gx#stx-e _%x179478%_) (gx#stx-e _%y179479%_))))
    (define gx#stx-false? (lambda (_%x179476%_) (not (gx#stx-e _%x179476%_))))
    (define gx#stx-identifier
      (lambda (_%template179473%_ . _%args179474%_)
        (gx#datum->syntax__1
         _%template179473%_
         (apply make-symbol (gx#syntax->datum _%args179474%_))
         (gx#stx-source _%template179473%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx179471%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx179471%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx179466%_)
        (if (##structure-direct-instance-of?
             _%stx179466%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx179466%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx179466%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx179466%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx179466%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx179462%_)
        (let ((_%stx179464%_ (gx#stx-unwrap__0 _%stx179462%_)))
          (if (gx#identifier-quote? _%stx179464%_)
              (##unchecked-structure-ref _%stx179464%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx179417%_)
        (let* ((_%$%g179418179428%_ (gx#stx-e _%stx179417%_))
               (_%$%else179421179436%_ (lambda () '#f)))
          (let ((_%$%K179424179450%_
                 (lambda (_%rest179447%_ _%hd179448%_)
                   (if (gx#identifier? _%hd179448%_)
                       (gx#identifier-list? _%rest179447%_)
                       '#f)))
                (_%$%K179423179441%_ (lambda () '#t)))
            (let ((_%$%try-match179420179444%_
                   (lambda ()
                     (if (null? _%$%g179418179428%_)
                         (_%$%K179423179441%_)
                         (_%$%else179421179436%_)))))
              (if (pair? _%$%g179418179428%_)
                  (let ((_%$%tl179426179455%_ (##cdr _%$%g179418179428%_))
                        (_%$%hd179425179453%_ (##car _%$%g179418179428%_)))
                    (let ((_%hd179458%_ _%$%hd179425179453%_)
                          (_%rest179460%_ _%$%tl179426179455%_))
                      (_%$%K179424179450%_ _%rest179460%_ _%hd179458%_)))
                  (_%$%try-match179420179444%_)))))))
    (define gx#genident__%
      (lambda (_%e179397%_ _%src179398%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src179398%_) _%src179398%_ '#f)
         (make-symbol__1
          '"$%"
          (##gensym
           (let ((_%e179400%_ (gx#stx-e _%e179397%_)))
             (if (symbol? _%e179400%_) _%e179400%_ 'g))))
         _%src179398%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e179406%_ 'g) (_%src179408%_ '#f))
          (gx#genident__% _%e179406%_ _%src179408%_))))
    (define gx#genident__1
      (lambda (_%e179410%_)
        (let ((_%src179412%_ '#f))
          (gx#genident__% _%e179410%_ _%src179412%_))))
    (define gx#genident
      (lambda _g179876_
        (let ((_g179877_ (##length _g179876_)))
          (cond ((##fx= _g179877_ 0) (apply gx#genident__0 _g179876_))
                ((##fx= _g179877_ 1) (apply gx#genident__1 _g179876_))
                ((##fx= _g179877_ 2) (apply gx#genident__% _g179876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g179876_))))))
    (define gx#gentemps
      (lambda (_%stx-lst179392%_)
        (gx#stx-map1
         (lambda (_%x179394%_) (gx#genident__% _%x179394%_ _%x179394%_))
         _%stx-lst179392%_)))
    (define gx#syntax->list
      (lambda (_%stx179390%_) (gx#stx-map1 values _%stx179390%_)))
    (define gx#stx-car
      (lambda (_%stx179387%_)
        (declare (safe))
        (car (gx#syntax-e _%stx179387%_))))
    (define gx#stx-cdr
      (lambda (_%stx179384%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx179384%_))))
    (define gx#stx-length
      (lambda (_%stx179349%_)
        (let _%lp179351%_ ((_%rest179353%_ _%stx179349%_) (_%n179354%_ '0))
          (let* ((_%$%g179355179363%_ (gx#stx-e _%rest179353%_))
                 (_%$%else179357179371%_ (lambda () _%n179354%_))
                 (_%$%K179359179376%_
                  (lambda (_%rest179374%_)
                    (_%lp179351%_ _%rest179374%_ (##fx+ _%n179354%_ '1)))))
            (if (pair? _%$%g179355179363%_)
                (let* ((_%$%tl179361179379%_ (##cdr _%$%g179355179363%_))
                       (_%rest179382%_ _%$%tl179361179379%_))
                  (_%$%K179359179376%_ _%rest179382%_))
                (_%$%else179357179371%_))))))
    (define gx#stx-for-each
      (lambda _g179878_
        (let ((_g179879_ (##length _g179878_)))
          (cond ((##fx= _g179879_ 2) (apply gx#stx-for-each1 _g179878_))
                ((##fx= _g179879_ 3) (apply gx#stx-for-each2 _g179878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g179878_))))))
    (define gx#stx-for-each1
      (lambda (_%f179292%_ _%stx179293%_)
        (if (procedure? _%f179292%_)
            '#!void
            (error '"expected procedure" _%f179292%_))
        (let _%lp179295%_ ((_%rest179297%_ _%stx179293%_))
          (let* ((_%$%g179298179308%_ (gx#syntax-e _%rest179297%_))
                 (_%$%else179301179316%_
                  (lambda () (_%f179292%_ _%rest179297%_))))
            (let ((_%$%K179304179330%_
                   (lambda (_%rest179327%_ _%hd179328%_)
                     (_%f179292%_ _%hd179328%_)
                     (_%lp179295%_ _%rest179327%_)))
                  (_%$%K179303179321%_ (lambda () '#!void)))
              (let ((_%$%try-match179300179324%_
                     (lambda ()
                       (if (null? _%$%g179298179308%_)
                           (_%$%K179303179321%_)
                           (_%$%else179301179316%_)))))
                (if (pair? _%$%g179298179308%_)
                    (let ((_%$%tl179306179335%_ (##cdr _%$%g179298179308%_))
                          (_%$%hd179305179333%_ (##car _%$%g179298179308%_)))
                      (let ((_%hd179338%_ _%$%hd179305179333%_)
                            (_%rest179340%_ _%$%tl179306179335%_))
                        (_%$%K179304179330%_ _%rest179340%_ _%hd179338%_)))
                    (_%$%try-match179300179324%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f179197%_ _%xstx179198%_ _%ystx179199%_)
        (if (procedure? _%f179197%_)
            '#!void
            (error '"expected procedure" _%f179197%_))
        (let _%lp179201%_ ((_%xrest179203%_ _%xstx179198%_)
                           (_%yrest179204%_ _%ystx179199%_))
          (let* ((_%$%g179205179215%_ (gx#syntax-e _%xrest179203%_))
                 (_%$%else179208179223%_ (lambda () '#!void)))
            (let ((_%$%K179211179280%_
                   (lambda (_%xrest179249%_ _%xhd179250%_)
                     (let* ((_%$%g179251179258%_ (gx#syntax-e _%yrest179204%_))
                            (_%$%E179253179262%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g179251179258%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K179254179268%_
                             (lambda (_%yrest179265%_ _%yhd179266%_)
                               (_%f179197%_ _%xhd179250%_ _%yhd179266%_)
                               (_%lp179201%_
                                _%xrest179249%_
                                _%yrest179265%_))))
                       (if (pair? _%$%g179251179258%_)
                           (let ((_%$%hd179255179271%_
                                  (##car _%$%g179251179258%_))
                                 (_%$%tl179256179273%_
                                  (##cdr _%$%g179251179258%_)))
                             (let* ((_%yhd179276%_ _%$%hd179255179271%_)
                                    (_%yrest179278%_ _%$%tl179256179273%_))
                               (_%$%K179254179268%_
                                _%yrest179278%_
                                _%yhd179276%_)))
                           (_%$%E179253179262%_)))))
                  (_%$%K179210179243%_
                   (lambda ()
                     (let* ((_%$%yrest179227179232%_ _%yrest179204%_)
                            (_%$%E179229179236%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest179227179232%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K179230179240%_
                             (lambda ()
                               (_%f179197%_ _%xrest179203%_ _%yrest179204%_))))
                       (if (gx#stx-null? _%$%yrest179227179232%_)
                           (_%$%E179229179236%_)
                           (_%$%K179230179240%_))))))
              (let ((_%$%try-match179207179246%_
                     (lambda ()
                       (if (null? _%$%g179205179215%_)
                           (_%$%else179208179223%_)
                           (_%$%K179210179243%_)))))
                (if (pair? _%$%g179205179215%_)
                    (let ((_%$%tl179213179285%_ (##cdr _%$%g179205179215%_))
                          (_%$%hd179212179283%_ (##car _%$%g179205179215%_)))
                      (let ((_%xhd179288%_ _%$%hd179212179283%_)
                            (_%xrest179290%_ _%$%tl179213179285%_))
                        (_%$%K179211179280%_ _%xrest179290%_ _%xhd179288%_)))
                    (_%$%try-match179207179246%_))))))))
    (define gx#stx-map
      (lambda _g179880_
        (let ((_g179881_ (##length _g179880_)))
          (cond ((##fx= _g179881_ 2) (apply gx#stx-map1 _g179880_))
                ((##fx= _g179881_ 3) (apply gx#stx-map2 _g179880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g179880_))))))
    (define gx#stx-map1
      (lambda (_%f179140%_ _%stx179141%_)
        (if (procedure? _%f179140%_)
            '#!void
            (error '"expected procedure" _%f179140%_))
        (let _%recur179143%_ ((_%rest179145%_ _%stx179141%_))
          (let* ((_%$%g179146179156%_ (gx#syntax-e _%rest179145%_))
                 (_%$%else179149179164%_
                  (lambda () (_%f179140%_ _%rest179145%_))))
            (let ((_%$%K179152179178%_
                   (lambda (_%rest179175%_ _%hd179176%_)
                     (cons (_%f179140%_ _%hd179176%_)
                           (_%recur179143%_ _%rest179175%_))))
                  (_%$%K179151179169%_ (lambda () '())))
              (let ((_%$%try-match179148179172%_
                     (lambda ()
                       (if (null? _%$%g179146179156%_)
                           (_%$%K179151179169%_)
                           (_%$%else179149179164%_)))))
                (if (pair? _%$%g179146179156%_)
                    (let ((_%$%tl179154179183%_ (##cdr _%$%g179146179156%_))
                          (_%$%hd179153179181%_ (##car _%$%g179146179156%_)))
                      (let ((_%hd179186%_ _%$%hd179153179181%_)
                            (_%rest179188%_ _%$%tl179154179183%_))
                        (_%$%K179152179178%_ _%rest179188%_ _%hd179186%_)))
                    (_%$%try-match179148179172%_))))))))
    (define gx#stx-map2
      (lambda (_%f179045%_ _%xstx179046%_ _%ystx179047%_)
        (if (procedure? _%f179045%_)
            '#!void
            (error '"expected procedure" _%f179045%_))
        (let _%recur179049%_ ((_%xrest179051%_ _%xstx179046%_)
                              (_%yrest179052%_ _%ystx179047%_))
          (let* ((_%$%g179053179063%_ (gx#syntax-e _%xrest179051%_))
                 (_%$%else179056179071%_ (lambda () '())))
            (let ((_%$%K179059179128%_
                   (lambda (_%xrest179097%_ _%xhd179098%_)
                     (let* ((_%$%g179099179106%_ (gx#syntax-e _%yrest179052%_))
                            (_%$%E179101179110%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g179099179106%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K179102179116%_
                             (lambda (_%yrest179113%_ _%yhd179114%_)
                               (cons (_%f179045%_ _%xhd179098%_ _%yhd179114%_)
                                     (_%recur179049%_
                                      _%xrest179097%_
                                      _%yrest179113%_)))))
                       (if (pair? _%$%g179099179106%_)
                           (let ((_%$%hd179103179119%_
                                  (##car _%$%g179099179106%_))
                                 (_%$%tl179104179121%_
                                  (##cdr _%$%g179099179106%_)))
                             (let* ((_%yhd179124%_ _%$%hd179103179119%_)
                                    (_%yrest179126%_ _%$%tl179104179121%_))
                               (_%$%K179102179116%_
                                _%yrest179126%_
                                _%yhd179124%_)))
                           (_%$%E179101179110%_)))))
                  (_%$%K179058179091%_
                   (lambda ()
                     (let* ((_%$%yrest179075179080%_ _%yrest179052%_)
                            (_%$%E179077179084%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest179075179080%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K179078179088%_
                             (lambda ()
                               (_%f179045%_ _%xrest179051%_ _%yrest179052%_))))
                       (if (gx#stx-null? _%$%yrest179075179080%_)
                           (_%$%E179077179084%_)
                           (_%$%K179078179088%_))))))
              (let ((_%$%try-match179055179094%_
                     (lambda ()
                       (if (null? _%$%g179053179063%_)
                           (_%$%else179056179071%_)
                           (_%$%K179058179091%_)))))
                (if (pair? _%$%g179053179063%_)
                    (let ((_%$%tl179061179133%_ (##cdr _%$%g179053179063%_))
                          (_%$%hd179060179131%_ (##car _%$%g179053179063%_)))
                      (let ((_%xhd179136%_ _%$%hd179060179131%_)
                            (_%xrest179138%_ _%$%tl179061179133%_))
                        (_%$%K179059179128%_ _%xrest179138%_ _%xhd179136%_)))
                    (_%$%try-match179055179094%_))))))))
    (define gx#stx-andmap
      (lambda (_%f178995%_ _%stx178996%_)
        (if (procedure? _%f178995%_)
            '#!void
            (error '"expected procedure" _%f178995%_))
        (let _%lp178998%_ ((_%rest179000%_ _%stx178996%_))
          (let* ((_%$%g179001179011%_ (gx#syntax-e _%rest179000%_))
                 (_%$%else179004179019%_
                  (lambda () (_%f178995%_ _%rest179000%_))))
            (let ((_%$%K179007179033%_
                   (lambda (_%rest179030%_ _%hd179031%_)
                     (if (_%f178995%_ _%hd179031%_)
                         (_%lp178998%_ _%rest179030%_)
                         '#f)))
                  (_%$%K179006179024%_ (lambda () '#t)))
              (let ((_%$%try-match179003179027%_
                     (lambda ()
                       (if (null? _%$%g179001179011%_)
                           (_%$%K179006179024%_)
                           (_%$%else179004179019%_)))))
                (if (pair? _%$%g179001179011%_)
                    (let ((_%$%tl179009179038%_ (##cdr _%$%g179001179011%_))
                          (_%$%hd179008179036%_ (##car _%$%g179001179011%_)))
                      (let ((_%hd179041%_ _%$%hd179008179036%_)
                            (_%rest179043%_ _%$%tl179009179038%_))
                        (_%$%K179007179033%_ _%rest179043%_ _%hd179041%_)))
                    (_%$%try-match179003179027%_))))))))
    (define gx#stx-ormap
      (lambda (_%f178942%_ _%stx178943%_)
        (if (procedure? _%f178942%_)
            '#!void
            (error '"expected procedure" _%f178942%_))
        (let _%lp178945%_ ((_%rest178947%_ _%stx178943%_))
          (let* ((_%$%g178948178958%_ (gx#syntax-e _%rest178947%_))
                 (_%$%else178951178966%_
                  (lambda () (_%f178942%_ _%rest178947%_))))
            (let ((_%$%K178954178983%_
                   (lambda (_%rest178977%_ _%hd178978%_)
                     (let ((_%$e178980%_ (_%f178942%_ _%hd178978%_)))
                       (if _%$e178980%_
                           _%$e178980%_
                           (_%lp178945%_ _%rest178977%_)))))
                  (_%$%K178953178971%_ (lambda () '#f)))
              (let ((_%$%try-match178950178974%_
                     (lambda ()
                       (if (null? _%$%g178948178958%_)
                           (_%$%K178953178971%_)
                           (_%$%else178951178966%_)))))
                (if (pair? _%$%g178948178958%_)
                    (let ((_%$%tl178956178988%_ (##cdr _%$%g178948178958%_))
                          (_%$%hd178955178986%_ (##car _%$%g178948178958%_)))
                      (let ((_%hd178991%_ _%$%hd178955178986%_)
                            (_%rest178993%_ _%$%tl178956178988%_))
                        (_%$%K178954178983%_ _%rest178993%_ _%hd178991%_)))
                    (_%$%try-match178950178974%_))))))))
    (define gx#stx-foldl
      (lambda (_%f178890%_ _%iv178891%_ _%stx178892%_)
        (if (procedure? _%f178890%_)
            '#!void
            (error '"expected procedure" _%f178890%_))
        (let _%lp178894%_ ((_%r178896%_ _%iv178891%_)
                           (_%rest178897%_ _%stx178892%_))
          (let* ((_%$%g178898178908%_ (gx#syntax-e _%rest178897%_))
                 (_%$%else178901178916%_
                  (lambda () (_%f178890%_ _%rest178897%_ _%r178896%_))))
            (let ((_%$%K178904178930%_
                   (lambda (_%rest178927%_ _%hd178928%_)
                     (_%lp178894%_
                      (_%f178890%_ _%hd178928%_ _%r178896%_)
                      _%rest178927%_)))
                  (_%$%K178903178921%_ (lambda () _%r178896%_)))
              (let ((_%$%try-match178900178924%_
                     (lambda ()
                       (if (null? _%$%g178898178908%_)
                           (_%$%K178903178921%_)
                           (_%$%else178901178916%_)))))
                (if (pair? _%$%g178898178908%_)
                    (let ((_%$%tl178906178935%_ (##cdr _%$%g178898178908%_))
                          (_%$%hd178905178933%_ (##car _%$%g178898178908%_)))
                      (let ((_%hd178938%_ _%$%hd178905178933%_)
                            (_%rest178940%_ _%$%tl178906178935%_))
                        (_%$%K178904178930%_ _%rest178940%_ _%hd178938%_)))
                    (_%$%try-match178900178924%_))))))))
    (define gx#stx-foldr
      (lambda (_%f178839%_ _%iv178840%_ _%stx178841%_)
        (if (procedure? _%f178839%_)
            '#!void
            (error '"expected procedure" _%f178839%_))
        (let _%recur178843%_ ((_%rest178845%_ _%stx178841%_))
          (let* ((_%$%g178846178856%_ (gx#syntax-e _%rest178845%_))
                 (_%$%else178849178864%_
                  (lambda () (_%f178839%_ _%rest178845%_ _%iv178840%_))))
            (let ((_%$%K178852178878%_
                   (lambda (_%rest178875%_ _%hd178876%_)
                     (_%f178839%_
                      _%hd178876%_
                      (_%recur178843%_ _%rest178875%_))))
                  (_%$%K178851178869%_ (lambda () _%iv178840%_)))
              (let ((_%$%try-match178848178872%_
                     (lambda ()
                       (if (null? _%$%g178846178856%_)
                           (_%$%K178851178869%_)
                           (_%$%else178849178864%_)))))
                (if (pair? _%$%g178846178856%_)
                    (let ((_%$%tl178854178883%_ (##cdr _%$%g178846178856%_))
                          (_%$%hd178853178881%_ (##car _%$%g178846178856%_)))
                      (let ((_%hd178886%_ _%$%hd178853178881%_)
                            (_%rest178888%_ _%$%tl178854178883%_))
                        (_%$%K178852178878%_ _%rest178888%_ _%hd178886%_)))
                    (_%$%try-match178848178872%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx178837%_) (gx#stx-foldl cons '() _%stx178837%_)))
    (define gx#stx-last
      (lambda (_%stx178798%_)
        (let _%lp178800%_ ((_%rest178802%_ _%stx178798%_))
          (let* ((_%$%g178803178811%_ (gx#syntax-e _%rest178802%_))
                 (_%$%else178805178819%_ (lambda () _%rest178802%_))
                 (_%$%K178807178825%_
                  (lambda (_%rest178822%_ _%hd178823%_)
                    (if (gx#stx-null? _%rest178822%_)
                        _%hd178823%_
                        (_%lp178800%_ _%rest178822%_)))))
            (if (pair? _%$%g178803178811%_)
                (let ((_%$%hd178808178828%_ (##car _%$%g178803178811%_))
                      (_%$%tl178809178830%_ (##cdr _%$%g178803178811%_)))
                  (let* ((_%hd178833%_ _%$%hd178808178828%_)
                         (_%rest178835%_ _%$%tl178809178830%_))
                    (_%$%K178807178825%_ _%rest178835%_ _%hd178833%_)))
                (_%$%else178805178819%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx178769%_)
        (let _%lp178771%_ ((_%hd178773%_ _%stx178769%_))
          (let* ((_%$%g178774178781%_ (gx#syntax-e _%hd178773%_))
                 (_%$%E178776178785%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g178774178781%_
                           '([_ . rest]))
                    '#!void))
                 (_%$%K178777178790%_
                  (lambda (_%rest178788%_)
                    (if (gx#stx-pair? _%rest178788%_)
                        (_%lp178771%_ _%rest178788%_)
                        _%hd178773%_))))
            (if (pair? _%$%g178774178781%_)
                (let* ((_%$%tl178779178793%_ (##cdr _%$%g178774178781%_))
                       (_%rest178796%_ _%$%tl178779178793%_))
                  (_%$%K178777178790%_ _%rest178796%_))
                (_%$%E178776178785%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx178738%_ _%k178739%_)
        (let _%lp178741%_ ((_%rest178743%_ _%stx178738%_)
                           (_%k178744%_ _%k178739%_))
          (if (fxpositive? _%k178744%_)
              (let* ((_%$%g178745178752%_ (gx#syntax-e _%rest178743%_))
                     (_%$%E178747178756%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g178745178752%_
                               '([_ . rest]))
                        '#!void))
                     (_%$%K178748178761%_
                      (lambda (_%rest178759%_)
                        (_%lp178741%_ _%rest178759%_ (##fx- _%k178744%_ '1)))))
                (if (pair? _%$%g178745178752%_)
                    (let* ((_%$%tl178750178764%_ (##cdr _%$%g178745178752%_))
                           (_%rest178767%_ _%$%tl178750178764%_))
                      (_%$%K178748178761%_ _%rest178767%_))
                    (_%$%E178747178756%_)))
              _%rest178743%_))))
    (define gx#stx-list-ref
      (lambda (_%stx178735%_ _%k178736%_)
        (gx#stx-car (gx#stx-list-tail _%stx178735%_ _%k178736%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx178647%_ _%key?178648%_)
        (if (procedure? _%key?178648%_)
            '#!void
            (error '"expected procedure" _%key?178648%_))
        (let _%lp178650%_ ((_%rest178652%_ _%stx178647%_))
          (let* ((_%$%g178653178663%_ (gx#stx-e _%rest178652%_))
                 (_%$%else178656178671%_ (lambda () '#f)))
            (let ((_%$%K178659178713%_
                   (lambda (_%rest178682%_ _%hd178683%_)
                     (if (_%key?178648%_ _%hd178683%_)
                         (let* ((_%$%g178684178692%_ (gx#stx-e _%rest178682%_))
                                (_%$%else178686178700%_ (lambda () '#f))
                                (_%$%K178688178705%_
                                 (lambda (_%rest178703%_)
                                   (_%lp178650%_ _%rest178703%_))))
                           (if (pair? _%$%g178684178692%_)
                               (let* ((_%$%tl178690178708%_
                                       (##cdr _%$%g178684178692%_))
                                      (_%rest178711%_ _%$%tl178690178708%_))
                                 (_%lp178650%_ _%rest178711%_))
                               (_%$%else178686178700%_)))
                         '#f)))
                  (_%$%K178658178676%_ (lambda () '#t)))
              (let ((_%$%try-match178655178679%_
                     (lambda ()
                       (if (null? _%$%g178653178663%_)
                           (_%$%K178658178676%_)
                           (_%$%else178656178671%_)))))
                (if (pair? _%$%g178653178663%_)
                    (let ((_%$%tl178661178718%_ (##cdr _%$%g178653178663%_))
                          (_%$%hd178660178716%_ (##car _%$%g178653178663%_)))
                      (let ((_%hd178721%_ _%$%hd178660178716%_)
                            (_%rest178723%_ _%$%tl178661178718%_))
                        (_%$%K178659178713%_ _%rest178723%_ _%hd178721%_)))
                    (_%$%try-match178655178679%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx178728%_)
        (let ((_%key?178730%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx178728%_ _%key?178730%_))))
    (define gx#stx-plist?
      (lambda _g179882_
        (let ((_g179883_ (##length _g179882_)))
          (cond ((##fx= _g179883_ 1) (apply gx#stx-plist?__0 _g179882_))
                ((##fx= _g179883_ 2) (apply gx#stx-plist?__% _g179882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g179882_))))))
    (define gx#stx-getq__%
      (lambda (_%key178565%_ _%stx178566%_ _%key=?178567%_)
        (if (procedure? _%key=?178567%_)
            '#!void
            (error '"expected procedure" _%key=?178567%_))
        (let _%lp178569%_ ((_%rest178571%_ _%stx178566%_))
          (let* ((_%$%g178572178580%_ (gx#syntax-e _%rest178571%_))
                 (_%$%else178574178588%_ (lambda () '#f))
                 (_%$%K178576178622%_
                  (lambda (_%rest178591%_ _%hd178592%_)
                    (let* ((_%$%g178593178600%_ (gx#syntax-e _%rest178591%_))
                           (_%$%E178595178604%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g178593178600%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K178596178610%_
                            (lambda (_%rest178607%_ _%val178608%_)
                              (if (_%key=?178567%_ _%hd178592%_ _%key178565%_)
                                  _%val178608%_
                                  (_%lp178569%_ _%rest178607%_)))))
                      (if (pair? _%$%g178593178600%_)
                          (let ((_%$%hd178597178613%_
                                 (##car _%$%g178593178600%_))
                                (_%$%tl178598178615%_
                                 (##cdr _%$%g178593178600%_)))
                            (let* ((_%val178618%_ _%$%hd178597178613%_)
                                   (_%rest178620%_ _%$%tl178598178615%_))
                              (_%$%K178596178610%_
                               _%rest178620%_
                               _%val178618%_)))
                          (_%$%E178595178604%_))))))
            (if (pair? _%$%g178572178580%_)
                (let ((_%$%hd178577178625%_ (##car _%$%g178572178580%_))
                      (_%$%tl178578178627%_ (##cdr _%$%g178572178580%_)))
                  (let* ((_%hd178630%_ _%$%hd178577178625%_)
                         (_%rest178632%_ _%$%tl178578178627%_))
                    (_%$%K178576178622%_ _%rest178632%_ _%hd178630%_)))
                (_%$%else178574178588%_))))))
    (define gx#stx-getq__0
      (lambda (_%key178637%_ _%stx178638%_)
        (let ((_%key=?178640%_ gx#stx-eq?))
          (gx#stx-getq__% _%key178637%_ _%stx178638%_ _%key=?178640%_))))
    (define gx#stx-getq
      (lambda _g179884_
        (let ((_g179885_ (##length _g179884_)))
          (cond ((##fx= _g179885_ 2) (apply gx#stx-getq__0 _g179884_))
                ((##fx= _g179885_ 3) (apply gx#stx-getq__% _g179884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g179884_))))))
    (define gx#stx-plist-assq__%
      (lambda (_%key178483%_ _%stx178484%_ _%key=?178485%_)
        (if (procedure? _%key=?178485%_)
            '#!void
            (error '"expected procedure" _%key=?178485%_))
        (let _%lp178487%_ ((_%rest178489%_ _%stx178484%_))
          (let* ((_%$%g178490178498%_ (gx#syntax-e _%rest178489%_))
                 (_%$%else178492178506%_ (lambda () '#f))
                 (_%$%K178494178540%_
                  (lambda (_%rest178509%_ _%hd178510%_)
                    (let* ((_%$%g178511178518%_ (gx#syntax-e _%rest178509%_))
                           (_%$%E178513178522%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g178511178518%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K178514178528%_
                            (lambda (_%rest178525%_ _%val178526%_)
                              (if (_%key=?178485%_ _%hd178510%_ _%key178483%_)
                                  (cons _%hd178510%_ _%val178526%_)
                                  (_%lp178487%_ _%rest178525%_)))))
                      (if (pair? _%$%g178511178518%_)
                          (let ((_%$%hd178515178531%_
                                 (##car _%$%g178511178518%_))
                                (_%$%tl178516178533%_
                                 (##cdr _%$%g178511178518%_)))
                            (let* ((_%val178536%_ _%$%hd178515178531%_)
                                   (_%rest178538%_ _%$%tl178516178533%_))
                              (_%$%K178514178528%_
                               _%rest178538%_
                               _%val178536%_)))
                          (_%$%E178513178522%_))))))
            (if (pair? _%$%g178490178498%_)
                (let ((_%$%hd178495178543%_ (##car _%$%g178490178498%_))
                      (_%$%tl178496178545%_ (##cdr _%$%g178490178498%_)))
                  (let* ((_%hd178548%_ _%$%hd178495178543%_)
                         (_%rest178550%_ _%$%tl178496178545%_))
                    (_%$%K178494178540%_ _%rest178550%_ _%hd178548%_)))
                (_%$%else178492178506%_))))))
    (define gx#stx-plist-assq__0
      (lambda (_%key178555%_ _%stx178556%_)
        (let ((_%key=?178558%_ gx#stx-eq?))
          (gx#stx-plist-assq__% _%key178555%_ _%stx178556%_ _%key=?178558%_))))
    (define gx#stx-plist-assq
      (lambda _g179886_
        (let ((_g179887_ (##length _g179886_)))
          (cond ((##fx= _g179887_ 2) (apply gx#stx-plist-assq__0 _g179886_))
                ((##fx= _g179887_ 3) (apply gx#stx-plist-assq__% _g179886_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist-assq
                  _g179886_))))))))
