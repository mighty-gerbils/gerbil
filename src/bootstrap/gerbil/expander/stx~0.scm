(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1771022575)
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
      (lambda _%$args172668%_
        (apply make-instance gx#identifier-wrap::t _%$args172668%_)))
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
      (lambda _%$args172665%_
        (apply make-instance gx#syntax-wrap::t _%$args172665%_)))
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
      (lambda _%$args172662%_
        (apply make-instance gx#syntax-quote::t _%$args172662%_)))
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
      (lambda (_%stx172660%_) (symbol? (gx#stx-e _%stx172660%_))))
    (define gx#identifier-quote?
      (lambda (_%stx172658%_)
        (if (##structure-direct-instance-of? _%stx172658%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx172658%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx172653%_)
        (if (##structure-direct-instance-of? _%stx172653%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx172653%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx172653%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx172648%_)
        (if (##structure-direct-instance-of? _%stx172648%_ 'gx#syntax-quote::t)
            _%stx172648%_
            (if (##structure-direct-instance-of?
                 _%stx172648%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx172648%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx172622%_)
        (if (##structure-direct-instance-of? _%stx172622%_ 'gx#syntax-wrap::t)
            (let _%lp172625%_ ((_%e172627%_
                                (##unchecked-structure-ref
                                 _%stx172622%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks172628%_
                                (cons (##unchecked-structure-ref
                                       _%stx172622%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e172627%_)
                  (let ((_%$e172631%_
                         (##type-id (##structure-type _%e172627%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e172631%_)
                        (_%lp172625%_
                         (##unchecked-structure-ref _%e172627%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e172627%_ '3 '#f '#f)
                          _%marks172628%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e172631%_)
                                (eq? 'gx#identifier-wrap::t _%$e172631%_))
                            (##unchecked-structure-ref _%e172627%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e172631%_)
                                (_%lp172625%_
                                 (##unchecked-structure-ref
                                  _%e172627%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks172628%_)
                                _%e172627%_))))
                  (if (null? _%marks172628%_)
                      _%e172627%_
                      (if (pair? _%e172627%_)
                          (cons (gx#stx-wrap
                                 (##car _%e172627%_)
                                 _%marks172628%_)
                                (gx#stx-wrap
                                 (##cdr _%e172627%_)
                                 _%marks172628%_))
                          (if (vector? _%e172627%_)
                              (vector-map
                               (lambda (_%g172639172641%_)
                                 (gx#stx-wrap
                                  _%g172639172641%_
                                  _%marks172628%_))
                               _%e172627%_)
                              (if (box? _%e172627%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e172627%_)
                                        _%marks172628%_))
                                  _%e172627%_))))))
            (if (##structure-instance-of? _%stx172622%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx172622%_ '1 '#f '#f)
                _%stx172622%_))))
    (define gx#syntax->datum
      (lambda (_%stx172615%_)
        (if (##structure-instance-of? _%stx172615%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx172615%_ '1 '#f '#f))
            (if (pair? _%stx172615%_)
                (cons (gx#syntax->datum (##car _%stx172615%_))
                      (gx#syntax->datum (##cdr _%stx172615%_)))
                (if (vector? _%stx172615%_)
                    (vector-map gx#syntax->datum _%stx172615%_)
                    (if (box? _%stx172615%_)
                        (box (gx#syntax->datum (unbox _%stx172615%_)))
                        _%stx172615%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx172549%_ _%datum172550%_ _%src172551%_ _%quote?172552%_)
        (letrec ((_%wrap-datum172554%_
                  (lambda (_%e172587%_ _%marks172588%_)
                    (_%wrap-inner172556%_
                     _%e172587%_
                     (lambda (_%g172589172591%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g172589172591%_
                        _%src172551%_
                        _%marks172588%_)))))
                 (_%wrap-quote172555%_
                  (lambda (_%e172579%_ _%ctx172580%_ _%marks172581%_)
                    (_%wrap-inner172556%_
                     _%e172579%_
                     (lambda (_%g172582172584%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g172582172584%_
                        _%src172551%_
                        _%ctx172580%_
                        _%marks172581%_)))))
                 (_%wrap-inner172556%_
                  (lambda (_%e172567%_ _%wrap-e172568%_)
                    (let _%recur172570%_ ((_%e172572%_ _%e172567%_))
                      (if (symbol? _%e172572%_)
                          (_%wrap-e172568%_ _%e172572%_)
                          (if (pair? _%e172572%_)
                              (cons (_%recur172570%_ (##car _%e172572%_))
                                    (_%recur172570%_ (##cdr _%e172572%_)))
                              (if (vector? _%e172572%_)
                                  (vector-map _%recur172570%_ _%e172572%_)
                                  (if (box? _%e172572%_)
                                      (box (_%recur172570%_
                                            (unbox _%e172572%_)))
                                      _%e172572%_)))))))
                 (_%wrap-outer172557%_
                  (lambda (_%e172565%_)
                    (if (##structure-instance-of? _%e172565%_ 'gerbil#AST::t)
                        _%e172565%_
                        (##structure gx#AST::t _%e172565%_ _%src172551%_)))))
          (if (##structure-instance-of? _%datum172550%_ 'gerbil#AST::t)
              _%datum172550%_
              (if (not _%stx172549%_)
                  (##structure gx#AST::t _%datum172550%_ _%src172551%_)
                  (if (gx#identifier? _%stx172549%_)
                      (let ((_%stx172562%_ (gx#stx-unwrap__0 _%stx172549%_)))
                        (_%wrap-outer172557%_
                         (if (##structure-direct-instance-of?
                              _%stx172562%_
                              'gx#syntax-quote::t)
                             (if _%quote?172552%_
                                 (_%wrap-quote172555%_
                                  _%datum172550%_
                                  (##unchecked-structure-ref
                                   _%stx172562%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx172562%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum172554%_
                                  _%datum172550%_
                                  (##unchecked-structure-ref
                                   _%stx172562%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum172554%_
                              _%datum172550%_
                              (##unchecked-structure-ref
                               _%stx172562%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx172549%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx172597%_ _%datum172598%_)
        (let* ((_%src172600%_ '#f) (_%quote?172602%_ '#t))
          (gx#datum->syntax__%
           _%stx172597%_
           _%datum172598%_
           _%src172600%_
           _%quote?172602%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx172604%_ _%datum172605%_ _%src172606%_)
        (let ((_%quote?172608%_ '#t))
          (gx#datum->syntax__%
           _%stx172604%_
           _%datum172605%_
           _%src172606%_
           _%quote?172608%_))))
    (define gx#datum->syntax
      (lambda _g172748_
        (let ((_g172749_ (##length _g172748_)))
          (cond ((##fx= _g172749_ 2) (apply gx#datum->syntax__0 _g172748_))
                ((##fx= _g172749_ 3) (apply gx#datum->syntax__1 _g172748_))
                ((##fx= _g172749_ 4) (apply gx#datum->syntax__% _g172748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g172748_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx172515%_ _%marks172516%_)
        (let _%lp172518%_ ((_%e172520%_ _%stx172515%_)
                           (_%marks172521%_ _%marks172516%_)
                           (_%src172522%_ (gx#stx-source _%stx172515%_)))
          (if (##structure-direct-instance-of? _%e172520%_ 'gx#syntax-wrap::t)
              (_%lp172518%_
               (##unchecked-structure-ref _%e172520%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e172520%_ '3 '#f '#f)
                _%marks172521%_)
               (##unchecked-structure-ref _%e172520%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e172520%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks172521%_)
                      _%e172520%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e172520%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e172520%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e172520%_ '3 '#f '#f)
                        _%marks172521%_)))
                  (if (##structure-direct-instance-of?
                       _%e172520%_
                       'gx#syntax-quote::t)
                      _%e172520%_
                      (if (##structure-instance-of? _%e172520%_ 'gerbil#AST::t)
                          (_%lp172518%_
                           (##unchecked-structure-ref _%e172520%_ '1 '#f '#f)
                           _%marks172521%_
                           (##unchecked-structure-ref _%e172520%_ '2 '#f '#f))
                          (if (symbol? _%e172520%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e172520%_
                               _%src172522%_
                               (reverse _%marks172521%_))
                              (if (null? _%marks172521%_)
                                  _%e172520%_
                                  (if (pair? _%e172520%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e172520%_)
                                             _%marks172521%_)
                                            (gx#stx-wrap
                                             (##cdr _%e172520%_)
                                             _%marks172521%_))
                                      (if (vector? _%e172520%_)
                                          (vector-map
                                           (lambda (_%g172531172533%_)
                                             (gx#stx-wrap
                                              _%g172531172533%_
                                              _%marks172521%_))
                                           _%e172520%_)
                                          (if (box? _%e172520%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e172520%_)
                                                    _%marks172521%_))
                                              _%e172520%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx172541%_)
        (let ((_%marks172543%_ '()))
          (gx#stx-unwrap__% _%stx172541%_ _%marks172543%_))))
    (define gx#stx-unwrap
      (lambda _g172750_
        (let ((_g172751_ (##length _g172750_)))
          (cond ((##fx= _g172751_ 1) (apply gx#stx-unwrap__0 _g172750_))
                ((##fx= _g172751_ 2) (apply gx#stx-unwrap__% _g172750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g172750_))))))
    (define gx#stx-wrap
      (lambda (_%stx172508%_ _%marks172509%_)
        (foldl__0
         (lambda (_%mark172511%_ _%stx172512%_)
           (gx#stx-apply-mark _%stx172512%_ _%mark172511%_))
         _%stx172508%_
         _%marks172509%_)))
    (define gx#stx-rewrap
      (lambda (_%stx172502%_ _%marks172503%_)
        (foldr__0
         (lambda (_%mark172505%_ _%stx172506%_)
           (gx#stx-apply-mark _%stx172506%_ _%mark172505%_))
         _%stx172502%_
         _%marks172503%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx172496%_ _%mark172497%_)
        (if (##structure-direct-instance-of? _%stx172496%_ 'gx#syntax-quote::t)
            _%stx172496%_
            (if (and (##structure-direct-instance-of?
                      _%stx172496%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark172497%_
                          (##unchecked-structure-ref
                           _%stx172496%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx172496%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx172496%_
                 (gx#stx-source _%stx172496%_)
                 _%mark172497%_)))))
    (define gx#apply-mark
      (lambda (_%mark172460%_ _%marks172461%_)
        (let* ((_%marks172462172470%_ _%marks172461%_)
               (_%else172464172478%_
                (lambda () (cons _%mark172460%_ _%marks172461%_)))
               (_%K172466172484%_
                (lambda (_%rest172481%_ _%hd172482%_)
                  (if (eq? _%mark172460%_ _%hd172482%_)
                      _%rest172481%_
                      (cons _%mark172460%_ _%marks172461%_)))))
          (if (pair? _%marks172462172470%_)
              (let ((_%hd172467172487%_ (##car _%marks172462172470%_))
                    (_%tl172468172489%_ (##cdr _%marks172462172470%_)))
                (let* ((_%hd172492%_ _%hd172467172487%_)
                       (_%rest172494%_ _%tl172468172489%_))
                  (_%K172466172484%_ _%rest172494%_ _%hd172492%_)))
              (_%else172464172478%_)))))
    (define gx#stx-e
      (lambda (_%stx172455%_)
        (if (##structure-direct-instance-of? _%stx172455%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx172455%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx172455%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx172455%_ '1 '#f '#f)
                _%stx172455%_))))
    (define gx#stx-source
      (lambda (_%stx172453%_)
        (if (##structure-instance-of? _%stx172453%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx172453%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx172447%_ _%src172448%_)
        (if (or (##structure-instance-of? _%stx172447%_ 'gerbil#AST::t)
                (not _%src172448%_))
            _%stx172447%_
            (##structure gx#AST::t _%stx172447%_ _%src172448%_))))
    (define gx#stx-datum?
      (lambda (_%stx172445%_) (gx#self-quoting? (gx#stx-e _%stx172445%_))))
    (define gx#self-quoting?
      (lambda (_%x172428%_)
        (let ((_%$e172430%_ (immediate? _%x172428%_)))
          (if _%$e172430%_
              _%$e172430%_
              (let ((_%$e172433%_ (number? _%x172428%_)))
                (if _%$e172433%_
                    _%$e172433%_
                    (let ((_%$e172436%_ (keyword? _%x172428%_)))
                      (if _%$e172436%_
                          _%$e172436%_
                          (let ((_%$e172439%_ (string? _%x172428%_)))
                            (if _%$e172439%_
                                _%$e172439%_
                                (let ((_%$e172442%_ (vector? _%x172428%_)))
                                  (if _%$e172442%_
                                      _%$e172442%_
                                      (u8vector? _%x172428%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e172426%_) (boolean? (gx#stx-e _%e172426%_))))
    (define gx#stx-keyword?
      (lambda (_%e172424%_) (keyword? (gx#stx-e _%e172424%_))))
    (define gx#stx-char? (lambda (_%e172422%_) (char? (gx#stx-e _%e172422%_))))
    (define gx#stx-number?
      (lambda (_%e172420%_) (number? (gx#stx-e _%e172420%_))))
    (define gx#stx-fixnum?
      (lambda (_%e172418%_) (fixnum? (gx#stx-e _%e172418%_))))
    (define gx#stx-string?
      (lambda (_%e172416%_) (string? (gx#stx-e _%e172416%_))))
    (define gx#stx-null? (lambda (_%e172414%_) (null? (gx#stx-e _%e172414%_))))
    (define gx#stx-pair? (lambda (_%e172412%_) (pair? (gx#stx-e _%e172412%_))))
    (define gx#stx-list?
      (lambda (_%e172374%_)
        (let* ((_%g172375172384%_ (gx#stx-e _%e172374%_))
               (_%E172378172388%_
                (lambda ()
                  (error '"No clause matching"
                         _%g172375172384%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K172380172404%_
                 (lambda (_%rest172402%_) (gx#stx-list? _%rest172402%_)))
                (_%K172379172394%_
                 (lambda (_%tail172392%_) (null? _%tail172392%_))))
            (if (pair? _%g172375172384%_)
                (let* ((_%tl172382172407%_ (##cdr _%g172375172384%_))
                       (_%rest172410%_ _%tl172382172407%_))
                  (gx#stx-list? _%rest172410%_))
                (let ((_%tail172397%_ _%g172375172384%_))
                  (null? _%tail172397%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e172367%_)
        (let* ((_%e172369%_ (gx#stx-e _%e172367%_))
               (_%$e172371%_ (pair? _%e172369%_)))
          (if _%$e172371%_ _%$e172371%_ (null? _%e172369%_)))))
    (define gx#stx-vector?
      (lambda (_%e172365%_) (vector? (gx#stx-e _%e172365%_))))
    (define gx#stx-box? (lambda (_%e172363%_) (box? (gx#stx-e _%e172363%_))))
    (define gx#stx-eq?
      (lambda (_%x172360%_ _%y172361%_)
        (eq? (gx#stx-e _%x172360%_) (gx#stx-e _%y172361%_))))
    (define gx#stx-eqv?
      (lambda (_%x172357%_ _%y172358%_)
        (eqv? (gx#stx-e _%x172357%_) (gx#stx-e _%y172358%_))))
    (define gx#stx-equal?
      (lambda (_%x172354%_ _%y172355%_)
        (equal? (gx#stx-e _%x172354%_) (gx#stx-e _%y172355%_))))
    (define gx#stx-false? (lambda (_%x172352%_) (not (gx#stx-e _%x172352%_))))
    (define gx#stx-identifier
      (lambda (_%template172349%_ . _%args172350%_)
        (gx#datum->syntax__1
         _%template172349%_
         (apply make-symbol (gx#syntax->datum _%args172350%_))
         (gx#stx-source _%template172349%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx172347%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx172347%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx172342%_)
        (if (##structure-direct-instance-of?
             _%stx172342%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx172342%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx172342%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx172342%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx172342%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx172338%_)
        (let ((_%stx172340%_ (gx#stx-unwrap__0 _%stx172338%_)))
          (if (gx#identifier-quote? _%stx172340%_)
              (##unchecked-structure-ref _%stx172340%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx172293%_)
        (let* ((_%g172294172304%_ (gx#stx-e _%stx172293%_))
               (_%else172297172312%_ (lambda () '#f)))
          (let ((_%K172300172326%_
                 (lambda (_%rest172323%_ _%hd172324%_)
                   (if (gx#identifier? _%hd172324%_)
                       (gx#identifier-list? _%rest172323%_)
                       '#f)))
                (_%K172299172317%_ (lambda () '#t)))
            (let ((_%try-match172296172320%_
                   (lambda ()
                     (if (null? _%g172294172304%_)
                         (_%K172299172317%_)
                         (_%else172297172312%_)))))
              (if (pair? _%g172294172304%_)
                  (let ((_%tl172302172331%_ (##cdr _%g172294172304%_))
                        (_%hd172301172329%_ (##car _%g172294172304%_)))
                    (let ((_%hd172334%_ _%hd172301172329%_)
                          (_%rest172336%_ _%tl172302172331%_))
                      (_%K172300172326%_ _%rest172336%_ _%hd172334%_)))
                  (_%try-match172296172320%_)))))))
    (define gx#genident__%
      (lambda (_%e172273%_ _%src172274%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src172274%_) _%src172274%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e172276%_ (gx#stx-e _%e172273%_)))
              (if (symbol? _%e172276%_) _%e172276%_ 'g)))))
         _%src172274%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e172282%_ 'g) (_%src172284%_ '#f))
          (gx#genident__% _%e172282%_ _%src172284%_))))
    (define gx#genident__1
      (lambda (_%e172286%_)
        (let ((_%src172288%_ '#f))
          (gx#genident__% _%e172286%_ _%src172288%_))))
    (define gx#genident
      (lambda _g172752_
        (let ((_g172753_ (##length _g172752_)))
          (cond ((##fx= _g172753_ 0) (apply gx#genident__0 _g172752_))
                ((##fx= _g172753_ 1) (apply gx#genident__1 _g172752_))
                ((##fx= _g172753_ 2) (apply gx#genident__% _g172752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g172752_))))))
    (define gx#gentemps
      (lambda (_%stx-lst172268%_)
        (gx#stx-map1
         (lambda (_%x172270%_) (gx#genident__% _%x172270%_ _%x172270%_))
         _%stx-lst172268%_)))
    (define gx#syntax->list
      (lambda (_%stx172266%_) (gx#stx-map1 values _%stx172266%_)))
    (define gx#stx-car
      (lambda (_%stx172263%_)
        (declare (safe))
        (car (gx#syntax-e _%stx172263%_))))
    (define gx#stx-cdr
      (lambda (_%stx172260%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx172260%_))))
    (define gx#stx-length
      (lambda (_%stx172225%_)
        (let _%lp172227%_ ((_%rest172229%_ _%stx172225%_) (_%n172230%_ '0))
          (let* ((_%g172231172239%_ (gx#stx-e _%rest172229%_))
                 (_%else172233172247%_ (lambda () _%n172230%_))
                 (_%K172235172252%_
                  (lambda (_%rest172250%_)
                    (_%lp172227%_ _%rest172250%_ (##fx+ _%n172230%_ '1)))))
            (if (pair? _%g172231172239%_)
                (let* ((_%tl172237172255%_ (##cdr _%g172231172239%_))
                       (_%rest172258%_ _%tl172237172255%_))
                  (_%K172235172252%_ _%rest172258%_))
                (_%else172233172247%_))))))
    (define gx#stx-for-each
      (lambda _g172754_
        (let ((_g172755_ (##length _g172754_)))
          (cond ((##fx= _g172755_ 2) (apply gx#stx-for-each1 _g172754_))
                ((##fx= _g172755_ 3) (apply gx#stx-for-each2 _g172754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g172754_))))))
    (define gx#stx-for-each1
      (lambda (_%f172168%_ _%stx172169%_)
        (if (procedure? _%f172168%_)
            '#!void
            (error '"expected procedure" _%f172168%_))
        (let _%lp172171%_ ((_%rest172173%_ _%stx172169%_))
          (let* ((_%g172174172184%_ (gx#syntax-e _%rest172173%_))
                 (_%else172177172192%_
                  (lambda () (_%f172168%_ _%rest172173%_))))
            (let ((_%K172180172206%_
                   (lambda (_%rest172203%_ _%hd172204%_)
                     (_%f172168%_ _%hd172204%_)
                     (_%lp172171%_ _%rest172203%_)))
                  (_%K172179172197%_ (lambda () '#!void)))
              (let ((_%try-match172176172200%_
                     (lambda ()
                       (if (null? _%g172174172184%_)
                           (_%K172179172197%_)
                           (_%else172177172192%_)))))
                (if (pair? _%g172174172184%_)
                    (let ((_%tl172182172211%_ (##cdr _%g172174172184%_))
                          (_%hd172181172209%_ (##car _%g172174172184%_)))
                      (let ((_%hd172214%_ _%hd172181172209%_)
                            (_%rest172216%_ _%tl172182172211%_))
                        (_%K172180172206%_ _%rest172216%_ _%hd172214%_)))
                    (_%try-match172176172200%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f172073%_ _%xstx172074%_ _%ystx172075%_)
        (if (procedure? _%f172073%_)
            '#!void
            (error '"expected procedure" _%f172073%_))
        (let _%lp172077%_ ((_%xrest172079%_ _%xstx172074%_)
                           (_%yrest172080%_ _%ystx172075%_))
          (let* ((_%g172081172091%_ (gx#syntax-e _%xrest172079%_))
                 (_%else172084172099%_ (lambda () '#!void)))
            (let ((_%K172087172156%_
                   (lambda (_%xrest172125%_ _%xhd172126%_)
                     (let* ((_%g172127172134%_ (gx#syntax-e _%yrest172080%_))
                            (_%E172129172138%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g172127172134%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K172130172144%_
                             (lambda (_%yrest172141%_ _%yhd172142%_)
                               (_%f172073%_ _%xhd172126%_ _%yhd172142%_)
                               (_%lp172077%_
                                _%xrest172125%_
                                _%yrest172141%_))))
                       (if (pair? _%g172127172134%_)
                           (let ((_%hd172131172147%_ (##car _%g172127172134%_))
                                 (_%tl172132172149%_
                                  (##cdr _%g172127172134%_)))
                             (let* ((_%yhd172152%_ _%hd172131172147%_)
                                    (_%yrest172154%_ _%tl172132172149%_))
                               (_%K172130172144%_
                                _%yrest172154%_
                                _%yhd172152%_)))
                           (_%E172129172138%_)))))
                  (_%K172086172119%_
                   (lambda ()
                     (let* ((_%yrest172103172108%_ _%yrest172080%_)
                            (_%E172105172112%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest172103172108%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K172106172116%_
                             (lambda ()
                               (_%f172073%_ _%xrest172079%_ _%yrest172080%_))))
                       (if (gx#stx-null? _%yrest172103172108%_)
                           (_%E172105172112%_)
                           (_%K172106172116%_))))))
              (let ((_%try-match172083172122%_
                     (lambda ()
                       (if (null? _%g172081172091%_)
                           (_%else172084172099%_)
                           (_%K172086172119%_)))))
                (if (pair? _%g172081172091%_)
                    (let ((_%tl172089172161%_ (##cdr _%g172081172091%_))
                          (_%hd172088172159%_ (##car _%g172081172091%_)))
                      (let ((_%xhd172164%_ _%hd172088172159%_)
                            (_%xrest172166%_ _%tl172089172161%_))
                        (_%K172087172156%_ _%xrest172166%_ _%xhd172164%_)))
                    (_%try-match172083172122%_))))))))
    (define gx#stx-map
      (lambda _g172756_
        (let ((_g172757_ (##length _g172756_)))
          (cond ((##fx= _g172757_ 2) (apply gx#stx-map1 _g172756_))
                ((##fx= _g172757_ 3) (apply gx#stx-map2 _g172756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g172756_))))))
    (define gx#stx-map1
      (lambda (_%f172016%_ _%stx172017%_)
        (if (procedure? _%f172016%_)
            '#!void
            (error '"expected procedure" _%f172016%_))
        (let _%recur172019%_ ((_%rest172021%_ _%stx172017%_))
          (let* ((_%g172022172032%_ (gx#syntax-e _%rest172021%_))
                 (_%else172025172040%_
                  (lambda () (_%f172016%_ _%rest172021%_))))
            (let ((_%K172028172054%_
                   (lambda (_%rest172051%_ _%hd172052%_)
                     (cons (_%f172016%_ _%hd172052%_)
                           (_%recur172019%_ _%rest172051%_))))
                  (_%K172027172045%_ (lambda () '())))
              (let ((_%try-match172024172048%_
                     (lambda ()
                       (if (null? _%g172022172032%_)
                           (_%K172027172045%_)
                           (_%else172025172040%_)))))
                (if (pair? _%g172022172032%_)
                    (let ((_%tl172030172059%_ (##cdr _%g172022172032%_))
                          (_%hd172029172057%_ (##car _%g172022172032%_)))
                      (let ((_%hd172062%_ _%hd172029172057%_)
                            (_%rest172064%_ _%tl172030172059%_))
                        (_%K172028172054%_ _%rest172064%_ _%hd172062%_)))
                    (_%try-match172024172048%_))))))))
    (define gx#stx-map2
      (lambda (_%f171921%_ _%xstx171922%_ _%ystx171923%_)
        (if (procedure? _%f171921%_)
            '#!void
            (error '"expected procedure" _%f171921%_))
        (let _%recur171925%_ ((_%xrest171927%_ _%xstx171922%_)
                              (_%yrest171928%_ _%ystx171923%_))
          (let* ((_%g171929171939%_ (gx#syntax-e _%xrest171927%_))
                 (_%else171932171947%_ (lambda () '())))
            (let ((_%K171935172004%_
                   (lambda (_%xrest171973%_ _%xhd171974%_)
                     (let* ((_%g171975171982%_ (gx#syntax-e _%yrest171928%_))
                            (_%E171977171986%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g171975171982%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K171978171992%_
                             (lambda (_%yrest171989%_ _%yhd171990%_)
                               (cons (_%f171921%_ _%xhd171974%_ _%yhd171990%_)
                                     (_%recur171925%_
                                      _%xrest171973%_
                                      _%yrest171989%_)))))
                       (if (pair? _%g171975171982%_)
                           (let ((_%hd171979171995%_ (##car _%g171975171982%_))
                                 (_%tl171980171997%_
                                  (##cdr _%g171975171982%_)))
                             (let* ((_%yhd172000%_ _%hd171979171995%_)
                                    (_%yrest172002%_ _%tl171980171997%_))
                               (_%K171978171992%_
                                _%yrest172002%_
                                _%yhd172000%_)))
                           (_%E171977171986%_)))))
                  (_%K171934171967%_
                   (lambda ()
                     (let* ((_%yrest171951171956%_ _%yrest171928%_)
                            (_%E171953171960%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest171951171956%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K171954171964%_
                             (lambda ()
                               (_%f171921%_ _%xrest171927%_ _%yrest171928%_))))
                       (if (gx#stx-null? _%yrest171951171956%_)
                           (_%E171953171960%_)
                           (_%K171954171964%_))))))
              (let ((_%try-match171931171970%_
                     (lambda ()
                       (if (null? _%g171929171939%_)
                           (_%else171932171947%_)
                           (_%K171934171967%_)))))
                (if (pair? _%g171929171939%_)
                    (let ((_%tl171937172009%_ (##cdr _%g171929171939%_))
                          (_%hd171936172007%_ (##car _%g171929171939%_)))
                      (let ((_%xhd172012%_ _%hd171936172007%_)
                            (_%xrest172014%_ _%tl171937172009%_))
                        (_%K171935172004%_ _%xrest172014%_ _%xhd172012%_)))
                    (_%try-match171931171970%_))))))))
    (define gx#stx-andmap
      (lambda (_%f171871%_ _%stx171872%_)
        (if (procedure? _%f171871%_)
            '#!void
            (error '"expected procedure" _%f171871%_))
        (let _%lp171874%_ ((_%rest171876%_ _%stx171872%_))
          (let* ((_%g171877171887%_ (gx#syntax-e _%rest171876%_))
                 (_%else171880171895%_
                  (lambda () (_%f171871%_ _%rest171876%_))))
            (let ((_%K171883171909%_
                   (lambda (_%rest171906%_ _%hd171907%_)
                     (if (_%f171871%_ _%hd171907%_)
                         (_%lp171874%_ _%rest171906%_)
                         '#f)))
                  (_%K171882171900%_ (lambda () '#t)))
              (let ((_%try-match171879171903%_
                     (lambda ()
                       (if (null? _%g171877171887%_)
                           (_%K171882171900%_)
                           (_%else171880171895%_)))))
                (if (pair? _%g171877171887%_)
                    (let ((_%tl171885171914%_ (##cdr _%g171877171887%_))
                          (_%hd171884171912%_ (##car _%g171877171887%_)))
                      (let ((_%hd171917%_ _%hd171884171912%_)
                            (_%rest171919%_ _%tl171885171914%_))
                        (_%K171883171909%_ _%rest171919%_ _%hd171917%_)))
                    (_%try-match171879171903%_))))))))
    (define gx#stx-ormap
      (lambda (_%f171818%_ _%stx171819%_)
        (if (procedure? _%f171818%_)
            '#!void
            (error '"expected procedure" _%f171818%_))
        (let _%lp171821%_ ((_%rest171823%_ _%stx171819%_))
          (let* ((_%g171824171834%_ (gx#syntax-e _%rest171823%_))
                 (_%else171827171842%_
                  (lambda () (_%f171818%_ _%rest171823%_))))
            (let ((_%K171830171859%_
                   (lambda (_%rest171853%_ _%hd171854%_)
                     (let ((_%$e171856%_ (_%f171818%_ _%hd171854%_)))
                       (if _%$e171856%_
                           _%$e171856%_
                           (_%lp171821%_ _%rest171853%_)))))
                  (_%K171829171847%_ (lambda () '#f)))
              (let ((_%try-match171826171850%_
                     (lambda ()
                       (if (null? _%g171824171834%_)
                           (_%K171829171847%_)
                           (_%else171827171842%_)))))
                (if (pair? _%g171824171834%_)
                    (let ((_%tl171832171864%_ (##cdr _%g171824171834%_))
                          (_%hd171831171862%_ (##car _%g171824171834%_)))
                      (let ((_%hd171867%_ _%hd171831171862%_)
                            (_%rest171869%_ _%tl171832171864%_))
                        (_%K171830171859%_ _%rest171869%_ _%hd171867%_)))
                    (_%try-match171826171850%_))))))))
    (define gx#stx-foldl
      (lambda (_%f171766%_ _%iv171767%_ _%stx171768%_)
        (if (procedure? _%f171766%_)
            '#!void
            (error '"expected procedure" _%f171766%_))
        (let _%lp171770%_ ((_%r171772%_ _%iv171767%_)
                           (_%rest171773%_ _%stx171768%_))
          (let* ((_%g171774171784%_ (gx#syntax-e _%rest171773%_))
                 (_%else171777171792%_
                  (lambda () (_%f171766%_ _%rest171773%_ _%r171772%_))))
            (let ((_%K171780171806%_
                   (lambda (_%rest171803%_ _%hd171804%_)
                     (_%lp171770%_
                      (_%f171766%_ _%hd171804%_ _%r171772%_)
                      _%rest171803%_)))
                  (_%K171779171797%_ (lambda () _%r171772%_)))
              (let ((_%try-match171776171800%_
                     (lambda ()
                       (if (null? _%g171774171784%_)
                           (_%K171779171797%_)
                           (_%else171777171792%_)))))
                (if (pair? _%g171774171784%_)
                    (let ((_%tl171782171811%_ (##cdr _%g171774171784%_))
                          (_%hd171781171809%_ (##car _%g171774171784%_)))
                      (let ((_%hd171814%_ _%hd171781171809%_)
                            (_%rest171816%_ _%tl171782171811%_))
                        (_%K171780171806%_ _%rest171816%_ _%hd171814%_)))
                    (_%try-match171776171800%_))))))))
    (define gx#stx-foldr
      (lambda (_%f171715%_ _%iv171716%_ _%stx171717%_)
        (if (procedure? _%f171715%_)
            '#!void
            (error '"expected procedure" _%f171715%_))
        (let _%recur171719%_ ((_%rest171721%_ _%stx171717%_))
          (let* ((_%g171722171732%_ (gx#syntax-e _%rest171721%_))
                 (_%else171725171740%_
                  (lambda () (_%f171715%_ _%rest171721%_ _%iv171716%_))))
            (let ((_%K171728171754%_
                   (lambda (_%rest171751%_ _%hd171752%_)
                     (_%f171715%_
                      _%hd171752%_
                      (_%recur171719%_ _%rest171751%_))))
                  (_%K171727171745%_ (lambda () _%iv171716%_)))
              (let ((_%try-match171724171748%_
                     (lambda ()
                       (if (null? _%g171722171732%_)
                           (_%K171727171745%_)
                           (_%else171725171740%_)))))
                (if (pair? _%g171722171732%_)
                    (let ((_%tl171730171759%_ (##cdr _%g171722171732%_))
                          (_%hd171729171757%_ (##car _%g171722171732%_)))
                      (let ((_%hd171762%_ _%hd171729171757%_)
                            (_%rest171764%_ _%tl171730171759%_))
                        (_%K171728171754%_ _%rest171764%_ _%hd171762%_)))
                    (_%try-match171724171748%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx171713%_) (gx#stx-foldl cons '() _%stx171713%_)))
    (define gx#stx-last
      (lambda (_%stx171674%_)
        (let _%lp171676%_ ((_%rest171678%_ _%stx171674%_))
          (let* ((_%g171679171687%_ (gx#syntax-e _%rest171678%_))
                 (_%else171681171695%_ (lambda () _%rest171678%_))
                 (_%K171683171701%_
                  (lambda (_%rest171698%_ _%hd171699%_)
                    (if (gx#stx-null? _%rest171698%_)
                        _%hd171699%_
                        (_%lp171676%_ _%rest171698%_)))))
            (if (pair? _%g171679171687%_)
                (let ((_%hd171684171704%_ (##car _%g171679171687%_))
                      (_%tl171685171706%_ (##cdr _%g171679171687%_)))
                  (let* ((_%hd171709%_ _%hd171684171704%_)
                         (_%rest171711%_ _%tl171685171706%_))
                    (_%K171683171701%_ _%rest171711%_ _%hd171709%_)))
                (_%else171681171695%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx171645%_)
        (let _%lp171647%_ ((_%hd171649%_ _%stx171645%_))
          (let* ((_%g171650171657%_ (gx#syntax-e _%hd171649%_))
                 (_%E171652171661%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g171650171657%_
                           '([_ . rest]))
                    '#!void))
                 (_%K171653171666%_
                  (lambda (_%rest171664%_)
                    (if (gx#stx-pair? _%rest171664%_)
                        (_%lp171647%_ _%rest171664%_)
                        _%hd171649%_))))
            (if (pair? _%g171650171657%_)
                (let* ((_%tl171655171669%_ (##cdr _%g171650171657%_))
                       (_%rest171672%_ _%tl171655171669%_))
                  (_%K171653171666%_ _%rest171672%_))
                (_%E171652171661%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx171614%_ _%k171615%_)
        (let _%lp171617%_ ((_%rest171619%_ _%stx171614%_)
                           (_%k171620%_ _%k171615%_))
          (if (fxpositive? _%k171620%_)
              (let* ((_%g171621171628%_ (gx#syntax-e _%rest171619%_))
                     (_%E171623171632%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g171621171628%_
                               '([_ . rest]))
                        '#!void))
                     (_%K171624171637%_
                      (lambda (_%rest171635%_)
                        (_%lp171617%_ _%rest171635%_ (##fx- _%k171620%_ '1)))))
                (if (pair? _%g171621171628%_)
                    (let* ((_%tl171626171640%_ (##cdr _%g171621171628%_))
                           (_%rest171643%_ _%tl171626171640%_))
                      (_%K171624171637%_ _%rest171643%_))
                    (_%E171623171632%_)))
              _%rest171619%_))))
    (define gx#stx-list-ref
      (lambda (_%stx171611%_ _%k171612%_)
        (gx#stx-car (gx#stx-list-tail _%stx171611%_ _%k171612%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx171523%_ _%key?171524%_)
        (if (procedure? _%key?171524%_)
            '#!void
            (error '"expected procedure" _%key?171524%_))
        (let _%lp171526%_ ((_%rest171528%_ _%stx171523%_))
          (let* ((_%g171529171539%_ (gx#stx-e _%rest171528%_))
                 (_%else171532171547%_ (lambda () '#f)))
            (let ((_%K171535171589%_
                   (lambda (_%rest171558%_ _%hd171559%_)
                     (if (_%key?171524%_ _%hd171559%_)
                         (let* ((_%g171560171568%_ (gx#stx-e _%rest171558%_))
                                (_%else171562171576%_ (lambda () '#f))
                                (_%K171564171581%_
                                 (lambda (_%rest171579%_)
                                   (_%lp171526%_ _%rest171579%_))))
                           (if (pair? _%g171560171568%_)
                               (let* ((_%tl171566171584%_
                                       (##cdr _%g171560171568%_))
                                      (_%rest171587%_ _%tl171566171584%_))
                                 (_%lp171526%_ _%rest171587%_))
                               (_%else171562171576%_)))
                         '#f)))
                  (_%K171534171552%_ (lambda () '#t)))
              (let ((_%try-match171531171555%_
                     (lambda ()
                       (if (null? _%g171529171539%_)
                           (_%K171534171552%_)
                           (_%else171532171547%_)))))
                (if (pair? _%g171529171539%_)
                    (let ((_%tl171537171594%_ (##cdr _%g171529171539%_))
                          (_%hd171536171592%_ (##car _%g171529171539%_)))
                      (let ((_%hd171597%_ _%hd171536171592%_)
                            (_%rest171599%_ _%tl171537171594%_))
                        (_%K171535171589%_ _%rest171599%_ _%hd171597%_)))
                    (_%try-match171531171555%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx171604%_)
        (let ((_%key?171606%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx171604%_ _%key?171606%_))))
    (define gx#stx-plist?
      (lambda _g172758_
        (let ((_g172759_ (##length _g172758_)))
          (cond ((##fx= _g172759_ 1) (apply gx#stx-plist?__0 _g172758_))
                ((##fx= _g172759_ 2) (apply gx#stx-plist?__% _g172758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g172758_))))))
    (define gx#stx-getq__%
      (lambda (_%key171441%_ _%stx171442%_ _%key=?171443%_)
        (if (procedure? _%key=?171443%_)
            '#!void
            (error '"expected procedure" _%key=?171443%_))
        (let _%lp171445%_ ((_%rest171447%_ _%stx171442%_))
          (let* ((_%g171448171456%_ (gx#syntax-e _%rest171447%_))
                 (_%else171450171464%_ (lambda () '#f))
                 (_%K171452171498%_
                  (lambda (_%rest171467%_ _%hd171468%_)
                    (let* ((_%g171469171476%_ (gx#syntax-e _%rest171467%_))
                           (_%E171471171480%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g171469171476%_
                                     '([val . rest]))
                              '#!void))
                           (_%K171472171486%_
                            (lambda (_%rest171483%_ _%val171484%_)
                              (if (_%key=?171443%_ _%hd171468%_ _%key171441%_)
                                  _%val171484%_
                                  (_%lp171445%_ _%rest171483%_)))))
                      (if (pair? _%g171469171476%_)
                          (let ((_%hd171473171489%_ (##car _%g171469171476%_))
                                (_%tl171474171491%_ (##cdr _%g171469171476%_)))
                            (let* ((_%val171494%_ _%hd171473171489%_)
                                   (_%rest171496%_ _%tl171474171491%_))
                              (_%K171472171486%_
                               _%rest171496%_
                               _%val171494%_)))
                          (_%E171471171480%_))))))
            (if (pair? _%g171448171456%_)
                (let ((_%hd171453171501%_ (##car _%g171448171456%_))
                      (_%tl171454171503%_ (##cdr _%g171448171456%_)))
                  (let* ((_%hd171506%_ _%hd171453171501%_)
                         (_%rest171508%_ _%tl171454171503%_))
                    (_%K171452171498%_ _%rest171508%_ _%hd171506%_)))
                (_%else171450171464%_))))))
    (define gx#stx-getq__0
      (lambda (_%key171513%_ _%stx171514%_)
        (let ((_%key=?171516%_ gx#stx-eq?))
          (gx#stx-getq__% _%key171513%_ _%stx171514%_ _%key=?171516%_))))
    (define gx#stx-getq
      (lambda _g172760_
        (let ((_g172761_ (##length _g172760_)))
          (cond ((##fx= _g172761_ 2) (apply gx#stx-getq__0 _g172760_))
                ((##fx= _g172761_ 3) (apply gx#stx-getq__% _g172760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g172760_))))))))
