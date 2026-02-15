(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1771178564)
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
      (lambda _%$args173738%_
        (apply make-instance gx#identifier-wrap::t _%$args173738%_)))
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
      (lambda _%$args173735%_
        (apply make-instance gx#syntax-wrap::t _%$args173735%_)))
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
      (lambda _%$args173732%_
        (apply make-instance gx#syntax-quote::t _%$args173732%_)))
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
      (lambda (_%stx173730%_) (symbol? (gx#stx-e _%stx173730%_))))
    (define gx#identifier-quote?
      (lambda (_%stx173728%_)
        (if (##structure-direct-instance-of? _%stx173728%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx173728%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx173723%_)
        (if (##structure-direct-instance-of? _%stx173723%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx173723%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx173723%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx173718%_)
        (if (##structure-direct-instance-of? _%stx173718%_ 'gx#syntax-quote::t)
            _%stx173718%_
            (if (##structure-direct-instance-of?
                 _%stx173718%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx173718%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx173692%_)
        (if (##structure-direct-instance-of? _%stx173692%_ 'gx#syntax-wrap::t)
            (let _%lp173695%_ ((_%e173697%_
                                (##unchecked-structure-ref
                                 _%stx173692%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks173698%_
                                (cons (##unchecked-structure-ref
                                       _%stx173692%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e173697%_)
                  (let ((_%$e173701%_
                         (##type-id (##structure-type _%e173697%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e173701%_)
                        (_%lp173695%_
                         (##unchecked-structure-ref _%e173697%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e173697%_ '3 '#f '#f)
                          _%marks173698%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e173701%_)
                                (eq? 'gx#identifier-wrap::t _%$e173701%_))
                            (##unchecked-structure-ref _%e173697%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e173701%_)
                                (_%lp173695%_
                                 (##unchecked-structure-ref
                                  _%e173697%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks173698%_)
                                _%e173697%_))))
                  (if (null? _%marks173698%_)
                      _%e173697%_
                      (if (pair? _%e173697%_)
                          (cons (gx#stx-wrap
                                 (##car _%e173697%_)
                                 _%marks173698%_)
                                (gx#stx-wrap
                                 (##cdr _%e173697%_)
                                 _%marks173698%_))
                          (if (vector? _%e173697%_)
                              (vector-map
                               (lambda (_%g173709173711%_)
                                 (gx#stx-wrap
                                  _%g173709173711%_
                                  _%marks173698%_))
                               _%e173697%_)
                              (if (box? _%e173697%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e173697%_)
                                        _%marks173698%_))
                                  _%e173697%_))))))
            (if (##structure-instance-of? _%stx173692%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx173692%_ '1 '#f '#f)
                _%stx173692%_))))
    (define gx#syntax->datum
      (lambda (_%stx173685%_)
        (if (##structure-instance-of? _%stx173685%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx173685%_ '1 '#f '#f))
            (if (pair? _%stx173685%_)
                (cons (gx#syntax->datum (##car _%stx173685%_))
                      (gx#syntax->datum (##cdr _%stx173685%_)))
                (if (vector? _%stx173685%_)
                    (vector-map gx#syntax->datum _%stx173685%_)
                    (if (box? _%stx173685%_)
                        (box (gx#syntax->datum (unbox _%stx173685%_)))
                        _%stx173685%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx173619%_ _%datum173620%_ _%src173621%_ _%quote?173622%_)
        (letrec ((_%wrap-datum173624%_
                  (lambda (_%e173657%_ _%marks173658%_)
                    (_%wrap-inner173626%_
                     _%e173657%_
                     (lambda (_%g173659173661%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g173659173661%_
                        _%src173621%_
                        _%marks173658%_)))))
                 (_%wrap-quote173625%_
                  (lambda (_%e173649%_ _%ctx173650%_ _%marks173651%_)
                    (_%wrap-inner173626%_
                     _%e173649%_
                     (lambda (_%g173652173654%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g173652173654%_
                        _%src173621%_
                        _%ctx173650%_
                        _%marks173651%_)))))
                 (_%wrap-inner173626%_
                  (lambda (_%e173637%_ _%wrap-e173638%_)
                    (let _%recur173640%_ ((_%e173642%_ _%e173637%_))
                      (if (symbol? _%e173642%_)
                          (_%wrap-e173638%_ _%e173642%_)
                          (if (pair? _%e173642%_)
                              (cons (_%recur173640%_ (##car _%e173642%_))
                                    (_%recur173640%_ (##cdr _%e173642%_)))
                              (if (vector? _%e173642%_)
                                  (vector-map _%recur173640%_ _%e173642%_)
                                  (if (box? _%e173642%_)
                                      (box (_%recur173640%_
                                            (unbox _%e173642%_)))
                                      _%e173642%_)))))))
                 (_%wrap-outer173627%_
                  (lambda (_%e173635%_)
                    (if (##structure-instance-of? _%e173635%_ 'gerbil#AST::t)
                        _%e173635%_
                        (##structure gx#AST::t _%e173635%_ _%src173621%_)))))
          (if (##structure-instance-of? _%datum173620%_ 'gerbil#AST::t)
              _%datum173620%_
              (if (not _%stx173619%_)
                  (##structure gx#AST::t _%datum173620%_ _%src173621%_)
                  (if (gx#identifier? _%stx173619%_)
                      (let ((_%stx173632%_ (gx#stx-unwrap__0 _%stx173619%_)))
                        (_%wrap-outer173627%_
                         (if (##structure-direct-instance-of?
                              _%stx173632%_
                              'gx#syntax-quote::t)
                             (if _%quote?173622%_
                                 (_%wrap-quote173625%_
                                  _%datum173620%_
                                  (##unchecked-structure-ref
                                   _%stx173632%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx173632%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum173624%_
                                  _%datum173620%_
                                  (##unchecked-structure-ref
                                   _%stx173632%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum173624%_
                              _%datum173620%_
                              (##unchecked-structure-ref
                               _%stx173632%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx173619%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx173667%_ _%datum173668%_)
        (let* ((_%src173670%_ '#f) (_%quote?173672%_ '#t))
          (gx#datum->syntax__%
           _%stx173667%_
           _%datum173668%_
           _%src173670%_
           _%quote?173672%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx173674%_ _%datum173675%_ _%src173676%_)
        (let ((_%quote?173678%_ '#t))
          (gx#datum->syntax__%
           _%stx173674%_
           _%datum173675%_
           _%src173676%_
           _%quote?173678%_))))
    (define gx#datum->syntax
      (lambda _g173818_
        (let ((_g173819_ (##length _g173818_)))
          (cond ((##fx= _g173819_ 2) (apply gx#datum->syntax__0 _g173818_))
                ((##fx= _g173819_ 3) (apply gx#datum->syntax__1 _g173818_))
                ((##fx= _g173819_ 4) (apply gx#datum->syntax__% _g173818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g173818_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx173585%_ _%marks173586%_)
        (let _%lp173588%_ ((_%e173590%_ _%stx173585%_)
                           (_%marks173591%_ _%marks173586%_)
                           (_%src173592%_ (gx#stx-source _%stx173585%_)))
          (if (##structure-direct-instance-of? _%e173590%_ 'gx#syntax-wrap::t)
              (_%lp173588%_
               (##unchecked-structure-ref _%e173590%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e173590%_ '3 '#f '#f)
                _%marks173591%_)
               (##unchecked-structure-ref _%e173590%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e173590%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks173591%_)
                      _%e173590%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e173590%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e173590%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e173590%_ '3 '#f '#f)
                        _%marks173591%_)))
                  (if (##structure-direct-instance-of?
                       _%e173590%_
                       'gx#syntax-quote::t)
                      _%e173590%_
                      (if (##structure-instance-of? _%e173590%_ 'gerbil#AST::t)
                          (_%lp173588%_
                           (##unchecked-structure-ref _%e173590%_ '1 '#f '#f)
                           _%marks173591%_
                           (##unchecked-structure-ref _%e173590%_ '2 '#f '#f))
                          (if (symbol? _%e173590%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e173590%_
                               _%src173592%_
                               (reverse _%marks173591%_))
                              (if (null? _%marks173591%_)
                                  _%e173590%_
                                  (if (pair? _%e173590%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e173590%_)
                                             _%marks173591%_)
                                            (gx#stx-wrap
                                             (##cdr _%e173590%_)
                                             _%marks173591%_))
                                      (if (vector? _%e173590%_)
                                          (vector-map
                                           (lambda (_%g173601173603%_)
                                             (gx#stx-wrap
                                              _%g173601173603%_
                                              _%marks173591%_))
                                           _%e173590%_)
                                          (if (box? _%e173590%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e173590%_)
                                                    _%marks173591%_))
                                              _%e173590%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx173611%_)
        (let ((_%marks173613%_ '()))
          (gx#stx-unwrap__% _%stx173611%_ _%marks173613%_))))
    (define gx#stx-unwrap
      (lambda _g173820_
        (let ((_g173821_ (##length _g173820_)))
          (cond ((##fx= _g173821_ 1) (apply gx#stx-unwrap__0 _g173820_))
                ((##fx= _g173821_ 2) (apply gx#stx-unwrap__% _g173820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g173820_))))))
    (define gx#stx-wrap
      (lambda (_%stx173578%_ _%marks173579%_)
        (foldl__0
         (lambda (_%mark173581%_ _%stx173582%_)
           (gx#stx-apply-mark _%stx173582%_ _%mark173581%_))
         _%stx173578%_
         _%marks173579%_)))
    (define gx#stx-rewrap
      (lambda (_%stx173572%_ _%marks173573%_)
        (foldr__0
         (lambda (_%mark173575%_ _%stx173576%_)
           (gx#stx-apply-mark _%stx173576%_ _%mark173575%_))
         _%stx173572%_
         _%marks173573%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx173566%_ _%mark173567%_)
        (if (##structure-direct-instance-of? _%stx173566%_ 'gx#syntax-quote::t)
            _%stx173566%_
            (if (and (##structure-direct-instance-of?
                      _%stx173566%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark173567%_
                          (##unchecked-structure-ref
                           _%stx173566%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx173566%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx173566%_
                 (gx#stx-source _%stx173566%_)
                 _%mark173567%_)))))
    (define gx#apply-mark
      (lambda (_%mark173530%_ _%marks173531%_)
        (let* ((_%marks173532173540%_ _%marks173531%_)
               (_%else173534173548%_
                (lambda () (cons _%mark173530%_ _%marks173531%_)))
               (_%K173536173554%_
                (lambda (_%rest173551%_ _%hd173552%_)
                  (if (eq? _%mark173530%_ _%hd173552%_)
                      _%rest173551%_
                      (cons _%mark173530%_ _%marks173531%_)))))
          (if (pair? _%marks173532173540%_)
              (let ((_%hd173537173557%_ (##car _%marks173532173540%_))
                    (_%tl173538173559%_ (##cdr _%marks173532173540%_)))
                (let* ((_%hd173562%_ _%hd173537173557%_)
                       (_%rest173564%_ _%tl173538173559%_))
                  (_%K173536173554%_ _%rest173564%_ _%hd173562%_)))
              (_%else173534173548%_)))))
    (define gx#stx-e
      (lambda (_%stx173525%_)
        (if (##structure-direct-instance-of? _%stx173525%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx173525%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx173525%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx173525%_ '1 '#f '#f)
                _%stx173525%_))))
    (define gx#stx-source
      (lambda (_%stx173523%_)
        (if (##structure-instance-of? _%stx173523%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx173523%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx173517%_ _%src173518%_)
        (if (or (##structure-instance-of? _%stx173517%_ 'gerbil#AST::t)
                (not _%src173518%_))
            _%stx173517%_
            (##structure gx#AST::t _%stx173517%_ _%src173518%_))))
    (define gx#stx-datum?
      (lambda (_%stx173515%_) (gx#self-quoting? (gx#stx-e _%stx173515%_))))
    (define gx#self-quoting?
      (lambda (_%x173498%_)
        (let ((_%$e173500%_ (immediate? _%x173498%_)))
          (if _%$e173500%_
              _%$e173500%_
              (let ((_%$e173503%_ (number? _%x173498%_)))
                (if _%$e173503%_
                    _%$e173503%_
                    (let ((_%$e173506%_ (keyword? _%x173498%_)))
                      (if _%$e173506%_
                          _%$e173506%_
                          (let ((_%$e173509%_ (string? _%x173498%_)))
                            (if _%$e173509%_
                                _%$e173509%_
                                (let ((_%$e173512%_ (vector? _%x173498%_)))
                                  (if _%$e173512%_
                                      _%$e173512%_
                                      (u8vector? _%x173498%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e173496%_) (boolean? (gx#stx-e _%e173496%_))))
    (define gx#stx-keyword?
      (lambda (_%e173494%_) (keyword? (gx#stx-e _%e173494%_))))
    (define gx#stx-char? (lambda (_%e173492%_) (char? (gx#stx-e _%e173492%_))))
    (define gx#stx-number?
      (lambda (_%e173490%_) (number? (gx#stx-e _%e173490%_))))
    (define gx#stx-fixnum?
      (lambda (_%e173488%_) (fixnum? (gx#stx-e _%e173488%_))))
    (define gx#stx-string?
      (lambda (_%e173486%_) (string? (gx#stx-e _%e173486%_))))
    (define gx#stx-null? (lambda (_%e173484%_) (null? (gx#stx-e _%e173484%_))))
    (define gx#stx-pair? (lambda (_%e173482%_) (pair? (gx#stx-e _%e173482%_))))
    (define gx#stx-list?
      (lambda (_%e173444%_)
        (let* ((_%g173445173454%_ (gx#stx-e _%e173444%_))
               (_%E173448173458%_
                (lambda ()
                  (error '"No clause matching"
                         _%g173445173454%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K173450173474%_
                 (lambda (_%rest173472%_) (gx#stx-list? _%rest173472%_)))
                (_%K173449173464%_
                 (lambda (_%tail173462%_) (null? _%tail173462%_))))
            (if (pair? _%g173445173454%_)
                (let* ((_%tl173452173477%_ (##cdr _%g173445173454%_))
                       (_%rest173480%_ _%tl173452173477%_))
                  (gx#stx-list? _%rest173480%_))
                (let ((_%tail173467%_ _%g173445173454%_))
                  (null? _%tail173467%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e173437%_)
        (let* ((_%e173439%_ (gx#stx-e _%e173437%_))
               (_%$e173441%_ (pair? _%e173439%_)))
          (if _%$e173441%_ _%$e173441%_ (null? _%e173439%_)))))
    (define gx#stx-vector?
      (lambda (_%e173435%_) (vector? (gx#stx-e _%e173435%_))))
    (define gx#stx-box? (lambda (_%e173433%_) (box? (gx#stx-e _%e173433%_))))
    (define gx#stx-eq?
      (lambda (_%x173430%_ _%y173431%_)
        (eq? (gx#stx-e _%x173430%_) (gx#stx-e _%y173431%_))))
    (define gx#stx-eqv?
      (lambda (_%x173427%_ _%y173428%_)
        (eqv? (gx#stx-e _%x173427%_) (gx#stx-e _%y173428%_))))
    (define gx#stx-equal?
      (lambda (_%x173424%_ _%y173425%_)
        (equal? (gx#stx-e _%x173424%_) (gx#stx-e _%y173425%_))))
    (define gx#stx-false? (lambda (_%x173422%_) (not (gx#stx-e _%x173422%_))))
    (define gx#stx-identifier
      (lambda (_%template173419%_ . _%args173420%_)
        (gx#datum->syntax__1
         _%template173419%_
         (apply make-symbol (gx#syntax->datum _%args173420%_))
         (gx#stx-source _%template173419%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx173417%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx173417%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx173412%_)
        (if (##structure-direct-instance-of?
             _%stx173412%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx173412%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx173412%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx173412%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx173412%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx173408%_)
        (let ((_%stx173410%_ (gx#stx-unwrap__0 _%stx173408%_)))
          (if (gx#identifier-quote? _%stx173410%_)
              (##unchecked-structure-ref _%stx173410%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx173363%_)
        (let* ((_%g173364173374%_ (gx#stx-e _%stx173363%_))
               (_%else173367173382%_ (lambda () '#f)))
          (let ((_%K173370173396%_
                 (lambda (_%rest173393%_ _%hd173394%_)
                   (if (gx#identifier? _%hd173394%_)
                       (gx#identifier-list? _%rest173393%_)
                       '#f)))
                (_%K173369173387%_ (lambda () '#t)))
            (let ((_%try-match173366173390%_
                   (lambda ()
                     (if (null? _%g173364173374%_)
                         (_%K173369173387%_)
                         (_%else173367173382%_)))))
              (if (pair? _%g173364173374%_)
                  (let ((_%tl173372173401%_ (##cdr _%g173364173374%_))
                        (_%hd173371173399%_ (##car _%g173364173374%_)))
                    (let ((_%hd173404%_ _%hd173371173399%_)
                          (_%rest173406%_ _%tl173372173401%_))
                      (_%K173370173396%_ _%rest173406%_ _%hd173404%_)))
                  (_%try-match173366173390%_)))))))
    (define gx#genident__%
      (lambda (_%e173343%_ _%src173344%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src173344%_) _%src173344%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e173346%_ (gx#stx-e _%e173343%_)))
              (if (symbol? _%e173346%_) _%e173346%_ 'g)))))
         _%src173344%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e173352%_ 'g) (_%src173354%_ '#f))
          (gx#genident__% _%e173352%_ _%src173354%_))))
    (define gx#genident__1
      (lambda (_%e173356%_)
        (let ((_%src173358%_ '#f))
          (gx#genident__% _%e173356%_ _%src173358%_))))
    (define gx#genident
      (lambda _g173822_
        (let ((_g173823_ (##length _g173822_)))
          (cond ((##fx= _g173823_ 0) (apply gx#genident__0 _g173822_))
                ((##fx= _g173823_ 1) (apply gx#genident__1 _g173822_))
                ((##fx= _g173823_ 2) (apply gx#genident__% _g173822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g173822_))))))
    (define gx#gentemps
      (lambda (_%stx-lst173338%_)
        (gx#stx-map1
         (lambda (_%x173340%_) (gx#genident__% _%x173340%_ _%x173340%_))
         _%stx-lst173338%_)))
    (define gx#syntax->list
      (lambda (_%stx173336%_) (gx#stx-map1 values _%stx173336%_)))
    (define gx#stx-car
      (lambda (_%stx173333%_)
        (declare (safe))
        (car (gx#syntax-e _%stx173333%_))))
    (define gx#stx-cdr
      (lambda (_%stx173330%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx173330%_))))
    (define gx#stx-length
      (lambda (_%stx173295%_)
        (let _%lp173297%_ ((_%rest173299%_ _%stx173295%_) (_%n173300%_ '0))
          (let* ((_%g173301173309%_ (gx#stx-e _%rest173299%_))
                 (_%else173303173317%_ (lambda () _%n173300%_))
                 (_%K173305173322%_
                  (lambda (_%rest173320%_)
                    (_%lp173297%_ _%rest173320%_ (##fx+ _%n173300%_ '1)))))
            (if (pair? _%g173301173309%_)
                (let* ((_%tl173307173325%_ (##cdr _%g173301173309%_))
                       (_%rest173328%_ _%tl173307173325%_))
                  (_%K173305173322%_ _%rest173328%_))
                (_%else173303173317%_))))))
    (define gx#stx-for-each
      (lambda _g173824_
        (let ((_g173825_ (##length _g173824_)))
          (cond ((##fx= _g173825_ 2) (apply gx#stx-for-each1 _g173824_))
                ((##fx= _g173825_ 3) (apply gx#stx-for-each2 _g173824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g173824_))))))
    (define gx#stx-for-each1
      (lambda (_%f173238%_ _%stx173239%_)
        (if (procedure? _%f173238%_)
            '#!void
            (error '"expected procedure" _%f173238%_))
        (let _%lp173241%_ ((_%rest173243%_ _%stx173239%_))
          (let* ((_%g173244173254%_ (gx#syntax-e _%rest173243%_))
                 (_%else173247173262%_
                  (lambda () (_%f173238%_ _%rest173243%_))))
            (let ((_%K173250173276%_
                   (lambda (_%rest173273%_ _%hd173274%_)
                     (_%f173238%_ _%hd173274%_)
                     (_%lp173241%_ _%rest173273%_)))
                  (_%K173249173267%_ (lambda () '#!void)))
              (let ((_%try-match173246173270%_
                     (lambda ()
                       (if (null? _%g173244173254%_)
                           (_%K173249173267%_)
                           (_%else173247173262%_)))))
                (if (pair? _%g173244173254%_)
                    (let ((_%tl173252173281%_ (##cdr _%g173244173254%_))
                          (_%hd173251173279%_ (##car _%g173244173254%_)))
                      (let ((_%hd173284%_ _%hd173251173279%_)
                            (_%rest173286%_ _%tl173252173281%_))
                        (_%K173250173276%_ _%rest173286%_ _%hd173284%_)))
                    (_%try-match173246173270%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f173143%_ _%xstx173144%_ _%ystx173145%_)
        (if (procedure? _%f173143%_)
            '#!void
            (error '"expected procedure" _%f173143%_))
        (let _%lp173147%_ ((_%xrest173149%_ _%xstx173144%_)
                           (_%yrest173150%_ _%ystx173145%_))
          (let* ((_%g173151173161%_ (gx#syntax-e _%xrest173149%_))
                 (_%else173154173169%_ (lambda () '#!void)))
            (let ((_%K173157173226%_
                   (lambda (_%xrest173195%_ _%xhd173196%_)
                     (let* ((_%g173197173204%_ (gx#syntax-e _%yrest173150%_))
                            (_%E173199173208%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g173197173204%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K173200173214%_
                             (lambda (_%yrest173211%_ _%yhd173212%_)
                               (_%f173143%_ _%xhd173196%_ _%yhd173212%_)
                               (_%lp173147%_
                                _%xrest173195%_
                                _%yrest173211%_))))
                       (if (pair? _%g173197173204%_)
                           (let ((_%hd173201173217%_ (##car _%g173197173204%_))
                                 (_%tl173202173219%_
                                  (##cdr _%g173197173204%_)))
                             (let* ((_%yhd173222%_ _%hd173201173217%_)
                                    (_%yrest173224%_ _%tl173202173219%_))
                               (_%K173200173214%_
                                _%yrest173224%_
                                _%yhd173222%_)))
                           (_%E173199173208%_)))))
                  (_%K173156173189%_
                   (lambda ()
                     (let* ((_%yrest173173173178%_ _%yrest173150%_)
                            (_%E173175173182%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest173173173178%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K173176173186%_
                             (lambda ()
                               (_%f173143%_ _%xrest173149%_ _%yrest173150%_))))
                       (if (gx#stx-null? _%yrest173173173178%_)
                           (_%E173175173182%_)
                           (_%K173176173186%_))))))
              (let ((_%try-match173153173192%_
                     (lambda ()
                       (if (null? _%g173151173161%_)
                           (_%else173154173169%_)
                           (_%K173156173189%_)))))
                (if (pair? _%g173151173161%_)
                    (let ((_%tl173159173231%_ (##cdr _%g173151173161%_))
                          (_%hd173158173229%_ (##car _%g173151173161%_)))
                      (let ((_%xhd173234%_ _%hd173158173229%_)
                            (_%xrest173236%_ _%tl173159173231%_))
                        (_%K173157173226%_ _%xrest173236%_ _%xhd173234%_)))
                    (_%try-match173153173192%_))))))))
    (define gx#stx-map
      (lambda _g173826_
        (let ((_g173827_ (##length _g173826_)))
          (cond ((##fx= _g173827_ 2) (apply gx#stx-map1 _g173826_))
                ((##fx= _g173827_ 3) (apply gx#stx-map2 _g173826_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g173826_))))))
    (define gx#stx-map1
      (lambda (_%f173086%_ _%stx173087%_)
        (if (procedure? _%f173086%_)
            '#!void
            (error '"expected procedure" _%f173086%_))
        (let _%recur173089%_ ((_%rest173091%_ _%stx173087%_))
          (let* ((_%g173092173102%_ (gx#syntax-e _%rest173091%_))
                 (_%else173095173110%_
                  (lambda () (_%f173086%_ _%rest173091%_))))
            (let ((_%K173098173124%_
                   (lambda (_%rest173121%_ _%hd173122%_)
                     (cons (_%f173086%_ _%hd173122%_)
                           (_%recur173089%_ _%rest173121%_))))
                  (_%K173097173115%_ (lambda () '())))
              (let ((_%try-match173094173118%_
                     (lambda ()
                       (if (null? _%g173092173102%_)
                           (_%K173097173115%_)
                           (_%else173095173110%_)))))
                (if (pair? _%g173092173102%_)
                    (let ((_%tl173100173129%_ (##cdr _%g173092173102%_))
                          (_%hd173099173127%_ (##car _%g173092173102%_)))
                      (let ((_%hd173132%_ _%hd173099173127%_)
                            (_%rest173134%_ _%tl173100173129%_))
                        (_%K173098173124%_ _%rest173134%_ _%hd173132%_)))
                    (_%try-match173094173118%_))))))))
    (define gx#stx-map2
      (lambda (_%f172991%_ _%xstx172992%_ _%ystx172993%_)
        (if (procedure? _%f172991%_)
            '#!void
            (error '"expected procedure" _%f172991%_))
        (let _%recur172995%_ ((_%xrest172997%_ _%xstx172992%_)
                              (_%yrest172998%_ _%ystx172993%_))
          (let* ((_%g172999173009%_ (gx#syntax-e _%xrest172997%_))
                 (_%else173002173017%_ (lambda () '())))
            (let ((_%K173005173074%_
                   (lambda (_%xrest173043%_ _%xhd173044%_)
                     (let* ((_%g173045173052%_ (gx#syntax-e _%yrest172998%_))
                            (_%E173047173056%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g173045173052%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K173048173062%_
                             (lambda (_%yrest173059%_ _%yhd173060%_)
                               (cons (_%f172991%_ _%xhd173044%_ _%yhd173060%_)
                                     (_%recur172995%_
                                      _%xrest173043%_
                                      _%yrest173059%_)))))
                       (if (pair? _%g173045173052%_)
                           (let ((_%hd173049173065%_ (##car _%g173045173052%_))
                                 (_%tl173050173067%_
                                  (##cdr _%g173045173052%_)))
                             (let* ((_%yhd173070%_ _%hd173049173065%_)
                                    (_%yrest173072%_ _%tl173050173067%_))
                               (_%K173048173062%_
                                _%yrest173072%_
                                _%yhd173070%_)))
                           (_%E173047173056%_)))))
                  (_%K173004173037%_
                   (lambda ()
                     (let* ((_%yrest173021173026%_ _%yrest172998%_)
                            (_%E173023173030%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest173021173026%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K173024173034%_
                             (lambda ()
                               (_%f172991%_ _%xrest172997%_ _%yrest172998%_))))
                       (if (gx#stx-null? _%yrest173021173026%_)
                           (_%E173023173030%_)
                           (_%K173024173034%_))))))
              (let ((_%try-match173001173040%_
                     (lambda ()
                       (if (null? _%g172999173009%_)
                           (_%else173002173017%_)
                           (_%K173004173037%_)))))
                (if (pair? _%g172999173009%_)
                    (let ((_%tl173007173079%_ (##cdr _%g172999173009%_))
                          (_%hd173006173077%_ (##car _%g172999173009%_)))
                      (let ((_%xhd173082%_ _%hd173006173077%_)
                            (_%xrest173084%_ _%tl173007173079%_))
                        (_%K173005173074%_ _%xrest173084%_ _%xhd173082%_)))
                    (_%try-match173001173040%_))))))))
    (define gx#stx-andmap
      (lambda (_%f172941%_ _%stx172942%_)
        (if (procedure? _%f172941%_)
            '#!void
            (error '"expected procedure" _%f172941%_))
        (let _%lp172944%_ ((_%rest172946%_ _%stx172942%_))
          (let* ((_%g172947172957%_ (gx#syntax-e _%rest172946%_))
                 (_%else172950172965%_
                  (lambda () (_%f172941%_ _%rest172946%_))))
            (let ((_%K172953172979%_
                   (lambda (_%rest172976%_ _%hd172977%_)
                     (if (_%f172941%_ _%hd172977%_)
                         (_%lp172944%_ _%rest172976%_)
                         '#f)))
                  (_%K172952172970%_ (lambda () '#t)))
              (let ((_%try-match172949172973%_
                     (lambda ()
                       (if (null? _%g172947172957%_)
                           (_%K172952172970%_)
                           (_%else172950172965%_)))))
                (if (pair? _%g172947172957%_)
                    (let ((_%tl172955172984%_ (##cdr _%g172947172957%_))
                          (_%hd172954172982%_ (##car _%g172947172957%_)))
                      (let ((_%hd172987%_ _%hd172954172982%_)
                            (_%rest172989%_ _%tl172955172984%_))
                        (_%K172953172979%_ _%rest172989%_ _%hd172987%_)))
                    (_%try-match172949172973%_))))))))
    (define gx#stx-ormap
      (lambda (_%f172888%_ _%stx172889%_)
        (if (procedure? _%f172888%_)
            '#!void
            (error '"expected procedure" _%f172888%_))
        (let _%lp172891%_ ((_%rest172893%_ _%stx172889%_))
          (let* ((_%g172894172904%_ (gx#syntax-e _%rest172893%_))
                 (_%else172897172912%_
                  (lambda () (_%f172888%_ _%rest172893%_))))
            (let ((_%K172900172929%_
                   (lambda (_%rest172923%_ _%hd172924%_)
                     (let ((_%$e172926%_ (_%f172888%_ _%hd172924%_)))
                       (if _%$e172926%_
                           _%$e172926%_
                           (_%lp172891%_ _%rest172923%_)))))
                  (_%K172899172917%_ (lambda () '#f)))
              (let ((_%try-match172896172920%_
                     (lambda ()
                       (if (null? _%g172894172904%_)
                           (_%K172899172917%_)
                           (_%else172897172912%_)))))
                (if (pair? _%g172894172904%_)
                    (let ((_%tl172902172934%_ (##cdr _%g172894172904%_))
                          (_%hd172901172932%_ (##car _%g172894172904%_)))
                      (let ((_%hd172937%_ _%hd172901172932%_)
                            (_%rest172939%_ _%tl172902172934%_))
                        (_%K172900172929%_ _%rest172939%_ _%hd172937%_)))
                    (_%try-match172896172920%_))))))))
    (define gx#stx-foldl
      (lambda (_%f172836%_ _%iv172837%_ _%stx172838%_)
        (if (procedure? _%f172836%_)
            '#!void
            (error '"expected procedure" _%f172836%_))
        (let _%lp172840%_ ((_%r172842%_ _%iv172837%_)
                           (_%rest172843%_ _%stx172838%_))
          (let* ((_%g172844172854%_ (gx#syntax-e _%rest172843%_))
                 (_%else172847172862%_
                  (lambda () (_%f172836%_ _%rest172843%_ _%r172842%_))))
            (let ((_%K172850172876%_
                   (lambda (_%rest172873%_ _%hd172874%_)
                     (_%lp172840%_
                      (_%f172836%_ _%hd172874%_ _%r172842%_)
                      _%rest172873%_)))
                  (_%K172849172867%_ (lambda () _%r172842%_)))
              (let ((_%try-match172846172870%_
                     (lambda ()
                       (if (null? _%g172844172854%_)
                           (_%K172849172867%_)
                           (_%else172847172862%_)))))
                (if (pair? _%g172844172854%_)
                    (let ((_%tl172852172881%_ (##cdr _%g172844172854%_))
                          (_%hd172851172879%_ (##car _%g172844172854%_)))
                      (let ((_%hd172884%_ _%hd172851172879%_)
                            (_%rest172886%_ _%tl172852172881%_))
                        (_%K172850172876%_ _%rest172886%_ _%hd172884%_)))
                    (_%try-match172846172870%_))))))))
    (define gx#stx-foldr
      (lambda (_%f172785%_ _%iv172786%_ _%stx172787%_)
        (if (procedure? _%f172785%_)
            '#!void
            (error '"expected procedure" _%f172785%_))
        (let _%recur172789%_ ((_%rest172791%_ _%stx172787%_))
          (let* ((_%g172792172802%_ (gx#syntax-e _%rest172791%_))
                 (_%else172795172810%_
                  (lambda () (_%f172785%_ _%rest172791%_ _%iv172786%_))))
            (let ((_%K172798172824%_
                   (lambda (_%rest172821%_ _%hd172822%_)
                     (_%f172785%_
                      _%hd172822%_
                      (_%recur172789%_ _%rest172821%_))))
                  (_%K172797172815%_ (lambda () _%iv172786%_)))
              (let ((_%try-match172794172818%_
                     (lambda ()
                       (if (null? _%g172792172802%_)
                           (_%K172797172815%_)
                           (_%else172795172810%_)))))
                (if (pair? _%g172792172802%_)
                    (let ((_%tl172800172829%_ (##cdr _%g172792172802%_))
                          (_%hd172799172827%_ (##car _%g172792172802%_)))
                      (let ((_%hd172832%_ _%hd172799172827%_)
                            (_%rest172834%_ _%tl172800172829%_))
                        (_%K172798172824%_ _%rest172834%_ _%hd172832%_)))
                    (_%try-match172794172818%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx172783%_) (gx#stx-foldl cons '() _%stx172783%_)))
    (define gx#stx-last
      (lambda (_%stx172744%_)
        (let _%lp172746%_ ((_%rest172748%_ _%stx172744%_))
          (let* ((_%g172749172757%_ (gx#syntax-e _%rest172748%_))
                 (_%else172751172765%_ (lambda () _%rest172748%_))
                 (_%K172753172771%_
                  (lambda (_%rest172768%_ _%hd172769%_)
                    (if (gx#stx-null? _%rest172768%_)
                        _%hd172769%_
                        (_%lp172746%_ _%rest172768%_)))))
            (if (pair? _%g172749172757%_)
                (let ((_%hd172754172774%_ (##car _%g172749172757%_))
                      (_%tl172755172776%_ (##cdr _%g172749172757%_)))
                  (let* ((_%hd172779%_ _%hd172754172774%_)
                         (_%rest172781%_ _%tl172755172776%_))
                    (_%K172753172771%_ _%rest172781%_ _%hd172779%_)))
                (_%else172751172765%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx172715%_)
        (let _%lp172717%_ ((_%hd172719%_ _%stx172715%_))
          (let* ((_%g172720172727%_ (gx#syntax-e _%hd172719%_))
                 (_%E172722172731%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g172720172727%_
                           '([_ . rest]))
                    '#!void))
                 (_%K172723172736%_
                  (lambda (_%rest172734%_)
                    (if (gx#stx-pair? _%rest172734%_)
                        (_%lp172717%_ _%rest172734%_)
                        _%hd172719%_))))
            (if (pair? _%g172720172727%_)
                (let* ((_%tl172725172739%_ (##cdr _%g172720172727%_))
                       (_%rest172742%_ _%tl172725172739%_))
                  (_%K172723172736%_ _%rest172742%_))
                (_%E172722172731%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx172684%_ _%k172685%_)
        (let _%lp172687%_ ((_%rest172689%_ _%stx172684%_)
                           (_%k172690%_ _%k172685%_))
          (if (fxpositive? _%k172690%_)
              (let* ((_%g172691172698%_ (gx#syntax-e _%rest172689%_))
                     (_%E172693172702%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g172691172698%_
                               '([_ . rest]))
                        '#!void))
                     (_%K172694172707%_
                      (lambda (_%rest172705%_)
                        (_%lp172687%_ _%rest172705%_ (##fx- _%k172690%_ '1)))))
                (if (pair? _%g172691172698%_)
                    (let* ((_%tl172696172710%_ (##cdr _%g172691172698%_))
                           (_%rest172713%_ _%tl172696172710%_))
                      (_%K172694172707%_ _%rest172713%_))
                    (_%E172693172702%_)))
              _%rest172689%_))))
    (define gx#stx-list-ref
      (lambda (_%stx172681%_ _%k172682%_)
        (gx#stx-car (gx#stx-list-tail _%stx172681%_ _%k172682%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx172593%_ _%key?172594%_)
        (if (procedure? _%key?172594%_)
            '#!void
            (error '"expected procedure" _%key?172594%_))
        (let _%lp172596%_ ((_%rest172598%_ _%stx172593%_))
          (let* ((_%g172599172609%_ (gx#stx-e _%rest172598%_))
                 (_%else172602172617%_ (lambda () '#f)))
            (let ((_%K172605172659%_
                   (lambda (_%rest172628%_ _%hd172629%_)
                     (if (_%key?172594%_ _%hd172629%_)
                         (let* ((_%g172630172638%_ (gx#stx-e _%rest172628%_))
                                (_%else172632172646%_ (lambda () '#f))
                                (_%K172634172651%_
                                 (lambda (_%rest172649%_)
                                   (_%lp172596%_ _%rest172649%_))))
                           (if (pair? _%g172630172638%_)
                               (let* ((_%tl172636172654%_
                                       (##cdr _%g172630172638%_))
                                      (_%rest172657%_ _%tl172636172654%_))
                                 (_%lp172596%_ _%rest172657%_))
                               (_%else172632172646%_)))
                         '#f)))
                  (_%K172604172622%_ (lambda () '#t)))
              (let ((_%try-match172601172625%_
                     (lambda ()
                       (if (null? _%g172599172609%_)
                           (_%K172604172622%_)
                           (_%else172602172617%_)))))
                (if (pair? _%g172599172609%_)
                    (let ((_%tl172607172664%_ (##cdr _%g172599172609%_))
                          (_%hd172606172662%_ (##car _%g172599172609%_)))
                      (let ((_%hd172667%_ _%hd172606172662%_)
                            (_%rest172669%_ _%tl172607172664%_))
                        (_%K172605172659%_ _%rest172669%_ _%hd172667%_)))
                    (_%try-match172601172625%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx172674%_)
        (let ((_%key?172676%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx172674%_ _%key?172676%_))))
    (define gx#stx-plist?
      (lambda _g173828_
        (let ((_g173829_ (##length _g173828_)))
          (cond ((##fx= _g173829_ 1) (apply gx#stx-plist?__0 _g173828_))
                ((##fx= _g173829_ 2) (apply gx#stx-plist?__% _g173828_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g173828_))))))
    (define gx#stx-getq__%
      (lambda (_%key172511%_ _%stx172512%_ _%key=?172513%_)
        (if (procedure? _%key=?172513%_)
            '#!void
            (error '"expected procedure" _%key=?172513%_))
        (let _%lp172515%_ ((_%rest172517%_ _%stx172512%_))
          (let* ((_%g172518172526%_ (gx#syntax-e _%rest172517%_))
                 (_%else172520172534%_ (lambda () '#f))
                 (_%K172522172568%_
                  (lambda (_%rest172537%_ _%hd172538%_)
                    (let* ((_%g172539172546%_ (gx#syntax-e _%rest172537%_))
                           (_%E172541172550%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g172539172546%_
                                     '([val . rest]))
                              '#!void))
                           (_%K172542172556%_
                            (lambda (_%rest172553%_ _%val172554%_)
                              (if (_%key=?172513%_ _%hd172538%_ _%key172511%_)
                                  _%val172554%_
                                  (_%lp172515%_ _%rest172553%_)))))
                      (if (pair? _%g172539172546%_)
                          (let ((_%hd172543172559%_ (##car _%g172539172546%_))
                                (_%tl172544172561%_ (##cdr _%g172539172546%_)))
                            (let* ((_%val172564%_ _%hd172543172559%_)
                                   (_%rest172566%_ _%tl172544172561%_))
                              (_%K172542172556%_
                               _%rest172566%_
                               _%val172564%_)))
                          (_%E172541172550%_))))))
            (if (pair? _%g172518172526%_)
                (let ((_%hd172523172571%_ (##car _%g172518172526%_))
                      (_%tl172524172573%_ (##cdr _%g172518172526%_)))
                  (let* ((_%hd172576%_ _%hd172523172571%_)
                         (_%rest172578%_ _%tl172524172573%_))
                    (_%K172522172568%_ _%rest172578%_ _%hd172576%_)))
                (_%else172520172534%_))))))
    (define gx#stx-getq__0
      (lambda (_%key172583%_ _%stx172584%_)
        (let ((_%key=?172586%_ gx#stx-eq?))
          (gx#stx-getq__% _%key172583%_ _%stx172584%_ _%key=?172586%_))))
    (define gx#stx-getq
      (lambda _g173830_
        (let ((_g173831_ (##length _g173830_)))
          (cond ((##fx= _g173831_ 2) (apply gx#stx-getq__0 _g173830_))
                ((##fx= _g173831_ 3) (apply gx#stx-getq__% _g173830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g173830_))))))))
