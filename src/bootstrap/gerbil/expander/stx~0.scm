(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712573430)
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
      (lambda _%$args114166%_
        (apply make-instance gx#identifier-wrap::t _%$args114166%_)))
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
      (lambda _%$args114163%_
        (apply make-instance gx#syntax-wrap::t _%$args114163%_)))
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
      (lambda _%$args114160%_
        (apply make-instance gx#syntax-quote::t _%$args114160%_)))
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
      (lambda (_%stx114158%_) (symbol? (gx#stx-e _%stx114158%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114156%_)
        (if (##structure-direct-instance-of? _%stx114156%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114156%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114151%_)
        (if (##structure-direct-instance-of? _%stx114151%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx114151%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx114151%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114146%_)
        (if (##structure-direct-instance-of? _%stx114146%_ 'gx#syntax-quote::t)
            _%stx114146%_
            (if (##structure-direct-instance-of?
                 _%stx114146%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx114146%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx114120%_)
        (if (##structure-direct-instance-of? _%stx114120%_ 'gx#syntax-wrap::t)
            (let _%lp114123%_ ((_%e114125%_
                                (##unchecked-structure-ref
                                 _%stx114120%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks114126%_
                                (cons (##unchecked-structure-ref
                                       _%stx114120%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e114125%_)
                  (let ((_%$e114129%_
                         (##type-id (##structure-type _%e114125%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e114129%_)
                        (_%lp114123%_
                         (##unchecked-structure-ref _%e114125%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e114125%_ '3 '#f '#f)
                          _%marks114126%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e114129%_)
                                (eq? 'gx#identifier-wrap::t _%$e114129%_))
                            (##unchecked-structure-ref _%e114125%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e114129%_)
                                (_%lp114123%_
                                 (##unchecked-structure-ref
                                  _%e114125%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks114126%_)
                                _%e114125%_))))
                  (if (null? _%marks114126%_)
                      _%e114125%_
                      (if (pair? _%e114125%_)
                          (cons (gx#stx-wrap (car _%e114125%_) _%marks114126%_)
                                (gx#stx-wrap
                                 (cdr _%e114125%_)
                                 _%marks114126%_))
                          (if (vector? _%e114125%_)
                              (vector-map
                               (lambda (_%g114137114139%_)
                                 (gx#stx-wrap
                                  _%g114137114139%_
                                  _%marks114126%_))
                               _%e114125%_)
                              (if (box? _%e114125%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e114125%_)
                                        _%marks114126%_))
                                  _%e114125%_))))))
            (if (##structure-instance-of? _%stx114120%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx114120%_ '1 '#f '#f)
                _%stx114120%_))))
    (define gx#syntax->datum
      (lambda (_%stx114113%_)
        (if (##structure-instance-of? _%stx114113%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx114113%_ '1 '#f '#f))
            (if (pair? _%stx114113%_)
                (cons (gx#syntax->datum (car _%stx114113%_))
                      (gx#syntax->datum (cdr _%stx114113%_)))
                (if (vector? _%stx114113%_)
                    (vector-map gx#syntax->datum _%stx114113%_)
                    (if (box? _%stx114113%_)
                        (box (gx#syntax->datum (unbox _%stx114113%_)))
                        _%stx114113%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114047%_ _%datum114048%_ _%src114049%_ _%quote?114050%_)
        (letrec ((_%wrap-datum114052%_
                  (lambda (_%e114085%_ _%marks114086%_)
                    (_%wrap-inner114054%_
                     _%e114085%_
                     (lambda (_%g114087114089%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114087114089%_
                        _%src114049%_
                        _%marks114086%_)))))
                 (_%wrap-quote114053%_
                  (lambda (_%e114077%_ _%ctx114078%_ _%marks114079%_)
                    (_%wrap-inner114054%_
                     _%e114077%_
                     (lambda (_%g114080114082%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114080114082%_
                        _%src114049%_
                        _%ctx114078%_
                        _%marks114079%_)))))
                 (_%wrap-inner114054%_
                  (lambda (_%e114065%_ _%wrap-e114066%_)
                    (let _%recur114068%_ ((_%e114070%_ _%e114065%_))
                      (if (symbol? _%e114070%_)
                          (_%wrap-e114066%_ _%e114070%_)
                          (if (pair? _%e114070%_)
                              (cons (_%recur114068%_ (car _%e114070%_))
                                    (_%recur114068%_ (cdr _%e114070%_)))
                              (if (vector? _%e114070%_)
                                  (vector-map _%recur114068%_ _%e114070%_)
                                  (if (box? _%e114070%_)
                                      (box (_%recur114068%_
                                            (unbox _%e114070%_)))
                                      _%e114070%_)))))))
                 (_%wrap-outer114055%_
                  (lambda (_%e114063%_)
                    (if (##structure-instance-of? _%e114063%_ 'gerbil#AST::t)
                        _%e114063%_
                        (##structure gx#AST::t _%e114063%_ _%src114049%_)))))
          (if (##structure-instance-of? _%datum114048%_ 'gerbil#AST::t)
              _%datum114048%_
              (if (not _%stx114047%_)
                  (##structure gx#AST::t _%datum114048%_ _%src114049%_)
                  (if (gx#identifier? _%stx114047%_)
                      (let ((_%stx114060%_ (gx#stx-unwrap__0 _%stx114047%_)))
                        (_%wrap-outer114055%_
                         (if (##structure-direct-instance-of?
                              _%stx114060%_
                              'gx#syntax-quote::t)
                             (if _%quote?114050%_
                                 (_%wrap-quote114053%_
                                  _%datum114048%_
                                  (##unchecked-structure-ref
                                   _%stx114060%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx114060%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum114052%_
                                  _%datum114048%_
                                  (##unchecked-structure-ref
                                   _%stx114060%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum114052%_
                              _%datum114048%_
                              (##unchecked-structure-ref
                               _%stx114060%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx114047%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114095%_ _%datum114096%_)
        (let* ((_%src114098%_ '#f) (_%quote?114100%_ '#t))
          (gx#datum->syntax__%
           _%stx114095%_
           _%datum114096%_
           _%src114098%_
           _%quote?114100%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114102%_ _%datum114103%_ _%src114104%_)
        (let ((_%quote?114106%_ '#t))
          (gx#datum->syntax__%
           _%stx114102%_
           _%datum114103%_
           _%src114104%_
           _%quote?114106%_))))
    (define gx#datum->syntax
      (lambda _g114247_
        (let ((_g114246_ (##length _g114247_)))
          (cond ((##fx= _g114246_ 2) (apply gx#datum->syntax__0 _g114247_))
                ((##fx= _g114246_ 3) (apply gx#datum->syntax__1 _g114247_))
                ((##fx= _g114246_ 4) (apply gx#datum->syntax__% _g114247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g114247_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114013%_ _%marks114014%_)
        (let _%lp114016%_ ((_%e114018%_ _%stx114013%_)
                           (_%marks114019%_ _%marks114014%_)
                           (_%src114020%_ (gx#stx-source _%stx114013%_)))
          (if (##structure-direct-instance-of? _%e114018%_ 'gx#syntax-wrap::t)
              (_%lp114016%_
               (##unchecked-structure-ref _%e114018%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e114018%_ '3 '#f '#f)
                _%marks114019%_)
               (##unchecked-structure-ref _%e114018%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e114018%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks114019%_)
                      _%e114018%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e114018%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e114018%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e114018%_ '3 '#f '#f)
                        _%marks114019%_)))
                  (if (##structure-direct-instance-of?
                       _%e114018%_
                       'gx#syntax-quote::t)
                      _%e114018%_
                      (if (##structure-instance-of? _%e114018%_ 'gerbil#AST::t)
                          (_%lp114016%_
                           (##unchecked-structure-ref _%e114018%_ '1 '#f '#f)
                           _%marks114019%_
                           (##unchecked-structure-ref _%e114018%_ '2 '#f '#f))
                          (if (symbol? _%e114018%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e114018%_
                               _%src114020%_
                               (reverse _%marks114019%_))
                              (if (null? _%marks114019%_)
                                  _%e114018%_
                                  (if (pair? _%e114018%_)
                                      (cons (gx#stx-wrap
                                             (car _%e114018%_)
                                             _%marks114019%_)
                                            (gx#stx-wrap
                                             (cdr _%e114018%_)
                                             _%marks114019%_))
                                      (if (vector? _%e114018%_)
                                          (vector-map
                                           (lambda (_%g114029114031%_)
                                             (gx#stx-wrap
                                              _%g114029114031%_
                                              _%marks114019%_))
                                           _%e114018%_)
                                          (if (box? _%e114018%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e114018%_)
                                                    _%marks114019%_))
                                              _%e114018%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114039%_)
        (let ((_%marks114041%_ '()))
          (gx#stx-unwrap__% _%stx114039%_ _%marks114041%_))))
    (define gx#stx-unwrap
      (lambda _g114249_
        (let ((_g114248_ (##length _g114249_)))
          (cond ((##fx= _g114248_ 1) (apply gx#stx-unwrap__0 _g114249_))
                ((##fx= _g114248_ 2) (apply gx#stx-unwrap__% _g114249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g114249_))))))
    (define gx#stx-wrap
      (lambda (_%stx114006%_ _%marks114007%_)
        (__foldl1
         (lambda (_%mark114009%_ _%stx114010%_)
           (gx#stx-apply-mark _%stx114010%_ _%mark114009%_))
         _%stx114006%_
         _%marks114007%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114000%_ _%marks114001%_)
        (__foldr1
         (lambda (_%mark114003%_ _%stx114004%_)
           (gx#stx-apply-mark _%stx114004%_ _%mark114003%_))
         _%stx114000%_
         _%marks114001%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx113994%_ _%mark113995%_)
        (if (##structure-direct-instance-of? _%stx113994%_ 'gx#syntax-quote::t)
            _%stx113994%_
            (if (and (##structure-direct-instance-of?
                      _%stx113994%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark113995%_
                          (##unchecked-structure-ref
                           _%stx113994%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx113994%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx113994%_
                 (gx#stx-source _%stx113994%_)
                 _%mark113995%_)))))
    (define gx#apply-mark
      (lambda (_%mark113958%_ _%marks113959%_)
        (let* ((_%marks113960113968%_ _%marks113959%_)
               (_%else113962113976%_
                (lambda () (cons _%mark113958%_ _%marks113959%_)))
               (_%K113964113982%_
                (lambda (_%rest113979%_ _%hd113980%_)
                  (if (eq? _%mark113958%_ _%hd113980%_)
                      _%rest113979%_
                      (cons _%mark113958%_ _%marks113959%_)))))
          (if (##pair? _%marks113960113968%_)
              (let ((_%hd113965113985%_ (##car _%marks113960113968%_))
                    (_%tl113966113987%_ (##cdr _%marks113960113968%_)))
                (let* ((_%hd113990%_ _%hd113965113985%_)
                       (_%rest113992%_ _%tl113966113987%_))
                  (_%K113964113982%_ _%rest113992%_ _%hd113990%_)))
              (_%else113962113976%_)))))
    (define gx#stx-e
      (lambda (_%stx113953%_)
        (if (##structure-direct-instance-of? _%stx113953%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx113953%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx113953%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx113953%_ '1 '#f '#f)
                _%stx113953%_))))
    (define gx#stx-source
      (lambda (_%stx113951%_)
        (if (##structure-instance-of? _%stx113951%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx113951%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx113945%_ _%src113946%_)
        (if (or (##structure-instance-of? _%stx113945%_ 'gerbil#AST::t)
                (not _%src113946%_))
            _%stx113945%_
            (##structure gx#AST::t _%stx113945%_ _%src113946%_))))
    (define gx#stx-datum?
      (lambda (_%stx113943%_) (gx#self-quoting? (gx#stx-e _%stx113943%_))))
    (define gx#self-quoting?
      (lambda (_%x113926%_)
        (let ((_%$e113928%_ (immediate? _%x113926%_)))
          (if _%$e113928%_
              _%$e113928%_
              (let ((_%$e113931%_ (number? _%x113926%_)))
                (if _%$e113931%_
                    _%$e113931%_
                    (let ((_%$e113934%_ (keyword? _%x113926%_)))
                      (if _%$e113934%_
                          _%$e113934%_
                          (let ((_%$e113937%_ (string? _%x113926%_)))
                            (if _%$e113937%_
                                _%$e113937%_
                                (let ((_%$e113940%_ (vector? _%x113926%_)))
                                  (if _%$e113940%_
                                      _%$e113940%_
                                      (u8vector? _%x113926%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e113924%_) (boolean? (gx#stx-e _%e113924%_))))
    (define gx#stx-keyword?
      (lambda (_%e113922%_) (keyword? (gx#stx-e _%e113922%_))))
    (define gx#stx-char? (lambda (_%e113920%_) (char? (gx#stx-e _%e113920%_))))
    (define gx#stx-number?
      (lambda (_%e113918%_) (number? (gx#stx-e _%e113918%_))))
    (define gx#stx-fixnum?
      (lambda (_%e113916%_) (fixnum? (gx#stx-e _%e113916%_))))
    (define gx#stx-string?
      (lambda (_%e113914%_) (string? (gx#stx-e _%e113914%_))))
    (define gx#stx-null? (lambda (_%e113912%_) (null? (gx#stx-e _%e113912%_))))
    (define gx#stx-pair? (lambda (_%e113910%_) (pair? (gx#stx-e _%e113910%_))))
    (define gx#stx-list?
      (lambda (_%e113872%_)
        (let* ((_%g113873113882%_ (gx#stx-e _%e113872%_))
               (_%E113876113886%_
                (lambda ()
                  (error '"No clause matching"
                         _%g113873113882%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K113878113902%_
                 (lambda (_%rest113900%_) (gx#stx-list? _%rest113900%_)))
                (_%K113877113892%_
                 (lambda (_%tail113890%_) (null? _%tail113890%_))))
            (if (##pair? _%g113873113882%_)
                (let* ((_%tl113880113905%_ (##cdr _%g113873113882%_))
                       (_%rest113908%_ _%tl113880113905%_))
                  (gx#stx-list? _%rest113908%_))
                (let ((_%tail113895%_ _%g113873113882%_))
                  (null? _%tail113895%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e113865%_)
        (let* ((_%e113867%_ (gx#stx-e _%e113865%_))
               (_%$e113869%_ (pair? _%e113867%_)))
          (if _%$e113869%_ _%$e113869%_ (null? _%e113867%_)))))
    (define gx#stx-vector?
      (lambda (_%e113863%_) (vector? (gx#stx-e _%e113863%_))))
    (define gx#stx-box? (lambda (_%e113861%_) (box? (gx#stx-e _%e113861%_))))
    (define gx#stx-eq?
      (lambda (_%x113858%_ _%y113859%_)
        (eq? (gx#stx-e _%x113858%_) (gx#stx-e _%y113859%_))))
    (define gx#stx-eqv?
      (lambda (_%x113855%_ _%y113856%_)
        (eqv? (gx#stx-e _%x113855%_) (gx#stx-e _%y113856%_))))
    (define gx#stx-equal?
      (lambda (_%x113852%_ _%y113853%_)
        (equal? (gx#stx-e _%x113852%_) (gx#stx-e _%y113853%_))))
    (define gx#stx-false? (lambda (_%x113850%_) (not (gx#stx-e _%x113850%_))))
    (define gx#stx-identifier
      (lambda (_%template113847%_ . _%args113848%_)
        (gx#datum->syntax__1
         _%template113847%_
         (apply make-symbol (gx#syntax->datum _%args113848%_))
         (gx#stx-source _%template113847%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx113845%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx113845%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx113840%_)
        (if (##structure-direct-instance-of?
             _%stx113840%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx113840%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx113840%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx113840%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx113840%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx113836%_)
        (let ((_%stx113838%_ (gx#stx-unwrap__0 _%stx113836%_)))
          (if (gx#identifier-quote? _%stx113838%_)
              (##unchecked-structure-ref _%stx113838%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx113791%_)
        (let* ((_%g113792113802%_ (gx#stx-e _%stx113791%_))
               (_%else113795113810%_ (lambda () '#f)))
          (let ((_%K113798113824%_
                 (lambda (_%rest113821%_ _%hd113822%_)
                   (if (gx#identifier? _%hd113822%_)
                       (gx#identifier-list? _%rest113821%_)
                       '#f)))
                (_%K113797113815%_ (lambda () '#t)))
            (let ((_%try-match113794113818%_
                   (lambda ()
                     (if (##null? _%g113792113802%_)
                         (_%K113797113815%_)
                         (_%else113795113810%_)))))
              (if (##pair? _%g113792113802%_)
                  (let ((_%tl113800113829%_ (##cdr _%g113792113802%_))
                        (_%hd113799113827%_ (##car _%g113792113802%_)))
                    (let ((_%hd113832%_ _%hd113799113827%_)
                          (_%rest113834%_ _%tl113800113829%_))
                      (_%K113798113824%_ _%rest113834%_ _%hd113832%_)))
                  (_%try-match113794113818%_)))))))
    (define gx#genident__%
      (lambda (_%e113768%_ _%src113769%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e113771%_ (gx#stx-e _%e113768%_)))
                   (if (interned-symbol? _%e113771%_) _%e113771%_ 'g)))
         (let ((_%$e113773%_ (gx#stx-source _%e113768%_)))
           (if _%$e113773%_ _%$e113773%_ _%src113769%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e113780%_ 'g) (_%src113782%_ '#f))
          (gx#genident__% _%e113780%_ _%src113782%_))))
    (define gx#genident__1
      (lambda (_%e113784%_)
        (let ((_%src113786%_ '#f))
          (gx#genident__% _%e113784%_ _%src113786%_))))
    (define gx#genident
      (lambda _g114251_
        (let ((_g114250_ (##length _g114251_)))
          (cond ((##fx= _g114250_ 0) (apply gx#genident__0 _g114251_))
                ((##fx= _g114250_ 1) (apply gx#genident__1 _g114251_))
                ((##fx= _g114250_ 2) (apply gx#genident__% _g114251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g114251_))))))
    (define gx#gentemps
      (lambda (_%stx-lst113765%_) (gx#stx-map1 gx#genident _%stx-lst113765%_)))
    (define gx#syntax->list
      (lambda (_%stx113763%_) (gx#stx-map1 values _%stx113763%_)))
    (define gx#stx-car
      (lambda (_%stx113760%_)
        (declare (safe))
        (car (gx#syntax-e _%stx113760%_))))
    (define gx#stx-cdr
      (lambda (_%stx113757%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx113757%_))))
    (define gx#stx-length
      (lambda (_%stx113722%_)
        (let _%lp113724%_ ((_%rest113726%_ _%stx113722%_) (_%n113727%_ '0))
          (let* ((_%g113728113736%_ (gx#stx-e _%rest113726%_))
                 (_%else113730113744%_ (lambda () _%n113727%_))
                 (_%K113732113749%_
                  (lambda (_%rest113747%_)
                    (_%lp113724%_ _%rest113747%_ (##fx+ _%n113727%_ '1)))))
            (if (##pair? _%g113728113736%_)
                (let* ((_%tl113734113752%_ (##cdr _%g113728113736%_))
                       (_%rest113755%_ _%tl113734113752%_))
                  (_%K113732113749%_ _%rest113755%_))
                (_%else113730113744%_))))))
    (define gx#stx-for-each
      (lambda _g114253_
        (let ((_g114252_ (##length _g114253_)))
          (cond ((##fx= _g114252_ 2) (apply gx#stx-for-each1 _g114253_))
                ((##fx= _g114252_ 3) (apply gx#stx-for-each2 _g114253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g114253_))))))
    (define gx#stx-for-each1
      (lambda (_%f113665%_ _%stx113666%_)
        (if (procedure? _%f113665%_)
            '#!void
            (error '"expected procedure" _%f113665%_))
        (let _%lp113668%_ ((_%rest113670%_ _%stx113666%_))
          (let* ((_%g113671113681%_ (gx#syntax-e _%rest113670%_))
                 (_%else113674113689%_
                  (lambda () (_%f113665%_ _%rest113670%_))))
            (let ((_%K113677113703%_
                   (lambda (_%rest113700%_ _%hd113701%_)
                     (_%f113665%_ _%hd113701%_)
                     (_%lp113668%_ _%rest113700%_)))
                  (_%K113676113694%_ (lambda () '#!void)))
              (let ((_%try-match113673113697%_
                     (lambda ()
                       (if (##null? _%g113671113681%_)
                           (_%K113676113694%_)
                           (_%else113674113689%_)))))
                (if (##pair? _%g113671113681%_)
                    (let ((_%tl113679113708%_ (##cdr _%g113671113681%_))
                          (_%hd113678113706%_ (##car _%g113671113681%_)))
                      (let ((_%hd113711%_ _%hd113678113706%_)
                            (_%rest113713%_ _%tl113679113708%_))
                        (_%K113677113703%_ _%rest113713%_ _%hd113711%_)))
                    (_%try-match113673113697%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f113570%_ _%xstx113571%_ _%ystx113572%_)
        (if (procedure? _%f113570%_)
            '#!void
            (error '"expected procedure" _%f113570%_))
        (let _%lp113574%_ ((_%xrest113576%_ _%xstx113571%_)
                           (_%yrest113577%_ _%ystx113572%_))
          (let* ((_%g113578113588%_ (gx#syntax-e _%xrest113576%_))
                 (_%else113581113596%_ (lambda () '#!void)))
            (let ((_%K113584113653%_
                   (lambda (_%xrest113622%_ _%xhd113623%_)
                     (let* ((_%g113624113631%_ (gx#syntax-e _%yrest113577%_))
                            (_%E113626113635%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113624113631%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113627113641%_
                             (lambda (_%yrest113638%_ _%yhd113639%_)
                               (_%f113570%_ _%xhd113623%_ _%yhd113639%_)
                               (_%lp113574%_
                                _%xrest113622%_
                                _%yrest113638%_))))
                       (if (##pair? _%g113624113631%_)
                           (let ((_%hd113628113644%_ (##car _%g113624113631%_))
                                 (_%tl113629113646%_
                                  (##cdr _%g113624113631%_)))
                             (let* ((_%yhd113649%_ _%hd113628113644%_)
                                    (_%yrest113651%_ _%tl113629113646%_))
                               (_%K113627113641%_
                                _%yrest113651%_
                                _%yhd113649%_)))
                           (_%E113626113635%_)))))
                  (_%K113583113616%_
                   (lambda ()
                     (let* ((_%yrest113600113605%_ _%yrest113577%_)
                            (_%E113602113609%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113600113605%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113603113613%_
                             (lambda ()
                               (_%f113570%_ _%xrest113576%_ _%yrest113577%_))))
                       (if (not (gx#stx-null? _%yrest113600113605%_))
                           (_%K113603113613%_)
                           (_%E113602113609%_))))))
              (let ((_%try-match113580113619%_
                     (lambda ()
                       (if (not (null? _%g113578113588%_))
                           (_%K113583113616%_)
                           (_%else113581113596%_)))))
                (if (##pair? _%g113578113588%_)
                    (let ((_%tl113586113658%_ (##cdr _%g113578113588%_))
                          (_%hd113585113656%_ (##car _%g113578113588%_)))
                      (let ((_%xhd113661%_ _%hd113585113656%_)
                            (_%xrest113663%_ _%tl113586113658%_))
                        (_%K113584113653%_ _%xrest113663%_ _%xhd113661%_)))
                    (_%try-match113580113619%_))))))))
    (define gx#stx-map
      (lambda _g114255_
        (let ((_g114254_ (##length _g114255_)))
          (cond ((##fx= _g114254_ 2) (apply gx#stx-map1 _g114255_))
                ((##fx= _g114254_ 3) (apply gx#stx-map2 _g114255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g114255_))))))
    (define gx#stx-map1
      (lambda (_%f113513%_ _%stx113514%_)
        (if (procedure? _%f113513%_)
            '#!void
            (error '"expected procedure" _%f113513%_))
        (let _%recur113516%_ ((_%rest113518%_ _%stx113514%_))
          (let* ((_%g113519113529%_ (gx#syntax-e _%rest113518%_))
                 (_%else113522113537%_
                  (lambda () (_%f113513%_ _%rest113518%_))))
            (let ((_%K113525113551%_
                   (lambda (_%rest113548%_ _%hd113549%_)
                     (cons (_%f113513%_ _%hd113549%_)
                           (_%recur113516%_ _%rest113548%_))))
                  (_%K113524113542%_ (lambda () '())))
              (let ((_%try-match113521113545%_
                     (lambda ()
                       (if (##null? _%g113519113529%_)
                           (_%K113524113542%_)
                           (_%else113522113537%_)))))
                (if (##pair? _%g113519113529%_)
                    (let ((_%tl113527113556%_ (##cdr _%g113519113529%_))
                          (_%hd113526113554%_ (##car _%g113519113529%_)))
                      (let ((_%hd113559%_ _%hd113526113554%_)
                            (_%rest113561%_ _%tl113527113556%_))
                        (_%K113525113551%_ _%rest113561%_ _%hd113559%_)))
                    (_%try-match113521113545%_))))))))
    (define gx#stx-map2
      (lambda (_%f113418%_ _%xstx113419%_ _%ystx113420%_)
        (if (procedure? _%f113418%_)
            '#!void
            (error '"expected procedure" _%f113418%_))
        (let _%recur113422%_ ((_%xrest113424%_ _%xstx113419%_)
                              (_%yrest113425%_ _%ystx113420%_))
          (let* ((_%g113426113436%_ (gx#syntax-e _%xrest113424%_))
                 (_%else113429113444%_ (lambda () '())))
            (let ((_%K113432113501%_
                   (lambda (_%xrest113470%_ _%xhd113471%_)
                     (let* ((_%g113472113479%_ (gx#syntax-e _%yrest113425%_))
                            (_%E113474113483%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113472113479%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113475113489%_
                             (lambda (_%yrest113486%_ _%yhd113487%_)
                               (cons (_%f113418%_ _%xhd113471%_ _%yhd113487%_)
                                     (_%recur113422%_
                                      _%xrest113470%_
                                      _%yrest113486%_)))))
                       (if (##pair? _%g113472113479%_)
                           (let ((_%hd113476113492%_ (##car _%g113472113479%_))
                                 (_%tl113477113494%_
                                  (##cdr _%g113472113479%_)))
                             (let* ((_%yhd113497%_ _%hd113476113492%_)
                                    (_%yrest113499%_ _%tl113477113494%_))
                               (_%K113475113489%_
                                _%yrest113499%_
                                _%yhd113497%_)))
                           (_%E113474113483%_)))))
                  (_%K113431113464%_
                   (lambda ()
                     (let* ((_%yrest113448113453%_ _%yrest113425%_)
                            (_%E113450113457%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113448113453%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113451113461%_
                             (lambda ()
                               (_%f113418%_ _%xrest113424%_ _%yrest113425%_))))
                       (if (not (gx#stx-null? _%yrest113448113453%_))
                           (_%K113451113461%_)
                           (_%E113450113457%_))))))
              (let ((_%try-match113428113467%_
                     (lambda ()
                       (if (not (null? _%g113426113436%_))
                           (_%K113431113464%_)
                           (_%else113429113444%_)))))
                (if (##pair? _%g113426113436%_)
                    (let ((_%tl113434113506%_ (##cdr _%g113426113436%_))
                          (_%hd113433113504%_ (##car _%g113426113436%_)))
                      (let ((_%xhd113509%_ _%hd113433113504%_)
                            (_%xrest113511%_ _%tl113434113506%_))
                        (_%K113432113501%_ _%xrest113511%_ _%xhd113509%_)))
                    (_%try-match113428113467%_))))))))
    (define gx#stx-andmap
      (lambda (_%f113368%_ _%stx113369%_)
        (if (procedure? _%f113368%_)
            '#!void
            (error '"expected procedure" _%f113368%_))
        (let _%lp113371%_ ((_%rest113373%_ _%stx113369%_))
          (let* ((_%g113374113384%_ (gx#syntax-e _%rest113373%_))
                 (_%else113377113392%_
                  (lambda () (_%f113368%_ _%rest113373%_))))
            (let ((_%K113380113406%_
                   (lambda (_%rest113403%_ _%hd113404%_)
                     (if (_%f113368%_ _%hd113404%_)
                         (_%lp113371%_ _%rest113403%_)
                         '#f)))
                  (_%K113379113397%_ (lambda () '#t)))
              (let ((_%try-match113376113400%_
                     (lambda ()
                       (if (##null? _%g113374113384%_)
                           (_%K113379113397%_)
                           (_%else113377113392%_)))))
                (if (##pair? _%g113374113384%_)
                    (let ((_%tl113382113411%_ (##cdr _%g113374113384%_))
                          (_%hd113381113409%_ (##car _%g113374113384%_)))
                      (let ((_%hd113414%_ _%hd113381113409%_)
                            (_%rest113416%_ _%tl113382113411%_))
                        (_%K113380113406%_ _%rest113416%_ _%hd113414%_)))
                    (_%try-match113376113400%_))))))))
    (define gx#stx-ormap
      (lambda (_%f113315%_ _%stx113316%_)
        (if (procedure? _%f113315%_)
            '#!void
            (error '"expected procedure" _%f113315%_))
        (let _%lp113318%_ ((_%rest113320%_ _%stx113316%_))
          (let* ((_%g113321113331%_ (gx#syntax-e _%rest113320%_))
                 (_%else113324113339%_
                  (lambda () (_%f113315%_ _%rest113320%_))))
            (let ((_%K113327113356%_
                   (lambda (_%rest113350%_ _%hd113351%_)
                     (let ((_%$e113353%_ (_%f113315%_ _%hd113351%_)))
                       (if _%$e113353%_
                           _%$e113353%_
                           (_%lp113318%_ _%rest113350%_)))))
                  (_%K113326113344%_ (lambda () '#f)))
              (let ((_%try-match113323113347%_
                     (lambda ()
                       (if (##null? _%g113321113331%_)
                           (_%K113326113344%_)
                           (_%else113324113339%_)))))
                (if (##pair? _%g113321113331%_)
                    (let ((_%tl113329113361%_ (##cdr _%g113321113331%_))
                          (_%hd113328113359%_ (##car _%g113321113331%_)))
                      (let ((_%hd113364%_ _%hd113328113359%_)
                            (_%rest113366%_ _%tl113329113361%_))
                        (_%K113327113356%_ _%rest113366%_ _%hd113364%_)))
                    (_%try-match113323113347%_))))))))
    (define gx#stx-foldl
      (lambda (_%f113263%_ _%iv113264%_ _%stx113265%_)
        (if (procedure? _%f113263%_)
            '#!void
            (error '"expected procedure" _%f113263%_))
        (let _%lp113267%_ ((_%r113269%_ _%iv113264%_)
                           (_%rest113270%_ _%stx113265%_))
          (let* ((_%g113271113281%_ (gx#syntax-e _%rest113270%_))
                 (_%else113274113289%_
                  (lambda () (_%f113263%_ _%rest113270%_ _%r113269%_))))
            (let ((_%K113277113303%_
                   (lambda (_%rest113300%_ _%hd113301%_)
                     (_%lp113267%_
                      (_%f113263%_ _%hd113301%_ _%r113269%_)
                      _%rest113300%_)))
                  (_%K113276113294%_ (lambda () _%r113269%_)))
              (let ((_%try-match113273113297%_
                     (lambda ()
                       (if (##null? _%g113271113281%_)
                           (_%K113276113294%_)
                           (_%else113274113289%_)))))
                (if (##pair? _%g113271113281%_)
                    (let ((_%tl113279113308%_ (##cdr _%g113271113281%_))
                          (_%hd113278113306%_ (##car _%g113271113281%_)))
                      (let ((_%hd113311%_ _%hd113278113306%_)
                            (_%rest113313%_ _%tl113279113308%_))
                        (_%K113277113303%_ _%rest113313%_ _%hd113311%_)))
                    (_%try-match113273113297%_))))))))
    (define gx#stx-foldr
      (lambda (_%f113212%_ _%iv113213%_ _%stx113214%_)
        (if (procedure? _%f113212%_)
            '#!void
            (error '"expected procedure" _%f113212%_))
        (let _%recur113216%_ ((_%rest113218%_ _%stx113214%_))
          (let* ((_%g113219113229%_ (gx#syntax-e _%rest113218%_))
                 (_%else113222113237%_
                  (lambda () (_%f113212%_ _%rest113218%_ _%iv113213%_))))
            (let ((_%K113225113251%_
                   (lambda (_%rest113248%_ _%hd113249%_)
                     (_%f113212%_
                      _%hd113249%_
                      (_%recur113216%_ _%rest113248%_))))
                  (_%K113224113242%_ (lambda () _%iv113213%_)))
              (let ((_%try-match113221113245%_
                     (lambda ()
                       (if (##null? _%g113219113229%_)
                           (_%K113224113242%_)
                           (_%else113222113237%_)))))
                (if (##pair? _%g113219113229%_)
                    (let ((_%tl113227113256%_ (##cdr _%g113219113229%_))
                          (_%hd113226113254%_ (##car _%g113219113229%_)))
                      (let ((_%hd113259%_ _%hd113226113254%_)
                            (_%rest113261%_ _%tl113227113256%_))
                        (_%K113225113251%_ _%rest113261%_ _%hd113259%_)))
                    (_%try-match113221113245%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx113210%_) (gx#stx-foldl cons '() _%stx113210%_)))
    (define gx#stx-last
      (lambda (_%stx113171%_)
        (let _%lp113173%_ ((_%rest113175%_ _%stx113171%_))
          (let* ((_%g113176113184%_ (gx#syntax-e _%rest113175%_))
                 (_%else113178113192%_ (lambda () _%rest113175%_))
                 (_%K113180113198%_
                  (lambda (_%rest113195%_ _%hd113196%_)
                    (if (gx#stx-null? _%rest113195%_)
                        _%hd113196%_
                        (_%lp113173%_ _%rest113195%_)))))
            (if (##pair? _%g113176113184%_)
                (let ((_%hd113181113201%_ (##car _%g113176113184%_))
                      (_%tl113182113203%_ (##cdr _%g113176113184%_)))
                  (let* ((_%hd113206%_ _%hd113181113201%_)
                         (_%rest113208%_ _%tl113182113203%_))
                    (_%K113180113198%_ _%rest113208%_ _%hd113206%_)))
                (_%else113178113192%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113142%_)
        (let _%lp113144%_ ((_%hd113146%_ _%stx113142%_))
          (let* ((_%g113147113154%_ (gx#syntax-e _%hd113146%_))
                 (_%E113149113158%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113147113154%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113150113163%_
                  (lambda (_%rest113161%_)
                    (if (gx#stx-pair? _%rest113161%_)
                        (_%lp113144%_ _%rest113161%_)
                        _%hd113146%_))))
            (if (##pair? _%g113147113154%_)
                (let* ((_%tl113152113166%_ (##cdr _%g113147113154%_))
                       (_%rest113169%_ _%tl113152113166%_))
                  (_%K113150113163%_ _%rest113169%_))
                (_%E113149113158%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113111%_ _%k113112%_)
        (let _%lp113114%_ ((_%rest113116%_ _%stx113111%_)
                           (_%k113117%_ _%k113112%_))
          (if (fxpositive? _%k113117%_)
              (let* ((_%g113118113125%_ (gx#syntax-e _%rest113116%_))
                     (_%E113120113129%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113118113125%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113121113134%_
                      (lambda (_%rest113132%_)
                        (_%lp113114%_ _%rest113132%_ (##fx- _%k113117%_ '1)))))
                (if (##pair? _%g113118113125%_)
                    (let* ((_%tl113123113137%_ (##cdr _%g113118113125%_))
                           (_%rest113140%_ _%tl113123113137%_))
                      (_%K113121113134%_ _%rest113140%_))
                    (_%E113120113129%_)))
              _%rest113116%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113108%_ _%k113109%_)
        (gx#stx-car (gx#stx-list-tail _%stx113108%_ _%k113109%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113020%_ _%key?113021%_)
        (if (procedure? _%key?113021%_)
            '#!void
            (error '"expected procedure" _%key?113021%_))
        (let _%lp113023%_ ((_%rest113025%_ _%stx113020%_))
          (let* ((_%g113026113036%_ (gx#stx-e _%rest113025%_))
                 (_%else113029113044%_ (lambda () '#f)))
            (let ((_%K113032113086%_
                   (lambda (_%rest113055%_ _%hd113056%_)
                     (if (_%key?113021%_ _%hd113056%_)
                         (let* ((_%g113057113065%_ (gx#stx-e _%rest113055%_))
                                (_%else113059113073%_ (lambda () '#f))
                                (_%K113061113078%_
                                 (lambda (_%rest113076%_)
                                   (_%lp113023%_ _%rest113076%_))))
                           (if (##pair? _%g113057113065%_)
                               (let* ((_%tl113063113081%_
                                       (##cdr _%g113057113065%_))
                                      (_%rest113084%_ _%tl113063113081%_))
                                 (_%lp113023%_ _%rest113084%_))
                               (_%else113059113073%_)))
                         '#f)))
                  (_%K113031113049%_ (lambda () '#t)))
              (let ((_%try-match113028113052%_
                     (lambda ()
                       (if (##null? _%g113026113036%_)
                           (_%K113031113049%_)
                           (_%else113029113044%_)))))
                (if (##pair? _%g113026113036%_)
                    (let ((_%tl113034113091%_ (##cdr _%g113026113036%_))
                          (_%hd113033113089%_ (##car _%g113026113036%_)))
                      (let ((_%hd113094%_ _%hd113033113089%_)
                            (_%rest113096%_ _%tl113034113091%_))
                        (_%K113032113086%_ _%rest113096%_ _%hd113094%_)))
                    (_%try-match113028113052%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113101%_)
        (let ((_%key?113103%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113101%_ _%key?113103%_))))
    (define gx#stx-plist?
      (lambda _g114257_
        (let ((_g114256_ (##length _g114257_)))
          (cond ((##fx= _g114256_ 1) (apply gx#stx-plist?__0 _g114257_))
                ((##fx= _g114256_ 2) (apply gx#stx-plist?__% _g114257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g114257_))))))
    (define gx#stx-getq__%
      (lambda (_%key112938%_ _%stx112939%_ _%key=?112940%_)
        (if (procedure? _%key=?112940%_)
            '#!void
            (error '"expected procedure" _%key=?112940%_))
        (let _%lp112942%_ ((_%rest112944%_ _%stx112939%_))
          (let* ((_%g112945112953%_ (gx#syntax-e _%rest112944%_))
                 (_%else112947112961%_ (lambda () '#f))
                 (_%K112949112995%_
                  (lambda (_%rest112964%_ _%hd112965%_)
                    (let* ((_%g112966112973%_ (gx#syntax-e _%rest112964%_))
                           (_%E112968112977%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g112966112973%_
                                     '([val . rest]))
                              '#!void))
                           (_%K112969112983%_
                            (lambda (_%rest112980%_ _%val112981%_)
                              (if (_%key=?112940%_ _%hd112965%_ _%key112938%_)
                                  _%val112981%_
                                  (_%lp112942%_ _%rest112980%_)))))
                      (if (##pair? _%g112966112973%_)
                          (let ((_%hd112970112986%_ (##car _%g112966112973%_))
                                (_%tl112971112988%_ (##cdr _%g112966112973%_)))
                            (let* ((_%val112991%_ _%hd112970112986%_)
                                   (_%rest112993%_ _%tl112971112988%_))
                              (_%K112969112983%_
                               _%rest112993%_
                               _%val112991%_)))
                          (_%E112968112977%_))))))
            (if (##pair? _%g112945112953%_)
                (let ((_%hd112950112998%_ (##car _%g112945112953%_))
                      (_%tl112951113000%_ (##cdr _%g112945112953%_)))
                  (let* ((_%hd113003%_ _%hd112950112998%_)
                         (_%rest113005%_ _%tl112951113000%_))
                    (_%K112949112995%_ _%rest113005%_ _%hd113003%_)))
                (_%else112947112961%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113010%_ _%stx113011%_)
        (let ((_%key=?113013%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113010%_ _%stx113011%_ _%key=?113013%_))))
    (define gx#stx-getq
      (lambda _g114259_
        (let ((_g114258_ (##length _g114259_)))
          (cond ((##fx= _g114258_ 2) (apply gx#stx-getq__0 _g114259_))
                ((##fx= _g114258_ 3) (apply gx#stx-getq__% _g114259_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g114259_))))))))
