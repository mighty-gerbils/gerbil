(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1713044315)
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
      (lambda _%$args116603%_
        (apply make-instance gx#identifier-wrap::t _%$args116603%_)))
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
      (lambda _%$args116600%_
        (apply make-instance gx#syntax-wrap::t _%$args116600%_)))
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
      (lambda _%$args116597%_
        (apply make-instance gx#syntax-quote::t _%$args116597%_)))
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
      (lambda (_%stx116595%_) (symbol? (gx#stx-e _%stx116595%_))))
    (define gx#identifier-quote?
      (lambda (_%stx116593%_)
        (if (##structure-direct-instance-of? _%stx116593%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx116593%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx116588%_)
        (if (##structure-direct-instance-of? _%stx116588%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx116588%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx116588%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx116583%_)
        (if (##structure-direct-instance-of? _%stx116583%_ 'gx#syntax-quote::t)
            _%stx116583%_
            (if (##structure-direct-instance-of?
                 _%stx116583%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx116583%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx116557%_)
        (if (##structure-direct-instance-of? _%stx116557%_ 'gx#syntax-wrap::t)
            (let _%lp116560%_ ((_%e116562%_
                                (##unchecked-structure-ref
                                 _%stx116557%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks116563%_
                                (cons (##unchecked-structure-ref
                                       _%stx116557%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e116562%_)
                  (let ((_%$e116566%_
                         (##type-id (##structure-type _%e116562%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e116566%_)
                        (_%lp116560%_
                         (##unchecked-structure-ref _%e116562%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e116562%_ '3 '#f '#f)
                          _%marks116563%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e116566%_)
                                (eq? 'gx#identifier-wrap::t _%$e116566%_))
                            (##unchecked-structure-ref _%e116562%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e116566%_)
                                (_%lp116560%_
                                 (##unchecked-structure-ref
                                  _%e116562%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks116563%_)
                                _%e116562%_))))
                  (if (null? _%marks116563%_)
                      _%e116562%_
                      (if (pair? _%e116562%_)
                          (cons (gx#stx-wrap
                                 (##car _%e116562%_)
                                 _%marks116563%_)
                                (gx#stx-wrap
                                 (##cdr _%e116562%_)
                                 _%marks116563%_))
                          (if (vector? _%e116562%_)
                              (vector-map
                               (lambda (_%g116574116576%_)
                                 (gx#stx-wrap
                                  _%g116574116576%_
                                  _%marks116563%_))
                               _%e116562%_)
                              (if (box? _%e116562%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e116562%_)
                                        _%marks116563%_))
                                  _%e116562%_))))))
            (if (##structure-instance-of? _%stx116557%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116557%_ '1 '#f '#f)
                _%stx116557%_))))
    (define gx#syntax->datum
      (lambda (_%stx116550%_)
        (if (##structure-instance-of? _%stx116550%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx116550%_ '1 '#f '#f))
            (if (pair? _%stx116550%_)
                (cons (gx#syntax->datum (##car _%stx116550%_))
                      (gx#syntax->datum (##cdr _%stx116550%_)))
                (if (vector? _%stx116550%_)
                    (vector-map gx#syntax->datum _%stx116550%_)
                    (if (box? _%stx116550%_)
                        (box (gx#syntax->datum (unbox _%stx116550%_)))
                        _%stx116550%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx116484%_ _%datum116485%_ _%src116486%_ _%quote?116487%_)
        (letrec ((_%wrap-datum116489%_
                  (lambda (_%e116522%_ _%marks116523%_)
                    (_%wrap-inner116491%_
                     _%e116522%_
                     (lambda (_%g116524116526%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g116524116526%_
                        _%src116486%_
                        _%marks116523%_)))))
                 (_%wrap-quote116490%_
                  (lambda (_%e116514%_ _%ctx116515%_ _%marks116516%_)
                    (_%wrap-inner116491%_
                     _%e116514%_
                     (lambda (_%g116517116519%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g116517116519%_
                        _%src116486%_
                        _%ctx116515%_
                        _%marks116516%_)))))
                 (_%wrap-inner116491%_
                  (lambda (_%e116502%_ _%wrap-e116503%_)
                    (let _%recur116505%_ ((_%e116507%_ _%e116502%_))
                      (if (symbol? _%e116507%_)
                          (_%wrap-e116503%_ _%e116507%_)
                          (if (pair? _%e116507%_)
                              (cons (_%recur116505%_ (##car _%e116507%_))
                                    (_%recur116505%_ (##cdr _%e116507%_)))
                              (if (vector? _%e116507%_)
                                  (vector-map _%recur116505%_ _%e116507%_)
                                  (if (box? _%e116507%_)
                                      (box (_%recur116505%_
                                            (unbox _%e116507%_)))
                                      _%e116507%_)))))))
                 (_%wrap-outer116492%_
                  (lambda (_%e116500%_)
                    (if (##structure-instance-of? _%e116500%_ 'gerbil#AST::t)
                        _%e116500%_
                        (##structure gx#AST::t _%e116500%_ _%src116486%_)))))
          (if (##structure-instance-of? _%datum116485%_ 'gerbil#AST::t)
              _%datum116485%_
              (if (not _%stx116484%_)
                  (##structure gx#AST::t _%datum116485%_ _%src116486%_)
                  (if (gx#identifier? _%stx116484%_)
                      (let ((_%stx116497%_ (gx#stx-unwrap__0 _%stx116484%_)))
                        (_%wrap-outer116492%_
                         (if (##structure-direct-instance-of?
                              _%stx116497%_
                              'gx#syntax-quote::t)
                             (if _%quote?116487%_
                                 (_%wrap-quote116490%_
                                  _%datum116485%_
                                  (##unchecked-structure-ref
                                   _%stx116497%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx116497%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum116489%_
                                  _%datum116485%_
                                  (##unchecked-structure-ref
                                   _%stx116497%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum116489%_
                              _%datum116485%_
                              (##unchecked-structure-ref
                               _%stx116497%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx116484%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx116532%_ _%datum116533%_)
        (let* ((_%src116535%_ '#f) (_%quote?116537%_ '#t))
          (gx#datum->syntax__%
           _%stx116532%_
           _%datum116533%_
           _%src116535%_
           _%quote?116537%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx116539%_ _%datum116540%_ _%src116541%_)
        (let ((_%quote?116543%_ '#t))
          (gx#datum->syntax__%
           _%stx116539%_
           _%datum116540%_
           _%src116541%_
           _%quote?116543%_))))
    (define gx#datum->syntax
      (lambda _g116684_
        (let ((_g116683_ (##length _g116684_)))
          (cond ((##fx= _g116683_ 2) (apply gx#datum->syntax__0 _g116684_))
                ((##fx= _g116683_ 3) (apply gx#datum->syntax__1 _g116684_))
                ((##fx= _g116683_ 4) (apply gx#datum->syntax__% _g116684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g116684_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx116450%_ _%marks116451%_)
        (let _%lp116453%_ ((_%e116455%_ _%stx116450%_)
                           (_%marks116456%_ _%marks116451%_)
                           (_%src116457%_ (gx#stx-source _%stx116450%_)))
          (if (##structure-direct-instance-of? _%e116455%_ 'gx#syntax-wrap::t)
              (_%lp116453%_
               (##unchecked-structure-ref _%e116455%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e116455%_ '3 '#f '#f)
                _%marks116456%_)
               (##unchecked-structure-ref _%e116455%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e116455%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks116456%_)
                      _%e116455%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e116455%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e116455%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e116455%_ '3 '#f '#f)
                        _%marks116456%_)))
                  (if (##structure-direct-instance-of?
                       _%e116455%_
                       'gx#syntax-quote::t)
                      _%e116455%_
                      (if (##structure-instance-of? _%e116455%_ 'gerbil#AST::t)
                          (_%lp116453%_
                           (##unchecked-structure-ref _%e116455%_ '1 '#f '#f)
                           _%marks116456%_
                           (##unchecked-structure-ref _%e116455%_ '2 '#f '#f))
                          (if (symbol? _%e116455%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e116455%_
                               _%src116457%_
                               (reverse _%marks116456%_))
                              (if (null? _%marks116456%_)
                                  _%e116455%_
                                  (if (pair? _%e116455%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e116455%_)
                                             _%marks116456%_)
                                            (gx#stx-wrap
                                             (##cdr _%e116455%_)
                                             _%marks116456%_))
                                      (if (vector? _%e116455%_)
                                          (vector-map
                                           (lambda (_%g116466116468%_)
                                             (gx#stx-wrap
                                              _%g116466116468%_
                                              _%marks116456%_))
                                           _%e116455%_)
                                          (if (box? _%e116455%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e116455%_)
                                                    _%marks116456%_))
                                              _%e116455%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx116476%_)
        (let ((_%marks116478%_ '()))
          (gx#stx-unwrap__% _%stx116476%_ _%marks116478%_))))
    (define gx#stx-unwrap
      (lambda _g116686_
        (let ((_g116685_ (##length _g116686_)))
          (cond ((##fx= _g116685_ 1) (apply gx#stx-unwrap__0 _g116686_))
                ((##fx= _g116685_ 2) (apply gx#stx-unwrap__% _g116686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g116686_))))))
    (define gx#stx-wrap
      (lambda (_%stx116443%_ _%marks116444%_)
        (__foldl1
         (lambda (_%mark116446%_ _%stx116447%_)
           (gx#stx-apply-mark _%stx116447%_ _%mark116446%_))
         _%stx116443%_
         _%marks116444%_)))
    (define gx#stx-rewrap
      (lambda (_%stx116437%_ _%marks116438%_)
        (__foldr1
         (lambda (_%mark116440%_ _%stx116441%_)
           (gx#stx-apply-mark _%stx116441%_ _%mark116440%_))
         _%stx116437%_
         _%marks116438%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx116431%_ _%mark116432%_)
        (if (##structure-direct-instance-of? _%stx116431%_ 'gx#syntax-quote::t)
            _%stx116431%_
            (if (and (##structure-direct-instance-of?
                      _%stx116431%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark116432%_
                          (##unchecked-structure-ref
                           _%stx116431%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx116431%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx116431%_
                 (gx#stx-source _%stx116431%_)
                 _%mark116432%_)))))
    (define gx#apply-mark
      (lambda (_%mark116395%_ _%marks116396%_)
        (let* ((_%marks116397116405%_ _%marks116396%_)
               (_%else116399116413%_
                (lambda () (cons _%mark116395%_ _%marks116396%_)))
               (_%K116401116419%_
                (lambda (_%rest116416%_ _%hd116417%_)
                  (if (eq? _%mark116395%_ _%hd116417%_)
                      _%rest116416%_
                      (cons _%mark116395%_ _%marks116396%_)))))
          (if (##pair? _%marks116397116405%_)
              (let ((_%hd116402116422%_ (##car _%marks116397116405%_))
                    (_%tl116403116424%_ (##cdr _%marks116397116405%_)))
                (let* ((_%hd116427%_ _%hd116402116422%_)
                       (_%rest116429%_ _%tl116403116424%_))
                  (_%K116401116419%_ _%rest116429%_ _%hd116427%_)))
              (_%else116399116413%_)))))
    (define gx#stx-e
      (lambda (_%stx116390%_)
        (if (##structure-direct-instance-of? _%stx116390%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx116390%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx116390%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116390%_ '1 '#f '#f)
                _%stx116390%_))))
    (define gx#stx-source
      (lambda (_%stx116388%_)
        (if (##structure-instance-of? _%stx116388%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx116388%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx116382%_ _%src116383%_)
        (if (or (##structure-instance-of? _%stx116382%_ 'gerbil#AST::t)
                (not _%src116383%_))
            _%stx116382%_
            (##structure gx#AST::t _%stx116382%_ _%src116383%_))))
    (define gx#stx-datum?
      (lambda (_%stx116380%_) (gx#self-quoting? (gx#stx-e _%stx116380%_))))
    (define gx#self-quoting?
      (lambda (_%x116363%_)
        (let ((_%$e116365%_ (immediate? _%x116363%_)))
          (if _%$e116365%_
              _%$e116365%_
              (let ((_%$e116368%_ (number? _%x116363%_)))
                (if _%$e116368%_
                    _%$e116368%_
                    (let ((_%$e116371%_ (keyword? _%x116363%_)))
                      (if _%$e116371%_
                          _%$e116371%_
                          (let ((_%$e116374%_ (string? _%x116363%_)))
                            (if _%$e116374%_
                                _%$e116374%_
                                (let ((_%$e116377%_ (vector? _%x116363%_)))
                                  (if _%$e116377%_
                                      _%$e116377%_
                                      (u8vector? _%x116363%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e116361%_) (boolean? (gx#stx-e _%e116361%_))))
    (define gx#stx-keyword?
      (lambda (_%e116359%_) (keyword? (gx#stx-e _%e116359%_))))
    (define gx#stx-char? (lambda (_%e116357%_) (char? (gx#stx-e _%e116357%_))))
    (define gx#stx-number?
      (lambda (_%e116355%_) (number? (gx#stx-e _%e116355%_))))
    (define gx#stx-fixnum?
      (lambda (_%e116353%_) (fixnum? (gx#stx-e _%e116353%_))))
    (define gx#stx-string?
      (lambda (_%e116351%_) (string? (gx#stx-e _%e116351%_))))
    (define gx#stx-null? (lambda (_%e116349%_) (null? (gx#stx-e _%e116349%_))))
    (define gx#stx-pair? (lambda (_%e116347%_) (pair? (gx#stx-e _%e116347%_))))
    (define gx#stx-list?
      (lambda (_%e116309%_)
        (let* ((_%g116310116319%_ (gx#stx-e _%e116309%_))
               (_%E116313116323%_
                (lambda ()
                  (error '"No clause matching"
                         _%g116310116319%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K116315116339%_
                 (lambda (_%rest116337%_) (gx#stx-list? _%rest116337%_)))
                (_%K116314116329%_
                 (lambda (_%tail116327%_) (null? _%tail116327%_))))
            (if (##pair? _%g116310116319%_)
                (let* ((_%tl116317116342%_ (##cdr _%g116310116319%_))
                       (_%rest116345%_ _%tl116317116342%_))
                  (gx#stx-list? _%rest116345%_))
                (let ((_%tail116332%_ _%g116310116319%_))
                  (null? _%tail116332%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e116302%_)
        (let* ((_%e116304%_ (gx#stx-e _%e116302%_))
               (_%$e116306%_ (pair? _%e116304%_)))
          (if _%$e116306%_ _%$e116306%_ (null? _%e116304%_)))))
    (define gx#stx-vector?
      (lambda (_%e116300%_) (vector? (gx#stx-e _%e116300%_))))
    (define gx#stx-box? (lambda (_%e116298%_) (box? (gx#stx-e _%e116298%_))))
    (define gx#stx-eq?
      (lambda (_%x116295%_ _%y116296%_)
        (eq? (gx#stx-e _%x116295%_) (gx#stx-e _%y116296%_))))
    (define gx#stx-eqv?
      (lambda (_%x116292%_ _%y116293%_)
        (eqv? (gx#stx-e _%x116292%_) (gx#stx-e _%y116293%_))))
    (define gx#stx-equal?
      (lambda (_%x116289%_ _%y116290%_)
        (equal? (gx#stx-e _%x116289%_) (gx#stx-e _%y116290%_))))
    (define gx#stx-false? (lambda (_%x116287%_) (not (gx#stx-e _%x116287%_))))
    (define gx#stx-identifier
      (lambda (_%template116284%_ . _%args116285%_)
        (gx#datum->syntax__1
         _%template116284%_
         (apply make-symbol (gx#syntax->datum _%args116285%_))
         (gx#stx-source _%template116284%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx116282%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx116282%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx116277%_)
        (if (##structure-direct-instance-of?
             _%stx116277%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx116277%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx116277%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx116277%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx116277%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx116273%_)
        (let ((_%stx116275%_ (gx#stx-unwrap__0 _%stx116273%_)))
          (if (gx#identifier-quote? _%stx116275%_)
              (##unchecked-structure-ref _%stx116275%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx116228%_)
        (let* ((_%g116229116239%_ (gx#stx-e _%stx116228%_))
               (_%else116232116247%_ (lambda () '#f)))
          (let ((_%K116235116261%_
                 (lambda (_%rest116258%_ _%hd116259%_)
                   (if (gx#identifier? _%hd116259%_)
                       (gx#identifier-list? _%rest116258%_)
                       '#f)))
                (_%K116234116252%_ (lambda () '#t)))
            (let ((_%try-match116231116255%_
                   (lambda ()
                     (if (##null? _%g116229116239%_)
                         (_%K116234116252%_)
                         (_%else116232116247%_)))))
              (if (##pair? _%g116229116239%_)
                  (let ((_%tl116237116266%_ (##cdr _%g116229116239%_))
                        (_%hd116236116264%_ (##car _%g116229116239%_)))
                    (let ((_%hd116269%_ _%hd116236116264%_)
                          (_%rest116271%_ _%tl116237116266%_))
                      (_%K116235116261%_ _%rest116271%_ _%hd116269%_)))
                  (_%try-match116231116255%_)))))))
    (define gx#genident__%
      (lambda (_%e116205%_ _%src116206%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e116208%_ (gx#stx-e _%e116205%_)))
                   (if (interned-symbol? _%e116208%_) _%e116208%_ 'g)))
         (let ((_%$e116210%_ (gx#stx-source _%e116205%_)))
           (if _%$e116210%_ _%$e116210%_ _%src116206%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e116217%_ 'g) (_%src116219%_ '#f))
          (gx#genident__% _%e116217%_ _%src116219%_))))
    (define gx#genident__1
      (lambda (_%e116221%_)
        (let ((_%src116223%_ '#f))
          (gx#genident__% _%e116221%_ _%src116223%_))))
    (define gx#genident
      (lambda _g116688_
        (let ((_g116687_ (##length _g116688_)))
          (cond ((##fx= _g116687_ 0) (apply gx#genident__0 _g116688_))
                ((##fx= _g116687_ 1) (apply gx#genident__1 _g116688_))
                ((##fx= _g116687_ 2) (apply gx#genident__% _g116688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g116688_))))))
    (define gx#gentemps
      (lambda (_%stx-lst116202%_) (gx#stx-map1 gx#genident _%stx-lst116202%_)))
    (define gx#syntax->list
      (lambda (_%stx116200%_) (gx#stx-map1 values _%stx116200%_)))
    (define gx#stx-car
      (lambda (_%stx116197%_)
        (declare (safe))
        (car (gx#syntax-e _%stx116197%_))))
    (define gx#stx-cdr
      (lambda (_%stx116194%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx116194%_))))
    (define gx#stx-length
      (lambda (_%stx116159%_)
        (let _%lp116161%_ ((_%rest116163%_ _%stx116159%_) (_%n116164%_ '0))
          (let* ((_%g116165116173%_ (gx#stx-e _%rest116163%_))
                 (_%else116167116181%_ (lambda () _%n116164%_))
                 (_%K116169116186%_
                  (lambda (_%rest116184%_)
                    (_%lp116161%_ _%rest116184%_ (##fx+ _%n116164%_ '1)))))
            (if (##pair? _%g116165116173%_)
                (let* ((_%tl116171116189%_ (##cdr _%g116165116173%_))
                       (_%rest116192%_ _%tl116171116189%_))
                  (_%K116169116186%_ _%rest116192%_))
                (_%else116167116181%_))))))
    (define gx#stx-for-each
      (lambda _g116690_
        (let ((_g116689_ (##length _g116690_)))
          (cond ((##fx= _g116689_ 2) (apply gx#stx-for-each1 _g116690_))
                ((##fx= _g116689_ 3) (apply gx#stx-for-each2 _g116690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g116690_))))))
    (define gx#stx-for-each1
      (lambda (_%f116102%_ _%stx116103%_)
        (if (procedure? _%f116102%_)
            '#!void
            (error '"expected procedure" _%f116102%_))
        (let _%lp116105%_ ((_%rest116107%_ _%stx116103%_))
          (let* ((_%g116108116118%_ (gx#syntax-e _%rest116107%_))
                 (_%else116111116126%_
                  (lambda () (_%f116102%_ _%rest116107%_))))
            (let ((_%K116114116140%_
                   (lambda (_%rest116137%_ _%hd116138%_)
                     (_%f116102%_ _%hd116138%_)
                     (_%lp116105%_ _%rest116137%_)))
                  (_%K116113116131%_ (lambda () '#!void)))
              (let ((_%try-match116110116134%_
                     (lambda ()
                       (if (##null? _%g116108116118%_)
                           (_%K116113116131%_)
                           (_%else116111116126%_)))))
                (if (##pair? _%g116108116118%_)
                    (let ((_%tl116116116145%_ (##cdr _%g116108116118%_))
                          (_%hd116115116143%_ (##car _%g116108116118%_)))
                      (let ((_%hd116148%_ _%hd116115116143%_)
                            (_%rest116150%_ _%tl116116116145%_))
                        (_%K116114116140%_ _%rest116150%_ _%hd116148%_)))
                    (_%try-match116110116134%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f116007%_ _%xstx116008%_ _%ystx116009%_)
        (if (procedure? _%f116007%_)
            '#!void
            (error '"expected procedure" _%f116007%_))
        (let _%lp116011%_ ((_%xrest116013%_ _%xstx116008%_)
                           (_%yrest116014%_ _%ystx116009%_))
          (let* ((_%g116015116025%_ (gx#syntax-e _%xrest116013%_))
                 (_%else116018116033%_ (lambda () '#!void)))
            (let ((_%K116021116090%_
                   (lambda (_%xrest116059%_ _%xhd116060%_)
                     (let* ((_%g116061116068%_ (gx#syntax-e _%yrest116014%_))
                            (_%E116063116072%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g116061116068%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K116064116078%_
                             (lambda (_%yrest116075%_ _%yhd116076%_)
                               (_%f116007%_ _%xhd116060%_ _%yhd116076%_)
                               (_%lp116011%_
                                _%xrest116059%_
                                _%yrest116075%_))))
                       (if (##pair? _%g116061116068%_)
                           (let ((_%hd116065116081%_ (##car _%g116061116068%_))
                                 (_%tl116066116083%_
                                  (##cdr _%g116061116068%_)))
                             (let* ((_%yhd116086%_ _%hd116065116081%_)
                                    (_%yrest116088%_ _%tl116066116083%_))
                               (_%K116064116078%_
                                _%yrest116088%_
                                _%yhd116086%_)))
                           (_%E116063116072%_)))))
                  (_%K116020116053%_
                   (lambda ()
                     (let* ((_%yrest116037116042%_ _%yrest116014%_)
                            (_%E116039116046%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest116037116042%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K116040116050%_
                             (lambda ()
                               (_%f116007%_ _%xrest116013%_ _%yrest116014%_))))
                       (if (gx#stx-null? _%yrest116037116042%_)
                           (_%E116039116046%_)
                           (_%K116040116050%_))))))
              (let ((_%try-match116017116056%_
                     (lambda ()
                       (if (null? _%g116015116025%_)
                           (_%else116018116033%_)
                           (_%K116020116053%_)))))
                (if (##pair? _%g116015116025%_)
                    (let ((_%tl116023116095%_ (##cdr _%g116015116025%_))
                          (_%hd116022116093%_ (##car _%g116015116025%_)))
                      (let ((_%xhd116098%_ _%hd116022116093%_)
                            (_%xrest116100%_ _%tl116023116095%_))
                        (_%K116021116090%_ _%xrest116100%_ _%xhd116098%_)))
                    (_%try-match116017116056%_))))))))
    (define gx#stx-map
      (lambda _g116692_
        (let ((_g116691_ (##length _g116692_)))
          (cond ((##fx= _g116691_ 2) (apply gx#stx-map1 _g116692_))
                ((##fx= _g116691_ 3) (apply gx#stx-map2 _g116692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g116692_))))))
    (define gx#stx-map1
      (lambda (_%f115950%_ _%stx115951%_)
        (if (procedure? _%f115950%_)
            '#!void
            (error '"expected procedure" _%f115950%_))
        (let _%recur115953%_ ((_%rest115955%_ _%stx115951%_))
          (let* ((_%g115956115966%_ (gx#syntax-e _%rest115955%_))
                 (_%else115959115974%_
                  (lambda () (_%f115950%_ _%rest115955%_))))
            (let ((_%K115962115988%_
                   (lambda (_%rest115985%_ _%hd115986%_)
                     (cons (_%f115950%_ _%hd115986%_)
                           (_%recur115953%_ _%rest115985%_))))
                  (_%K115961115979%_ (lambda () '())))
              (let ((_%try-match115958115982%_
                     (lambda ()
                       (if (##null? _%g115956115966%_)
                           (_%K115961115979%_)
                           (_%else115959115974%_)))))
                (if (##pair? _%g115956115966%_)
                    (let ((_%tl115964115993%_ (##cdr _%g115956115966%_))
                          (_%hd115963115991%_ (##car _%g115956115966%_)))
                      (let ((_%hd115996%_ _%hd115963115991%_)
                            (_%rest115998%_ _%tl115964115993%_))
                        (_%K115962115988%_ _%rest115998%_ _%hd115996%_)))
                    (_%try-match115958115982%_))))))))
    (define gx#stx-map2
      (lambda (_%f115855%_ _%xstx115856%_ _%ystx115857%_)
        (if (procedure? _%f115855%_)
            '#!void
            (error '"expected procedure" _%f115855%_))
        (let _%recur115859%_ ((_%xrest115861%_ _%xstx115856%_)
                              (_%yrest115862%_ _%ystx115857%_))
          (let* ((_%g115863115873%_ (gx#syntax-e _%xrest115861%_))
                 (_%else115866115881%_ (lambda () '())))
            (let ((_%K115869115938%_
                   (lambda (_%xrest115907%_ _%xhd115908%_)
                     (let* ((_%g115909115916%_ (gx#syntax-e _%yrest115862%_))
                            (_%E115911115920%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g115909115916%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K115912115926%_
                             (lambda (_%yrest115923%_ _%yhd115924%_)
                               (cons (_%f115855%_ _%xhd115908%_ _%yhd115924%_)
                                     (_%recur115859%_
                                      _%xrest115907%_
                                      _%yrest115923%_)))))
                       (if (##pair? _%g115909115916%_)
                           (let ((_%hd115913115929%_ (##car _%g115909115916%_))
                                 (_%tl115914115931%_
                                  (##cdr _%g115909115916%_)))
                             (let* ((_%yhd115934%_ _%hd115913115929%_)
                                    (_%yrest115936%_ _%tl115914115931%_))
                               (_%K115912115926%_
                                _%yrest115936%_
                                _%yhd115934%_)))
                           (_%E115911115920%_)))))
                  (_%K115868115901%_
                   (lambda ()
                     (let* ((_%yrest115885115890%_ _%yrest115862%_)
                            (_%E115887115894%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest115885115890%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K115888115898%_
                             (lambda ()
                               (_%f115855%_ _%xrest115861%_ _%yrest115862%_))))
                       (if (gx#stx-null? _%yrest115885115890%_)
                           (_%E115887115894%_)
                           (_%K115888115898%_))))))
              (let ((_%try-match115865115904%_
                     (lambda ()
                       (if (null? _%g115863115873%_)
                           (_%else115866115881%_)
                           (_%K115868115901%_)))))
                (if (##pair? _%g115863115873%_)
                    (let ((_%tl115871115943%_ (##cdr _%g115863115873%_))
                          (_%hd115870115941%_ (##car _%g115863115873%_)))
                      (let ((_%xhd115946%_ _%hd115870115941%_)
                            (_%xrest115948%_ _%tl115871115943%_))
                        (_%K115869115938%_ _%xrest115948%_ _%xhd115946%_)))
                    (_%try-match115865115904%_))))))))
    (define gx#stx-andmap
      (lambda (_%f115805%_ _%stx115806%_)
        (if (procedure? _%f115805%_)
            '#!void
            (error '"expected procedure" _%f115805%_))
        (let _%lp115808%_ ((_%rest115810%_ _%stx115806%_))
          (let* ((_%g115811115821%_ (gx#syntax-e _%rest115810%_))
                 (_%else115814115829%_
                  (lambda () (_%f115805%_ _%rest115810%_))))
            (let ((_%K115817115843%_
                   (lambda (_%rest115840%_ _%hd115841%_)
                     (if (_%f115805%_ _%hd115841%_)
                         (_%lp115808%_ _%rest115840%_)
                         '#f)))
                  (_%K115816115834%_ (lambda () '#t)))
              (let ((_%try-match115813115837%_
                     (lambda ()
                       (if (##null? _%g115811115821%_)
                           (_%K115816115834%_)
                           (_%else115814115829%_)))))
                (if (##pair? _%g115811115821%_)
                    (let ((_%tl115819115848%_ (##cdr _%g115811115821%_))
                          (_%hd115818115846%_ (##car _%g115811115821%_)))
                      (let ((_%hd115851%_ _%hd115818115846%_)
                            (_%rest115853%_ _%tl115819115848%_))
                        (_%K115817115843%_ _%rest115853%_ _%hd115851%_)))
                    (_%try-match115813115837%_))))))))
    (define gx#stx-ormap
      (lambda (_%f115752%_ _%stx115753%_)
        (if (procedure? _%f115752%_)
            '#!void
            (error '"expected procedure" _%f115752%_))
        (let _%lp115755%_ ((_%rest115757%_ _%stx115753%_))
          (let* ((_%g115758115768%_ (gx#syntax-e _%rest115757%_))
                 (_%else115761115776%_
                  (lambda () (_%f115752%_ _%rest115757%_))))
            (let ((_%K115764115793%_
                   (lambda (_%rest115787%_ _%hd115788%_)
                     (let ((_%$e115790%_ (_%f115752%_ _%hd115788%_)))
                       (if _%$e115790%_
                           _%$e115790%_
                           (_%lp115755%_ _%rest115787%_)))))
                  (_%K115763115781%_ (lambda () '#f)))
              (let ((_%try-match115760115784%_
                     (lambda ()
                       (if (##null? _%g115758115768%_)
                           (_%K115763115781%_)
                           (_%else115761115776%_)))))
                (if (##pair? _%g115758115768%_)
                    (let ((_%tl115766115798%_ (##cdr _%g115758115768%_))
                          (_%hd115765115796%_ (##car _%g115758115768%_)))
                      (let ((_%hd115801%_ _%hd115765115796%_)
                            (_%rest115803%_ _%tl115766115798%_))
                        (_%K115764115793%_ _%rest115803%_ _%hd115801%_)))
                    (_%try-match115760115784%_))))))))
    (define gx#stx-foldl
      (lambda (_%f115700%_ _%iv115701%_ _%stx115702%_)
        (if (procedure? _%f115700%_)
            '#!void
            (error '"expected procedure" _%f115700%_))
        (let _%lp115704%_ ((_%r115706%_ _%iv115701%_)
                           (_%rest115707%_ _%stx115702%_))
          (let* ((_%g115708115718%_ (gx#syntax-e _%rest115707%_))
                 (_%else115711115726%_
                  (lambda () (_%f115700%_ _%rest115707%_ _%r115706%_))))
            (let ((_%K115714115740%_
                   (lambda (_%rest115737%_ _%hd115738%_)
                     (_%lp115704%_
                      (_%f115700%_ _%hd115738%_ _%r115706%_)
                      _%rest115737%_)))
                  (_%K115713115731%_ (lambda () _%r115706%_)))
              (let ((_%try-match115710115734%_
                     (lambda ()
                       (if (##null? _%g115708115718%_)
                           (_%K115713115731%_)
                           (_%else115711115726%_)))))
                (if (##pair? _%g115708115718%_)
                    (let ((_%tl115716115745%_ (##cdr _%g115708115718%_))
                          (_%hd115715115743%_ (##car _%g115708115718%_)))
                      (let ((_%hd115748%_ _%hd115715115743%_)
                            (_%rest115750%_ _%tl115716115745%_))
                        (_%K115714115740%_ _%rest115750%_ _%hd115748%_)))
                    (_%try-match115710115734%_))))))))
    (define gx#stx-foldr
      (lambda (_%f115649%_ _%iv115650%_ _%stx115651%_)
        (if (procedure? _%f115649%_)
            '#!void
            (error '"expected procedure" _%f115649%_))
        (let _%recur115653%_ ((_%rest115655%_ _%stx115651%_))
          (let* ((_%g115656115666%_ (gx#syntax-e _%rest115655%_))
                 (_%else115659115674%_
                  (lambda () (_%f115649%_ _%rest115655%_ _%iv115650%_))))
            (let ((_%K115662115688%_
                   (lambda (_%rest115685%_ _%hd115686%_)
                     (_%f115649%_
                      _%hd115686%_
                      (_%recur115653%_ _%rest115685%_))))
                  (_%K115661115679%_ (lambda () _%iv115650%_)))
              (let ((_%try-match115658115682%_
                     (lambda ()
                       (if (##null? _%g115656115666%_)
                           (_%K115661115679%_)
                           (_%else115659115674%_)))))
                (if (##pair? _%g115656115666%_)
                    (let ((_%tl115664115693%_ (##cdr _%g115656115666%_))
                          (_%hd115663115691%_ (##car _%g115656115666%_)))
                      (let ((_%hd115696%_ _%hd115663115691%_)
                            (_%rest115698%_ _%tl115664115693%_))
                        (_%K115662115688%_ _%rest115698%_ _%hd115696%_)))
                    (_%try-match115658115682%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx115647%_) (gx#stx-foldl cons '() _%stx115647%_)))
    (define gx#stx-last
      (lambda (_%stx115608%_)
        (let _%lp115610%_ ((_%rest115612%_ _%stx115608%_))
          (let* ((_%g115613115621%_ (gx#syntax-e _%rest115612%_))
                 (_%else115615115629%_ (lambda () _%rest115612%_))
                 (_%K115617115635%_
                  (lambda (_%rest115632%_ _%hd115633%_)
                    (if (gx#stx-null? _%rest115632%_)
                        _%hd115633%_
                        (_%lp115610%_ _%rest115632%_)))))
            (if (##pair? _%g115613115621%_)
                (let ((_%hd115618115638%_ (##car _%g115613115621%_))
                      (_%tl115619115640%_ (##cdr _%g115613115621%_)))
                  (let* ((_%hd115643%_ _%hd115618115638%_)
                         (_%rest115645%_ _%tl115619115640%_))
                    (_%K115617115635%_ _%rest115645%_ _%hd115643%_)))
                (_%else115615115629%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx115579%_)
        (let _%lp115581%_ ((_%hd115583%_ _%stx115579%_))
          (let* ((_%g115584115591%_ (gx#syntax-e _%hd115583%_))
                 (_%E115586115595%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g115584115591%_
                           '([_ . rest]))
                    '#!void))
                 (_%K115587115600%_
                  (lambda (_%rest115598%_)
                    (if (gx#stx-pair? _%rest115598%_)
                        (_%lp115581%_ _%rest115598%_)
                        _%hd115583%_))))
            (if (##pair? _%g115584115591%_)
                (let* ((_%tl115589115603%_ (##cdr _%g115584115591%_))
                       (_%rest115606%_ _%tl115589115603%_))
                  (_%K115587115600%_ _%rest115606%_))
                (_%E115586115595%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx115548%_ _%k115549%_)
        (let _%lp115551%_ ((_%rest115553%_ _%stx115548%_)
                           (_%k115554%_ _%k115549%_))
          (if (fxpositive? _%k115554%_)
              (let* ((_%g115555115562%_ (gx#syntax-e _%rest115553%_))
                     (_%E115557115566%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g115555115562%_
                               '([_ . rest]))
                        '#!void))
                     (_%K115558115571%_
                      (lambda (_%rest115569%_)
                        (_%lp115551%_ _%rest115569%_ (##fx- _%k115554%_ '1)))))
                (if (##pair? _%g115555115562%_)
                    (let* ((_%tl115560115574%_ (##cdr _%g115555115562%_))
                           (_%rest115577%_ _%tl115560115574%_))
                      (_%K115558115571%_ _%rest115577%_))
                    (_%E115557115566%_)))
              _%rest115553%_))))
    (define gx#stx-list-ref
      (lambda (_%stx115545%_ _%k115546%_)
        (gx#stx-car (gx#stx-list-tail _%stx115545%_ _%k115546%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx115457%_ _%key?115458%_)
        (if (procedure? _%key?115458%_)
            '#!void
            (error '"expected procedure" _%key?115458%_))
        (let _%lp115460%_ ((_%rest115462%_ _%stx115457%_))
          (let* ((_%g115463115473%_ (gx#stx-e _%rest115462%_))
                 (_%else115466115481%_ (lambda () '#f)))
            (let ((_%K115469115523%_
                   (lambda (_%rest115492%_ _%hd115493%_)
                     (if (_%key?115458%_ _%hd115493%_)
                         (let* ((_%g115494115502%_ (gx#stx-e _%rest115492%_))
                                (_%else115496115510%_ (lambda () '#f))
                                (_%K115498115515%_
                                 (lambda (_%rest115513%_)
                                   (_%lp115460%_ _%rest115513%_))))
                           (if (##pair? _%g115494115502%_)
                               (let* ((_%tl115500115518%_
                                       (##cdr _%g115494115502%_))
                                      (_%rest115521%_ _%tl115500115518%_))
                                 (_%lp115460%_ _%rest115521%_))
                               (_%else115496115510%_)))
                         '#f)))
                  (_%K115468115486%_ (lambda () '#t)))
              (let ((_%try-match115465115489%_
                     (lambda ()
                       (if (##null? _%g115463115473%_)
                           (_%K115468115486%_)
                           (_%else115466115481%_)))))
                (if (##pair? _%g115463115473%_)
                    (let ((_%tl115471115528%_ (##cdr _%g115463115473%_))
                          (_%hd115470115526%_ (##car _%g115463115473%_)))
                      (let ((_%hd115531%_ _%hd115470115526%_)
                            (_%rest115533%_ _%tl115471115528%_))
                        (_%K115469115523%_ _%rest115533%_ _%hd115531%_)))
                    (_%try-match115465115489%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx115538%_)
        (let ((_%key?115540%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx115538%_ _%key?115540%_))))
    (define gx#stx-plist?
      (lambda _g116694_
        (let ((_g116693_ (##length _g116694_)))
          (cond ((##fx= _g116693_ 1) (apply gx#stx-plist?__0 _g116694_))
                ((##fx= _g116693_ 2) (apply gx#stx-plist?__% _g116694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g116694_))))))
    (define gx#stx-getq__%
      (lambda (_%key115375%_ _%stx115376%_ _%key=?115377%_)
        (if (procedure? _%key=?115377%_)
            '#!void
            (error '"expected procedure" _%key=?115377%_))
        (let _%lp115379%_ ((_%rest115381%_ _%stx115376%_))
          (let* ((_%g115382115390%_ (gx#syntax-e _%rest115381%_))
                 (_%else115384115398%_ (lambda () '#f))
                 (_%K115386115432%_
                  (lambda (_%rest115401%_ _%hd115402%_)
                    (let* ((_%g115403115410%_ (gx#syntax-e _%rest115401%_))
                           (_%E115405115414%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g115403115410%_
                                     '([val . rest]))
                              '#!void))
                           (_%K115406115420%_
                            (lambda (_%rest115417%_ _%val115418%_)
                              (if (_%key=?115377%_ _%hd115402%_ _%key115375%_)
                                  _%val115418%_
                                  (_%lp115379%_ _%rest115417%_)))))
                      (if (##pair? _%g115403115410%_)
                          (let ((_%hd115407115423%_ (##car _%g115403115410%_))
                                (_%tl115408115425%_ (##cdr _%g115403115410%_)))
                            (let* ((_%val115428%_ _%hd115407115423%_)
                                   (_%rest115430%_ _%tl115408115425%_))
                              (_%K115406115420%_
                               _%rest115430%_
                               _%val115428%_)))
                          (_%E115405115414%_))))))
            (if (##pair? _%g115382115390%_)
                (let ((_%hd115387115435%_ (##car _%g115382115390%_))
                      (_%tl115388115437%_ (##cdr _%g115382115390%_)))
                  (let* ((_%hd115440%_ _%hd115387115435%_)
                         (_%rest115442%_ _%tl115388115437%_))
                    (_%K115386115432%_ _%rest115442%_ _%hd115440%_)))
                (_%else115384115398%_))))))
    (define gx#stx-getq__0
      (lambda (_%key115447%_ _%stx115448%_)
        (let ((_%key=?115450%_ gx#stx-eq?))
          (gx#stx-getq__% _%key115447%_ _%stx115448%_ _%key=?115450%_))))
    (define gx#stx-getq
      (lambda _g116696_
        (let ((_g116695_ (##length _g116696_)))
          (cond ((##fx= _g116695_ 2) (apply gx#stx-getq__0 _g116696_))
                ((##fx= _g116695_ 3) (apply gx#stx-getq__% _g116696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g116696_))))))))
