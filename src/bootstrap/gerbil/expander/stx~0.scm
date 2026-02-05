(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1770326745)
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
      (lambda _%$args140469%_
        (apply make-instance gx#identifier-wrap::t _%$args140469%_)))
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
      (lambda _%$args140466%_
        (apply make-instance gx#syntax-wrap::t _%$args140466%_)))
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
      (lambda _%$args140463%_
        (apply make-instance gx#syntax-quote::t _%$args140463%_)))
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
      (lambda (_%stx140461%_) (symbol? (gx#stx-e _%stx140461%_))))
    (define gx#identifier-quote?
      (lambda (_%stx140459%_)
        (if (##structure-direct-instance-of? _%stx140459%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx140459%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx140454%_)
        (if (##structure-direct-instance-of? _%stx140454%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx140454%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx140454%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx140449%_)
        (if (##structure-direct-instance-of? _%stx140449%_ 'gx#syntax-quote::t)
            _%stx140449%_
            (if (##structure-direct-instance-of?
                 _%stx140449%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx140449%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx140423%_)
        (if (##structure-direct-instance-of? _%stx140423%_ 'gx#syntax-wrap::t)
            (let _%lp140426%_ ((_%e140428%_
                                (##unchecked-structure-ref
                                 _%stx140423%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks140429%_
                                (cons (##unchecked-structure-ref
                                       _%stx140423%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e140428%_)
                  (let ((_%$e140432%_
                         (##type-id (##structure-type _%e140428%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e140432%_)
                        (_%lp140426%_
                         (##unchecked-structure-ref _%e140428%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e140428%_ '3 '#f '#f)
                          _%marks140429%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e140432%_)
                                (eq? 'gx#identifier-wrap::t _%$e140432%_))
                            (##unchecked-structure-ref _%e140428%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e140432%_)
                                (_%lp140426%_
                                 (##unchecked-structure-ref
                                  _%e140428%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks140429%_)
                                _%e140428%_))))
                  (if (null? _%marks140429%_)
                      _%e140428%_
                      (if (pair? _%e140428%_)
                          (cons (gx#stx-wrap
                                 (##car _%e140428%_)
                                 _%marks140429%_)
                                (gx#stx-wrap
                                 (##cdr _%e140428%_)
                                 _%marks140429%_))
                          (if (vector? _%e140428%_)
                              (vector-map
                               (lambda (_%g140440140442%_)
                                 (gx#stx-wrap
                                  _%g140440140442%_
                                  _%marks140429%_))
                               _%e140428%_)
                              (if (box? _%e140428%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e140428%_)
                                        _%marks140429%_))
                                  _%e140428%_))))))
            (if (##structure-instance-of? _%stx140423%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx140423%_ '1 '#f '#f)
                _%stx140423%_))))
    (define gx#syntax->datum
      (lambda (_%stx140416%_)
        (if (##structure-instance-of? _%stx140416%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx140416%_ '1 '#f '#f))
            (if (pair? _%stx140416%_)
                (cons (gx#syntax->datum (##car _%stx140416%_))
                      (gx#syntax->datum (##cdr _%stx140416%_)))
                (if (vector? _%stx140416%_)
                    (vector-map gx#syntax->datum _%stx140416%_)
                    (if (box? _%stx140416%_)
                        (box (gx#syntax->datum (unbox _%stx140416%_)))
                        _%stx140416%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx140350%_ _%datum140351%_ _%src140352%_ _%quote?140353%_)
        (letrec ((_%wrap-datum140355%_
                  (lambda (_%e140388%_ _%marks140389%_)
                    (_%wrap-inner140357%_
                     _%e140388%_
                     (lambda (_%g140390140392%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g140390140392%_
                        _%src140352%_
                        _%marks140389%_)))))
                 (_%wrap-quote140356%_
                  (lambda (_%e140380%_ _%ctx140381%_ _%marks140382%_)
                    (_%wrap-inner140357%_
                     _%e140380%_
                     (lambda (_%g140383140385%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g140383140385%_
                        _%src140352%_
                        _%ctx140381%_
                        _%marks140382%_)))))
                 (_%wrap-inner140357%_
                  (lambda (_%e140368%_ _%wrap-e140369%_)
                    (let _%recur140371%_ ((_%e140373%_ _%e140368%_))
                      (if (symbol? _%e140373%_)
                          (_%wrap-e140369%_ _%e140373%_)
                          (if (pair? _%e140373%_)
                              (cons (_%recur140371%_ (##car _%e140373%_))
                                    (_%recur140371%_ (##cdr _%e140373%_)))
                              (if (vector? _%e140373%_)
                                  (vector-map _%recur140371%_ _%e140373%_)
                                  (if (box? _%e140373%_)
                                      (box (_%recur140371%_
                                            (unbox _%e140373%_)))
                                      _%e140373%_)))))))
                 (_%wrap-outer140358%_
                  (lambda (_%e140366%_)
                    (if (##structure-instance-of? _%e140366%_ 'gerbil#AST::t)
                        _%e140366%_
                        (##structure gx#AST::t _%e140366%_ _%src140352%_)))))
          (if (##structure-instance-of? _%datum140351%_ 'gerbil#AST::t)
              _%datum140351%_
              (if (not _%stx140350%_)
                  (##structure gx#AST::t _%datum140351%_ _%src140352%_)
                  (if (gx#identifier? _%stx140350%_)
                      (let ((_%stx140363%_ (gx#stx-unwrap__0 _%stx140350%_)))
                        (_%wrap-outer140358%_
                         (if (##structure-direct-instance-of?
                              _%stx140363%_
                              'gx#syntax-quote::t)
                             (if _%quote?140353%_
                                 (_%wrap-quote140356%_
                                  _%datum140351%_
                                  (##unchecked-structure-ref
                                   _%stx140363%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx140363%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum140355%_
                                  _%datum140351%_
                                  (##unchecked-structure-ref
                                   _%stx140363%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum140355%_
                              _%datum140351%_
                              (##unchecked-structure-ref
                               _%stx140363%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx140350%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx140398%_ _%datum140399%_)
        (let* ((_%src140401%_ '#f) (_%quote?140403%_ '#t))
          (gx#datum->syntax__%
           _%stx140398%_
           _%datum140399%_
           _%src140401%_
           _%quote?140403%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx140405%_ _%datum140406%_ _%src140407%_)
        (let ((_%quote?140409%_ '#t))
          (gx#datum->syntax__%
           _%stx140405%_
           _%datum140406%_
           _%src140407%_
           _%quote?140409%_))))
    (define gx#datum->syntax
      (lambda _g140549_
        (let ((_g140550_ (##length _g140549_)))
          (cond ((##fx= _g140550_ 2) (apply gx#datum->syntax__0 _g140549_))
                ((##fx= _g140550_ 3) (apply gx#datum->syntax__1 _g140549_))
                ((##fx= _g140550_ 4) (apply gx#datum->syntax__% _g140549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g140549_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx140316%_ _%marks140317%_)
        (let _%lp140319%_ ((_%e140321%_ _%stx140316%_)
                           (_%marks140322%_ _%marks140317%_)
                           (_%src140323%_ (gx#stx-source _%stx140316%_)))
          (if (##structure-direct-instance-of? _%e140321%_ 'gx#syntax-wrap::t)
              (_%lp140319%_
               (##unchecked-structure-ref _%e140321%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e140321%_ '3 '#f '#f)
                _%marks140322%_)
               (##unchecked-structure-ref _%e140321%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e140321%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks140322%_)
                      _%e140321%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e140321%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e140321%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e140321%_ '3 '#f '#f)
                        _%marks140322%_)))
                  (if (##structure-direct-instance-of?
                       _%e140321%_
                       'gx#syntax-quote::t)
                      _%e140321%_
                      (if (##structure-instance-of? _%e140321%_ 'gerbil#AST::t)
                          (_%lp140319%_
                           (##unchecked-structure-ref _%e140321%_ '1 '#f '#f)
                           _%marks140322%_
                           (##unchecked-structure-ref _%e140321%_ '2 '#f '#f))
                          (if (symbol? _%e140321%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e140321%_
                               _%src140323%_
                               (reverse _%marks140322%_))
                              (if (null? _%marks140322%_)
                                  _%e140321%_
                                  (if (pair? _%e140321%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e140321%_)
                                             _%marks140322%_)
                                            (gx#stx-wrap
                                             (##cdr _%e140321%_)
                                             _%marks140322%_))
                                      (if (vector? _%e140321%_)
                                          (vector-map
                                           (lambda (_%g140332140334%_)
                                             (gx#stx-wrap
                                              _%g140332140334%_
                                              _%marks140322%_))
                                           _%e140321%_)
                                          (if (box? _%e140321%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e140321%_)
                                                    _%marks140322%_))
                                              _%e140321%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx140342%_)
        (let ((_%marks140344%_ '()))
          (gx#stx-unwrap__% _%stx140342%_ _%marks140344%_))))
    (define gx#stx-unwrap
      (lambda _g140551_
        (let ((_g140552_ (##length _g140551_)))
          (cond ((##fx= _g140552_ 1) (apply gx#stx-unwrap__0 _g140551_))
                ((##fx= _g140552_ 2) (apply gx#stx-unwrap__% _g140551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g140551_))))))
    (define gx#stx-wrap
      (lambda (_%stx140309%_ _%marks140310%_)
        (__foldl1
         (lambda (_%mark140312%_ _%stx140313%_)
           (gx#stx-apply-mark _%stx140313%_ _%mark140312%_))
         _%stx140309%_
         _%marks140310%_)))
    (define gx#stx-rewrap
      (lambda (_%stx140303%_ _%marks140304%_)
        (__foldr1
         (lambda (_%mark140306%_ _%stx140307%_)
           (gx#stx-apply-mark _%stx140307%_ _%mark140306%_))
         _%stx140303%_
         _%marks140304%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx140297%_ _%mark140298%_)
        (if (##structure-direct-instance-of? _%stx140297%_ 'gx#syntax-quote::t)
            _%stx140297%_
            (if (and (##structure-direct-instance-of?
                      _%stx140297%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark140298%_
                          (##unchecked-structure-ref
                           _%stx140297%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx140297%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx140297%_
                 (gx#stx-source _%stx140297%_)
                 _%mark140298%_)))))
    (define gx#apply-mark
      (lambda (_%mark140261%_ _%marks140262%_)
        (let* ((_%marks140263140271%_ _%marks140262%_)
               (_%else140265140279%_
                (lambda () (cons _%mark140261%_ _%marks140262%_)))
               (_%K140267140285%_
                (lambda (_%rest140282%_ _%hd140283%_)
                  (if (eq? _%mark140261%_ _%hd140283%_)
                      _%rest140282%_
                      (cons _%mark140261%_ _%marks140262%_)))))
          (if (pair? _%marks140263140271%_)
              (let ((_%hd140268140288%_ (##car _%marks140263140271%_))
                    (_%tl140269140290%_ (##cdr _%marks140263140271%_)))
                (let* ((_%hd140293%_ _%hd140268140288%_)
                       (_%rest140295%_ _%tl140269140290%_))
                  (_%K140267140285%_ _%rest140295%_ _%hd140293%_)))
              (_%else140265140279%_)))))
    (define gx#stx-e
      (lambda (_%stx140256%_)
        (if (##structure-direct-instance-of? _%stx140256%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx140256%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx140256%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx140256%_ '1 '#f '#f)
                _%stx140256%_))))
    (define gx#stx-source
      (lambda (_%stx140254%_)
        (if (##structure-instance-of? _%stx140254%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx140254%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx140248%_ _%src140249%_)
        (if (or (##structure-instance-of? _%stx140248%_ 'gerbil#AST::t)
                (not _%src140249%_))
            _%stx140248%_
            (##structure gx#AST::t _%stx140248%_ _%src140249%_))))
    (define gx#stx-datum?
      (lambda (_%stx140246%_) (gx#self-quoting? (gx#stx-e _%stx140246%_))))
    (define gx#self-quoting?
      (lambda (_%x140229%_)
        (let ((_%$e140231%_ (immediate? _%x140229%_)))
          (if _%$e140231%_
              _%$e140231%_
              (let ((_%$e140234%_ (number? _%x140229%_)))
                (if _%$e140234%_
                    _%$e140234%_
                    (let ((_%$e140237%_ (keyword? _%x140229%_)))
                      (if _%$e140237%_
                          _%$e140237%_
                          (let ((_%$e140240%_ (string? _%x140229%_)))
                            (if _%$e140240%_
                                _%$e140240%_
                                (let ((_%$e140243%_ (vector? _%x140229%_)))
                                  (if _%$e140243%_
                                      _%$e140243%_
                                      (u8vector? _%x140229%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e140227%_) (boolean? (gx#stx-e _%e140227%_))))
    (define gx#stx-keyword?
      (lambda (_%e140225%_) (keyword? (gx#stx-e _%e140225%_))))
    (define gx#stx-char? (lambda (_%e140223%_) (char? (gx#stx-e _%e140223%_))))
    (define gx#stx-number?
      (lambda (_%e140221%_) (number? (gx#stx-e _%e140221%_))))
    (define gx#stx-fixnum?
      (lambda (_%e140219%_) (fixnum? (gx#stx-e _%e140219%_))))
    (define gx#stx-string?
      (lambda (_%e140217%_) (string? (gx#stx-e _%e140217%_))))
    (define gx#stx-null? (lambda (_%e140215%_) (null? (gx#stx-e _%e140215%_))))
    (define gx#stx-pair? (lambda (_%e140213%_) (pair? (gx#stx-e _%e140213%_))))
    (define gx#stx-list?
      (lambda (_%e140175%_)
        (let* ((_%g140176140185%_ (gx#stx-e _%e140175%_))
               (_%E140179140189%_
                (lambda ()
                  (error '"No clause matching"
                         _%g140176140185%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K140181140205%_
                 (lambda (_%rest140203%_) (gx#stx-list? _%rest140203%_)))
                (_%K140180140195%_
                 (lambda (_%tail140193%_) (null? _%tail140193%_))))
            (if (pair? _%g140176140185%_)
                (let* ((_%tl140183140208%_ (##cdr _%g140176140185%_))
                       (_%rest140211%_ _%tl140183140208%_))
                  (gx#stx-list? _%rest140211%_))
                (let ((_%tail140198%_ _%g140176140185%_))
                  (null? _%tail140198%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e140168%_)
        (let* ((_%e140170%_ (gx#stx-e _%e140168%_))
               (_%$e140172%_ (pair? _%e140170%_)))
          (if _%$e140172%_ _%$e140172%_ (null? _%e140170%_)))))
    (define gx#stx-vector?
      (lambda (_%e140166%_) (vector? (gx#stx-e _%e140166%_))))
    (define gx#stx-box? (lambda (_%e140164%_) (box? (gx#stx-e _%e140164%_))))
    (define gx#stx-eq?
      (lambda (_%x140161%_ _%y140162%_)
        (eq? (gx#stx-e _%x140161%_) (gx#stx-e _%y140162%_))))
    (define gx#stx-eqv?
      (lambda (_%x140158%_ _%y140159%_)
        (eqv? (gx#stx-e _%x140158%_) (gx#stx-e _%y140159%_))))
    (define gx#stx-equal?
      (lambda (_%x140155%_ _%y140156%_)
        (equal? (gx#stx-e _%x140155%_) (gx#stx-e _%y140156%_))))
    (define gx#stx-false? (lambda (_%x140153%_) (not (gx#stx-e _%x140153%_))))
    (define gx#stx-identifier
      (lambda (_%template140150%_ . _%args140151%_)
        (gx#datum->syntax__1
         _%template140150%_
         (apply make-symbol (gx#syntax->datum _%args140151%_))
         (gx#stx-source _%template140150%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx140148%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx140148%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx140143%_)
        (if (##structure-direct-instance-of?
             _%stx140143%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx140143%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx140143%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx140143%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx140143%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx140139%_)
        (let ((_%stx140141%_ (gx#stx-unwrap__0 _%stx140139%_)))
          (if (gx#identifier-quote? _%stx140141%_)
              (##unchecked-structure-ref _%stx140141%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx140094%_)
        (let* ((_%g140095140105%_ (gx#stx-e _%stx140094%_))
               (_%else140098140113%_ (lambda () '#f)))
          (let ((_%K140101140127%_
                 (lambda (_%rest140124%_ _%hd140125%_)
                   (if (gx#identifier? _%hd140125%_)
                       (gx#identifier-list? _%rest140124%_)
                       '#f)))
                (_%K140100140118%_ (lambda () '#t)))
            (let ((_%try-match140097140121%_
                   (lambda ()
                     (if (null? _%g140095140105%_)
                         (_%K140100140118%_)
                         (_%else140098140113%_)))))
              (if (pair? _%g140095140105%_)
                  (let ((_%tl140103140132%_ (##cdr _%g140095140105%_))
                        (_%hd140102140130%_ (##car _%g140095140105%_)))
                    (let ((_%hd140135%_ _%hd140102140130%_)
                          (_%rest140137%_ _%tl140103140132%_))
                      (_%K140101140127%_ _%rest140137%_ _%hd140135%_)))
                  (_%try-match140097140121%_)))))))
    (define gx#genident__%
      (lambda (_%e140074%_ _%src140075%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src140075%_) _%src140075%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e140077%_ (gx#stx-e _%e140074%_)))
              (if (symbol? _%e140077%_) _%e140077%_ 'g)))))
         _%src140075%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e140083%_ 'g) (_%src140085%_ '#f))
          (gx#genident__% _%e140083%_ _%src140085%_))))
    (define gx#genident__1
      (lambda (_%e140087%_)
        (let ((_%src140089%_ '#f))
          (gx#genident__% _%e140087%_ _%src140089%_))))
    (define gx#genident
      (lambda _g140553_
        (let ((_g140554_ (##length _g140553_)))
          (cond ((##fx= _g140554_ 0) (apply gx#genident__0 _g140553_))
                ((##fx= _g140554_ 1) (apply gx#genident__1 _g140553_))
                ((##fx= _g140554_ 2) (apply gx#genident__% _g140553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g140553_))))))
    (define gx#gentemps
      (lambda (_%stx-lst140069%_)
        (gx#stx-map1
         (lambda (_%x140071%_) (gx#genident__% _%x140071%_ _%x140071%_))
         _%stx-lst140069%_)))
    (define gx#syntax->list
      (lambda (_%stx140067%_) (gx#stx-map1 values _%stx140067%_)))
    (define gx#stx-car
      (lambda (_%stx140064%_)
        (declare (safe))
        (car (gx#syntax-e _%stx140064%_))))
    (define gx#stx-cdr
      (lambda (_%stx140061%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx140061%_))))
    (define gx#stx-length
      (lambda (_%stx140026%_)
        (let _%lp140028%_ ((_%rest140030%_ _%stx140026%_) (_%n140031%_ '0))
          (let* ((_%g140032140040%_ (gx#stx-e _%rest140030%_))
                 (_%else140034140048%_ (lambda () _%n140031%_))
                 (_%K140036140053%_
                  (lambda (_%rest140051%_)
                    (_%lp140028%_ _%rest140051%_ (##fx+ _%n140031%_ '1)))))
            (if (pair? _%g140032140040%_)
                (let* ((_%tl140038140056%_ (##cdr _%g140032140040%_))
                       (_%rest140059%_ _%tl140038140056%_))
                  (_%K140036140053%_ _%rest140059%_))
                (_%else140034140048%_))))))
    (define gx#stx-for-each
      (lambda _g140555_
        (let ((_g140556_ (##length _g140555_)))
          (cond ((##fx= _g140556_ 2) (apply gx#stx-for-each1 _g140555_))
                ((##fx= _g140556_ 3) (apply gx#stx-for-each2 _g140555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g140555_))))))
    (define gx#stx-for-each1
      (lambda (_%f139969%_ _%stx139970%_)
        (if (procedure? _%f139969%_)
            '#!void
            (error '"expected procedure" _%f139969%_))
        (let _%lp139972%_ ((_%rest139974%_ _%stx139970%_))
          (let* ((_%g139975139985%_ (gx#syntax-e _%rest139974%_))
                 (_%else139978139993%_
                  (lambda () (_%f139969%_ _%rest139974%_))))
            (let ((_%K139981140007%_
                   (lambda (_%rest140004%_ _%hd140005%_)
                     (_%f139969%_ _%hd140005%_)
                     (_%lp139972%_ _%rest140004%_)))
                  (_%K139980139998%_ (lambda () '#!void)))
              (let ((_%try-match139977140001%_
                     (lambda ()
                       (if (null? _%g139975139985%_)
                           (_%K139980139998%_)
                           (_%else139978139993%_)))))
                (if (pair? _%g139975139985%_)
                    (let ((_%tl139983140012%_ (##cdr _%g139975139985%_))
                          (_%hd139982140010%_ (##car _%g139975139985%_)))
                      (let ((_%hd140015%_ _%hd139982140010%_)
                            (_%rest140017%_ _%tl139983140012%_))
                        (_%K139981140007%_ _%rest140017%_ _%hd140015%_)))
                    (_%try-match139977140001%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f139874%_ _%xstx139875%_ _%ystx139876%_)
        (if (procedure? _%f139874%_)
            '#!void
            (error '"expected procedure" _%f139874%_))
        (let _%lp139878%_ ((_%xrest139880%_ _%xstx139875%_)
                           (_%yrest139881%_ _%ystx139876%_))
          (let* ((_%g139882139892%_ (gx#syntax-e _%xrest139880%_))
                 (_%else139885139900%_ (lambda () '#!void)))
            (let ((_%K139888139957%_
                   (lambda (_%xrest139926%_ _%xhd139927%_)
                     (let* ((_%g139928139935%_ (gx#syntax-e _%yrest139881%_))
                            (_%E139930139939%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g139928139935%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K139931139945%_
                             (lambda (_%yrest139942%_ _%yhd139943%_)
                               (_%f139874%_ _%xhd139927%_ _%yhd139943%_)
                               (_%lp139878%_
                                _%xrest139926%_
                                _%yrest139942%_))))
                       (if (pair? _%g139928139935%_)
                           (let ((_%hd139932139948%_ (##car _%g139928139935%_))
                                 (_%tl139933139950%_
                                  (##cdr _%g139928139935%_)))
                             (let* ((_%yhd139953%_ _%hd139932139948%_)
                                    (_%yrest139955%_ _%tl139933139950%_))
                               (_%K139931139945%_
                                _%yrest139955%_
                                _%yhd139953%_)))
                           (_%E139930139939%_)))))
                  (_%K139887139920%_
                   (lambda ()
                     (let* ((_%yrest139904139909%_ _%yrest139881%_)
                            (_%E139906139913%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest139904139909%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K139907139917%_
                             (lambda ()
                               (_%f139874%_ _%xrest139880%_ _%yrest139881%_))))
                       (if (gx#stx-null? _%yrest139904139909%_)
                           (_%E139906139913%_)
                           (_%K139907139917%_))))))
              (let ((_%try-match139884139923%_
                     (lambda ()
                       (if (null? _%g139882139892%_)
                           (_%else139885139900%_)
                           (_%K139887139920%_)))))
                (if (pair? _%g139882139892%_)
                    (let ((_%tl139890139962%_ (##cdr _%g139882139892%_))
                          (_%hd139889139960%_ (##car _%g139882139892%_)))
                      (let ((_%xhd139965%_ _%hd139889139960%_)
                            (_%xrest139967%_ _%tl139890139962%_))
                        (_%K139888139957%_ _%xrest139967%_ _%xhd139965%_)))
                    (_%try-match139884139923%_))))))))
    (define gx#stx-map
      (lambda _g140557_
        (let ((_g140558_ (##length _g140557_)))
          (cond ((##fx= _g140558_ 2) (apply gx#stx-map1 _g140557_))
                ((##fx= _g140558_ 3) (apply gx#stx-map2 _g140557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g140557_))))))
    (define gx#stx-map1
      (lambda (_%f139817%_ _%stx139818%_)
        (if (procedure? _%f139817%_)
            '#!void
            (error '"expected procedure" _%f139817%_))
        (let _%recur139820%_ ((_%rest139822%_ _%stx139818%_))
          (let* ((_%g139823139833%_ (gx#syntax-e _%rest139822%_))
                 (_%else139826139841%_
                  (lambda () (_%f139817%_ _%rest139822%_))))
            (let ((_%K139829139855%_
                   (lambda (_%rest139852%_ _%hd139853%_)
                     (cons (_%f139817%_ _%hd139853%_)
                           (_%recur139820%_ _%rest139852%_))))
                  (_%K139828139846%_ (lambda () '())))
              (let ((_%try-match139825139849%_
                     (lambda ()
                       (if (null? _%g139823139833%_)
                           (_%K139828139846%_)
                           (_%else139826139841%_)))))
                (if (pair? _%g139823139833%_)
                    (let ((_%tl139831139860%_ (##cdr _%g139823139833%_))
                          (_%hd139830139858%_ (##car _%g139823139833%_)))
                      (let ((_%hd139863%_ _%hd139830139858%_)
                            (_%rest139865%_ _%tl139831139860%_))
                        (_%K139829139855%_ _%rest139865%_ _%hd139863%_)))
                    (_%try-match139825139849%_))))))))
    (define gx#stx-map2
      (lambda (_%f139722%_ _%xstx139723%_ _%ystx139724%_)
        (if (procedure? _%f139722%_)
            '#!void
            (error '"expected procedure" _%f139722%_))
        (let _%recur139726%_ ((_%xrest139728%_ _%xstx139723%_)
                              (_%yrest139729%_ _%ystx139724%_))
          (let* ((_%g139730139740%_ (gx#syntax-e _%xrest139728%_))
                 (_%else139733139748%_ (lambda () '())))
            (let ((_%K139736139805%_
                   (lambda (_%xrest139774%_ _%xhd139775%_)
                     (let* ((_%g139776139783%_ (gx#syntax-e _%yrest139729%_))
                            (_%E139778139787%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g139776139783%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K139779139793%_
                             (lambda (_%yrest139790%_ _%yhd139791%_)
                               (cons (_%f139722%_ _%xhd139775%_ _%yhd139791%_)
                                     (_%recur139726%_
                                      _%xrest139774%_
                                      _%yrest139790%_)))))
                       (if (pair? _%g139776139783%_)
                           (let ((_%hd139780139796%_ (##car _%g139776139783%_))
                                 (_%tl139781139798%_
                                  (##cdr _%g139776139783%_)))
                             (let* ((_%yhd139801%_ _%hd139780139796%_)
                                    (_%yrest139803%_ _%tl139781139798%_))
                               (_%K139779139793%_
                                _%yrest139803%_
                                _%yhd139801%_)))
                           (_%E139778139787%_)))))
                  (_%K139735139768%_
                   (lambda ()
                     (let* ((_%yrest139752139757%_ _%yrest139729%_)
                            (_%E139754139761%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest139752139757%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K139755139765%_
                             (lambda ()
                               (_%f139722%_ _%xrest139728%_ _%yrest139729%_))))
                       (if (gx#stx-null? _%yrest139752139757%_)
                           (_%E139754139761%_)
                           (_%K139755139765%_))))))
              (let ((_%try-match139732139771%_
                     (lambda ()
                       (if (null? _%g139730139740%_)
                           (_%else139733139748%_)
                           (_%K139735139768%_)))))
                (if (pair? _%g139730139740%_)
                    (let ((_%tl139738139810%_ (##cdr _%g139730139740%_))
                          (_%hd139737139808%_ (##car _%g139730139740%_)))
                      (let ((_%xhd139813%_ _%hd139737139808%_)
                            (_%xrest139815%_ _%tl139738139810%_))
                        (_%K139736139805%_ _%xrest139815%_ _%xhd139813%_)))
                    (_%try-match139732139771%_))))))))
    (define gx#stx-andmap
      (lambda (_%f139672%_ _%stx139673%_)
        (if (procedure? _%f139672%_)
            '#!void
            (error '"expected procedure" _%f139672%_))
        (let _%lp139675%_ ((_%rest139677%_ _%stx139673%_))
          (let* ((_%g139678139688%_ (gx#syntax-e _%rest139677%_))
                 (_%else139681139696%_
                  (lambda () (_%f139672%_ _%rest139677%_))))
            (let ((_%K139684139710%_
                   (lambda (_%rest139707%_ _%hd139708%_)
                     (if (_%f139672%_ _%hd139708%_)
                         (_%lp139675%_ _%rest139707%_)
                         '#f)))
                  (_%K139683139701%_ (lambda () '#t)))
              (let ((_%try-match139680139704%_
                     (lambda ()
                       (if (null? _%g139678139688%_)
                           (_%K139683139701%_)
                           (_%else139681139696%_)))))
                (if (pair? _%g139678139688%_)
                    (let ((_%tl139686139715%_ (##cdr _%g139678139688%_))
                          (_%hd139685139713%_ (##car _%g139678139688%_)))
                      (let ((_%hd139718%_ _%hd139685139713%_)
                            (_%rest139720%_ _%tl139686139715%_))
                        (_%K139684139710%_ _%rest139720%_ _%hd139718%_)))
                    (_%try-match139680139704%_))))))))
    (define gx#stx-ormap
      (lambda (_%f139619%_ _%stx139620%_)
        (if (procedure? _%f139619%_)
            '#!void
            (error '"expected procedure" _%f139619%_))
        (let _%lp139622%_ ((_%rest139624%_ _%stx139620%_))
          (let* ((_%g139625139635%_ (gx#syntax-e _%rest139624%_))
                 (_%else139628139643%_
                  (lambda () (_%f139619%_ _%rest139624%_))))
            (let ((_%K139631139660%_
                   (lambda (_%rest139654%_ _%hd139655%_)
                     (let ((_%$e139657%_ (_%f139619%_ _%hd139655%_)))
                       (if _%$e139657%_
                           _%$e139657%_
                           (_%lp139622%_ _%rest139654%_)))))
                  (_%K139630139648%_ (lambda () '#f)))
              (let ((_%try-match139627139651%_
                     (lambda ()
                       (if (null? _%g139625139635%_)
                           (_%K139630139648%_)
                           (_%else139628139643%_)))))
                (if (pair? _%g139625139635%_)
                    (let ((_%tl139633139665%_ (##cdr _%g139625139635%_))
                          (_%hd139632139663%_ (##car _%g139625139635%_)))
                      (let ((_%hd139668%_ _%hd139632139663%_)
                            (_%rest139670%_ _%tl139633139665%_))
                        (_%K139631139660%_ _%rest139670%_ _%hd139668%_)))
                    (_%try-match139627139651%_))))))))
    (define gx#stx-foldl
      (lambda (_%f139567%_ _%iv139568%_ _%stx139569%_)
        (if (procedure? _%f139567%_)
            '#!void
            (error '"expected procedure" _%f139567%_))
        (let _%lp139571%_ ((_%r139573%_ _%iv139568%_)
                           (_%rest139574%_ _%stx139569%_))
          (let* ((_%g139575139585%_ (gx#syntax-e _%rest139574%_))
                 (_%else139578139593%_
                  (lambda () (_%f139567%_ _%rest139574%_ _%r139573%_))))
            (let ((_%K139581139607%_
                   (lambda (_%rest139604%_ _%hd139605%_)
                     (_%lp139571%_
                      (_%f139567%_ _%hd139605%_ _%r139573%_)
                      _%rest139604%_)))
                  (_%K139580139598%_ (lambda () _%r139573%_)))
              (let ((_%try-match139577139601%_
                     (lambda ()
                       (if (null? _%g139575139585%_)
                           (_%K139580139598%_)
                           (_%else139578139593%_)))))
                (if (pair? _%g139575139585%_)
                    (let ((_%tl139583139612%_ (##cdr _%g139575139585%_))
                          (_%hd139582139610%_ (##car _%g139575139585%_)))
                      (let ((_%hd139615%_ _%hd139582139610%_)
                            (_%rest139617%_ _%tl139583139612%_))
                        (_%K139581139607%_ _%rest139617%_ _%hd139615%_)))
                    (_%try-match139577139601%_))))))))
    (define gx#stx-foldr
      (lambda (_%f139516%_ _%iv139517%_ _%stx139518%_)
        (if (procedure? _%f139516%_)
            '#!void
            (error '"expected procedure" _%f139516%_))
        (let _%recur139520%_ ((_%rest139522%_ _%stx139518%_))
          (let* ((_%g139523139533%_ (gx#syntax-e _%rest139522%_))
                 (_%else139526139541%_
                  (lambda () (_%f139516%_ _%rest139522%_ _%iv139517%_))))
            (let ((_%K139529139555%_
                   (lambda (_%rest139552%_ _%hd139553%_)
                     (_%f139516%_
                      _%hd139553%_
                      (_%recur139520%_ _%rest139552%_))))
                  (_%K139528139546%_ (lambda () _%iv139517%_)))
              (let ((_%try-match139525139549%_
                     (lambda ()
                       (if (null? _%g139523139533%_)
                           (_%K139528139546%_)
                           (_%else139526139541%_)))))
                (if (pair? _%g139523139533%_)
                    (let ((_%tl139531139560%_ (##cdr _%g139523139533%_))
                          (_%hd139530139558%_ (##car _%g139523139533%_)))
                      (let ((_%hd139563%_ _%hd139530139558%_)
                            (_%rest139565%_ _%tl139531139560%_))
                        (_%K139529139555%_ _%rest139565%_ _%hd139563%_)))
                    (_%try-match139525139549%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx139514%_) (gx#stx-foldl cons '() _%stx139514%_)))
    (define gx#stx-last
      (lambda (_%stx139475%_)
        (let _%lp139477%_ ((_%rest139479%_ _%stx139475%_))
          (let* ((_%g139480139488%_ (gx#syntax-e _%rest139479%_))
                 (_%else139482139496%_ (lambda () _%rest139479%_))
                 (_%K139484139502%_
                  (lambda (_%rest139499%_ _%hd139500%_)
                    (if (gx#stx-null? _%rest139499%_)
                        _%hd139500%_
                        (_%lp139477%_ _%rest139499%_)))))
            (if (pair? _%g139480139488%_)
                (let ((_%hd139485139505%_ (##car _%g139480139488%_))
                      (_%tl139486139507%_ (##cdr _%g139480139488%_)))
                  (let* ((_%hd139510%_ _%hd139485139505%_)
                         (_%rest139512%_ _%tl139486139507%_))
                    (_%K139484139502%_ _%rest139512%_ _%hd139510%_)))
                (_%else139482139496%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx139446%_)
        (let _%lp139448%_ ((_%hd139450%_ _%stx139446%_))
          (let* ((_%g139451139458%_ (gx#syntax-e _%hd139450%_))
                 (_%E139453139462%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g139451139458%_
                           '([_ . rest]))
                    '#!void))
                 (_%K139454139467%_
                  (lambda (_%rest139465%_)
                    (if (gx#stx-pair? _%rest139465%_)
                        (_%lp139448%_ _%rest139465%_)
                        _%hd139450%_))))
            (if (pair? _%g139451139458%_)
                (let* ((_%tl139456139470%_ (##cdr _%g139451139458%_))
                       (_%rest139473%_ _%tl139456139470%_))
                  (_%K139454139467%_ _%rest139473%_))
                (_%E139453139462%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx139415%_ _%k139416%_)
        (let _%lp139418%_ ((_%rest139420%_ _%stx139415%_)
                           (_%k139421%_ _%k139416%_))
          (if (fxpositive? _%k139421%_)
              (let* ((_%g139422139429%_ (gx#syntax-e _%rest139420%_))
                     (_%E139424139433%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g139422139429%_
                               '([_ . rest]))
                        '#!void))
                     (_%K139425139438%_
                      (lambda (_%rest139436%_)
                        (_%lp139418%_ _%rest139436%_ (##fx- _%k139421%_ '1)))))
                (if (pair? _%g139422139429%_)
                    (let* ((_%tl139427139441%_ (##cdr _%g139422139429%_))
                           (_%rest139444%_ _%tl139427139441%_))
                      (_%K139425139438%_ _%rest139444%_))
                    (_%E139424139433%_)))
              _%rest139420%_))))
    (define gx#stx-list-ref
      (lambda (_%stx139412%_ _%k139413%_)
        (gx#stx-car (gx#stx-list-tail _%stx139412%_ _%k139413%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx139324%_ _%key?139325%_)
        (if (procedure? _%key?139325%_)
            '#!void
            (error '"expected procedure" _%key?139325%_))
        (let _%lp139327%_ ((_%rest139329%_ _%stx139324%_))
          (let* ((_%g139330139340%_ (gx#stx-e _%rest139329%_))
                 (_%else139333139348%_ (lambda () '#f)))
            (let ((_%K139336139390%_
                   (lambda (_%rest139359%_ _%hd139360%_)
                     (if (_%key?139325%_ _%hd139360%_)
                         (let* ((_%g139361139369%_ (gx#stx-e _%rest139359%_))
                                (_%else139363139377%_ (lambda () '#f))
                                (_%K139365139382%_
                                 (lambda (_%rest139380%_)
                                   (_%lp139327%_ _%rest139380%_))))
                           (if (pair? _%g139361139369%_)
                               (let* ((_%tl139367139385%_
                                       (##cdr _%g139361139369%_))
                                      (_%rest139388%_ _%tl139367139385%_))
                                 (_%lp139327%_ _%rest139388%_))
                               (_%else139363139377%_)))
                         '#f)))
                  (_%K139335139353%_ (lambda () '#t)))
              (let ((_%try-match139332139356%_
                     (lambda ()
                       (if (null? _%g139330139340%_)
                           (_%K139335139353%_)
                           (_%else139333139348%_)))))
                (if (pair? _%g139330139340%_)
                    (let ((_%tl139338139395%_ (##cdr _%g139330139340%_))
                          (_%hd139337139393%_ (##car _%g139330139340%_)))
                      (let ((_%hd139398%_ _%hd139337139393%_)
                            (_%rest139400%_ _%tl139338139395%_))
                        (_%K139336139390%_ _%rest139400%_ _%hd139398%_)))
                    (_%try-match139332139356%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx139405%_)
        (let ((_%key?139407%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx139405%_ _%key?139407%_))))
    (define gx#stx-plist?
      (lambda _g140559_
        (let ((_g140560_ (##length _g140559_)))
          (cond ((##fx= _g140560_ 1) (apply gx#stx-plist?__0 _g140559_))
                ((##fx= _g140560_ 2) (apply gx#stx-plist?__% _g140559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g140559_))))))
    (define gx#stx-getq__%
      (lambda (_%key139242%_ _%stx139243%_ _%key=?139244%_)
        (if (procedure? _%key=?139244%_)
            '#!void
            (error '"expected procedure" _%key=?139244%_))
        (let _%lp139246%_ ((_%rest139248%_ _%stx139243%_))
          (let* ((_%g139249139257%_ (gx#syntax-e _%rest139248%_))
                 (_%else139251139265%_ (lambda () '#f))
                 (_%K139253139299%_
                  (lambda (_%rest139268%_ _%hd139269%_)
                    (let* ((_%g139270139277%_ (gx#syntax-e _%rest139268%_))
                           (_%E139272139281%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g139270139277%_
                                     '([val . rest]))
                              '#!void))
                           (_%K139273139287%_
                            (lambda (_%rest139284%_ _%val139285%_)
                              (if (_%key=?139244%_ _%hd139269%_ _%key139242%_)
                                  _%val139285%_
                                  (_%lp139246%_ _%rest139284%_)))))
                      (if (pair? _%g139270139277%_)
                          (let ((_%hd139274139290%_ (##car _%g139270139277%_))
                                (_%tl139275139292%_ (##cdr _%g139270139277%_)))
                            (let* ((_%val139295%_ _%hd139274139290%_)
                                   (_%rest139297%_ _%tl139275139292%_))
                              (_%K139273139287%_
                               _%rest139297%_
                               _%val139295%_)))
                          (_%E139272139281%_))))))
            (if (pair? _%g139249139257%_)
                (let ((_%hd139254139302%_ (##car _%g139249139257%_))
                      (_%tl139255139304%_ (##cdr _%g139249139257%_)))
                  (let* ((_%hd139307%_ _%hd139254139302%_)
                         (_%rest139309%_ _%tl139255139304%_))
                    (_%K139253139299%_ _%rest139309%_ _%hd139307%_)))
                (_%else139251139265%_))))))
    (define gx#stx-getq__0
      (lambda (_%key139314%_ _%stx139315%_)
        (let ((_%key=?139317%_ gx#stx-eq?))
          (gx#stx-getq__% _%key139314%_ _%stx139315%_ _%key=?139317%_))))
    (define gx#stx-getq
      (lambda _g140561_
        (let ((_g140562_ (##length _g140561_)))
          (cond ((##fx= _g140562_ 2) (apply gx#stx-getq__0 _g140561_))
                ((##fx= _g140562_ 3) (apply gx#stx-getq__% _g140561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g140561_))))))))
