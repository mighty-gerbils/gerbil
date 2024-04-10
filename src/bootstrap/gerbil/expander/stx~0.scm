(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712757954)
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
      (lambda _%$args114713%_
        (apply make-instance gx#identifier-wrap::t _%$args114713%_)))
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
      (lambda _%$args114710%_
        (apply make-instance gx#syntax-wrap::t _%$args114710%_)))
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
      (lambda _%$args114707%_
        (apply make-instance gx#syntax-quote::t _%$args114707%_)))
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
      (lambda (_%stx114705%_) (symbol? (gx#stx-e _%stx114705%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114703%_)
        (if (##structure-direct-instance-of? _%stx114703%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114703%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114698%_)
        (if (##structure-direct-instance-of? _%stx114698%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx114698%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx114698%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114693%_)
        (if (##structure-direct-instance-of? _%stx114693%_ 'gx#syntax-quote::t)
            _%stx114693%_
            (if (##structure-direct-instance-of?
                 _%stx114693%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx114693%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx114667%_)
        (if (##structure-direct-instance-of? _%stx114667%_ 'gx#syntax-wrap::t)
            (let _%lp114670%_ ((_%e114672%_
                                (##unchecked-structure-ref
                                 _%stx114667%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks114673%_
                                (cons (##unchecked-structure-ref
                                       _%stx114667%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e114672%_)
                  (let ((_%$e114676%_
                         (##type-id (##structure-type _%e114672%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e114676%_)
                        (_%lp114670%_
                         (##unchecked-structure-ref _%e114672%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e114672%_ '3 '#f '#f)
                          _%marks114673%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e114676%_)
                                (eq? 'gx#identifier-wrap::t _%$e114676%_))
                            (##unchecked-structure-ref _%e114672%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e114676%_)
                                (_%lp114670%_
                                 (##unchecked-structure-ref
                                  _%e114672%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks114673%_)
                                _%e114672%_))))
                  (if (null? _%marks114673%_)
                      _%e114672%_
                      (if (pair? _%e114672%_)
                          (cons (gx#stx-wrap (car _%e114672%_) _%marks114673%_)
                                (gx#stx-wrap
                                 (cdr _%e114672%_)
                                 _%marks114673%_))
                          (if (vector? _%e114672%_)
                              (vector-map
                               (lambda (_%g114684114686%_)
                                 (gx#stx-wrap
                                  _%g114684114686%_
                                  _%marks114673%_))
                               _%e114672%_)
                              (if (box? _%e114672%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e114672%_)
                                        _%marks114673%_))
                                  _%e114672%_))))))
            (if (##structure-instance-of? _%stx114667%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx114667%_ '1 '#f '#f)
                _%stx114667%_))))
    (define gx#syntax->datum
      (lambda (_%stx114660%_)
        (if (##structure-instance-of? _%stx114660%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx114660%_ '1 '#f '#f))
            (if (pair? _%stx114660%_)
                (cons (gx#syntax->datum (car _%stx114660%_))
                      (gx#syntax->datum (cdr _%stx114660%_)))
                (if (vector? _%stx114660%_)
                    (vector-map gx#syntax->datum _%stx114660%_)
                    (if (box? _%stx114660%_)
                        (box (gx#syntax->datum (unbox _%stx114660%_)))
                        _%stx114660%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114594%_ _%datum114595%_ _%src114596%_ _%quote?114597%_)
        (letrec ((_%wrap-datum114599%_
                  (lambda (_%e114632%_ _%marks114633%_)
                    (_%wrap-inner114601%_
                     _%e114632%_
                     (lambda (_%g114634114636%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114634114636%_
                        _%src114596%_
                        _%marks114633%_)))))
                 (_%wrap-quote114600%_
                  (lambda (_%e114624%_ _%ctx114625%_ _%marks114626%_)
                    (_%wrap-inner114601%_
                     _%e114624%_
                     (lambda (_%g114627114629%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114627114629%_
                        _%src114596%_
                        _%ctx114625%_
                        _%marks114626%_)))))
                 (_%wrap-inner114601%_
                  (lambda (_%e114612%_ _%wrap-e114613%_)
                    (let _%recur114615%_ ((_%e114617%_ _%e114612%_))
                      (if (symbol? _%e114617%_)
                          (_%wrap-e114613%_ _%e114617%_)
                          (if (pair? _%e114617%_)
                              (cons (_%recur114615%_ (car _%e114617%_))
                                    (_%recur114615%_ (cdr _%e114617%_)))
                              (if (vector? _%e114617%_)
                                  (vector-map _%recur114615%_ _%e114617%_)
                                  (if (box? _%e114617%_)
                                      (box (_%recur114615%_
                                            (unbox _%e114617%_)))
                                      _%e114617%_)))))))
                 (_%wrap-outer114602%_
                  (lambda (_%e114610%_)
                    (if (##structure-instance-of? _%e114610%_ 'gerbil#AST::t)
                        _%e114610%_
                        (##structure gx#AST::t _%e114610%_ _%src114596%_)))))
          (if (##structure-instance-of? _%datum114595%_ 'gerbil#AST::t)
              _%datum114595%_
              (if (not _%stx114594%_)
                  (##structure gx#AST::t _%datum114595%_ _%src114596%_)
                  (if (gx#identifier? _%stx114594%_)
                      (let ((_%stx114607%_ (gx#stx-unwrap__0 _%stx114594%_)))
                        (_%wrap-outer114602%_
                         (if (##structure-direct-instance-of?
                              _%stx114607%_
                              'gx#syntax-quote::t)
                             (if _%quote?114597%_
                                 (_%wrap-quote114600%_
                                  _%datum114595%_
                                  (##unchecked-structure-ref
                                   _%stx114607%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx114607%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum114599%_
                                  _%datum114595%_
                                  (##unchecked-structure-ref
                                   _%stx114607%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum114599%_
                              _%datum114595%_
                              (##unchecked-structure-ref
                               _%stx114607%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx114594%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114642%_ _%datum114643%_)
        (let* ((_%src114645%_ '#f) (_%quote?114647%_ '#t))
          (gx#datum->syntax__%
           _%stx114642%_
           _%datum114643%_
           _%src114645%_
           _%quote?114647%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114649%_ _%datum114650%_ _%src114651%_)
        (let ((_%quote?114653%_ '#t))
          (gx#datum->syntax__%
           _%stx114649%_
           _%datum114650%_
           _%src114651%_
           _%quote?114653%_))))
    (define gx#datum->syntax
      (lambda _g114794_
        (let ((_g114793_ (##length _g114794_)))
          (cond ((##fx= _g114793_ 2) (apply gx#datum->syntax__0 _g114794_))
                ((##fx= _g114793_ 3) (apply gx#datum->syntax__1 _g114794_))
                ((##fx= _g114793_ 4) (apply gx#datum->syntax__% _g114794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g114794_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114560%_ _%marks114561%_)
        (let _%lp114563%_ ((_%e114565%_ _%stx114560%_)
                           (_%marks114566%_ _%marks114561%_)
                           (_%src114567%_ (gx#stx-source _%stx114560%_)))
          (if (##structure-direct-instance-of? _%e114565%_ 'gx#syntax-wrap::t)
              (_%lp114563%_
               (##unchecked-structure-ref _%e114565%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e114565%_ '3 '#f '#f)
                _%marks114566%_)
               (##unchecked-structure-ref _%e114565%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e114565%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks114566%_)
                      _%e114565%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e114565%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e114565%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e114565%_ '3 '#f '#f)
                        _%marks114566%_)))
                  (if (##structure-direct-instance-of?
                       _%e114565%_
                       'gx#syntax-quote::t)
                      _%e114565%_
                      (if (##structure-instance-of? _%e114565%_ 'gerbil#AST::t)
                          (_%lp114563%_
                           (##unchecked-structure-ref _%e114565%_ '1 '#f '#f)
                           _%marks114566%_
                           (##unchecked-structure-ref _%e114565%_ '2 '#f '#f))
                          (if (symbol? _%e114565%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e114565%_
                               _%src114567%_
                               (reverse _%marks114566%_))
                              (if (null? _%marks114566%_)
                                  _%e114565%_
                                  (if (pair? _%e114565%_)
                                      (cons (gx#stx-wrap
                                             (car _%e114565%_)
                                             _%marks114566%_)
                                            (gx#stx-wrap
                                             (cdr _%e114565%_)
                                             _%marks114566%_))
                                      (if (vector? _%e114565%_)
                                          (vector-map
                                           (lambda (_%g114576114578%_)
                                             (gx#stx-wrap
                                              _%g114576114578%_
                                              _%marks114566%_))
                                           _%e114565%_)
                                          (if (box? _%e114565%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e114565%_)
                                                    _%marks114566%_))
                                              _%e114565%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114586%_)
        (let ((_%marks114588%_ '()))
          (gx#stx-unwrap__% _%stx114586%_ _%marks114588%_))))
    (define gx#stx-unwrap
      (lambda _g114796_
        (let ((_g114795_ (##length _g114796_)))
          (cond ((##fx= _g114795_ 1) (apply gx#stx-unwrap__0 _g114796_))
                ((##fx= _g114795_ 2) (apply gx#stx-unwrap__% _g114796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g114796_))))))
    (define gx#stx-wrap
      (lambda (_%stx114553%_ _%marks114554%_)
        (__foldl1
         (lambda (_%mark114556%_ _%stx114557%_)
           (gx#stx-apply-mark _%stx114557%_ _%mark114556%_))
         _%stx114553%_
         _%marks114554%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114547%_ _%marks114548%_)
        (__foldr1
         (lambda (_%mark114550%_ _%stx114551%_)
           (gx#stx-apply-mark _%stx114551%_ _%mark114550%_))
         _%stx114547%_
         _%marks114548%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114541%_ _%mark114542%_)
        (if (##structure-direct-instance-of? _%stx114541%_ 'gx#syntax-quote::t)
            _%stx114541%_
            (if (and (##structure-direct-instance-of?
                      _%stx114541%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114542%_
                          (##unchecked-structure-ref
                           _%stx114541%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx114541%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx114541%_
                 (gx#stx-source _%stx114541%_)
                 _%mark114542%_)))))
    (define gx#apply-mark
      (lambda (_%mark114505%_ _%marks114506%_)
        (let* ((_%marks114507114515%_ _%marks114506%_)
               (_%else114509114523%_
                (lambda () (cons _%mark114505%_ _%marks114506%_)))
               (_%K114511114529%_
                (lambda (_%rest114526%_ _%hd114527%_)
                  (if (eq? _%mark114505%_ _%hd114527%_)
                      _%rest114526%_
                      (cons _%mark114505%_ _%marks114506%_)))))
          (if (##pair? _%marks114507114515%_)
              (let ((_%hd114512114532%_ (##car _%marks114507114515%_))
                    (_%tl114513114534%_ (##cdr _%marks114507114515%_)))
                (let* ((_%hd114537%_ _%hd114512114532%_)
                       (_%rest114539%_ _%tl114513114534%_))
                  (_%K114511114529%_ _%rest114539%_ _%hd114537%_)))
              (_%else114509114523%_)))))
    (define gx#stx-e
      (lambda (_%stx114500%_)
        (if (##structure-direct-instance-of? _%stx114500%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx114500%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx114500%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx114500%_ '1 '#f '#f)
                _%stx114500%_))))
    (define gx#stx-source
      (lambda (_%stx114498%_)
        (if (##structure-instance-of? _%stx114498%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114498%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114492%_ _%src114493%_)
        (if (or (##structure-instance-of? _%stx114492%_ 'gerbil#AST::t)
                (not _%src114493%_))
            _%stx114492%_
            (##structure gx#AST::t _%stx114492%_ _%src114493%_))))
    (define gx#stx-datum?
      (lambda (_%stx114490%_) (gx#self-quoting? (gx#stx-e _%stx114490%_))))
    (define gx#self-quoting?
      (lambda (_%x114473%_)
        (let ((_%$e114475%_ (immediate? _%x114473%_)))
          (if _%$e114475%_
              _%$e114475%_
              (let ((_%$e114478%_ (number? _%x114473%_)))
                (if _%$e114478%_
                    _%$e114478%_
                    (let ((_%$e114481%_ (keyword? _%x114473%_)))
                      (if _%$e114481%_
                          _%$e114481%_
                          (let ((_%$e114484%_ (string? _%x114473%_)))
                            (if _%$e114484%_
                                _%$e114484%_
                                (let ((_%$e114487%_ (vector? _%x114473%_)))
                                  (if _%$e114487%_
                                      _%$e114487%_
                                      (u8vector? _%x114473%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114471%_) (boolean? (gx#stx-e _%e114471%_))))
    (define gx#stx-keyword?
      (lambda (_%e114469%_) (keyword? (gx#stx-e _%e114469%_))))
    (define gx#stx-char? (lambda (_%e114467%_) (char? (gx#stx-e _%e114467%_))))
    (define gx#stx-number?
      (lambda (_%e114465%_) (number? (gx#stx-e _%e114465%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114463%_) (fixnum? (gx#stx-e _%e114463%_))))
    (define gx#stx-string?
      (lambda (_%e114461%_) (string? (gx#stx-e _%e114461%_))))
    (define gx#stx-null? (lambda (_%e114459%_) (null? (gx#stx-e _%e114459%_))))
    (define gx#stx-pair? (lambda (_%e114457%_) (pair? (gx#stx-e _%e114457%_))))
    (define gx#stx-list?
      (lambda (_%e114419%_)
        (let* ((_%g114420114429%_ (gx#stx-e _%e114419%_))
               (_%E114423114433%_
                (lambda ()
                  (error '"No clause matching"
                         _%g114420114429%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K114425114449%_
                 (lambda (_%rest114447%_) (gx#stx-list? _%rest114447%_)))
                (_%K114424114439%_
                 (lambda (_%tail114437%_) (null? _%tail114437%_))))
            (if (##pair? _%g114420114429%_)
                (let* ((_%tl114427114452%_ (##cdr _%g114420114429%_))
                       (_%rest114455%_ _%tl114427114452%_))
                  (gx#stx-list? _%rest114455%_))
                (let ((_%tail114442%_ _%g114420114429%_))
                  (null? _%tail114442%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e114412%_)
        (let* ((_%e114414%_ (gx#stx-e _%e114412%_))
               (_%$e114416%_ (pair? _%e114414%_)))
          (if _%$e114416%_ _%$e114416%_ (null? _%e114414%_)))))
    (define gx#stx-vector?
      (lambda (_%e114410%_) (vector? (gx#stx-e _%e114410%_))))
    (define gx#stx-box? (lambda (_%e114408%_) (box? (gx#stx-e _%e114408%_))))
    (define gx#stx-eq?
      (lambda (_%x114405%_ _%y114406%_)
        (eq? (gx#stx-e _%x114405%_) (gx#stx-e _%y114406%_))))
    (define gx#stx-eqv?
      (lambda (_%x114402%_ _%y114403%_)
        (eqv? (gx#stx-e _%x114402%_) (gx#stx-e _%y114403%_))))
    (define gx#stx-equal?
      (lambda (_%x114399%_ _%y114400%_)
        (equal? (gx#stx-e _%x114399%_) (gx#stx-e _%y114400%_))))
    (define gx#stx-false? (lambda (_%x114397%_) (not (gx#stx-e _%x114397%_))))
    (define gx#stx-identifier
      (lambda (_%template114394%_ . _%args114395%_)
        (gx#datum->syntax__1
         _%template114394%_
         (apply make-symbol (gx#syntax->datum _%args114395%_))
         (gx#stx-source _%template114394%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx114392%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx114392%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx114387%_)
        (if (##structure-direct-instance-of?
             _%stx114387%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx114387%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx114387%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx114387%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx114387%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx114383%_)
        (let ((_%stx114385%_ (gx#stx-unwrap__0 _%stx114383%_)))
          (if (gx#identifier-quote? _%stx114385%_)
              (##unchecked-structure-ref _%stx114385%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx114338%_)
        (let* ((_%g114339114349%_ (gx#stx-e _%stx114338%_))
               (_%else114342114357%_ (lambda () '#f)))
          (let ((_%K114345114371%_
                 (lambda (_%rest114368%_ _%hd114369%_)
                   (if (gx#identifier? _%hd114369%_)
                       (gx#identifier-list? _%rest114368%_)
                       '#f)))
                (_%K114344114362%_ (lambda () '#t)))
            (let ((_%try-match114341114365%_
                   (lambda ()
                     (if (##null? _%g114339114349%_)
                         (_%K114344114362%_)
                         (_%else114342114357%_)))))
              (if (##pair? _%g114339114349%_)
                  (let ((_%tl114347114376%_ (##cdr _%g114339114349%_))
                        (_%hd114346114374%_ (##car _%g114339114349%_)))
                    (let ((_%hd114379%_ _%hd114346114374%_)
                          (_%rest114381%_ _%tl114347114376%_))
                      (_%K114345114371%_ _%rest114381%_ _%hd114379%_)))
                  (_%try-match114341114365%_)))))))
    (define gx#genident__%
      (lambda (_%e114315%_ _%src114316%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e114318%_ (gx#stx-e _%e114315%_)))
                   (if (interned-symbol? _%e114318%_) _%e114318%_ 'g)))
         (let ((_%$e114320%_ (gx#stx-source _%e114315%_)))
           (if _%$e114320%_ _%$e114320%_ _%src114316%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e114327%_ 'g) (_%src114329%_ '#f))
          (gx#genident__% _%e114327%_ _%src114329%_))))
    (define gx#genident__1
      (lambda (_%e114331%_)
        (let ((_%src114333%_ '#f))
          (gx#genident__% _%e114331%_ _%src114333%_))))
    (define gx#genident
      (lambda _g114798_
        (let ((_g114797_ (##length _g114798_)))
          (cond ((##fx= _g114797_ 0) (apply gx#genident__0 _g114798_))
                ((##fx= _g114797_ 1) (apply gx#genident__1 _g114798_))
                ((##fx= _g114797_ 2) (apply gx#genident__% _g114798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g114798_))))))
    (define gx#gentemps
      (lambda (_%stx-lst114312%_) (gx#stx-map1 gx#genident _%stx-lst114312%_)))
    (define gx#syntax->list
      (lambda (_%stx114310%_) (gx#stx-map1 values _%stx114310%_)))
    (define gx#stx-car
      (lambda (_%stx114307%_)
        (declare (safe))
        (car (gx#syntax-e _%stx114307%_))))
    (define gx#stx-cdr
      (lambda (_%stx114304%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx114304%_))))
    (define gx#stx-length
      (lambda (_%stx114269%_)
        (let _%lp114271%_ ((_%rest114273%_ _%stx114269%_) (_%n114274%_ '0))
          (let* ((_%g114275114283%_ (gx#stx-e _%rest114273%_))
                 (_%else114277114291%_ (lambda () _%n114274%_))
                 (_%K114279114296%_
                  (lambda (_%rest114294%_)
                    (_%lp114271%_ _%rest114294%_ (##fx+ _%n114274%_ '1)))))
            (if (##pair? _%g114275114283%_)
                (let* ((_%tl114281114299%_ (##cdr _%g114275114283%_))
                       (_%rest114302%_ _%tl114281114299%_))
                  (_%K114279114296%_ _%rest114302%_))
                (_%else114277114291%_))))))
    (define gx#stx-for-each
      (lambda _g114800_
        (let ((_g114799_ (##length _g114800_)))
          (cond ((##fx= _g114799_ 2) (apply gx#stx-for-each1 _g114800_))
                ((##fx= _g114799_ 3) (apply gx#stx-for-each2 _g114800_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g114800_))))))
    (define gx#stx-for-each1
      (lambda (_%f114212%_ _%stx114213%_)
        (if (procedure? _%f114212%_)
            '#!void
            (error '"expected procedure" _%f114212%_))
        (let _%lp114215%_ ((_%rest114217%_ _%stx114213%_))
          (let* ((_%g114218114228%_ (gx#syntax-e _%rest114217%_))
                 (_%else114221114236%_
                  (lambda () (_%f114212%_ _%rest114217%_))))
            (let ((_%K114224114250%_
                   (lambda (_%rest114247%_ _%hd114248%_)
                     (_%f114212%_ _%hd114248%_)
                     (_%lp114215%_ _%rest114247%_)))
                  (_%K114223114241%_ (lambda () '#!void)))
              (let ((_%try-match114220114244%_
                     (lambda ()
                       (if (##null? _%g114218114228%_)
                           (_%K114223114241%_)
                           (_%else114221114236%_)))))
                (if (##pair? _%g114218114228%_)
                    (let ((_%tl114226114255%_ (##cdr _%g114218114228%_))
                          (_%hd114225114253%_ (##car _%g114218114228%_)))
                      (let ((_%hd114258%_ _%hd114225114253%_)
                            (_%rest114260%_ _%tl114226114255%_))
                        (_%K114224114250%_ _%rest114260%_ _%hd114258%_)))
                    (_%try-match114220114244%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f114117%_ _%xstx114118%_ _%ystx114119%_)
        (if (procedure? _%f114117%_)
            '#!void
            (error '"expected procedure" _%f114117%_))
        (let _%lp114121%_ ((_%xrest114123%_ _%xstx114118%_)
                           (_%yrest114124%_ _%ystx114119%_))
          (let* ((_%g114125114135%_ (gx#syntax-e _%xrest114123%_))
                 (_%else114128114143%_ (lambda () '#!void)))
            (let ((_%K114131114200%_
                   (lambda (_%xrest114169%_ _%xhd114170%_)
                     (let* ((_%g114171114178%_ (gx#syntax-e _%yrest114124%_))
                            (_%E114173114182%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114171114178%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114174114188%_
                             (lambda (_%yrest114185%_ _%yhd114186%_)
                               (_%f114117%_ _%xhd114170%_ _%yhd114186%_)
                               (_%lp114121%_
                                _%xrest114169%_
                                _%yrest114185%_))))
                       (if (##pair? _%g114171114178%_)
                           (let ((_%hd114175114191%_ (##car _%g114171114178%_))
                                 (_%tl114176114193%_
                                  (##cdr _%g114171114178%_)))
                             (let* ((_%yhd114196%_ _%hd114175114191%_)
                                    (_%yrest114198%_ _%tl114176114193%_))
                               (_%K114174114188%_
                                _%yrest114198%_
                                _%yhd114196%_)))
                           (_%E114173114182%_)))))
                  (_%K114130114163%_
                   (lambda ()
                     (let* ((_%yrest114147114152%_ _%yrest114124%_)
                            (_%E114149114156%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114147114152%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114150114160%_
                             (lambda ()
                               (_%f114117%_ _%xrest114123%_ _%yrest114124%_))))
                       (if (not (gx#stx-null? _%yrest114147114152%_))
                           (_%K114150114160%_)
                           (_%E114149114156%_))))))
              (let ((_%try-match114127114166%_
                     (lambda ()
                       (if (not (null? _%g114125114135%_))
                           (_%K114130114163%_)
                           (_%else114128114143%_)))))
                (if (##pair? _%g114125114135%_)
                    (let ((_%tl114133114205%_ (##cdr _%g114125114135%_))
                          (_%hd114132114203%_ (##car _%g114125114135%_)))
                      (let ((_%xhd114208%_ _%hd114132114203%_)
                            (_%xrest114210%_ _%tl114133114205%_))
                        (_%K114131114200%_ _%xrest114210%_ _%xhd114208%_)))
                    (_%try-match114127114166%_))))))))
    (define gx#stx-map
      (lambda _g114802_
        (let ((_g114801_ (##length _g114802_)))
          (cond ((##fx= _g114801_ 2) (apply gx#stx-map1 _g114802_))
                ((##fx= _g114801_ 3) (apply gx#stx-map2 _g114802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g114802_))))))
    (define gx#stx-map1
      (lambda (_%f114060%_ _%stx114061%_)
        (if (procedure? _%f114060%_)
            '#!void
            (error '"expected procedure" _%f114060%_))
        (let _%recur114063%_ ((_%rest114065%_ _%stx114061%_))
          (let* ((_%g114066114076%_ (gx#syntax-e _%rest114065%_))
                 (_%else114069114084%_
                  (lambda () (_%f114060%_ _%rest114065%_))))
            (let ((_%K114072114098%_
                   (lambda (_%rest114095%_ _%hd114096%_)
                     (cons (_%f114060%_ _%hd114096%_)
                           (_%recur114063%_ _%rest114095%_))))
                  (_%K114071114089%_ (lambda () '())))
              (let ((_%try-match114068114092%_
                     (lambda ()
                       (if (##null? _%g114066114076%_)
                           (_%K114071114089%_)
                           (_%else114069114084%_)))))
                (if (##pair? _%g114066114076%_)
                    (let ((_%tl114074114103%_ (##cdr _%g114066114076%_))
                          (_%hd114073114101%_ (##car _%g114066114076%_)))
                      (let ((_%hd114106%_ _%hd114073114101%_)
                            (_%rest114108%_ _%tl114074114103%_))
                        (_%K114072114098%_ _%rest114108%_ _%hd114106%_)))
                    (_%try-match114068114092%_))))))))
    (define gx#stx-map2
      (lambda (_%f113965%_ _%xstx113966%_ _%ystx113967%_)
        (if (procedure? _%f113965%_)
            '#!void
            (error '"expected procedure" _%f113965%_))
        (let _%recur113969%_ ((_%xrest113971%_ _%xstx113966%_)
                              (_%yrest113972%_ _%ystx113967%_))
          (let* ((_%g113973113983%_ (gx#syntax-e _%xrest113971%_))
                 (_%else113976113991%_ (lambda () '())))
            (let ((_%K113979114048%_
                   (lambda (_%xrest114017%_ _%xhd114018%_)
                     (let* ((_%g114019114026%_ (gx#syntax-e _%yrest113972%_))
                            (_%E114021114030%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114019114026%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114022114036%_
                             (lambda (_%yrest114033%_ _%yhd114034%_)
                               (cons (_%f113965%_ _%xhd114018%_ _%yhd114034%_)
                                     (_%recur113969%_
                                      _%xrest114017%_
                                      _%yrest114033%_)))))
                       (if (##pair? _%g114019114026%_)
                           (let ((_%hd114023114039%_ (##car _%g114019114026%_))
                                 (_%tl114024114041%_
                                  (##cdr _%g114019114026%_)))
                             (let* ((_%yhd114044%_ _%hd114023114039%_)
                                    (_%yrest114046%_ _%tl114024114041%_))
                               (_%K114022114036%_
                                _%yrest114046%_
                                _%yhd114044%_)))
                           (_%E114021114030%_)))))
                  (_%K113978114011%_
                   (lambda ()
                     (let* ((_%yrest113995114000%_ _%yrest113972%_)
                            (_%E113997114004%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113995114000%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113998114008%_
                             (lambda ()
                               (_%f113965%_ _%xrest113971%_ _%yrest113972%_))))
                       (if (not (gx#stx-null? _%yrest113995114000%_))
                           (_%K113998114008%_)
                           (_%E113997114004%_))))))
              (let ((_%try-match113975114014%_
                     (lambda ()
                       (if (not (null? _%g113973113983%_))
                           (_%K113978114011%_)
                           (_%else113976113991%_)))))
                (if (##pair? _%g113973113983%_)
                    (let ((_%tl113981114053%_ (##cdr _%g113973113983%_))
                          (_%hd113980114051%_ (##car _%g113973113983%_)))
                      (let ((_%xhd114056%_ _%hd113980114051%_)
                            (_%xrest114058%_ _%tl113981114053%_))
                        (_%K113979114048%_ _%xrest114058%_ _%xhd114056%_)))
                    (_%try-match113975114014%_))))))))
    (define gx#stx-andmap
      (lambda (_%f113915%_ _%stx113916%_)
        (if (procedure? _%f113915%_)
            '#!void
            (error '"expected procedure" _%f113915%_))
        (let _%lp113918%_ ((_%rest113920%_ _%stx113916%_))
          (let* ((_%g113921113931%_ (gx#syntax-e _%rest113920%_))
                 (_%else113924113939%_
                  (lambda () (_%f113915%_ _%rest113920%_))))
            (let ((_%K113927113953%_
                   (lambda (_%rest113950%_ _%hd113951%_)
                     (if (_%f113915%_ _%hd113951%_)
                         (_%lp113918%_ _%rest113950%_)
                         '#f)))
                  (_%K113926113944%_ (lambda () '#t)))
              (let ((_%try-match113923113947%_
                     (lambda ()
                       (if (##null? _%g113921113931%_)
                           (_%K113926113944%_)
                           (_%else113924113939%_)))))
                (if (##pair? _%g113921113931%_)
                    (let ((_%tl113929113958%_ (##cdr _%g113921113931%_))
                          (_%hd113928113956%_ (##car _%g113921113931%_)))
                      (let ((_%hd113961%_ _%hd113928113956%_)
                            (_%rest113963%_ _%tl113929113958%_))
                        (_%K113927113953%_ _%rest113963%_ _%hd113961%_)))
                    (_%try-match113923113947%_))))))))
    (define gx#stx-ormap
      (lambda (_%f113862%_ _%stx113863%_)
        (if (procedure? _%f113862%_)
            '#!void
            (error '"expected procedure" _%f113862%_))
        (let _%lp113865%_ ((_%rest113867%_ _%stx113863%_))
          (let* ((_%g113868113878%_ (gx#syntax-e _%rest113867%_))
                 (_%else113871113886%_
                  (lambda () (_%f113862%_ _%rest113867%_))))
            (let ((_%K113874113903%_
                   (lambda (_%rest113897%_ _%hd113898%_)
                     (let ((_%$e113900%_ (_%f113862%_ _%hd113898%_)))
                       (if _%$e113900%_
                           _%$e113900%_
                           (_%lp113865%_ _%rest113897%_)))))
                  (_%K113873113891%_ (lambda () '#f)))
              (let ((_%try-match113870113894%_
                     (lambda ()
                       (if (##null? _%g113868113878%_)
                           (_%K113873113891%_)
                           (_%else113871113886%_)))))
                (if (##pair? _%g113868113878%_)
                    (let ((_%tl113876113908%_ (##cdr _%g113868113878%_))
                          (_%hd113875113906%_ (##car _%g113868113878%_)))
                      (let ((_%hd113911%_ _%hd113875113906%_)
                            (_%rest113913%_ _%tl113876113908%_))
                        (_%K113874113903%_ _%rest113913%_ _%hd113911%_)))
                    (_%try-match113870113894%_))))))))
    (define gx#stx-foldl
      (lambda (_%f113810%_ _%iv113811%_ _%stx113812%_)
        (if (procedure? _%f113810%_)
            '#!void
            (error '"expected procedure" _%f113810%_))
        (let _%lp113814%_ ((_%r113816%_ _%iv113811%_)
                           (_%rest113817%_ _%stx113812%_))
          (let* ((_%g113818113828%_ (gx#syntax-e _%rest113817%_))
                 (_%else113821113836%_
                  (lambda () (_%f113810%_ _%rest113817%_ _%r113816%_))))
            (let ((_%K113824113850%_
                   (lambda (_%rest113847%_ _%hd113848%_)
                     (_%lp113814%_
                      (_%f113810%_ _%hd113848%_ _%r113816%_)
                      _%rest113847%_)))
                  (_%K113823113841%_ (lambda () _%r113816%_)))
              (let ((_%try-match113820113844%_
                     (lambda ()
                       (if (##null? _%g113818113828%_)
                           (_%K113823113841%_)
                           (_%else113821113836%_)))))
                (if (##pair? _%g113818113828%_)
                    (let ((_%tl113826113855%_ (##cdr _%g113818113828%_))
                          (_%hd113825113853%_ (##car _%g113818113828%_)))
                      (let ((_%hd113858%_ _%hd113825113853%_)
                            (_%rest113860%_ _%tl113826113855%_))
                        (_%K113824113850%_ _%rest113860%_ _%hd113858%_)))
                    (_%try-match113820113844%_))))))))
    (define gx#stx-foldr
      (lambda (_%f113759%_ _%iv113760%_ _%stx113761%_)
        (if (procedure? _%f113759%_)
            '#!void
            (error '"expected procedure" _%f113759%_))
        (let _%recur113763%_ ((_%rest113765%_ _%stx113761%_))
          (let* ((_%g113766113776%_ (gx#syntax-e _%rest113765%_))
                 (_%else113769113784%_
                  (lambda () (_%f113759%_ _%rest113765%_ _%iv113760%_))))
            (let ((_%K113772113798%_
                   (lambda (_%rest113795%_ _%hd113796%_)
                     (_%f113759%_
                      _%hd113796%_
                      (_%recur113763%_ _%rest113795%_))))
                  (_%K113771113789%_ (lambda () _%iv113760%_)))
              (let ((_%try-match113768113792%_
                     (lambda ()
                       (if (##null? _%g113766113776%_)
                           (_%K113771113789%_)
                           (_%else113769113784%_)))))
                (if (##pair? _%g113766113776%_)
                    (let ((_%tl113774113803%_ (##cdr _%g113766113776%_))
                          (_%hd113773113801%_ (##car _%g113766113776%_)))
                      (let ((_%hd113806%_ _%hd113773113801%_)
                            (_%rest113808%_ _%tl113774113803%_))
                        (_%K113772113798%_ _%rest113808%_ _%hd113806%_)))
                    (_%try-match113768113792%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx113757%_) (gx#stx-foldl cons '() _%stx113757%_)))
    (define gx#stx-last
      (lambda (_%stx113718%_)
        (let _%lp113720%_ ((_%rest113722%_ _%stx113718%_))
          (let* ((_%g113723113731%_ (gx#syntax-e _%rest113722%_))
                 (_%else113725113739%_ (lambda () _%rest113722%_))
                 (_%K113727113745%_
                  (lambda (_%rest113742%_ _%hd113743%_)
                    (if (gx#stx-null? _%rest113742%_)
                        _%hd113743%_
                        (_%lp113720%_ _%rest113742%_)))))
            (if (##pair? _%g113723113731%_)
                (let ((_%hd113728113748%_ (##car _%g113723113731%_))
                      (_%tl113729113750%_ (##cdr _%g113723113731%_)))
                  (let* ((_%hd113753%_ _%hd113728113748%_)
                         (_%rest113755%_ _%tl113729113750%_))
                    (_%K113727113745%_ _%rest113755%_ _%hd113753%_)))
                (_%else113725113739%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113689%_)
        (let _%lp113691%_ ((_%hd113693%_ _%stx113689%_))
          (let* ((_%g113694113701%_ (gx#syntax-e _%hd113693%_))
                 (_%E113696113705%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113694113701%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113697113710%_
                  (lambda (_%rest113708%_)
                    (if (gx#stx-pair? _%rest113708%_)
                        (_%lp113691%_ _%rest113708%_)
                        _%hd113693%_))))
            (if (##pair? _%g113694113701%_)
                (let* ((_%tl113699113713%_ (##cdr _%g113694113701%_))
                       (_%rest113716%_ _%tl113699113713%_))
                  (_%K113697113710%_ _%rest113716%_))
                (_%E113696113705%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113658%_ _%k113659%_)
        (let _%lp113661%_ ((_%rest113663%_ _%stx113658%_)
                           (_%k113664%_ _%k113659%_))
          (if (fxpositive? _%k113664%_)
              (let* ((_%g113665113672%_ (gx#syntax-e _%rest113663%_))
                     (_%E113667113676%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113665113672%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113668113681%_
                      (lambda (_%rest113679%_)
                        (_%lp113661%_ _%rest113679%_ (##fx- _%k113664%_ '1)))))
                (if (##pair? _%g113665113672%_)
                    (let* ((_%tl113670113684%_ (##cdr _%g113665113672%_))
                           (_%rest113687%_ _%tl113670113684%_))
                      (_%K113668113681%_ _%rest113687%_))
                    (_%E113667113676%_)))
              _%rest113663%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113655%_ _%k113656%_)
        (gx#stx-car (gx#stx-list-tail _%stx113655%_ _%k113656%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113567%_ _%key?113568%_)
        (if (procedure? _%key?113568%_)
            '#!void
            (error '"expected procedure" _%key?113568%_))
        (let _%lp113570%_ ((_%rest113572%_ _%stx113567%_))
          (let* ((_%g113573113583%_ (gx#stx-e _%rest113572%_))
                 (_%else113576113591%_ (lambda () '#f)))
            (let ((_%K113579113633%_
                   (lambda (_%rest113602%_ _%hd113603%_)
                     (if (_%key?113568%_ _%hd113603%_)
                         (let* ((_%g113604113612%_ (gx#stx-e _%rest113602%_))
                                (_%else113606113620%_ (lambda () '#f))
                                (_%K113608113625%_
                                 (lambda (_%rest113623%_)
                                   (_%lp113570%_ _%rest113623%_))))
                           (if (##pair? _%g113604113612%_)
                               (let* ((_%tl113610113628%_
                                       (##cdr _%g113604113612%_))
                                      (_%rest113631%_ _%tl113610113628%_))
                                 (_%lp113570%_ _%rest113631%_))
                               (_%else113606113620%_)))
                         '#f)))
                  (_%K113578113596%_ (lambda () '#t)))
              (let ((_%try-match113575113599%_
                     (lambda ()
                       (if (##null? _%g113573113583%_)
                           (_%K113578113596%_)
                           (_%else113576113591%_)))))
                (if (##pair? _%g113573113583%_)
                    (let ((_%tl113581113638%_ (##cdr _%g113573113583%_))
                          (_%hd113580113636%_ (##car _%g113573113583%_)))
                      (let ((_%hd113641%_ _%hd113580113636%_)
                            (_%rest113643%_ _%tl113581113638%_))
                        (_%K113579113633%_ _%rest113643%_ _%hd113641%_)))
                    (_%try-match113575113599%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113648%_)
        (let ((_%key?113650%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113648%_ _%key?113650%_))))
    (define gx#stx-plist?
      (lambda _g114804_
        (let ((_g114803_ (##length _g114804_)))
          (cond ((##fx= _g114803_ 1) (apply gx#stx-plist?__0 _g114804_))
                ((##fx= _g114803_ 2) (apply gx#stx-plist?__% _g114804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g114804_))))))
    (define gx#stx-getq__%
      (lambda (_%key113485%_ _%stx113486%_ _%key=?113487%_)
        (if (procedure? _%key=?113487%_)
            '#!void
            (error '"expected procedure" _%key=?113487%_))
        (let _%lp113489%_ ((_%rest113491%_ _%stx113486%_))
          (let* ((_%g113492113500%_ (gx#syntax-e _%rest113491%_))
                 (_%else113494113508%_ (lambda () '#f))
                 (_%K113496113542%_
                  (lambda (_%rest113511%_ _%hd113512%_)
                    (let* ((_%g113513113520%_ (gx#syntax-e _%rest113511%_))
                           (_%E113515113524%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113513113520%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113516113530%_
                            (lambda (_%rest113527%_ _%val113528%_)
                              (if (_%key=?113487%_ _%hd113512%_ _%key113485%_)
                                  _%val113528%_
                                  (_%lp113489%_ _%rest113527%_)))))
                      (if (##pair? _%g113513113520%_)
                          (let ((_%hd113517113533%_ (##car _%g113513113520%_))
                                (_%tl113518113535%_ (##cdr _%g113513113520%_)))
                            (let* ((_%val113538%_ _%hd113517113533%_)
                                   (_%rest113540%_ _%tl113518113535%_))
                              (_%K113516113530%_
                               _%rest113540%_
                               _%val113538%_)))
                          (_%E113515113524%_))))))
            (if (##pair? _%g113492113500%_)
                (let ((_%hd113497113545%_ (##car _%g113492113500%_))
                      (_%tl113498113547%_ (##cdr _%g113492113500%_)))
                  (let* ((_%hd113550%_ _%hd113497113545%_)
                         (_%rest113552%_ _%tl113498113547%_))
                    (_%K113496113542%_ _%rest113552%_ _%hd113550%_)))
                (_%else113494113508%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113557%_ _%stx113558%_)
        (let ((_%key=?113560%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113557%_ _%stx113558%_ _%key=?113560%_))))
    (define gx#stx-getq
      (lambda _g114806_
        (let ((_g114805_ (##length _g114806_)))
          (cond ((##fx= _g114805_ 2) (apply gx#stx-getq__0 _g114806_))
                ((##fx= _g114805_ 3) (apply gx#stx-getq__% _g114806_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g114806_))))))))
