(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1756142015)
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
      (lambda _%$args125317%_
        (apply make-instance gx#identifier-wrap::t _%$args125317%_)))
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
      (lambda _%$args125314%_
        (apply make-instance gx#syntax-wrap::t _%$args125314%_)))
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
      (lambda _%$args125311%_
        (apply make-instance gx#syntax-quote::t _%$args125311%_)))
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
      (lambda (_%stx125309%_) (symbol? (gx#stx-e _%stx125309%_))))
    (define gx#identifier-quote?
      (lambda (_%stx125307%_)
        (if (##structure-direct-instance-of? _%stx125307%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx125307%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx125302%_)
        (if (##structure-direct-instance-of? _%stx125302%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx125302%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx125302%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx125297%_)
        (if (##structure-direct-instance-of? _%stx125297%_ 'gx#syntax-quote::t)
            _%stx125297%_
            (if (##structure-direct-instance-of?
                 _%stx125297%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx125297%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx125271%_)
        (if (##structure-direct-instance-of? _%stx125271%_ 'gx#syntax-wrap::t)
            (let _%lp125274%_ ((_%e125276%_
                                (##unchecked-structure-ref
                                 _%stx125271%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks125277%_
                                (cons (##unchecked-structure-ref
                                       _%stx125271%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e125276%_)
                  (let ((_%$e125280%_
                         (##type-id (##structure-type _%e125276%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e125280%_)
                        (_%lp125274%_
                         (##unchecked-structure-ref _%e125276%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e125276%_ '3 '#f '#f)
                          _%marks125277%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e125280%_)
                                (eq? 'gx#identifier-wrap::t _%$e125280%_))
                            (##unchecked-structure-ref _%e125276%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e125280%_)
                                (_%lp125274%_
                                 (##unchecked-structure-ref
                                  _%e125276%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks125277%_)
                                _%e125276%_))))
                  (if (null? _%marks125277%_)
                      _%e125276%_
                      (if (pair? _%e125276%_)
                          (cons (gx#stx-wrap
                                 (##car _%e125276%_)
                                 _%marks125277%_)
                                (gx#stx-wrap
                                 (##cdr _%e125276%_)
                                 _%marks125277%_))
                          (if (vector? _%e125276%_)
                              (vector-map
                               (lambda (_%g125288125290%_)
                                 (gx#stx-wrap
                                  _%g125288125290%_
                                  _%marks125277%_))
                               _%e125276%_)
                              (if (box? _%e125276%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e125276%_)
                                        _%marks125277%_))
                                  _%e125276%_))))))
            (if (##structure-instance-of? _%stx125271%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx125271%_ '1 '#f '#f)
                _%stx125271%_))))
    (define gx#syntax->datum
      (lambda (_%stx125264%_)
        (if (##structure-instance-of? _%stx125264%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx125264%_ '1 '#f '#f))
            (if (pair? _%stx125264%_)
                (cons (gx#syntax->datum (##car _%stx125264%_))
                      (gx#syntax->datum (##cdr _%stx125264%_)))
                (if (vector? _%stx125264%_)
                    (vector-map gx#syntax->datum _%stx125264%_)
                    (if (box? _%stx125264%_)
                        (box (gx#syntax->datum (unbox _%stx125264%_)))
                        _%stx125264%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx125198%_ _%datum125199%_ _%src125200%_ _%quote?125201%_)
        (letrec ((_%wrap-datum125203%_
                  (lambda (_%e125236%_ _%marks125237%_)
                    (_%wrap-inner125205%_
                     _%e125236%_
                     (lambda (_%g125238125240%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g125238125240%_
                        _%src125200%_
                        _%marks125237%_)))))
                 (_%wrap-quote125204%_
                  (lambda (_%e125228%_ _%ctx125229%_ _%marks125230%_)
                    (_%wrap-inner125205%_
                     _%e125228%_
                     (lambda (_%g125231125233%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g125231125233%_
                        _%src125200%_
                        _%ctx125229%_
                        _%marks125230%_)))))
                 (_%wrap-inner125205%_
                  (lambda (_%e125216%_ _%wrap-e125217%_)
                    (let _%recur125219%_ ((_%e125221%_ _%e125216%_))
                      (if (symbol? _%e125221%_)
                          (_%wrap-e125217%_ _%e125221%_)
                          (if (pair? _%e125221%_)
                              (cons (_%recur125219%_ (##car _%e125221%_))
                                    (_%recur125219%_ (##cdr _%e125221%_)))
                              (if (vector? _%e125221%_)
                                  (vector-map _%recur125219%_ _%e125221%_)
                                  (if (box? _%e125221%_)
                                      (box (_%recur125219%_
                                            (unbox _%e125221%_)))
                                      _%e125221%_)))))))
                 (_%wrap-outer125206%_
                  (lambda (_%e125214%_)
                    (if (##structure-instance-of? _%e125214%_ 'gerbil#AST::t)
                        _%e125214%_
                        (##structure gx#AST::t _%e125214%_ _%src125200%_)))))
          (if (##structure-instance-of? _%datum125199%_ 'gerbil#AST::t)
              _%datum125199%_
              (if (not _%stx125198%_)
                  (##structure gx#AST::t _%datum125199%_ _%src125200%_)
                  (if (gx#identifier? _%stx125198%_)
                      (let ((_%stx125211%_ (gx#stx-unwrap__0 _%stx125198%_)))
                        (_%wrap-outer125206%_
                         (if (##structure-direct-instance-of?
                              _%stx125211%_
                              'gx#syntax-quote::t)
                             (if _%quote?125201%_
                                 (_%wrap-quote125204%_
                                  _%datum125199%_
                                  (##unchecked-structure-ref
                                   _%stx125211%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx125211%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum125203%_
                                  _%datum125199%_
                                  (##unchecked-structure-ref
                                   _%stx125211%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum125203%_
                              _%datum125199%_
                              (##unchecked-structure-ref
                               _%stx125211%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx125198%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx125246%_ _%datum125247%_)
        (let* ((_%src125249%_ '#f) (_%quote?125251%_ '#t))
          (gx#datum->syntax__%
           _%stx125246%_
           _%datum125247%_
           _%src125249%_
           _%quote?125251%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx125253%_ _%datum125254%_ _%src125255%_)
        (let ((_%quote?125257%_ '#t))
          (gx#datum->syntax__%
           _%stx125253%_
           _%datum125254%_
           _%src125255%_
           _%quote?125257%_))))
    (define gx#datum->syntax
      (lambda _g125397_
        (let ((_g125398_ (##length _g125397_)))
          (cond ((##fx= _g125398_ 2) (apply gx#datum->syntax__0 _g125397_))
                ((##fx= _g125398_ 3) (apply gx#datum->syntax__1 _g125397_))
                ((##fx= _g125398_ 4) (apply gx#datum->syntax__% _g125397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g125397_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx125164%_ _%marks125165%_)
        (let _%lp125167%_ ((_%e125169%_ _%stx125164%_)
                           (_%marks125170%_ _%marks125165%_)
                           (_%src125171%_ (gx#stx-source _%stx125164%_)))
          (if (##structure-direct-instance-of? _%e125169%_ 'gx#syntax-wrap::t)
              (_%lp125167%_
               (##unchecked-structure-ref _%e125169%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e125169%_ '3 '#f '#f)
                _%marks125170%_)
               (##unchecked-structure-ref _%e125169%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e125169%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks125170%_)
                      _%e125169%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e125169%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e125169%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e125169%_ '3 '#f '#f)
                        _%marks125170%_)))
                  (if (##structure-direct-instance-of?
                       _%e125169%_
                       'gx#syntax-quote::t)
                      _%e125169%_
                      (if (##structure-instance-of? _%e125169%_ 'gerbil#AST::t)
                          (_%lp125167%_
                           (##unchecked-structure-ref _%e125169%_ '1 '#f '#f)
                           _%marks125170%_
                           (##unchecked-structure-ref _%e125169%_ '2 '#f '#f))
                          (if (symbol? _%e125169%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e125169%_
                               _%src125171%_
                               (reverse _%marks125170%_))
                              (if (null? _%marks125170%_)
                                  _%e125169%_
                                  (if (pair? _%e125169%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e125169%_)
                                             _%marks125170%_)
                                            (gx#stx-wrap
                                             (##cdr _%e125169%_)
                                             _%marks125170%_))
                                      (if (vector? _%e125169%_)
                                          (vector-map
                                           (lambda (_%g125180125182%_)
                                             (gx#stx-wrap
                                              _%g125180125182%_
                                              _%marks125170%_))
                                           _%e125169%_)
                                          (if (box? _%e125169%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e125169%_)
                                                    _%marks125170%_))
                                              _%e125169%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx125190%_)
        (let ((_%marks125192%_ '()))
          (gx#stx-unwrap__% _%stx125190%_ _%marks125192%_))))
    (define gx#stx-unwrap
      (lambda _g125399_
        (let ((_g125400_ (##length _g125399_)))
          (cond ((##fx= _g125400_ 1) (apply gx#stx-unwrap__0 _g125399_))
                ((##fx= _g125400_ 2) (apply gx#stx-unwrap__% _g125399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g125399_))))))
    (define gx#stx-wrap
      (lambda (_%stx125157%_ _%marks125158%_)
        (__foldl1
         (lambda (_%mark125160%_ _%stx125161%_)
           (gx#stx-apply-mark _%stx125161%_ _%mark125160%_))
         _%stx125157%_
         _%marks125158%_)))
    (define gx#stx-rewrap
      (lambda (_%stx125151%_ _%marks125152%_)
        (__foldr1
         (lambda (_%mark125154%_ _%stx125155%_)
           (gx#stx-apply-mark _%stx125155%_ _%mark125154%_))
         _%stx125151%_
         _%marks125152%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx125145%_ _%mark125146%_)
        (if (##structure-direct-instance-of? _%stx125145%_ 'gx#syntax-quote::t)
            _%stx125145%_
            (if (and (##structure-direct-instance-of?
                      _%stx125145%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark125146%_
                          (##unchecked-structure-ref
                           _%stx125145%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx125145%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx125145%_
                 (gx#stx-source _%stx125145%_)
                 _%mark125146%_)))))
    (define gx#apply-mark
      (lambda (_%mark125109%_ _%marks125110%_)
        (let* ((_%marks125111125119%_ _%marks125110%_)
               (_%else125113125127%_
                (lambda () (cons _%mark125109%_ _%marks125110%_)))
               (_%K125115125133%_
                (lambda (_%rest125130%_ _%hd125131%_)
                  (if (eq? _%mark125109%_ _%hd125131%_)
                      _%rest125130%_
                      (cons _%mark125109%_ _%marks125110%_)))))
          (if (pair? _%marks125111125119%_)
              (let ((_%hd125116125136%_ (##car _%marks125111125119%_))
                    (_%tl125117125138%_ (##cdr _%marks125111125119%_)))
                (let* ((_%hd125141%_ _%hd125116125136%_)
                       (_%rest125143%_ _%tl125117125138%_))
                  (_%K125115125133%_ _%rest125143%_ _%hd125141%_)))
              (_%else125113125127%_)))))
    (define gx#stx-e
      (lambda (_%stx125104%_)
        (if (##structure-direct-instance-of? _%stx125104%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx125104%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx125104%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx125104%_ '1 '#f '#f)
                _%stx125104%_))))
    (define gx#stx-source
      (lambda (_%stx125102%_)
        (if (##structure-instance-of? _%stx125102%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx125102%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx125096%_ _%src125097%_)
        (if (or (##structure-instance-of? _%stx125096%_ 'gerbil#AST::t)
                (not _%src125097%_))
            _%stx125096%_
            (##structure gx#AST::t _%stx125096%_ _%src125097%_))))
    (define gx#stx-datum?
      (lambda (_%stx125094%_) (gx#self-quoting? (gx#stx-e _%stx125094%_))))
    (define gx#self-quoting?
      (lambda (_%x125077%_)
        (let ((_%$e125079%_ (immediate? _%x125077%_)))
          (if _%$e125079%_
              _%$e125079%_
              (let ((_%$e125082%_ (number? _%x125077%_)))
                (if _%$e125082%_
                    _%$e125082%_
                    (let ((_%$e125085%_ (keyword? _%x125077%_)))
                      (if _%$e125085%_
                          _%$e125085%_
                          (let ((_%$e125088%_ (string? _%x125077%_)))
                            (if _%$e125088%_
                                _%$e125088%_
                                (let ((_%$e125091%_ (vector? _%x125077%_)))
                                  (if _%$e125091%_
                                      _%$e125091%_
                                      (u8vector? _%x125077%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e125075%_) (boolean? (gx#stx-e _%e125075%_))))
    (define gx#stx-keyword?
      (lambda (_%e125073%_) (keyword? (gx#stx-e _%e125073%_))))
    (define gx#stx-char? (lambda (_%e125071%_) (char? (gx#stx-e _%e125071%_))))
    (define gx#stx-number?
      (lambda (_%e125069%_) (number? (gx#stx-e _%e125069%_))))
    (define gx#stx-fixnum?
      (lambda (_%e125067%_) (fixnum? (gx#stx-e _%e125067%_))))
    (define gx#stx-string?
      (lambda (_%e125065%_) (string? (gx#stx-e _%e125065%_))))
    (define gx#stx-null? (lambda (_%e125063%_) (null? (gx#stx-e _%e125063%_))))
    (define gx#stx-pair? (lambda (_%e125061%_) (pair? (gx#stx-e _%e125061%_))))
    (define gx#stx-list?
      (lambda (_%e125023%_)
        (let* ((_%g125024125033%_ (gx#stx-e _%e125023%_))
               (_%E125027125037%_
                (lambda ()
                  (error '"No clause matching"
                         _%g125024125033%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K125029125053%_
                 (lambda (_%rest125051%_) (gx#stx-list? _%rest125051%_)))
                (_%K125028125043%_
                 (lambda (_%tail125041%_) (null? _%tail125041%_))))
            (if (pair? _%g125024125033%_)
                (let* ((_%tl125031125056%_ (##cdr _%g125024125033%_))
                       (_%rest125059%_ _%tl125031125056%_))
                  (gx#stx-list? _%rest125059%_))
                (let ((_%tail125046%_ _%g125024125033%_))
                  (null? _%tail125046%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e125016%_)
        (let* ((_%e125018%_ (gx#stx-e _%e125016%_))
               (_%$e125020%_ (pair? _%e125018%_)))
          (if _%$e125020%_ _%$e125020%_ (null? _%e125018%_)))))
    (define gx#stx-vector?
      (lambda (_%e125014%_) (vector? (gx#stx-e _%e125014%_))))
    (define gx#stx-box? (lambda (_%e125012%_) (box? (gx#stx-e _%e125012%_))))
    (define gx#stx-eq?
      (lambda (_%x125009%_ _%y125010%_)
        (eq? (gx#stx-e _%x125009%_) (gx#stx-e _%y125010%_))))
    (define gx#stx-eqv?
      (lambda (_%x125006%_ _%y125007%_)
        (eqv? (gx#stx-e _%x125006%_) (gx#stx-e _%y125007%_))))
    (define gx#stx-equal?
      (lambda (_%x125003%_ _%y125004%_)
        (equal? (gx#stx-e _%x125003%_) (gx#stx-e _%y125004%_))))
    (define gx#stx-false? (lambda (_%x125001%_) (not (gx#stx-e _%x125001%_))))
    (define gx#stx-identifier
      (lambda (_%template124998%_ . _%args124999%_)
        (gx#datum->syntax__1
         _%template124998%_
         (apply make-symbol (gx#syntax->datum _%args124999%_))
         (gx#stx-source _%template124998%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx124996%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx124996%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx124991%_)
        (if (##structure-direct-instance-of?
             _%stx124991%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx124991%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx124991%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx124991%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx124991%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx124987%_)
        (let ((_%stx124989%_ (gx#stx-unwrap__0 _%stx124987%_)))
          (if (gx#identifier-quote? _%stx124989%_)
              (##unchecked-structure-ref _%stx124989%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx124942%_)
        (let* ((_%g124943124953%_ (gx#stx-e _%stx124942%_))
               (_%else124946124961%_ (lambda () '#f)))
          (let ((_%K124949124975%_
                 (lambda (_%rest124972%_ _%hd124973%_)
                   (if (gx#identifier? _%hd124973%_)
                       (gx#identifier-list? _%rest124972%_)
                       '#f)))
                (_%K124948124966%_ (lambda () '#t)))
            (let ((_%try-match124945124969%_
                   (lambda ()
                     (if (null? _%g124943124953%_)
                         (_%K124948124966%_)
                         (_%else124946124961%_)))))
              (if (pair? _%g124943124953%_)
                  (let ((_%tl124951124980%_ (##cdr _%g124943124953%_))
                        (_%hd124950124978%_ (##car _%g124943124953%_)))
                    (let ((_%hd124983%_ _%hd124950124978%_)
                          (_%rest124985%_ _%tl124951124980%_))
                      (_%K124949124975%_ _%rest124985%_ _%hd124983%_)))
                  (_%try-match124945124969%_)))))))
    (define gx#genident__%
      (lambda (_%e124919%_ _%src124920%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e124922%_ (gx#stx-e _%e124919%_)))
                   (if (interned-symbol? _%e124922%_) _%e124922%_ 'g)))
         (let ((_%$e124924%_ (gx#stx-source _%e124919%_)))
           (if _%$e124924%_ _%$e124924%_ _%src124920%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e124931%_ 'g) (_%src124933%_ '#f))
          (gx#genident__% _%e124931%_ _%src124933%_))))
    (define gx#genident__1
      (lambda (_%e124935%_)
        (let ((_%src124937%_ '#f))
          (gx#genident__% _%e124935%_ _%src124937%_))))
    (define gx#genident
      (lambda _g125401_
        (let ((_g125402_ (##length _g125401_)))
          (cond ((##fx= _g125402_ 0) (apply gx#genident__0 _g125401_))
                ((##fx= _g125402_ 1) (apply gx#genident__1 _g125401_))
                ((##fx= _g125402_ 2) (apply gx#genident__% _g125401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g125401_))))))
    (define gx#gentemps
      (lambda (_%stx-lst124916%_) (gx#stx-map1 gx#genident _%stx-lst124916%_)))
    (define gx#syntax->list
      (lambda (_%stx124914%_) (gx#stx-map1 values _%stx124914%_)))
    (define gx#stx-car
      (lambda (_%stx124911%_)
        (declare (safe))
        (car (gx#syntax-e _%stx124911%_))))
    (define gx#stx-cdr
      (lambda (_%stx124908%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx124908%_))))
    (define gx#stx-length
      (lambda (_%stx124873%_)
        (let _%lp124875%_ ((_%rest124877%_ _%stx124873%_) (_%n124878%_ '0))
          (let* ((_%g124879124887%_ (gx#stx-e _%rest124877%_))
                 (_%else124881124895%_ (lambda () _%n124878%_))
                 (_%K124883124900%_
                  (lambda (_%rest124898%_)
                    (_%lp124875%_ _%rest124898%_ (##fx+ _%n124878%_ '1)))))
            (if (pair? _%g124879124887%_)
                (let* ((_%tl124885124903%_ (##cdr _%g124879124887%_))
                       (_%rest124906%_ _%tl124885124903%_))
                  (_%K124883124900%_ _%rest124906%_))
                (_%else124881124895%_))))))
    (define gx#stx-for-each
      (lambda _g125403_
        (let ((_g125404_ (##length _g125403_)))
          (cond ((##fx= _g125404_ 2) (apply gx#stx-for-each1 _g125403_))
                ((##fx= _g125404_ 3) (apply gx#stx-for-each2 _g125403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g125403_))))))
    (define gx#stx-for-each1
      (lambda (_%f124816%_ _%stx124817%_)
        (if (procedure? _%f124816%_)
            '#!void
            (error '"expected procedure" _%f124816%_))
        (let _%lp124819%_ ((_%rest124821%_ _%stx124817%_))
          (let* ((_%g124822124832%_ (gx#syntax-e _%rest124821%_))
                 (_%else124825124840%_
                  (lambda () (_%f124816%_ _%rest124821%_))))
            (let ((_%K124828124854%_
                   (lambda (_%rest124851%_ _%hd124852%_)
                     (_%f124816%_ _%hd124852%_)
                     (_%lp124819%_ _%rest124851%_)))
                  (_%K124827124845%_ (lambda () '#!void)))
              (let ((_%try-match124824124848%_
                     (lambda ()
                       (if (null? _%g124822124832%_)
                           (_%K124827124845%_)
                           (_%else124825124840%_)))))
                (if (pair? _%g124822124832%_)
                    (let ((_%tl124830124859%_ (##cdr _%g124822124832%_))
                          (_%hd124829124857%_ (##car _%g124822124832%_)))
                      (let ((_%hd124862%_ _%hd124829124857%_)
                            (_%rest124864%_ _%tl124830124859%_))
                        (_%K124828124854%_ _%rest124864%_ _%hd124862%_)))
                    (_%try-match124824124848%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f124721%_ _%xstx124722%_ _%ystx124723%_)
        (if (procedure? _%f124721%_)
            '#!void
            (error '"expected procedure" _%f124721%_))
        (let _%lp124725%_ ((_%xrest124727%_ _%xstx124722%_)
                           (_%yrest124728%_ _%ystx124723%_))
          (let* ((_%g124729124739%_ (gx#syntax-e _%xrest124727%_))
                 (_%else124732124747%_ (lambda () '#!void)))
            (let ((_%K124735124804%_
                   (lambda (_%xrest124773%_ _%xhd124774%_)
                     (let* ((_%g124775124782%_ (gx#syntax-e _%yrest124728%_))
                            (_%E124777124786%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g124775124782%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K124778124792%_
                             (lambda (_%yrest124789%_ _%yhd124790%_)
                               (_%f124721%_ _%xhd124774%_ _%yhd124790%_)
                               (_%lp124725%_
                                _%xrest124773%_
                                _%yrest124789%_))))
                       (if (pair? _%g124775124782%_)
                           (let ((_%hd124779124795%_ (##car _%g124775124782%_))
                                 (_%tl124780124797%_
                                  (##cdr _%g124775124782%_)))
                             (let* ((_%yhd124800%_ _%hd124779124795%_)
                                    (_%yrest124802%_ _%tl124780124797%_))
                               (_%K124778124792%_
                                _%yrest124802%_
                                _%yhd124800%_)))
                           (_%E124777124786%_)))))
                  (_%K124734124767%_
                   (lambda ()
                     (let* ((_%yrest124751124756%_ _%yrest124728%_)
                            (_%E124753124760%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest124751124756%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K124754124764%_
                             (lambda ()
                               (_%f124721%_ _%xrest124727%_ _%yrest124728%_))))
                       (if (gx#stx-null? _%yrest124751124756%_)
                           (_%E124753124760%_)
                           (_%K124754124764%_))))))
              (let ((_%try-match124731124770%_
                     (lambda ()
                       (if (null? _%g124729124739%_)
                           (_%else124732124747%_)
                           (_%K124734124767%_)))))
                (if (pair? _%g124729124739%_)
                    (let ((_%tl124737124809%_ (##cdr _%g124729124739%_))
                          (_%hd124736124807%_ (##car _%g124729124739%_)))
                      (let ((_%xhd124812%_ _%hd124736124807%_)
                            (_%xrest124814%_ _%tl124737124809%_))
                        (_%K124735124804%_ _%xrest124814%_ _%xhd124812%_)))
                    (_%try-match124731124770%_))))))))
    (define gx#stx-map
      (lambda _g125405_
        (let ((_g125406_ (##length _g125405_)))
          (cond ((##fx= _g125406_ 2) (apply gx#stx-map1 _g125405_))
                ((##fx= _g125406_ 3) (apply gx#stx-map2 _g125405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g125405_))))))
    (define gx#stx-map1
      (lambda (_%f124664%_ _%stx124665%_)
        (if (procedure? _%f124664%_)
            '#!void
            (error '"expected procedure" _%f124664%_))
        (let _%recur124667%_ ((_%rest124669%_ _%stx124665%_))
          (let* ((_%g124670124680%_ (gx#syntax-e _%rest124669%_))
                 (_%else124673124688%_
                  (lambda () (_%f124664%_ _%rest124669%_))))
            (let ((_%K124676124702%_
                   (lambda (_%rest124699%_ _%hd124700%_)
                     (cons (_%f124664%_ _%hd124700%_)
                           (_%recur124667%_ _%rest124699%_))))
                  (_%K124675124693%_ (lambda () '())))
              (let ((_%try-match124672124696%_
                     (lambda ()
                       (if (null? _%g124670124680%_)
                           (_%K124675124693%_)
                           (_%else124673124688%_)))))
                (if (pair? _%g124670124680%_)
                    (let ((_%tl124678124707%_ (##cdr _%g124670124680%_))
                          (_%hd124677124705%_ (##car _%g124670124680%_)))
                      (let ((_%hd124710%_ _%hd124677124705%_)
                            (_%rest124712%_ _%tl124678124707%_))
                        (_%K124676124702%_ _%rest124712%_ _%hd124710%_)))
                    (_%try-match124672124696%_))))))))
    (define gx#stx-map2
      (lambda (_%f124569%_ _%xstx124570%_ _%ystx124571%_)
        (if (procedure? _%f124569%_)
            '#!void
            (error '"expected procedure" _%f124569%_))
        (let _%recur124573%_ ((_%xrest124575%_ _%xstx124570%_)
                              (_%yrest124576%_ _%ystx124571%_))
          (let* ((_%g124577124587%_ (gx#syntax-e _%xrest124575%_))
                 (_%else124580124595%_ (lambda () '())))
            (let ((_%K124583124652%_
                   (lambda (_%xrest124621%_ _%xhd124622%_)
                     (let* ((_%g124623124630%_ (gx#syntax-e _%yrest124576%_))
                            (_%E124625124634%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g124623124630%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K124626124640%_
                             (lambda (_%yrest124637%_ _%yhd124638%_)
                               (cons (_%f124569%_ _%xhd124622%_ _%yhd124638%_)
                                     (_%recur124573%_
                                      _%xrest124621%_
                                      _%yrest124637%_)))))
                       (if (pair? _%g124623124630%_)
                           (let ((_%hd124627124643%_ (##car _%g124623124630%_))
                                 (_%tl124628124645%_
                                  (##cdr _%g124623124630%_)))
                             (let* ((_%yhd124648%_ _%hd124627124643%_)
                                    (_%yrest124650%_ _%tl124628124645%_))
                               (_%K124626124640%_
                                _%yrest124650%_
                                _%yhd124648%_)))
                           (_%E124625124634%_)))))
                  (_%K124582124615%_
                   (lambda ()
                     (let* ((_%yrest124599124604%_ _%yrest124576%_)
                            (_%E124601124608%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest124599124604%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K124602124612%_
                             (lambda ()
                               (_%f124569%_ _%xrest124575%_ _%yrest124576%_))))
                       (if (gx#stx-null? _%yrest124599124604%_)
                           (_%E124601124608%_)
                           (_%K124602124612%_))))))
              (let ((_%try-match124579124618%_
                     (lambda ()
                       (if (null? _%g124577124587%_)
                           (_%else124580124595%_)
                           (_%K124582124615%_)))))
                (if (pair? _%g124577124587%_)
                    (let ((_%tl124585124657%_ (##cdr _%g124577124587%_))
                          (_%hd124584124655%_ (##car _%g124577124587%_)))
                      (let ((_%xhd124660%_ _%hd124584124655%_)
                            (_%xrest124662%_ _%tl124585124657%_))
                        (_%K124583124652%_ _%xrest124662%_ _%xhd124660%_)))
                    (_%try-match124579124618%_))))))))
    (define gx#stx-andmap
      (lambda (_%f124519%_ _%stx124520%_)
        (if (procedure? _%f124519%_)
            '#!void
            (error '"expected procedure" _%f124519%_))
        (let _%lp124522%_ ((_%rest124524%_ _%stx124520%_))
          (let* ((_%g124525124535%_ (gx#syntax-e _%rest124524%_))
                 (_%else124528124543%_
                  (lambda () (_%f124519%_ _%rest124524%_))))
            (let ((_%K124531124557%_
                   (lambda (_%rest124554%_ _%hd124555%_)
                     (if (_%f124519%_ _%hd124555%_)
                         (_%lp124522%_ _%rest124554%_)
                         '#f)))
                  (_%K124530124548%_ (lambda () '#t)))
              (let ((_%try-match124527124551%_
                     (lambda ()
                       (if (null? _%g124525124535%_)
                           (_%K124530124548%_)
                           (_%else124528124543%_)))))
                (if (pair? _%g124525124535%_)
                    (let ((_%tl124533124562%_ (##cdr _%g124525124535%_))
                          (_%hd124532124560%_ (##car _%g124525124535%_)))
                      (let ((_%hd124565%_ _%hd124532124560%_)
                            (_%rest124567%_ _%tl124533124562%_))
                        (_%K124531124557%_ _%rest124567%_ _%hd124565%_)))
                    (_%try-match124527124551%_))))))))
    (define gx#stx-ormap
      (lambda (_%f124466%_ _%stx124467%_)
        (if (procedure? _%f124466%_)
            '#!void
            (error '"expected procedure" _%f124466%_))
        (let _%lp124469%_ ((_%rest124471%_ _%stx124467%_))
          (let* ((_%g124472124482%_ (gx#syntax-e _%rest124471%_))
                 (_%else124475124490%_
                  (lambda () (_%f124466%_ _%rest124471%_))))
            (let ((_%K124478124507%_
                   (lambda (_%rest124501%_ _%hd124502%_)
                     (let ((_%$e124504%_ (_%f124466%_ _%hd124502%_)))
                       (if _%$e124504%_
                           _%$e124504%_
                           (_%lp124469%_ _%rest124501%_)))))
                  (_%K124477124495%_ (lambda () '#f)))
              (let ((_%try-match124474124498%_
                     (lambda ()
                       (if (null? _%g124472124482%_)
                           (_%K124477124495%_)
                           (_%else124475124490%_)))))
                (if (pair? _%g124472124482%_)
                    (let ((_%tl124480124512%_ (##cdr _%g124472124482%_))
                          (_%hd124479124510%_ (##car _%g124472124482%_)))
                      (let ((_%hd124515%_ _%hd124479124510%_)
                            (_%rest124517%_ _%tl124480124512%_))
                        (_%K124478124507%_ _%rest124517%_ _%hd124515%_)))
                    (_%try-match124474124498%_))))))))
    (define gx#stx-foldl
      (lambda (_%f124414%_ _%iv124415%_ _%stx124416%_)
        (if (procedure? _%f124414%_)
            '#!void
            (error '"expected procedure" _%f124414%_))
        (let _%lp124418%_ ((_%r124420%_ _%iv124415%_)
                           (_%rest124421%_ _%stx124416%_))
          (let* ((_%g124422124432%_ (gx#syntax-e _%rest124421%_))
                 (_%else124425124440%_
                  (lambda () (_%f124414%_ _%rest124421%_ _%r124420%_))))
            (let ((_%K124428124454%_
                   (lambda (_%rest124451%_ _%hd124452%_)
                     (_%lp124418%_
                      (_%f124414%_ _%hd124452%_ _%r124420%_)
                      _%rest124451%_)))
                  (_%K124427124445%_ (lambda () _%r124420%_)))
              (let ((_%try-match124424124448%_
                     (lambda ()
                       (if (null? _%g124422124432%_)
                           (_%K124427124445%_)
                           (_%else124425124440%_)))))
                (if (pair? _%g124422124432%_)
                    (let ((_%tl124430124459%_ (##cdr _%g124422124432%_))
                          (_%hd124429124457%_ (##car _%g124422124432%_)))
                      (let ((_%hd124462%_ _%hd124429124457%_)
                            (_%rest124464%_ _%tl124430124459%_))
                        (_%K124428124454%_ _%rest124464%_ _%hd124462%_)))
                    (_%try-match124424124448%_))))))))
    (define gx#stx-foldr
      (lambda (_%f124363%_ _%iv124364%_ _%stx124365%_)
        (if (procedure? _%f124363%_)
            '#!void
            (error '"expected procedure" _%f124363%_))
        (let _%recur124367%_ ((_%rest124369%_ _%stx124365%_))
          (let* ((_%g124370124380%_ (gx#syntax-e _%rest124369%_))
                 (_%else124373124388%_
                  (lambda () (_%f124363%_ _%rest124369%_ _%iv124364%_))))
            (let ((_%K124376124402%_
                   (lambda (_%rest124399%_ _%hd124400%_)
                     (_%f124363%_
                      _%hd124400%_
                      (_%recur124367%_ _%rest124399%_))))
                  (_%K124375124393%_ (lambda () _%iv124364%_)))
              (let ((_%try-match124372124396%_
                     (lambda ()
                       (if (null? _%g124370124380%_)
                           (_%K124375124393%_)
                           (_%else124373124388%_)))))
                (if (pair? _%g124370124380%_)
                    (let ((_%tl124378124407%_ (##cdr _%g124370124380%_))
                          (_%hd124377124405%_ (##car _%g124370124380%_)))
                      (let ((_%hd124410%_ _%hd124377124405%_)
                            (_%rest124412%_ _%tl124378124407%_))
                        (_%K124376124402%_ _%rest124412%_ _%hd124410%_)))
                    (_%try-match124372124396%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx124361%_) (gx#stx-foldl cons '() _%stx124361%_)))
    (define gx#stx-last
      (lambda (_%stx124322%_)
        (let _%lp124324%_ ((_%rest124326%_ _%stx124322%_))
          (let* ((_%g124327124335%_ (gx#syntax-e _%rest124326%_))
                 (_%else124329124343%_ (lambda () _%rest124326%_))
                 (_%K124331124349%_
                  (lambda (_%rest124346%_ _%hd124347%_)
                    (if (gx#stx-null? _%rest124346%_)
                        _%hd124347%_
                        (_%lp124324%_ _%rest124346%_)))))
            (if (pair? _%g124327124335%_)
                (let ((_%hd124332124352%_ (##car _%g124327124335%_))
                      (_%tl124333124354%_ (##cdr _%g124327124335%_)))
                  (let* ((_%hd124357%_ _%hd124332124352%_)
                         (_%rest124359%_ _%tl124333124354%_))
                    (_%K124331124349%_ _%rest124359%_ _%hd124357%_)))
                (_%else124329124343%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx124293%_)
        (let _%lp124295%_ ((_%hd124297%_ _%stx124293%_))
          (let* ((_%g124298124305%_ (gx#syntax-e _%hd124297%_))
                 (_%E124300124309%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g124298124305%_
                           '([_ . rest]))
                    '#!void))
                 (_%K124301124314%_
                  (lambda (_%rest124312%_)
                    (if (gx#stx-pair? _%rest124312%_)
                        (_%lp124295%_ _%rest124312%_)
                        _%hd124297%_))))
            (if (pair? _%g124298124305%_)
                (let* ((_%tl124303124317%_ (##cdr _%g124298124305%_))
                       (_%rest124320%_ _%tl124303124317%_))
                  (_%K124301124314%_ _%rest124320%_))
                (_%E124300124309%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx124262%_ _%k124263%_)
        (let _%lp124265%_ ((_%rest124267%_ _%stx124262%_)
                           (_%k124268%_ _%k124263%_))
          (if (fxpositive? _%k124268%_)
              (let* ((_%g124269124276%_ (gx#syntax-e _%rest124267%_))
                     (_%E124271124280%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g124269124276%_
                               '([_ . rest]))
                        '#!void))
                     (_%K124272124285%_
                      (lambda (_%rest124283%_)
                        (_%lp124265%_ _%rest124283%_ (##fx- _%k124268%_ '1)))))
                (if (pair? _%g124269124276%_)
                    (let* ((_%tl124274124288%_ (##cdr _%g124269124276%_))
                           (_%rest124291%_ _%tl124274124288%_))
                      (_%K124272124285%_ _%rest124291%_))
                    (_%E124271124280%_)))
              _%rest124267%_))))
    (define gx#stx-list-ref
      (lambda (_%stx124259%_ _%k124260%_)
        (gx#stx-car (gx#stx-list-tail _%stx124259%_ _%k124260%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx124171%_ _%key?124172%_)
        (if (procedure? _%key?124172%_)
            '#!void
            (error '"expected procedure" _%key?124172%_))
        (let _%lp124174%_ ((_%rest124176%_ _%stx124171%_))
          (let* ((_%g124177124187%_ (gx#stx-e _%rest124176%_))
                 (_%else124180124195%_ (lambda () '#f)))
            (let ((_%K124183124237%_
                   (lambda (_%rest124206%_ _%hd124207%_)
                     (if (_%key?124172%_ _%hd124207%_)
                         (let* ((_%g124208124216%_ (gx#stx-e _%rest124206%_))
                                (_%else124210124224%_ (lambda () '#f))
                                (_%K124212124229%_
                                 (lambda (_%rest124227%_)
                                   (_%lp124174%_ _%rest124227%_))))
                           (if (pair? _%g124208124216%_)
                               (let* ((_%tl124214124232%_
                                       (##cdr _%g124208124216%_))
                                      (_%rest124235%_ _%tl124214124232%_))
                                 (_%lp124174%_ _%rest124235%_))
                               (_%else124210124224%_)))
                         '#f)))
                  (_%K124182124200%_ (lambda () '#t)))
              (let ((_%try-match124179124203%_
                     (lambda ()
                       (if (null? _%g124177124187%_)
                           (_%K124182124200%_)
                           (_%else124180124195%_)))))
                (if (pair? _%g124177124187%_)
                    (let ((_%tl124185124242%_ (##cdr _%g124177124187%_))
                          (_%hd124184124240%_ (##car _%g124177124187%_)))
                      (let ((_%hd124245%_ _%hd124184124240%_)
                            (_%rest124247%_ _%tl124185124242%_))
                        (_%K124183124237%_ _%rest124247%_ _%hd124245%_)))
                    (_%try-match124179124203%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx124252%_)
        (let ((_%key?124254%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx124252%_ _%key?124254%_))))
    (define gx#stx-plist?
      (lambda _g125407_
        (let ((_g125408_ (##length _g125407_)))
          (cond ((##fx= _g125408_ 1) (apply gx#stx-plist?__0 _g125407_))
                ((##fx= _g125408_ 2) (apply gx#stx-plist?__% _g125407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g125407_))))))
    (define gx#stx-getq__%
      (lambda (_%key124089%_ _%stx124090%_ _%key=?124091%_)
        (if (procedure? _%key=?124091%_)
            '#!void
            (error '"expected procedure" _%key=?124091%_))
        (let _%lp124093%_ ((_%rest124095%_ _%stx124090%_))
          (let* ((_%g124096124104%_ (gx#syntax-e _%rest124095%_))
                 (_%else124098124112%_ (lambda () '#f))
                 (_%K124100124146%_
                  (lambda (_%rest124115%_ _%hd124116%_)
                    (let* ((_%g124117124124%_ (gx#syntax-e _%rest124115%_))
                           (_%E124119124128%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g124117124124%_
                                     '([val . rest]))
                              '#!void))
                           (_%K124120124134%_
                            (lambda (_%rest124131%_ _%val124132%_)
                              (if (_%key=?124091%_ _%hd124116%_ _%key124089%_)
                                  _%val124132%_
                                  (_%lp124093%_ _%rest124131%_)))))
                      (if (pair? _%g124117124124%_)
                          (let ((_%hd124121124137%_ (##car _%g124117124124%_))
                                (_%tl124122124139%_ (##cdr _%g124117124124%_)))
                            (let* ((_%val124142%_ _%hd124121124137%_)
                                   (_%rest124144%_ _%tl124122124139%_))
                              (_%K124120124134%_
                               _%rest124144%_
                               _%val124142%_)))
                          (_%E124119124128%_))))))
            (if (pair? _%g124096124104%_)
                (let ((_%hd124101124149%_ (##car _%g124096124104%_))
                      (_%tl124102124151%_ (##cdr _%g124096124104%_)))
                  (let* ((_%hd124154%_ _%hd124101124149%_)
                         (_%rest124156%_ _%tl124102124151%_))
                    (_%K124100124146%_ _%rest124156%_ _%hd124154%_)))
                (_%else124098124112%_))))))
    (define gx#stx-getq__0
      (lambda (_%key124161%_ _%stx124162%_)
        (let ((_%key=?124164%_ gx#stx-eq?))
          (gx#stx-getq__% _%key124161%_ _%stx124162%_ _%key=?124164%_))))
    (define gx#stx-getq
      (lambda _g125409_
        (let ((_g125410_ (##length _g125409_)))
          (cond ((##fx= _g125410_ 2) (apply gx#stx-getq__0 _g125409_))
                ((##fx= _g125410_ 3) (apply gx#stx-getq__% _g125409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g125409_))))))))
