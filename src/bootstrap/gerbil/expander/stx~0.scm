(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1756721295)
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
      (lambda _%$args126717%_
        (apply make-instance gx#identifier-wrap::t _%$args126717%_)))
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
      (lambda _%$args126714%_
        (apply make-instance gx#syntax-wrap::t _%$args126714%_)))
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
      (lambda _%$args126711%_
        (apply make-instance gx#syntax-quote::t _%$args126711%_)))
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
      (lambda (_%stx126709%_) (symbol? (gx#stx-e _%stx126709%_))))
    (define gx#identifier-quote?
      (lambda (_%stx126707%_)
        (if (##structure-direct-instance-of? _%stx126707%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx126707%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx126702%_)
        (if (##structure-direct-instance-of? _%stx126702%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx126702%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx126702%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx126697%_)
        (if (##structure-direct-instance-of? _%stx126697%_ 'gx#syntax-quote::t)
            _%stx126697%_
            (if (##structure-direct-instance-of?
                 _%stx126697%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx126697%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx126671%_)
        (if (##structure-direct-instance-of? _%stx126671%_ 'gx#syntax-wrap::t)
            (let _%lp126674%_ ((_%e126676%_
                                (##unchecked-structure-ref
                                 _%stx126671%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks126677%_
                                (cons (##unchecked-structure-ref
                                       _%stx126671%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e126676%_)
                  (let ((_%$e126680%_
                         (##type-id (##structure-type _%e126676%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e126680%_)
                        (_%lp126674%_
                         (##unchecked-structure-ref _%e126676%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e126676%_ '3 '#f '#f)
                          _%marks126677%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e126680%_)
                                (eq? 'gx#identifier-wrap::t _%$e126680%_))
                            (##unchecked-structure-ref _%e126676%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e126680%_)
                                (_%lp126674%_
                                 (##unchecked-structure-ref
                                  _%e126676%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks126677%_)
                                _%e126676%_))))
                  (if (null? _%marks126677%_)
                      _%e126676%_
                      (if (pair? _%e126676%_)
                          (cons (gx#stx-wrap
                                 (##car _%e126676%_)
                                 _%marks126677%_)
                                (gx#stx-wrap
                                 (##cdr _%e126676%_)
                                 _%marks126677%_))
                          (if (vector? _%e126676%_)
                              (vector-map
                               (lambda (_%g126688126690%_)
                                 (gx#stx-wrap
                                  _%g126688126690%_
                                  _%marks126677%_))
                               _%e126676%_)
                              (if (box? _%e126676%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e126676%_)
                                        _%marks126677%_))
                                  _%e126676%_))))))
            (if (##structure-instance-of? _%stx126671%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx126671%_ '1 '#f '#f)
                _%stx126671%_))))
    (define gx#syntax->datum
      (lambda (_%stx126664%_)
        (if (##structure-instance-of? _%stx126664%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx126664%_ '1 '#f '#f))
            (if (pair? _%stx126664%_)
                (cons (gx#syntax->datum (##car _%stx126664%_))
                      (gx#syntax->datum (##cdr _%stx126664%_)))
                (if (vector? _%stx126664%_)
                    (vector-map gx#syntax->datum _%stx126664%_)
                    (if (box? _%stx126664%_)
                        (box (gx#syntax->datum (unbox _%stx126664%_)))
                        _%stx126664%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx126598%_ _%datum126599%_ _%src126600%_ _%quote?126601%_)
        (letrec ((_%wrap-datum126603%_
                  (lambda (_%e126636%_ _%marks126637%_)
                    (_%wrap-inner126605%_
                     _%e126636%_
                     (lambda (_%g126638126640%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g126638126640%_
                        _%src126600%_
                        _%marks126637%_)))))
                 (_%wrap-quote126604%_
                  (lambda (_%e126628%_ _%ctx126629%_ _%marks126630%_)
                    (_%wrap-inner126605%_
                     _%e126628%_
                     (lambda (_%g126631126633%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g126631126633%_
                        _%src126600%_
                        _%ctx126629%_
                        _%marks126630%_)))))
                 (_%wrap-inner126605%_
                  (lambda (_%e126616%_ _%wrap-e126617%_)
                    (let _%recur126619%_ ((_%e126621%_ _%e126616%_))
                      (if (symbol? _%e126621%_)
                          (_%wrap-e126617%_ _%e126621%_)
                          (if (pair? _%e126621%_)
                              (cons (_%recur126619%_ (##car _%e126621%_))
                                    (_%recur126619%_ (##cdr _%e126621%_)))
                              (if (vector? _%e126621%_)
                                  (vector-map _%recur126619%_ _%e126621%_)
                                  (if (box? _%e126621%_)
                                      (box (_%recur126619%_
                                            (unbox _%e126621%_)))
                                      _%e126621%_)))))))
                 (_%wrap-outer126606%_
                  (lambda (_%e126614%_)
                    (if (##structure-instance-of? _%e126614%_ 'gerbil#AST::t)
                        _%e126614%_
                        (##structure gx#AST::t _%e126614%_ _%src126600%_)))))
          (if (##structure-instance-of? _%datum126599%_ 'gerbil#AST::t)
              _%datum126599%_
              (if (not _%stx126598%_)
                  (##structure gx#AST::t _%datum126599%_ _%src126600%_)
                  (if (gx#identifier? _%stx126598%_)
                      (let ((_%stx126611%_ (gx#stx-unwrap__0 _%stx126598%_)))
                        (_%wrap-outer126606%_
                         (if (##structure-direct-instance-of?
                              _%stx126611%_
                              'gx#syntax-quote::t)
                             (if _%quote?126601%_
                                 (_%wrap-quote126604%_
                                  _%datum126599%_
                                  (##unchecked-structure-ref
                                   _%stx126611%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx126611%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum126603%_
                                  _%datum126599%_
                                  (##unchecked-structure-ref
                                   _%stx126611%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum126603%_
                              _%datum126599%_
                              (##unchecked-structure-ref
                               _%stx126611%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx126598%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx126646%_ _%datum126647%_)
        (let* ((_%src126649%_ '#f) (_%quote?126651%_ '#t))
          (gx#datum->syntax__%
           _%stx126646%_
           _%datum126647%_
           _%src126649%_
           _%quote?126651%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx126653%_ _%datum126654%_ _%src126655%_)
        (let ((_%quote?126657%_ '#t))
          (gx#datum->syntax__%
           _%stx126653%_
           _%datum126654%_
           _%src126655%_
           _%quote?126657%_))))
    (define gx#datum->syntax
      (lambda _g126797_
        (let ((_g126798_ (##length _g126797_)))
          (cond ((##fx= _g126798_ 2) (apply gx#datum->syntax__0 _g126797_))
                ((##fx= _g126798_ 3) (apply gx#datum->syntax__1 _g126797_))
                ((##fx= _g126798_ 4) (apply gx#datum->syntax__% _g126797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g126797_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx126564%_ _%marks126565%_)
        (let _%lp126567%_ ((_%e126569%_ _%stx126564%_)
                           (_%marks126570%_ _%marks126565%_)
                           (_%src126571%_ (gx#stx-source _%stx126564%_)))
          (if (##structure-direct-instance-of? _%e126569%_ 'gx#syntax-wrap::t)
              (_%lp126567%_
               (##unchecked-structure-ref _%e126569%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e126569%_ '3 '#f '#f)
                _%marks126570%_)
               (##unchecked-structure-ref _%e126569%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e126569%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks126570%_)
                      _%e126569%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e126569%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e126569%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e126569%_ '3 '#f '#f)
                        _%marks126570%_)))
                  (if (##structure-direct-instance-of?
                       _%e126569%_
                       'gx#syntax-quote::t)
                      _%e126569%_
                      (if (##structure-instance-of? _%e126569%_ 'gerbil#AST::t)
                          (_%lp126567%_
                           (##unchecked-structure-ref _%e126569%_ '1 '#f '#f)
                           _%marks126570%_
                           (##unchecked-structure-ref _%e126569%_ '2 '#f '#f))
                          (if (symbol? _%e126569%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e126569%_
                               _%src126571%_
                               (reverse _%marks126570%_))
                              (if (null? _%marks126570%_)
                                  _%e126569%_
                                  (if (pair? _%e126569%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e126569%_)
                                             _%marks126570%_)
                                            (gx#stx-wrap
                                             (##cdr _%e126569%_)
                                             _%marks126570%_))
                                      (if (vector? _%e126569%_)
                                          (vector-map
                                           (lambda (_%g126580126582%_)
                                             (gx#stx-wrap
                                              _%g126580126582%_
                                              _%marks126570%_))
                                           _%e126569%_)
                                          (if (box? _%e126569%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e126569%_)
                                                    _%marks126570%_))
                                              _%e126569%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx126590%_)
        (let ((_%marks126592%_ '()))
          (gx#stx-unwrap__% _%stx126590%_ _%marks126592%_))))
    (define gx#stx-unwrap
      (lambda _g126799_
        (let ((_g126800_ (##length _g126799_)))
          (cond ((##fx= _g126800_ 1) (apply gx#stx-unwrap__0 _g126799_))
                ((##fx= _g126800_ 2) (apply gx#stx-unwrap__% _g126799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g126799_))))))
    (define gx#stx-wrap
      (lambda (_%stx126557%_ _%marks126558%_)
        (__foldl1
         (lambda (_%mark126560%_ _%stx126561%_)
           (gx#stx-apply-mark _%stx126561%_ _%mark126560%_))
         _%stx126557%_
         _%marks126558%_)))
    (define gx#stx-rewrap
      (lambda (_%stx126551%_ _%marks126552%_)
        (__foldr1
         (lambda (_%mark126554%_ _%stx126555%_)
           (gx#stx-apply-mark _%stx126555%_ _%mark126554%_))
         _%stx126551%_
         _%marks126552%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx126545%_ _%mark126546%_)
        (if (##structure-direct-instance-of? _%stx126545%_ 'gx#syntax-quote::t)
            _%stx126545%_
            (if (and (##structure-direct-instance-of?
                      _%stx126545%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark126546%_
                          (##unchecked-structure-ref
                           _%stx126545%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx126545%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx126545%_
                 (gx#stx-source _%stx126545%_)
                 _%mark126546%_)))))
    (define gx#apply-mark
      (lambda (_%mark126509%_ _%marks126510%_)
        (let* ((_%marks126511126519%_ _%marks126510%_)
               (_%else126513126527%_
                (lambda () (cons _%mark126509%_ _%marks126510%_)))
               (_%K126515126533%_
                (lambda (_%rest126530%_ _%hd126531%_)
                  (if (eq? _%mark126509%_ _%hd126531%_)
                      _%rest126530%_
                      (cons _%mark126509%_ _%marks126510%_)))))
          (if (pair? _%marks126511126519%_)
              (let ((_%hd126516126536%_ (##car _%marks126511126519%_))
                    (_%tl126517126538%_ (##cdr _%marks126511126519%_)))
                (let* ((_%hd126541%_ _%hd126516126536%_)
                       (_%rest126543%_ _%tl126517126538%_))
                  (_%K126515126533%_ _%rest126543%_ _%hd126541%_)))
              (_%else126513126527%_)))))
    (define gx#stx-e
      (lambda (_%stx126504%_)
        (if (##structure-direct-instance-of? _%stx126504%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx126504%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx126504%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx126504%_ '1 '#f '#f)
                _%stx126504%_))))
    (define gx#stx-source
      (lambda (_%stx126502%_)
        (if (##structure-instance-of? _%stx126502%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx126502%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx126496%_ _%src126497%_)
        (if (or (##structure-instance-of? _%stx126496%_ 'gerbil#AST::t)
                (not _%src126497%_))
            _%stx126496%_
            (##structure gx#AST::t _%stx126496%_ _%src126497%_))))
    (define gx#stx-datum?
      (lambda (_%stx126494%_) (gx#self-quoting? (gx#stx-e _%stx126494%_))))
    (define gx#self-quoting?
      (lambda (_%x126477%_)
        (let ((_%$e126479%_ (immediate? _%x126477%_)))
          (if _%$e126479%_
              _%$e126479%_
              (let ((_%$e126482%_ (number? _%x126477%_)))
                (if _%$e126482%_
                    _%$e126482%_
                    (let ((_%$e126485%_ (keyword? _%x126477%_)))
                      (if _%$e126485%_
                          _%$e126485%_
                          (let ((_%$e126488%_ (string? _%x126477%_)))
                            (if _%$e126488%_
                                _%$e126488%_
                                (let ((_%$e126491%_ (vector? _%x126477%_)))
                                  (if _%$e126491%_
                                      _%$e126491%_
                                      (u8vector? _%x126477%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e126475%_) (boolean? (gx#stx-e _%e126475%_))))
    (define gx#stx-keyword?
      (lambda (_%e126473%_) (keyword? (gx#stx-e _%e126473%_))))
    (define gx#stx-char? (lambda (_%e126471%_) (char? (gx#stx-e _%e126471%_))))
    (define gx#stx-number?
      (lambda (_%e126469%_) (number? (gx#stx-e _%e126469%_))))
    (define gx#stx-fixnum?
      (lambda (_%e126467%_) (fixnum? (gx#stx-e _%e126467%_))))
    (define gx#stx-string?
      (lambda (_%e126465%_) (string? (gx#stx-e _%e126465%_))))
    (define gx#stx-null? (lambda (_%e126463%_) (null? (gx#stx-e _%e126463%_))))
    (define gx#stx-pair? (lambda (_%e126461%_) (pair? (gx#stx-e _%e126461%_))))
    (define gx#stx-list?
      (lambda (_%e126423%_)
        (let* ((_%g126424126433%_ (gx#stx-e _%e126423%_))
               (_%E126427126437%_
                (lambda ()
                  (error '"No clause matching"
                         _%g126424126433%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K126429126453%_
                 (lambda (_%rest126451%_) (gx#stx-list? _%rest126451%_)))
                (_%K126428126443%_
                 (lambda (_%tail126441%_) (null? _%tail126441%_))))
            (if (pair? _%g126424126433%_)
                (let* ((_%tl126431126456%_ (##cdr _%g126424126433%_))
                       (_%rest126459%_ _%tl126431126456%_))
                  (gx#stx-list? _%rest126459%_))
                (let ((_%tail126446%_ _%g126424126433%_))
                  (null? _%tail126446%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e126416%_)
        (let* ((_%e126418%_ (gx#stx-e _%e126416%_))
               (_%$e126420%_ (pair? _%e126418%_)))
          (if _%$e126420%_ _%$e126420%_ (null? _%e126418%_)))))
    (define gx#stx-vector?
      (lambda (_%e126414%_) (vector? (gx#stx-e _%e126414%_))))
    (define gx#stx-box? (lambda (_%e126412%_) (box? (gx#stx-e _%e126412%_))))
    (define gx#stx-eq?
      (lambda (_%x126409%_ _%y126410%_)
        (eq? (gx#stx-e _%x126409%_) (gx#stx-e _%y126410%_))))
    (define gx#stx-eqv?
      (lambda (_%x126406%_ _%y126407%_)
        (eqv? (gx#stx-e _%x126406%_) (gx#stx-e _%y126407%_))))
    (define gx#stx-equal?
      (lambda (_%x126403%_ _%y126404%_)
        (equal? (gx#stx-e _%x126403%_) (gx#stx-e _%y126404%_))))
    (define gx#stx-false? (lambda (_%x126401%_) (not (gx#stx-e _%x126401%_))))
    (define gx#stx-identifier
      (lambda (_%template126398%_ . _%args126399%_)
        (gx#datum->syntax__1
         _%template126398%_
         (apply make-symbol (gx#syntax->datum _%args126399%_))
         (gx#stx-source _%template126398%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx126396%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx126396%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx126391%_)
        (if (##structure-direct-instance-of?
             _%stx126391%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx126391%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx126391%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx126391%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx126391%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx126387%_)
        (let ((_%stx126389%_ (gx#stx-unwrap__0 _%stx126387%_)))
          (if (gx#identifier-quote? _%stx126389%_)
              (##unchecked-structure-ref _%stx126389%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx126342%_)
        (let* ((_%g126343126353%_ (gx#stx-e _%stx126342%_))
               (_%else126346126361%_ (lambda () '#f)))
          (let ((_%K126349126375%_
                 (lambda (_%rest126372%_ _%hd126373%_)
                   (if (gx#identifier? _%hd126373%_)
                       (gx#identifier-list? _%rest126372%_)
                       '#f)))
                (_%K126348126366%_ (lambda () '#t)))
            (let ((_%try-match126345126369%_
                   (lambda ()
                     (if (null? _%g126343126353%_)
                         (_%K126348126366%_)
                         (_%else126346126361%_)))))
              (if (pair? _%g126343126353%_)
                  (let ((_%tl126351126380%_ (##cdr _%g126343126353%_))
                        (_%hd126350126378%_ (##car _%g126343126353%_)))
                    (let ((_%hd126383%_ _%hd126350126378%_)
                          (_%rest126385%_ _%tl126351126380%_))
                      (_%K126349126375%_ _%rest126385%_ _%hd126383%_)))
                  (_%try-match126345126369%_)))))))
    (define gx#genident__%
      (lambda (_%e126319%_ _%src126320%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e126322%_ (gx#stx-e _%e126319%_)))
                   (if (interned-symbol? _%e126322%_) _%e126322%_ 'g)))
         (let ((_%$e126324%_ (gx#stx-source _%e126319%_)))
           (if _%$e126324%_ _%$e126324%_ _%src126320%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e126331%_ 'g) (_%src126333%_ '#f))
          (gx#genident__% _%e126331%_ _%src126333%_))))
    (define gx#genident__1
      (lambda (_%e126335%_)
        (let ((_%src126337%_ '#f))
          (gx#genident__% _%e126335%_ _%src126337%_))))
    (define gx#genident
      (lambda _g126801_
        (let ((_g126802_ (##length _g126801_)))
          (cond ((##fx= _g126802_ 0) (apply gx#genident__0 _g126801_))
                ((##fx= _g126802_ 1) (apply gx#genident__1 _g126801_))
                ((##fx= _g126802_ 2) (apply gx#genident__% _g126801_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g126801_))))))
    (define gx#gentemps
      (lambda (_%stx-lst126316%_) (gx#stx-map1 gx#genident _%stx-lst126316%_)))
    (define gx#syntax->list
      (lambda (_%stx126314%_) (gx#stx-map1 values _%stx126314%_)))
    (define gx#stx-car
      (lambda (_%stx126311%_)
        (declare (safe))
        (car (gx#syntax-e _%stx126311%_))))
    (define gx#stx-cdr
      (lambda (_%stx126308%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx126308%_))))
    (define gx#stx-length
      (lambda (_%stx126273%_)
        (let _%lp126275%_ ((_%rest126277%_ _%stx126273%_) (_%n126278%_ '0))
          (let* ((_%g126279126287%_ (gx#stx-e _%rest126277%_))
                 (_%else126281126295%_ (lambda () _%n126278%_))
                 (_%K126283126300%_
                  (lambda (_%rest126298%_)
                    (_%lp126275%_ _%rest126298%_ (##fx+ _%n126278%_ '1)))))
            (if (pair? _%g126279126287%_)
                (let* ((_%tl126285126303%_ (##cdr _%g126279126287%_))
                       (_%rest126306%_ _%tl126285126303%_))
                  (_%K126283126300%_ _%rest126306%_))
                (_%else126281126295%_))))))
    (define gx#stx-for-each
      (lambda _g126803_
        (let ((_g126804_ (##length _g126803_)))
          (cond ((##fx= _g126804_ 2) (apply gx#stx-for-each1 _g126803_))
                ((##fx= _g126804_ 3) (apply gx#stx-for-each2 _g126803_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g126803_))))))
    (define gx#stx-for-each1
      (lambda (_%f126216%_ _%stx126217%_)
        (if (procedure? _%f126216%_)
            '#!void
            (error '"expected procedure" _%f126216%_))
        (let _%lp126219%_ ((_%rest126221%_ _%stx126217%_))
          (let* ((_%g126222126232%_ (gx#syntax-e _%rest126221%_))
                 (_%else126225126240%_
                  (lambda () (_%f126216%_ _%rest126221%_))))
            (let ((_%K126228126254%_
                   (lambda (_%rest126251%_ _%hd126252%_)
                     (_%f126216%_ _%hd126252%_)
                     (_%lp126219%_ _%rest126251%_)))
                  (_%K126227126245%_ (lambda () '#!void)))
              (let ((_%try-match126224126248%_
                     (lambda ()
                       (if (null? _%g126222126232%_)
                           (_%K126227126245%_)
                           (_%else126225126240%_)))))
                (if (pair? _%g126222126232%_)
                    (let ((_%tl126230126259%_ (##cdr _%g126222126232%_))
                          (_%hd126229126257%_ (##car _%g126222126232%_)))
                      (let ((_%hd126262%_ _%hd126229126257%_)
                            (_%rest126264%_ _%tl126230126259%_))
                        (_%K126228126254%_ _%rest126264%_ _%hd126262%_)))
                    (_%try-match126224126248%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f126121%_ _%xstx126122%_ _%ystx126123%_)
        (if (procedure? _%f126121%_)
            '#!void
            (error '"expected procedure" _%f126121%_))
        (let _%lp126125%_ ((_%xrest126127%_ _%xstx126122%_)
                           (_%yrest126128%_ _%ystx126123%_))
          (let* ((_%g126129126139%_ (gx#syntax-e _%xrest126127%_))
                 (_%else126132126147%_ (lambda () '#!void)))
            (let ((_%K126135126204%_
                   (lambda (_%xrest126173%_ _%xhd126174%_)
                     (let* ((_%g126175126182%_ (gx#syntax-e _%yrest126128%_))
                            (_%E126177126186%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g126175126182%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K126178126192%_
                             (lambda (_%yrest126189%_ _%yhd126190%_)
                               (_%f126121%_ _%xhd126174%_ _%yhd126190%_)
                               (_%lp126125%_
                                _%xrest126173%_
                                _%yrest126189%_))))
                       (if (pair? _%g126175126182%_)
                           (let ((_%hd126179126195%_ (##car _%g126175126182%_))
                                 (_%tl126180126197%_
                                  (##cdr _%g126175126182%_)))
                             (let* ((_%yhd126200%_ _%hd126179126195%_)
                                    (_%yrest126202%_ _%tl126180126197%_))
                               (_%K126178126192%_
                                _%yrest126202%_
                                _%yhd126200%_)))
                           (_%E126177126186%_)))))
                  (_%K126134126167%_
                   (lambda ()
                     (let* ((_%yrest126151126156%_ _%yrest126128%_)
                            (_%E126153126160%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest126151126156%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K126154126164%_
                             (lambda ()
                               (_%f126121%_ _%xrest126127%_ _%yrest126128%_))))
                       (if (gx#stx-null? _%yrest126151126156%_)
                           (_%E126153126160%_)
                           (_%K126154126164%_))))))
              (let ((_%try-match126131126170%_
                     (lambda ()
                       (if (null? _%g126129126139%_)
                           (_%else126132126147%_)
                           (_%K126134126167%_)))))
                (if (pair? _%g126129126139%_)
                    (let ((_%tl126137126209%_ (##cdr _%g126129126139%_))
                          (_%hd126136126207%_ (##car _%g126129126139%_)))
                      (let ((_%xhd126212%_ _%hd126136126207%_)
                            (_%xrest126214%_ _%tl126137126209%_))
                        (_%K126135126204%_ _%xrest126214%_ _%xhd126212%_)))
                    (_%try-match126131126170%_))))))))
    (define gx#stx-map
      (lambda _g126805_
        (let ((_g126806_ (##length _g126805_)))
          (cond ((##fx= _g126806_ 2) (apply gx#stx-map1 _g126805_))
                ((##fx= _g126806_ 3) (apply gx#stx-map2 _g126805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g126805_))))))
    (define gx#stx-map1
      (lambda (_%f126064%_ _%stx126065%_)
        (if (procedure? _%f126064%_)
            '#!void
            (error '"expected procedure" _%f126064%_))
        (let _%recur126067%_ ((_%rest126069%_ _%stx126065%_))
          (let* ((_%g126070126080%_ (gx#syntax-e _%rest126069%_))
                 (_%else126073126088%_
                  (lambda () (_%f126064%_ _%rest126069%_))))
            (let ((_%K126076126102%_
                   (lambda (_%rest126099%_ _%hd126100%_)
                     (cons (_%f126064%_ _%hd126100%_)
                           (_%recur126067%_ _%rest126099%_))))
                  (_%K126075126093%_ (lambda () '())))
              (let ((_%try-match126072126096%_
                     (lambda ()
                       (if (null? _%g126070126080%_)
                           (_%K126075126093%_)
                           (_%else126073126088%_)))))
                (if (pair? _%g126070126080%_)
                    (let ((_%tl126078126107%_ (##cdr _%g126070126080%_))
                          (_%hd126077126105%_ (##car _%g126070126080%_)))
                      (let ((_%hd126110%_ _%hd126077126105%_)
                            (_%rest126112%_ _%tl126078126107%_))
                        (_%K126076126102%_ _%rest126112%_ _%hd126110%_)))
                    (_%try-match126072126096%_))))))))
    (define gx#stx-map2
      (lambda (_%f125969%_ _%xstx125970%_ _%ystx125971%_)
        (if (procedure? _%f125969%_)
            '#!void
            (error '"expected procedure" _%f125969%_))
        (let _%recur125973%_ ((_%xrest125975%_ _%xstx125970%_)
                              (_%yrest125976%_ _%ystx125971%_))
          (let* ((_%g125977125987%_ (gx#syntax-e _%xrest125975%_))
                 (_%else125980125995%_ (lambda () '())))
            (let ((_%K125983126052%_
                   (lambda (_%xrest126021%_ _%xhd126022%_)
                     (let* ((_%g126023126030%_ (gx#syntax-e _%yrest125976%_))
                            (_%E126025126034%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g126023126030%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K126026126040%_
                             (lambda (_%yrest126037%_ _%yhd126038%_)
                               (cons (_%f125969%_ _%xhd126022%_ _%yhd126038%_)
                                     (_%recur125973%_
                                      _%xrest126021%_
                                      _%yrest126037%_)))))
                       (if (pair? _%g126023126030%_)
                           (let ((_%hd126027126043%_ (##car _%g126023126030%_))
                                 (_%tl126028126045%_
                                  (##cdr _%g126023126030%_)))
                             (let* ((_%yhd126048%_ _%hd126027126043%_)
                                    (_%yrest126050%_ _%tl126028126045%_))
                               (_%K126026126040%_
                                _%yrest126050%_
                                _%yhd126048%_)))
                           (_%E126025126034%_)))))
                  (_%K125982126015%_
                   (lambda ()
                     (let* ((_%yrest125999126004%_ _%yrest125976%_)
                            (_%E126001126008%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest125999126004%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K126002126012%_
                             (lambda ()
                               (_%f125969%_ _%xrest125975%_ _%yrest125976%_))))
                       (if (gx#stx-null? _%yrest125999126004%_)
                           (_%E126001126008%_)
                           (_%K126002126012%_))))))
              (let ((_%try-match125979126018%_
                     (lambda ()
                       (if (null? _%g125977125987%_)
                           (_%else125980125995%_)
                           (_%K125982126015%_)))))
                (if (pair? _%g125977125987%_)
                    (let ((_%tl125985126057%_ (##cdr _%g125977125987%_))
                          (_%hd125984126055%_ (##car _%g125977125987%_)))
                      (let ((_%xhd126060%_ _%hd125984126055%_)
                            (_%xrest126062%_ _%tl125985126057%_))
                        (_%K125983126052%_ _%xrest126062%_ _%xhd126060%_)))
                    (_%try-match125979126018%_))))))))
    (define gx#stx-andmap
      (lambda (_%f125919%_ _%stx125920%_)
        (if (procedure? _%f125919%_)
            '#!void
            (error '"expected procedure" _%f125919%_))
        (let _%lp125922%_ ((_%rest125924%_ _%stx125920%_))
          (let* ((_%g125925125935%_ (gx#syntax-e _%rest125924%_))
                 (_%else125928125943%_
                  (lambda () (_%f125919%_ _%rest125924%_))))
            (let ((_%K125931125957%_
                   (lambda (_%rest125954%_ _%hd125955%_)
                     (if (_%f125919%_ _%hd125955%_)
                         (_%lp125922%_ _%rest125954%_)
                         '#f)))
                  (_%K125930125948%_ (lambda () '#t)))
              (let ((_%try-match125927125951%_
                     (lambda ()
                       (if (null? _%g125925125935%_)
                           (_%K125930125948%_)
                           (_%else125928125943%_)))))
                (if (pair? _%g125925125935%_)
                    (let ((_%tl125933125962%_ (##cdr _%g125925125935%_))
                          (_%hd125932125960%_ (##car _%g125925125935%_)))
                      (let ((_%hd125965%_ _%hd125932125960%_)
                            (_%rest125967%_ _%tl125933125962%_))
                        (_%K125931125957%_ _%rest125967%_ _%hd125965%_)))
                    (_%try-match125927125951%_))))))))
    (define gx#stx-ormap
      (lambda (_%f125866%_ _%stx125867%_)
        (if (procedure? _%f125866%_)
            '#!void
            (error '"expected procedure" _%f125866%_))
        (let _%lp125869%_ ((_%rest125871%_ _%stx125867%_))
          (let* ((_%g125872125882%_ (gx#syntax-e _%rest125871%_))
                 (_%else125875125890%_
                  (lambda () (_%f125866%_ _%rest125871%_))))
            (let ((_%K125878125907%_
                   (lambda (_%rest125901%_ _%hd125902%_)
                     (let ((_%$e125904%_ (_%f125866%_ _%hd125902%_)))
                       (if _%$e125904%_
                           _%$e125904%_
                           (_%lp125869%_ _%rest125901%_)))))
                  (_%K125877125895%_ (lambda () '#f)))
              (let ((_%try-match125874125898%_
                     (lambda ()
                       (if (null? _%g125872125882%_)
                           (_%K125877125895%_)
                           (_%else125875125890%_)))))
                (if (pair? _%g125872125882%_)
                    (let ((_%tl125880125912%_ (##cdr _%g125872125882%_))
                          (_%hd125879125910%_ (##car _%g125872125882%_)))
                      (let ((_%hd125915%_ _%hd125879125910%_)
                            (_%rest125917%_ _%tl125880125912%_))
                        (_%K125878125907%_ _%rest125917%_ _%hd125915%_)))
                    (_%try-match125874125898%_))))))))
    (define gx#stx-foldl
      (lambda (_%f125814%_ _%iv125815%_ _%stx125816%_)
        (if (procedure? _%f125814%_)
            '#!void
            (error '"expected procedure" _%f125814%_))
        (let _%lp125818%_ ((_%r125820%_ _%iv125815%_)
                           (_%rest125821%_ _%stx125816%_))
          (let* ((_%g125822125832%_ (gx#syntax-e _%rest125821%_))
                 (_%else125825125840%_
                  (lambda () (_%f125814%_ _%rest125821%_ _%r125820%_))))
            (let ((_%K125828125854%_
                   (lambda (_%rest125851%_ _%hd125852%_)
                     (_%lp125818%_
                      (_%f125814%_ _%hd125852%_ _%r125820%_)
                      _%rest125851%_)))
                  (_%K125827125845%_ (lambda () _%r125820%_)))
              (let ((_%try-match125824125848%_
                     (lambda ()
                       (if (null? _%g125822125832%_)
                           (_%K125827125845%_)
                           (_%else125825125840%_)))))
                (if (pair? _%g125822125832%_)
                    (let ((_%tl125830125859%_ (##cdr _%g125822125832%_))
                          (_%hd125829125857%_ (##car _%g125822125832%_)))
                      (let ((_%hd125862%_ _%hd125829125857%_)
                            (_%rest125864%_ _%tl125830125859%_))
                        (_%K125828125854%_ _%rest125864%_ _%hd125862%_)))
                    (_%try-match125824125848%_))))))))
    (define gx#stx-foldr
      (lambda (_%f125763%_ _%iv125764%_ _%stx125765%_)
        (if (procedure? _%f125763%_)
            '#!void
            (error '"expected procedure" _%f125763%_))
        (let _%recur125767%_ ((_%rest125769%_ _%stx125765%_))
          (let* ((_%g125770125780%_ (gx#syntax-e _%rest125769%_))
                 (_%else125773125788%_
                  (lambda () (_%f125763%_ _%rest125769%_ _%iv125764%_))))
            (let ((_%K125776125802%_
                   (lambda (_%rest125799%_ _%hd125800%_)
                     (_%f125763%_
                      _%hd125800%_
                      (_%recur125767%_ _%rest125799%_))))
                  (_%K125775125793%_ (lambda () _%iv125764%_)))
              (let ((_%try-match125772125796%_
                     (lambda ()
                       (if (null? _%g125770125780%_)
                           (_%K125775125793%_)
                           (_%else125773125788%_)))))
                (if (pair? _%g125770125780%_)
                    (let ((_%tl125778125807%_ (##cdr _%g125770125780%_))
                          (_%hd125777125805%_ (##car _%g125770125780%_)))
                      (let ((_%hd125810%_ _%hd125777125805%_)
                            (_%rest125812%_ _%tl125778125807%_))
                        (_%K125776125802%_ _%rest125812%_ _%hd125810%_)))
                    (_%try-match125772125796%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx125761%_) (gx#stx-foldl cons '() _%stx125761%_)))
    (define gx#stx-last
      (lambda (_%stx125722%_)
        (let _%lp125724%_ ((_%rest125726%_ _%stx125722%_))
          (let* ((_%g125727125735%_ (gx#syntax-e _%rest125726%_))
                 (_%else125729125743%_ (lambda () _%rest125726%_))
                 (_%K125731125749%_
                  (lambda (_%rest125746%_ _%hd125747%_)
                    (if (gx#stx-null? _%rest125746%_)
                        _%hd125747%_
                        (_%lp125724%_ _%rest125746%_)))))
            (if (pair? _%g125727125735%_)
                (let ((_%hd125732125752%_ (##car _%g125727125735%_))
                      (_%tl125733125754%_ (##cdr _%g125727125735%_)))
                  (let* ((_%hd125757%_ _%hd125732125752%_)
                         (_%rest125759%_ _%tl125733125754%_))
                    (_%K125731125749%_ _%rest125759%_ _%hd125757%_)))
                (_%else125729125743%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx125693%_)
        (let _%lp125695%_ ((_%hd125697%_ _%stx125693%_))
          (let* ((_%g125698125705%_ (gx#syntax-e _%hd125697%_))
                 (_%E125700125709%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g125698125705%_
                           '([_ . rest]))
                    '#!void))
                 (_%K125701125714%_
                  (lambda (_%rest125712%_)
                    (if (gx#stx-pair? _%rest125712%_)
                        (_%lp125695%_ _%rest125712%_)
                        _%hd125697%_))))
            (if (pair? _%g125698125705%_)
                (let* ((_%tl125703125717%_ (##cdr _%g125698125705%_))
                       (_%rest125720%_ _%tl125703125717%_))
                  (_%K125701125714%_ _%rest125720%_))
                (_%E125700125709%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx125662%_ _%k125663%_)
        (let _%lp125665%_ ((_%rest125667%_ _%stx125662%_)
                           (_%k125668%_ _%k125663%_))
          (if (fxpositive? _%k125668%_)
              (let* ((_%g125669125676%_ (gx#syntax-e _%rest125667%_))
                     (_%E125671125680%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g125669125676%_
                               '([_ . rest]))
                        '#!void))
                     (_%K125672125685%_
                      (lambda (_%rest125683%_)
                        (_%lp125665%_ _%rest125683%_ (##fx- _%k125668%_ '1)))))
                (if (pair? _%g125669125676%_)
                    (let* ((_%tl125674125688%_ (##cdr _%g125669125676%_))
                           (_%rest125691%_ _%tl125674125688%_))
                      (_%K125672125685%_ _%rest125691%_))
                    (_%E125671125680%_)))
              _%rest125667%_))))
    (define gx#stx-list-ref
      (lambda (_%stx125659%_ _%k125660%_)
        (gx#stx-car (gx#stx-list-tail _%stx125659%_ _%k125660%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx125571%_ _%key?125572%_)
        (if (procedure? _%key?125572%_)
            '#!void
            (error '"expected procedure" _%key?125572%_))
        (let _%lp125574%_ ((_%rest125576%_ _%stx125571%_))
          (let* ((_%g125577125587%_ (gx#stx-e _%rest125576%_))
                 (_%else125580125595%_ (lambda () '#f)))
            (let ((_%K125583125637%_
                   (lambda (_%rest125606%_ _%hd125607%_)
                     (if (_%key?125572%_ _%hd125607%_)
                         (let* ((_%g125608125616%_ (gx#stx-e _%rest125606%_))
                                (_%else125610125624%_ (lambda () '#f))
                                (_%K125612125629%_
                                 (lambda (_%rest125627%_)
                                   (_%lp125574%_ _%rest125627%_))))
                           (if (pair? _%g125608125616%_)
                               (let* ((_%tl125614125632%_
                                       (##cdr _%g125608125616%_))
                                      (_%rest125635%_ _%tl125614125632%_))
                                 (_%lp125574%_ _%rest125635%_))
                               (_%else125610125624%_)))
                         '#f)))
                  (_%K125582125600%_ (lambda () '#t)))
              (let ((_%try-match125579125603%_
                     (lambda ()
                       (if (null? _%g125577125587%_)
                           (_%K125582125600%_)
                           (_%else125580125595%_)))))
                (if (pair? _%g125577125587%_)
                    (let ((_%tl125585125642%_ (##cdr _%g125577125587%_))
                          (_%hd125584125640%_ (##car _%g125577125587%_)))
                      (let ((_%hd125645%_ _%hd125584125640%_)
                            (_%rest125647%_ _%tl125585125642%_))
                        (_%K125583125637%_ _%rest125647%_ _%hd125645%_)))
                    (_%try-match125579125603%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx125652%_)
        (let ((_%key?125654%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx125652%_ _%key?125654%_))))
    (define gx#stx-plist?
      (lambda _g126807_
        (let ((_g126808_ (##length _g126807_)))
          (cond ((##fx= _g126808_ 1) (apply gx#stx-plist?__0 _g126807_))
                ((##fx= _g126808_ 2) (apply gx#stx-plist?__% _g126807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g126807_))))))
    (define gx#stx-getq__%
      (lambda (_%key125489%_ _%stx125490%_ _%key=?125491%_)
        (if (procedure? _%key=?125491%_)
            '#!void
            (error '"expected procedure" _%key=?125491%_))
        (let _%lp125493%_ ((_%rest125495%_ _%stx125490%_))
          (let* ((_%g125496125504%_ (gx#syntax-e _%rest125495%_))
                 (_%else125498125512%_ (lambda () '#f))
                 (_%K125500125546%_
                  (lambda (_%rest125515%_ _%hd125516%_)
                    (let* ((_%g125517125524%_ (gx#syntax-e _%rest125515%_))
                           (_%E125519125528%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g125517125524%_
                                     '([val . rest]))
                              '#!void))
                           (_%K125520125534%_
                            (lambda (_%rest125531%_ _%val125532%_)
                              (if (_%key=?125491%_ _%hd125516%_ _%key125489%_)
                                  _%val125532%_
                                  (_%lp125493%_ _%rest125531%_)))))
                      (if (pair? _%g125517125524%_)
                          (let ((_%hd125521125537%_ (##car _%g125517125524%_))
                                (_%tl125522125539%_ (##cdr _%g125517125524%_)))
                            (let* ((_%val125542%_ _%hd125521125537%_)
                                   (_%rest125544%_ _%tl125522125539%_))
                              (_%K125520125534%_
                               _%rest125544%_
                               _%val125542%_)))
                          (_%E125519125528%_))))))
            (if (pair? _%g125496125504%_)
                (let ((_%hd125501125549%_ (##car _%g125496125504%_))
                      (_%tl125502125551%_ (##cdr _%g125496125504%_)))
                  (let* ((_%hd125554%_ _%hd125501125549%_)
                         (_%rest125556%_ _%tl125502125551%_))
                    (_%K125500125546%_ _%rest125556%_ _%hd125554%_)))
                (_%else125498125512%_))))))
    (define gx#stx-getq__0
      (lambda (_%key125561%_ _%stx125562%_)
        (let ((_%key=?125564%_ gx#stx-eq?))
          (gx#stx-getq__% _%key125561%_ _%stx125562%_ _%key=?125564%_))))
    (define gx#stx-getq
      (lambda _g126809_
        (let ((_g126810_ (##length _g126809_)))
          (cond ((##fx= _g126810_ 2) (apply gx#stx-getq__0 _g126809_))
                ((##fx= _g126810_ 3) (apply gx#stx-getq__% _g126809_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g126809_))))))))
