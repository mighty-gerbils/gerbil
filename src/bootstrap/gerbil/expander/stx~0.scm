(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1713000277)
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
      (lambda _%$args117571%_
        (apply make-instance gx#identifier-wrap::t _%$args117571%_)))
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
      (lambda _%$args117568%_
        (apply make-instance gx#syntax-wrap::t _%$args117568%_)))
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
      (lambda _%$args117565%_
        (apply make-instance gx#syntax-quote::t _%$args117565%_)))
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
      (lambda (_%stx117563%_) (symbol? (gx#stx-e _%stx117563%_))))
    (define gx#identifier-quote?
      (lambda (_%stx117561%_)
        (if (##structure-direct-instance-of? _%stx117561%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx117561%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx117556%_)
        (if (##structure-direct-instance-of? _%stx117556%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx117556%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx117556%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx117551%_)
        (if (##structure-direct-instance-of? _%stx117551%_ 'gx#syntax-quote::t)
            _%stx117551%_
            (if (##structure-direct-instance-of?
                 _%stx117551%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx117551%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx117525%_)
        (if (##structure-direct-instance-of? _%stx117525%_ 'gx#syntax-wrap::t)
            (let _%lp117528%_ ((_%e117530%_
                                (##unchecked-structure-ref
                                 _%stx117525%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks117531%_
                                (cons (##unchecked-structure-ref
                                       _%stx117525%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e117530%_)
                  (let ((_%$e117534%_
                         (##type-id (##structure-type _%e117530%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e117534%_)
                        (_%lp117528%_
                         (##unchecked-structure-ref _%e117530%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e117530%_ '3 '#f '#f)
                          _%marks117531%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e117534%_)
                                (eq? 'gx#identifier-wrap::t _%$e117534%_))
                            (##unchecked-structure-ref _%e117530%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e117534%_)
                                (_%lp117528%_
                                 (##unchecked-structure-ref
                                  _%e117530%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks117531%_)
                                _%e117530%_))))
                  (if (null? _%marks117531%_)
                      _%e117530%_
                      (if (pair? _%e117530%_)
                          (cons (gx#stx-wrap
                                 (##car _%e117530%_)
                                 _%marks117531%_)
                                (gx#stx-wrap
                                 (##cdr _%e117530%_)
                                 _%marks117531%_))
                          (if (vector? _%e117530%_)
                              (vector-map
                               (lambda (_%g117542117544%_)
                                 (gx#stx-wrap
                                  _%g117542117544%_
                                  _%marks117531%_))
                               _%e117530%_)
                              (if (box? _%e117530%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e117530%_)
                                        _%marks117531%_))
                                  _%e117530%_))))))
            (if (##structure-instance-of? _%stx117525%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx117525%_ '1 '#f '#f)
                _%stx117525%_))))
    (define gx#syntax->datum
      (lambda (_%stx117518%_)
        (if (##structure-instance-of? _%stx117518%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx117518%_ '1 '#f '#f))
            (if (pair? _%stx117518%_)
                (cons (gx#syntax->datum (##car _%stx117518%_))
                      (gx#syntax->datum (##cdr _%stx117518%_)))
                (if (vector? _%stx117518%_)
                    (vector-map gx#syntax->datum _%stx117518%_)
                    (if (box? _%stx117518%_)
                        (box (gx#syntax->datum (unbox _%stx117518%_)))
                        _%stx117518%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx117452%_ _%datum117453%_ _%src117454%_ _%quote?117455%_)
        (letrec ((_%wrap-datum117457%_
                  (lambda (_%e117490%_ _%marks117491%_)
                    (_%wrap-inner117459%_
                     _%e117490%_
                     (lambda (_%g117492117494%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g117492117494%_
                        _%src117454%_
                        _%marks117491%_)))))
                 (_%wrap-quote117458%_
                  (lambda (_%e117482%_ _%ctx117483%_ _%marks117484%_)
                    (_%wrap-inner117459%_
                     _%e117482%_
                     (lambda (_%g117485117487%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g117485117487%_
                        _%src117454%_
                        _%ctx117483%_
                        _%marks117484%_)))))
                 (_%wrap-inner117459%_
                  (lambda (_%e117470%_ _%wrap-e117471%_)
                    (let _%recur117473%_ ((_%e117475%_ _%e117470%_))
                      (if (symbol? _%e117475%_)
                          (_%wrap-e117471%_ _%e117475%_)
                          (if (pair? _%e117475%_)
                              (cons (_%recur117473%_ (##car _%e117475%_))
                                    (_%recur117473%_ (##cdr _%e117475%_)))
                              (if (vector? _%e117475%_)
                                  (vector-map _%recur117473%_ _%e117475%_)
                                  (if (box? _%e117475%_)
                                      (box (_%recur117473%_
                                            (unbox _%e117475%_)))
                                      _%e117475%_)))))))
                 (_%wrap-outer117460%_
                  (lambda (_%e117468%_)
                    (if (##structure-instance-of? _%e117468%_ 'gerbil#AST::t)
                        _%e117468%_
                        (##structure gx#AST::t _%e117468%_ _%src117454%_)))))
          (if (##structure-instance-of? _%datum117453%_ 'gerbil#AST::t)
              _%datum117453%_
              (if (not _%stx117452%_)
                  (##structure gx#AST::t _%datum117453%_ _%src117454%_)
                  (if (gx#identifier? _%stx117452%_)
                      (let ((_%stx117465%_ (gx#stx-unwrap__0 _%stx117452%_)))
                        (_%wrap-outer117460%_
                         (if (##structure-direct-instance-of?
                              _%stx117465%_
                              'gx#syntax-quote::t)
                             (if _%quote?117455%_
                                 (_%wrap-quote117458%_
                                  _%datum117453%_
                                  (##unchecked-structure-ref
                                   _%stx117465%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx117465%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum117457%_
                                  _%datum117453%_
                                  (##unchecked-structure-ref
                                   _%stx117465%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum117457%_
                              _%datum117453%_
                              (##unchecked-structure-ref
                               _%stx117465%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx117452%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx117500%_ _%datum117501%_)
        (let* ((_%src117503%_ '#f) (_%quote?117505%_ '#t))
          (gx#datum->syntax__%
           _%stx117500%_
           _%datum117501%_
           _%src117503%_
           _%quote?117505%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx117507%_ _%datum117508%_ _%src117509%_)
        (let ((_%quote?117511%_ '#t))
          (gx#datum->syntax__%
           _%stx117507%_
           _%datum117508%_
           _%src117509%_
           _%quote?117511%_))))
    (define gx#datum->syntax
      (lambda _g117652_
        (let ((_g117651_ (##length _g117652_)))
          (cond ((##fx= _g117651_ 2) (apply gx#datum->syntax__0 _g117652_))
                ((##fx= _g117651_ 3) (apply gx#datum->syntax__1 _g117652_))
                ((##fx= _g117651_ 4) (apply gx#datum->syntax__% _g117652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g117652_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx117418%_ _%marks117419%_)
        (let _%lp117421%_ ((_%e117423%_ _%stx117418%_)
                           (_%marks117424%_ _%marks117419%_)
                           (_%src117425%_ (gx#stx-source _%stx117418%_)))
          (if (##structure-direct-instance-of? _%e117423%_ 'gx#syntax-wrap::t)
              (_%lp117421%_
               (##unchecked-structure-ref _%e117423%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e117423%_ '3 '#f '#f)
                _%marks117424%_)
               (##unchecked-structure-ref _%e117423%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e117423%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks117424%_)
                      _%e117423%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e117423%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e117423%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e117423%_ '3 '#f '#f)
                        _%marks117424%_)))
                  (if (##structure-direct-instance-of?
                       _%e117423%_
                       'gx#syntax-quote::t)
                      _%e117423%_
                      (if (##structure-instance-of? _%e117423%_ 'gerbil#AST::t)
                          (_%lp117421%_
                           (##unchecked-structure-ref _%e117423%_ '1 '#f '#f)
                           _%marks117424%_
                           (##unchecked-structure-ref _%e117423%_ '2 '#f '#f))
                          (if (symbol? _%e117423%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e117423%_
                               _%src117425%_
                               (reverse _%marks117424%_))
                              (if (null? _%marks117424%_)
                                  _%e117423%_
                                  (if (pair? _%e117423%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e117423%_)
                                             _%marks117424%_)
                                            (gx#stx-wrap
                                             (##cdr _%e117423%_)
                                             _%marks117424%_))
                                      (if (vector? _%e117423%_)
                                          (vector-map
                                           (lambda (_%g117434117436%_)
                                             (gx#stx-wrap
                                              _%g117434117436%_
                                              _%marks117424%_))
                                           _%e117423%_)
                                          (if (box? _%e117423%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e117423%_)
                                                    _%marks117424%_))
                                              _%e117423%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx117444%_)
        (let ((_%marks117446%_ '()))
          (gx#stx-unwrap__% _%stx117444%_ _%marks117446%_))))
    (define gx#stx-unwrap
      (lambda _g117654_
        (let ((_g117653_ (##length _g117654_)))
          (cond ((##fx= _g117653_ 1) (apply gx#stx-unwrap__0 _g117654_))
                ((##fx= _g117653_ 2) (apply gx#stx-unwrap__% _g117654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g117654_))))))
    (define gx#stx-wrap
      (lambda (_%stx117411%_ _%marks117412%_)
        (__foldl1
         (lambda (_%mark117414%_ _%stx117415%_)
           (gx#stx-apply-mark _%stx117415%_ _%mark117414%_))
         _%stx117411%_
         _%marks117412%_)))
    (define gx#stx-rewrap
      (lambda (_%stx117405%_ _%marks117406%_)
        (__foldr1
         (lambda (_%mark117408%_ _%stx117409%_)
           (gx#stx-apply-mark _%stx117409%_ _%mark117408%_))
         _%stx117405%_
         _%marks117406%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx117399%_ _%mark117400%_)
        (if (##structure-direct-instance-of? _%stx117399%_ 'gx#syntax-quote::t)
            _%stx117399%_
            (if (and (##structure-direct-instance-of?
                      _%stx117399%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark117400%_
                          (##unchecked-structure-ref
                           _%stx117399%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx117399%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx117399%_
                 (gx#stx-source _%stx117399%_)
                 _%mark117400%_)))))
    (define gx#apply-mark
      (lambda (_%mark117363%_ _%marks117364%_)
        (let* ((_%marks117365117373%_ _%marks117364%_)
               (_%else117367117381%_
                (lambda () (cons _%mark117363%_ _%marks117364%_)))
               (_%K117369117387%_
                (lambda (_%rest117384%_ _%hd117385%_)
                  (if (eq? _%mark117363%_ _%hd117385%_)
                      _%rest117384%_
                      (cons _%mark117363%_ _%marks117364%_)))))
          (if (##pair? _%marks117365117373%_)
              (let ((_%hd117370117390%_ (##car _%marks117365117373%_))
                    (_%tl117371117392%_ (##cdr _%marks117365117373%_)))
                (let* ((_%hd117395%_ _%hd117370117390%_)
                       (_%rest117397%_ _%tl117371117392%_))
                  (_%K117369117387%_ _%rest117397%_ _%hd117395%_)))
              (_%else117367117381%_)))))
    (define gx#stx-e
      (lambda (_%stx117358%_)
        (if (##structure-direct-instance-of? _%stx117358%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx117358%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx117358%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx117358%_ '1 '#f '#f)
                _%stx117358%_))))
    (define gx#stx-source
      (lambda (_%stx117356%_)
        (if (##structure-instance-of? _%stx117356%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx117356%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx117350%_ _%src117351%_)
        (if (or (##structure-instance-of? _%stx117350%_ 'gerbil#AST::t)
                (not _%src117351%_))
            _%stx117350%_
            (##structure gx#AST::t _%stx117350%_ _%src117351%_))))
    (define gx#stx-datum?
      (lambda (_%stx117348%_) (gx#self-quoting? (gx#stx-e _%stx117348%_))))
    (define gx#self-quoting?
      (lambda (_%x117331%_)
        (let ((_%$e117333%_ (immediate? _%x117331%_)))
          (if _%$e117333%_
              _%$e117333%_
              (let ((_%$e117336%_ (number? _%x117331%_)))
                (if _%$e117336%_
                    _%$e117336%_
                    (let ((_%$e117339%_ (keyword? _%x117331%_)))
                      (if _%$e117339%_
                          _%$e117339%_
                          (let ((_%$e117342%_ (string? _%x117331%_)))
                            (if _%$e117342%_
                                _%$e117342%_
                                (let ((_%$e117345%_ (vector? _%x117331%_)))
                                  (if _%$e117345%_
                                      _%$e117345%_
                                      (u8vector? _%x117331%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e117329%_) (boolean? (gx#stx-e _%e117329%_))))
    (define gx#stx-keyword?
      (lambda (_%e117327%_) (keyword? (gx#stx-e _%e117327%_))))
    (define gx#stx-char? (lambda (_%e117325%_) (char? (gx#stx-e _%e117325%_))))
    (define gx#stx-number?
      (lambda (_%e117323%_) (number? (gx#stx-e _%e117323%_))))
    (define gx#stx-fixnum?
      (lambda (_%e117321%_) (fixnum? (gx#stx-e _%e117321%_))))
    (define gx#stx-string?
      (lambda (_%e117319%_) (string? (gx#stx-e _%e117319%_))))
    (define gx#stx-null? (lambda (_%e117317%_) (null? (gx#stx-e _%e117317%_))))
    (define gx#stx-pair? (lambda (_%e117315%_) (pair? (gx#stx-e _%e117315%_))))
    (define gx#stx-list?
      (lambda (_%e117277%_)
        (let* ((_%g117278117287%_ (gx#stx-e _%e117277%_))
               (_%E117281117291%_
                (lambda ()
                  (error '"No clause matching"
                         _%g117278117287%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K117283117307%_
                 (lambda (_%rest117305%_) (gx#stx-list? _%rest117305%_)))
                (_%K117282117297%_
                 (lambda (_%tail117295%_) (null? _%tail117295%_))))
            (if (##pair? _%g117278117287%_)
                (let* ((_%tl117285117310%_ (##cdr _%g117278117287%_))
                       (_%rest117313%_ _%tl117285117310%_))
                  (gx#stx-list? _%rest117313%_))
                (let ((_%tail117300%_ _%g117278117287%_))
                  (null? _%tail117300%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e117270%_)
        (let* ((_%e117272%_ (gx#stx-e _%e117270%_))
               (_%$e117274%_ (pair? _%e117272%_)))
          (if _%$e117274%_ _%$e117274%_ (null? _%e117272%_)))))
    (define gx#stx-vector?
      (lambda (_%e117268%_) (vector? (gx#stx-e _%e117268%_))))
    (define gx#stx-box? (lambda (_%e117266%_) (box? (gx#stx-e _%e117266%_))))
    (define gx#stx-eq?
      (lambda (_%x117263%_ _%y117264%_)
        (eq? (gx#stx-e _%x117263%_) (gx#stx-e _%y117264%_))))
    (define gx#stx-eqv?
      (lambda (_%x117260%_ _%y117261%_)
        (eqv? (gx#stx-e _%x117260%_) (gx#stx-e _%y117261%_))))
    (define gx#stx-equal?
      (lambda (_%x117257%_ _%y117258%_)
        (equal? (gx#stx-e _%x117257%_) (gx#stx-e _%y117258%_))))
    (define gx#stx-false? (lambda (_%x117255%_) (not (gx#stx-e _%x117255%_))))
    (define gx#stx-identifier
      (lambda (_%template117252%_ . _%args117253%_)
        (gx#datum->syntax__1
         _%template117252%_
         (apply make-symbol (gx#syntax->datum _%args117253%_))
         (gx#stx-source _%template117252%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx117250%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx117250%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx117245%_)
        (if (##structure-direct-instance-of?
             _%stx117245%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx117245%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx117245%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx117245%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx117245%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx117241%_)
        (let ((_%stx117243%_ (gx#stx-unwrap__0 _%stx117241%_)))
          (if (gx#identifier-quote? _%stx117243%_)
              (##unchecked-structure-ref _%stx117243%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx117196%_)
        (let* ((_%g117197117207%_ (gx#stx-e _%stx117196%_))
               (_%else117200117215%_ (lambda () '#f)))
          (let ((_%K117203117229%_
                 (lambda (_%rest117226%_ _%hd117227%_)
                   (if (gx#identifier? _%hd117227%_)
                       (gx#identifier-list? _%rest117226%_)
                       '#f)))
                (_%K117202117220%_ (lambda () '#t)))
            (let ((_%try-match117199117223%_
                   (lambda ()
                     (if (##null? _%g117197117207%_)
                         (_%K117202117220%_)
                         (_%else117200117215%_)))))
              (if (##pair? _%g117197117207%_)
                  (let ((_%tl117205117234%_ (##cdr _%g117197117207%_))
                        (_%hd117204117232%_ (##car _%g117197117207%_)))
                    (let ((_%hd117237%_ _%hd117204117232%_)
                          (_%rest117239%_ _%tl117205117234%_))
                      (_%K117203117229%_ _%rest117239%_ _%hd117237%_)))
                  (_%try-match117199117223%_)))))))
    (define gx#genident__%
      (lambda (_%e117173%_ _%src117174%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e117176%_ (gx#stx-e _%e117173%_)))
                   (if (interned-symbol? _%e117176%_) _%e117176%_ 'g)))
         (let ((_%$e117178%_ (gx#stx-source _%e117173%_)))
           (if _%$e117178%_ _%$e117178%_ _%src117174%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e117185%_ 'g) (_%src117187%_ '#f))
          (gx#genident__% _%e117185%_ _%src117187%_))))
    (define gx#genident__1
      (lambda (_%e117189%_)
        (let ((_%src117191%_ '#f))
          (gx#genident__% _%e117189%_ _%src117191%_))))
    (define gx#genident
      (lambda _g117656_
        (let ((_g117655_ (##length _g117656_)))
          (cond ((##fx= _g117655_ 0) (apply gx#genident__0 _g117656_))
                ((##fx= _g117655_ 1) (apply gx#genident__1 _g117656_))
                ((##fx= _g117655_ 2) (apply gx#genident__% _g117656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g117656_))))))
    (define gx#gentemps
      (lambda (_%stx-lst117170%_) (gx#stx-map1 gx#genident _%stx-lst117170%_)))
    (define gx#syntax->list
      (lambda (_%stx117168%_) (gx#stx-map1 values _%stx117168%_)))
    (define gx#stx-car
      (lambda (_%stx117165%_)
        (declare (safe))
        (car (gx#syntax-e _%stx117165%_))))
    (define gx#stx-cdr
      (lambda (_%stx117162%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx117162%_))))
    (define gx#stx-length
      (lambda (_%stx117127%_)
        (let _%lp117129%_ ((_%rest117131%_ _%stx117127%_) (_%n117132%_ '0))
          (let* ((_%g117133117141%_ (gx#stx-e _%rest117131%_))
                 (_%else117135117149%_ (lambda () _%n117132%_))
                 (_%K117137117154%_
                  (lambda (_%rest117152%_)
                    (_%lp117129%_ _%rest117152%_ (##fx+ _%n117132%_ '1)))))
            (if (##pair? _%g117133117141%_)
                (let* ((_%tl117139117157%_ (##cdr _%g117133117141%_))
                       (_%rest117160%_ _%tl117139117157%_))
                  (_%K117137117154%_ _%rest117160%_))
                (_%else117135117149%_))))))
    (define gx#stx-for-each
      (lambda _g117658_
        (let ((_g117657_ (##length _g117658_)))
          (cond ((##fx= _g117657_ 2) (apply gx#stx-for-each1 _g117658_))
                ((##fx= _g117657_ 3) (apply gx#stx-for-each2 _g117658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g117658_))))))
    (define gx#stx-for-each1
      (lambda (_%f117070%_ _%stx117071%_)
        (if (procedure? _%f117070%_)
            '#!void
            (error '"expected procedure" _%f117070%_))
        (let _%lp117073%_ ((_%rest117075%_ _%stx117071%_))
          (let* ((_%g117076117086%_ (gx#syntax-e _%rest117075%_))
                 (_%else117079117094%_
                  (lambda () (_%f117070%_ _%rest117075%_))))
            (let ((_%K117082117108%_
                   (lambda (_%rest117105%_ _%hd117106%_)
                     (_%f117070%_ _%hd117106%_)
                     (_%lp117073%_ _%rest117105%_)))
                  (_%K117081117099%_ (lambda () '#!void)))
              (let ((_%try-match117078117102%_
                     (lambda ()
                       (if (##null? _%g117076117086%_)
                           (_%K117081117099%_)
                           (_%else117079117094%_)))))
                (if (##pair? _%g117076117086%_)
                    (let ((_%tl117084117113%_ (##cdr _%g117076117086%_))
                          (_%hd117083117111%_ (##car _%g117076117086%_)))
                      (let ((_%hd117116%_ _%hd117083117111%_)
                            (_%rest117118%_ _%tl117084117113%_))
                        (_%K117082117108%_ _%rest117118%_ _%hd117116%_)))
                    (_%try-match117078117102%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f116975%_ _%xstx116976%_ _%ystx116977%_)
        (if (procedure? _%f116975%_)
            '#!void
            (error '"expected procedure" _%f116975%_))
        (let _%lp116979%_ ((_%xrest116981%_ _%xstx116976%_)
                           (_%yrest116982%_ _%ystx116977%_))
          (let* ((_%g116983116993%_ (gx#syntax-e _%xrest116981%_))
                 (_%else116986117001%_ (lambda () '#!void)))
            (let ((_%K116989117058%_
                   (lambda (_%xrest117027%_ _%xhd117028%_)
                     (let* ((_%g117029117036%_ (gx#syntax-e _%yrest116982%_))
                            (_%E117031117040%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g117029117036%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K117032117046%_
                             (lambda (_%yrest117043%_ _%yhd117044%_)
                               (_%f116975%_ _%xhd117028%_ _%yhd117044%_)
                               (_%lp116979%_
                                _%xrest117027%_
                                _%yrest117043%_))))
                       (if (##pair? _%g117029117036%_)
                           (let ((_%hd117033117049%_ (##car _%g117029117036%_))
                                 (_%tl117034117051%_
                                  (##cdr _%g117029117036%_)))
                             (let* ((_%yhd117054%_ _%hd117033117049%_)
                                    (_%yrest117056%_ _%tl117034117051%_))
                               (_%K117032117046%_
                                _%yrest117056%_
                                _%yhd117054%_)))
                           (_%E117031117040%_)))))
                  (_%K116988117021%_
                   (lambda ()
                     (let* ((_%yrest117005117010%_ _%yrest116982%_)
                            (_%E117007117014%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest117005117010%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K117008117018%_
                             (lambda ()
                               (_%f116975%_ _%xrest116981%_ _%yrest116982%_))))
                       (if (gx#stx-null? _%yrest117005117010%_)
                           (_%E117007117014%_)
                           (_%K117008117018%_))))))
              (let ((_%try-match116985117024%_
                     (lambda ()
                       (if (null? _%g116983116993%_)
                           (_%else116986117001%_)
                           (_%K116988117021%_)))))
                (if (##pair? _%g116983116993%_)
                    (let ((_%tl116991117063%_ (##cdr _%g116983116993%_))
                          (_%hd116990117061%_ (##car _%g116983116993%_)))
                      (let ((_%xhd117066%_ _%hd116990117061%_)
                            (_%xrest117068%_ _%tl116991117063%_))
                        (_%K116989117058%_ _%xrest117068%_ _%xhd117066%_)))
                    (_%try-match116985117024%_))))))))
    (define gx#stx-map
      (lambda _g117660_
        (let ((_g117659_ (##length _g117660_)))
          (cond ((##fx= _g117659_ 2) (apply gx#stx-map1 _g117660_))
                ((##fx= _g117659_ 3) (apply gx#stx-map2 _g117660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g117660_))))))
    (define gx#stx-map1
      (lambda (_%f116918%_ _%stx116919%_)
        (if (procedure? _%f116918%_)
            '#!void
            (error '"expected procedure" _%f116918%_))
        (let _%recur116921%_ ((_%rest116923%_ _%stx116919%_))
          (let* ((_%g116924116934%_ (gx#syntax-e _%rest116923%_))
                 (_%else116927116942%_
                  (lambda () (_%f116918%_ _%rest116923%_))))
            (let ((_%K116930116956%_
                   (lambda (_%rest116953%_ _%hd116954%_)
                     (cons (_%f116918%_ _%hd116954%_)
                           (_%recur116921%_ _%rest116953%_))))
                  (_%K116929116947%_ (lambda () '())))
              (let ((_%try-match116926116950%_
                     (lambda ()
                       (if (##null? _%g116924116934%_)
                           (_%K116929116947%_)
                           (_%else116927116942%_)))))
                (if (##pair? _%g116924116934%_)
                    (let ((_%tl116932116961%_ (##cdr _%g116924116934%_))
                          (_%hd116931116959%_ (##car _%g116924116934%_)))
                      (let ((_%hd116964%_ _%hd116931116959%_)
                            (_%rest116966%_ _%tl116932116961%_))
                        (_%K116930116956%_ _%rest116966%_ _%hd116964%_)))
                    (_%try-match116926116950%_))))))))
    (define gx#stx-map2
      (lambda (_%f116823%_ _%xstx116824%_ _%ystx116825%_)
        (if (procedure? _%f116823%_)
            '#!void
            (error '"expected procedure" _%f116823%_))
        (let _%recur116827%_ ((_%xrest116829%_ _%xstx116824%_)
                              (_%yrest116830%_ _%ystx116825%_))
          (let* ((_%g116831116841%_ (gx#syntax-e _%xrest116829%_))
                 (_%else116834116849%_ (lambda () '())))
            (let ((_%K116837116906%_
                   (lambda (_%xrest116875%_ _%xhd116876%_)
                     (let* ((_%g116877116884%_ (gx#syntax-e _%yrest116830%_))
                            (_%E116879116888%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g116877116884%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K116880116894%_
                             (lambda (_%yrest116891%_ _%yhd116892%_)
                               (cons (_%f116823%_ _%xhd116876%_ _%yhd116892%_)
                                     (_%recur116827%_
                                      _%xrest116875%_
                                      _%yrest116891%_)))))
                       (if (##pair? _%g116877116884%_)
                           (let ((_%hd116881116897%_ (##car _%g116877116884%_))
                                 (_%tl116882116899%_
                                  (##cdr _%g116877116884%_)))
                             (let* ((_%yhd116902%_ _%hd116881116897%_)
                                    (_%yrest116904%_ _%tl116882116899%_))
                               (_%K116880116894%_
                                _%yrest116904%_
                                _%yhd116902%_)))
                           (_%E116879116888%_)))))
                  (_%K116836116869%_
                   (lambda ()
                     (let* ((_%yrest116853116858%_ _%yrest116830%_)
                            (_%E116855116862%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest116853116858%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K116856116866%_
                             (lambda ()
                               (_%f116823%_ _%xrest116829%_ _%yrest116830%_))))
                       (if (gx#stx-null? _%yrest116853116858%_)
                           (_%E116855116862%_)
                           (_%K116856116866%_))))))
              (let ((_%try-match116833116872%_
                     (lambda ()
                       (if (null? _%g116831116841%_)
                           (_%else116834116849%_)
                           (_%K116836116869%_)))))
                (if (##pair? _%g116831116841%_)
                    (let ((_%tl116839116911%_ (##cdr _%g116831116841%_))
                          (_%hd116838116909%_ (##car _%g116831116841%_)))
                      (let ((_%xhd116914%_ _%hd116838116909%_)
                            (_%xrest116916%_ _%tl116839116911%_))
                        (_%K116837116906%_ _%xrest116916%_ _%xhd116914%_)))
                    (_%try-match116833116872%_))))))))
    (define gx#stx-andmap
      (lambda (_%f116773%_ _%stx116774%_)
        (if (procedure? _%f116773%_)
            '#!void
            (error '"expected procedure" _%f116773%_))
        (let _%lp116776%_ ((_%rest116778%_ _%stx116774%_))
          (let* ((_%g116779116789%_ (gx#syntax-e _%rest116778%_))
                 (_%else116782116797%_
                  (lambda () (_%f116773%_ _%rest116778%_))))
            (let ((_%K116785116811%_
                   (lambda (_%rest116808%_ _%hd116809%_)
                     (if (_%f116773%_ _%hd116809%_)
                         (_%lp116776%_ _%rest116808%_)
                         '#f)))
                  (_%K116784116802%_ (lambda () '#t)))
              (let ((_%try-match116781116805%_
                     (lambda ()
                       (if (##null? _%g116779116789%_)
                           (_%K116784116802%_)
                           (_%else116782116797%_)))))
                (if (##pair? _%g116779116789%_)
                    (let ((_%tl116787116816%_ (##cdr _%g116779116789%_))
                          (_%hd116786116814%_ (##car _%g116779116789%_)))
                      (let ((_%hd116819%_ _%hd116786116814%_)
                            (_%rest116821%_ _%tl116787116816%_))
                        (_%K116785116811%_ _%rest116821%_ _%hd116819%_)))
                    (_%try-match116781116805%_))))))))
    (define gx#stx-ormap
      (lambda (_%f116720%_ _%stx116721%_)
        (if (procedure? _%f116720%_)
            '#!void
            (error '"expected procedure" _%f116720%_))
        (let _%lp116723%_ ((_%rest116725%_ _%stx116721%_))
          (let* ((_%g116726116736%_ (gx#syntax-e _%rest116725%_))
                 (_%else116729116744%_
                  (lambda () (_%f116720%_ _%rest116725%_))))
            (let ((_%K116732116761%_
                   (lambda (_%rest116755%_ _%hd116756%_)
                     (let ((_%$e116758%_ (_%f116720%_ _%hd116756%_)))
                       (if _%$e116758%_
                           _%$e116758%_
                           (_%lp116723%_ _%rest116755%_)))))
                  (_%K116731116749%_ (lambda () '#f)))
              (let ((_%try-match116728116752%_
                     (lambda ()
                       (if (##null? _%g116726116736%_)
                           (_%K116731116749%_)
                           (_%else116729116744%_)))))
                (if (##pair? _%g116726116736%_)
                    (let ((_%tl116734116766%_ (##cdr _%g116726116736%_))
                          (_%hd116733116764%_ (##car _%g116726116736%_)))
                      (let ((_%hd116769%_ _%hd116733116764%_)
                            (_%rest116771%_ _%tl116734116766%_))
                        (_%K116732116761%_ _%rest116771%_ _%hd116769%_)))
                    (_%try-match116728116752%_))))))))
    (define gx#stx-foldl
      (lambda (_%f116668%_ _%iv116669%_ _%stx116670%_)
        (if (procedure? _%f116668%_)
            '#!void
            (error '"expected procedure" _%f116668%_))
        (let _%lp116672%_ ((_%r116674%_ _%iv116669%_)
                           (_%rest116675%_ _%stx116670%_))
          (let* ((_%g116676116686%_ (gx#syntax-e _%rest116675%_))
                 (_%else116679116694%_
                  (lambda () (_%f116668%_ _%rest116675%_ _%r116674%_))))
            (let ((_%K116682116708%_
                   (lambda (_%rest116705%_ _%hd116706%_)
                     (_%lp116672%_
                      (_%f116668%_ _%hd116706%_ _%r116674%_)
                      _%rest116705%_)))
                  (_%K116681116699%_ (lambda () _%r116674%_)))
              (let ((_%try-match116678116702%_
                     (lambda ()
                       (if (##null? _%g116676116686%_)
                           (_%K116681116699%_)
                           (_%else116679116694%_)))))
                (if (##pair? _%g116676116686%_)
                    (let ((_%tl116684116713%_ (##cdr _%g116676116686%_))
                          (_%hd116683116711%_ (##car _%g116676116686%_)))
                      (let ((_%hd116716%_ _%hd116683116711%_)
                            (_%rest116718%_ _%tl116684116713%_))
                        (_%K116682116708%_ _%rest116718%_ _%hd116716%_)))
                    (_%try-match116678116702%_))))))))
    (define gx#stx-foldr
      (lambda (_%f116617%_ _%iv116618%_ _%stx116619%_)
        (if (procedure? _%f116617%_)
            '#!void
            (error '"expected procedure" _%f116617%_))
        (let _%recur116621%_ ((_%rest116623%_ _%stx116619%_))
          (let* ((_%g116624116634%_ (gx#syntax-e _%rest116623%_))
                 (_%else116627116642%_
                  (lambda () (_%f116617%_ _%rest116623%_ _%iv116618%_))))
            (let ((_%K116630116656%_
                   (lambda (_%rest116653%_ _%hd116654%_)
                     (_%f116617%_
                      _%hd116654%_
                      (_%recur116621%_ _%rest116653%_))))
                  (_%K116629116647%_ (lambda () _%iv116618%_)))
              (let ((_%try-match116626116650%_
                     (lambda ()
                       (if (##null? _%g116624116634%_)
                           (_%K116629116647%_)
                           (_%else116627116642%_)))))
                (if (##pair? _%g116624116634%_)
                    (let ((_%tl116632116661%_ (##cdr _%g116624116634%_))
                          (_%hd116631116659%_ (##car _%g116624116634%_)))
                      (let ((_%hd116664%_ _%hd116631116659%_)
                            (_%rest116666%_ _%tl116632116661%_))
                        (_%K116630116656%_ _%rest116666%_ _%hd116664%_)))
                    (_%try-match116626116650%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx116615%_) (gx#stx-foldl cons '() _%stx116615%_)))
    (define gx#stx-last
      (lambda (_%stx116576%_)
        (let _%lp116578%_ ((_%rest116580%_ _%stx116576%_))
          (let* ((_%g116581116589%_ (gx#syntax-e _%rest116580%_))
                 (_%else116583116597%_ (lambda () _%rest116580%_))
                 (_%K116585116603%_
                  (lambda (_%rest116600%_ _%hd116601%_)
                    (if (gx#stx-null? _%rest116600%_)
                        _%hd116601%_
                        (_%lp116578%_ _%rest116600%_)))))
            (if (##pair? _%g116581116589%_)
                (let ((_%hd116586116606%_ (##car _%g116581116589%_))
                      (_%tl116587116608%_ (##cdr _%g116581116589%_)))
                  (let* ((_%hd116611%_ _%hd116586116606%_)
                         (_%rest116613%_ _%tl116587116608%_))
                    (_%K116585116603%_ _%rest116613%_ _%hd116611%_)))
                (_%else116583116597%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx116547%_)
        (let _%lp116549%_ ((_%hd116551%_ _%stx116547%_))
          (let* ((_%g116552116559%_ (gx#syntax-e _%hd116551%_))
                 (_%E116554116563%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g116552116559%_
                           '([_ . rest]))
                    '#!void))
                 (_%K116555116568%_
                  (lambda (_%rest116566%_)
                    (if (gx#stx-pair? _%rest116566%_)
                        (_%lp116549%_ _%rest116566%_)
                        _%hd116551%_))))
            (if (##pair? _%g116552116559%_)
                (let* ((_%tl116557116571%_ (##cdr _%g116552116559%_))
                       (_%rest116574%_ _%tl116557116571%_))
                  (_%K116555116568%_ _%rest116574%_))
                (_%E116554116563%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx116516%_ _%k116517%_)
        (let _%lp116519%_ ((_%rest116521%_ _%stx116516%_)
                           (_%k116522%_ _%k116517%_))
          (if (fxpositive? _%k116522%_)
              (let* ((_%g116523116530%_ (gx#syntax-e _%rest116521%_))
                     (_%E116525116534%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g116523116530%_
                               '([_ . rest]))
                        '#!void))
                     (_%K116526116539%_
                      (lambda (_%rest116537%_)
                        (_%lp116519%_ _%rest116537%_ (##fx- _%k116522%_ '1)))))
                (if (##pair? _%g116523116530%_)
                    (let* ((_%tl116528116542%_ (##cdr _%g116523116530%_))
                           (_%rest116545%_ _%tl116528116542%_))
                      (_%K116526116539%_ _%rest116545%_))
                    (_%E116525116534%_)))
              _%rest116521%_))))
    (define gx#stx-list-ref
      (lambda (_%stx116513%_ _%k116514%_)
        (gx#stx-car (gx#stx-list-tail _%stx116513%_ _%k116514%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx116425%_ _%key?116426%_)
        (if (procedure? _%key?116426%_)
            '#!void
            (error '"expected procedure" _%key?116426%_))
        (let _%lp116428%_ ((_%rest116430%_ _%stx116425%_))
          (let* ((_%g116431116441%_ (gx#stx-e _%rest116430%_))
                 (_%else116434116449%_ (lambda () '#f)))
            (let ((_%K116437116491%_
                   (lambda (_%rest116460%_ _%hd116461%_)
                     (if (_%key?116426%_ _%hd116461%_)
                         (let* ((_%g116462116470%_ (gx#stx-e _%rest116460%_))
                                (_%else116464116478%_ (lambda () '#f))
                                (_%K116466116483%_
                                 (lambda (_%rest116481%_)
                                   (_%lp116428%_ _%rest116481%_))))
                           (if (##pair? _%g116462116470%_)
                               (let* ((_%tl116468116486%_
                                       (##cdr _%g116462116470%_))
                                      (_%rest116489%_ _%tl116468116486%_))
                                 (_%lp116428%_ _%rest116489%_))
                               (_%else116464116478%_)))
                         '#f)))
                  (_%K116436116454%_ (lambda () '#t)))
              (let ((_%try-match116433116457%_
                     (lambda ()
                       (if (##null? _%g116431116441%_)
                           (_%K116436116454%_)
                           (_%else116434116449%_)))))
                (if (##pair? _%g116431116441%_)
                    (let ((_%tl116439116496%_ (##cdr _%g116431116441%_))
                          (_%hd116438116494%_ (##car _%g116431116441%_)))
                      (let ((_%hd116499%_ _%hd116438116494%_)
                            (_%rest116501%_ _%tl116439116496%_))
                        (_%K116437116491%_ _%rest116501%_ _%hd116499%_)))
                    (_%try-match116433116457%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx116506%_)
        (let ((_%key?116508%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx116506%_ _%key?116508%_))))
    (define gx#stx-plist?
      (lambda _g117662_
        (let ((_g117661_ (##length _g117662_)))
          (cond ((##fx= _g117661_ 1) (apply gx#stx-plist?__0 _g117662_))
                ((##fx= _g117661_ 2) (apply gx#stx-plist?__% _g117662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g117662_))))))
    (define gx#stx-getq__%
      (lambda (_%key116343%_ _%stx116344%_ _%key=?116345%_)
        (if (procedure? _%key=?116345%_)
            '#!void
            (error '"expected procedure" _%key=?116345%_))
        (let _%lp116347%_ ((_%rest116349%_ _%stx116344%_))
          (let* ((_%g116350116358%_ (gx#syntax-e _%rest116349%_))
                 (_%else116352116366%_ (lambda () '#f))
                 (_%K116354116400%_
                  (lambda (_%rest116369%_ _%hd116370%_)
                    (let* ((_%g116371116378%_ (gx#syntax-e _%rest116369%_))
                           (_%E116373116382%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g116371116378%_
                                     '([val . rest]))
                              '#!void))
                           (_%K116374116388%_
                            (lambda (_%rest116385%_ _%val116386%_)
                              (if (_%key=?116345%_ _%hd116370%_ _%key116343%_)
                                  _%val116386%_
                                  (_%lp116347%_ _%rest116385%_)))))
                      (if (##pair? _%g116371116378%_)
                          (let ((_%hd116375116391%_ (##car _%g116371116378%_))
                                (_%tl116376116393%_ (##cdr _%g116371116378%_)))
                            (let* ((_%val116396%_ _%hd116375116391%_)
                                   (_%rest116398%_ _%tl116376116393%_))
                              (_%K116374116388%_
                               _%rest116398%_
                               _%val116396%_)))
                          (_%E116373116382%_))))))
            (if (##pair? _%g116350116358%_)
                (let ((_%hd116355116403%_ (##car _%g116350116358%_))
                      (_%tl116356116405%_ (##cdr _%g116350116358%_)))
                  (let* ((_%hd116408%_ _%hd116355116403%_)
                         (_%rest116410%_ _%tl116356116405%_))
                    (_%K116354116400%_ _%rest116410%_ _%hd116408%_)))
                (_%else116352116366%_))))))
    (define gx#stx-getq__0
      (lambda (_%key116415%_ _%stx116416%_)
        (let ((_%key=?116418%_ gx#stx-eq?))
          (gx#stx-getq__% _%key116415%_ _%stx116416%_ _%key=?116418%_))))
    (define gx#stx-getq
      (lambda _g117664_
        (let ((_g117663_ (##length _g117664_)))
          (cond ((##fx= _g117663_ 2) (apply gx#stx-getq__0 _g117664_))
                ((##fx= _g117663_ 3) (apply gx#stx-getq__% _g117664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g117664_))))))))
