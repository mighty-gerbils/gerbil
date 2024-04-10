(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712773525)
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
      (lambda _%$args115043%_
        (apply make-instance gx#identifier-wrap::t _%$args115043%_)))
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
      (lambda _%$args115040%_
        (apply make-instance gx#syntax-wrap::t _%$args115040%_)))
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
      (lambda _%$args115037%_
        (apply make-instance gx#syntax-quote::t _%$args115037%_)))
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
      (lambda (_%stx115035%_) (symbol? (gx#stx-e _%stx115035%_))))
    (define gx#identifier-quote?
      (lambda (_%stx115033%_)
        (if (##structure-direct-instance-of? _%stx115033%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx115033%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx115028%_)
        (if (##structure-direct-instance-of? _%stx115028%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx115028%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx115028%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx115023%_)
        (if (##structure-direct-instance-of? _%stx115023%_ 'gx#syntax-quote::t)
            _%stx115023%_
            (if (##structure-direct-instance-of?
                 _%stx115023%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx115023%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx114997%_)
        (if (##structure-direct-instance-of? _%stx114997%_ 'gx#syntax-wrap::t)
            (let _%lp115000%_ ((_%e115002%_
                                (##unchecked-structure-ref
                                 _%stx114997%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks115003%_
                                (cons (##unchecked-structure-ref
                                       _%stx114997%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e115002%_)
                  (let ((_%$e115006%_
                         (##type-id (##structure-type _%e115002%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e115006%_)
                        (_%lp115000%_
                         (##unchecked-structure-ref _%e115002%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e115002%_ '3 '#f '#f)
                          _%marks115003%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e115006%_)
                                (eq? 'gx#identifier-wrap::t _%$e115006%_))
                            (##unchecked-structure-ref _%e115002%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e115006%_)
                                (_%lp115000%_
                                 (##unchecked-structure-ref
                                  _%e115002%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks115003%_)
                                _%e115002%_))))
                  (if (null? _%marks115003%_)
                      _%e115002%_
                      (if (pair? _%e115002%_)
                          (cons (gx#stx-wrap (car _%e115002%_) _%marks115003%_)
                                (gx#stx-wrap
                                 (cdr _%e115002%_)
                                 _%marks115003%_))
                          (if (vector? _%e115002%_)
                              (vector-map
                               (lambda (_%g115014115016%_)
                                 (gx#stx-wrap
                                  _%g115014115016%_
                                  _%marks115003%_))
                               _%e115002%_)
                              (if (box? _%e115002%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e115002%_)
                                        _%marks115003%_))
                                  _%e115002%_))))))
            (if (##structure-instance-of? _%stx114997%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx114997%_ '1 '#f '#f)
                _%stx114997%_))))
    (define gx#syntax->datum
      (lambda (_%stx114990%_)
        (if (##structure-instance-of? _%stx114990%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx114990%_ '1 '#f '#f))
            (if (pair? _%stx114990%_)
                (cons (gx#syntax->datum (car _%stx114990%_))
                      (gx#syntax->datum (cdr _%stx114990%_)))
                (if (vector? _%stx114990%_)
                    (vector-map gx#syntax->datum _%stx114990%_)
                    (if (box? _%stx114990%_)
                        (box (gx#syntax->datum (unbox _%stx114990%_)))
                        _%stx114990%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114924%_ _%datum114925%_ _%src114926%_ _%quote?114927%_)
        (letrec ((_%wrap-datum114929%_
                  (lambda (_%e114962%_ _%marks114963%_)
                    (_%wrap-inner114931%_
                     _%e114962%_
                     (lambda (_%g114964114966%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114964114966%_
                        _%src114926%_
                        _%marks114963%_)))))
                 (_%wrap-quote114930%_
                  (lambda (_%e114954%_ _%ctx114955%_ _%marks114956%_)
                    (_%wrap-inner114931%_
                     _%e114954%_
                     (lambda (_%g114957114959%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114957114959%_
                        _%src114926%_
                        _%ctx114955%_
                        _%marks114956%_)))))
                 (_%wrap-inner114931%_
                  (lambda (_%e114942%_ _%wrap-e114943%_)
                    (let _%recur114945%_ ((_%e114947%_ _%e114942%_))
                      (if (symbol? _%e114947%_)
                          (_%wrap-e114943%_ _%e114947%_)
                          (if (pair? _%e114947%_)
                              (cons (_%recur114945%_ (car _%e114947%_))
                                    (_%recur114945%_ (cdr _%e114947%_)))
                              (if (vector? _%e114947%_)
                                  (vector-map _%recur114945%_ _%e114947%_)
                                  (if (box? _%e114947%_)
                                      (box (_%recur114945%_
                                            (unbox _%e114947%_)))
                                      _%e114947%_)))))))
                 (_%wrap-outer114932%_
                  (lambda (_%e114940%_)
                    (if (##structure-instance-of? _%e114940%_ 'gerbil#AST::t)
                        _%e114940%_
                        (##structure gx#AST::t _%e114940%_ _%src114926%_)))))
          (if (##structure-instance-of? _%datum114925%_ 'gerbil#AST::t)
              _%datum114925%_
              (if (not _%stx114924%_)
                  (##structure gx#AST::t _%datum114925%_ _%src114926%_)
                  (if (gx#identifier? _%stx114924%_)
                      (let ((_%stx114937%_ (gx#stx-unwrap__0 _%stx114924%_)))
                        (_%wrap-outer114932%_
                         (if (##structure-direct-instance-of?
                              _%stx114937%_
                              'gx#syntax-quote::t)
                             (if _%quote?114927%_
                                 (_%wrap-quote114930%_
                                  _%datum114925%_
                                  (##unchecked-structure-ref
                                   _%stx114937%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx114937%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum114929%_
                                  _%datum114925%_
                                  (##unchecked-structure-ref
                                   _%stx114937%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum114929%_
                              _%datum114925%_
                              (##unchecked-structure-ref
                               _%stx114937%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx114924%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114972%_ _%datum114973%_)
        (let* ((_%src114975%_ '#f) (_%quote?114977%_ '#t))
          (gx#datum->syntax__%
           _%stx114972%_
           _%datum114973%_
           _%src114975%_
           _%quote?114977%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114979%_ _%datum114980%_ _%src114981%_)
        (let ((_%quote?114983%_ '#t))
          (gx#datum->syntax__%
           _%stx114979%_
           _%datum114980%_
           _%src114981%_
           _%quote?114983%_))))
    (define gx#datum->syntax
      (lambda _g115124_
        (let ((_g115123_ (##length _g115124_)))
          (cond ((##fx= _g115123_ 2) (apply gx#datum->syntax__0 _g115124_))
                ((##fx= _g115123_ 3) (apply gx#datum->syntax__1 _g115124_))
                ((##fx= _g115123_ 4) (apply gx#datum->syntax__% _g115124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g115124_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114890%_ _%marks114891%_)
        (let _%lp114893%_ ((_%e114895%_ _%stx114890%_)
                           (_%marks114896%_ _%marks114891%_)
                           (_%src114897%_ (gx#stx-source _%stx114890%_)))
          (if (##structure-direct-instance-of? _%e114895%_ 'gx#syntax-wrap::t)
              (_%lp114893%_
               (##unchecked-structure-ref _%e114895%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e114895%_ '3 '#f '#f)
                _%marks114896%_)
               (##unchecked-structure-ref _%e114895%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e114895%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks114896%_)
                      _%e114895%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e114895%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e114895%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e114895%_ '3 '#f '#f)
                        _%marks114896%_)))
                  (if (##structure-direct-instance-of?
                       _%e114895%_
                       'gx#syntax-quote::t)
                      _%e114895%_
                      (if (##structure-instance-of? _%e114895%_ 'gerbil#AST::t)
                          (_%lp114893%_
                           (##unchecked-structure-ref _%e114895%_ '1 '#f '#f)
                           _%marks114896%_
                           (##unchecked-structure-ref _%e114895%_ '2 '#f '#f))
                          (if (symbol? _%e114895%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e114895%_
                               _%src114897%_
                               (reverse _%marks114896%_))
                              (if (null? _%marks114896%_)
                                  _%e114895%_
                                  (if (pair? _%e114895%_)
                                      (cons (gx#stx-wrap
                                             (car _%e114895%_)
                                             _%marks114896%_)
                                            (gx#stx-wrap
                                             (cdr _%e114895%_)
                                             _%marks114896%_))
                                      (if (vector? _%e114895%_)
                                          (vector-map
                                           (lambda (_%g114906114908%_)
                                             (gx#stx-wrap
                                              _%g114906114908%_
                                              _%marks114896%_))
                                           _%e114895%_)
                                          (if (box? _%e114895%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e114895%_)
                                                    _%marks114896%_))
                                              _%e114895%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114916%_)
        (let ((_%marks114918%_ '()))
          (gx#stx-unwrap__% _%stx114916%_ _%marks114918%_))))
    (define gx#stx-unwrap
      (lambda _g115126_
        (let ((_g115125_ (##length _g115126_)))
          (cond ((##fx= _g115125_ 1) (apply gx#stx-unwrap__0 _g115126_))
                ((##fx= _g115125_ 2) (apply gx#stx-unwrap__% _g115126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g115126_))))))
    (define gx#stx-wrap
      (lambda (_%stx114883%_ _%marks114884%_)
        (__foldl1
         (lambda (_%mark114886%_ _%stx114887%_)
           (gx#stx-apply-mark _%stx114887%_ _%mark114886%_))
         _%stx114883%_
         _%marks114884%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114877%_ _%marks114878%_)
        (__foldr1
         (lambda (_%mark114880%_ _%stx114881%_)
           (gx#stx-apply-mark _%stx114881%_ _%mark114880%_))
         _%stx114877%_
         _%marks114878%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114871%_ _%mark114872%_)
        (if (##structure-direct-instance-of? _%stx114871%_ 'gx#syntax-quote::t)
            _%stx114871%_
            (if (and (##structure-direct-instance-of?
                      _%stx114871%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114872%_
                          (##unchecked-structure-ref
                           _%stx114871%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx114871%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx114871%_
                 (gx#stx-source _%stx114871%_)
                 _%mark114872%_)))))
    (define gx#apply-mark
      (lambda (_%mark114835%_ _%marks114836%_)
        (let* ((_%marks114837114845%_ _%marks114836%_)
               (_%else114839114853%_
                (lambda () (cons _%mark114835%_ _%marks114836%_)))
               (_%K114841114859%_
                (lambda (_%rest114856%_ _%hd114857%_)
                  (if (eq? _%mark114835%_ _%hd114857%_)
                      _%rest114856%_
                      (cons _%mark114835%_ _%marks114836%_)))))
          (if (##pair? _%marks114837114845%_)
              (let ((_%hd114842114862%_ (##car _%marks114837114845%_))
                    (_%tl114843114864%_ (##cdr _%marks114837114845%_)))
                (let* ((_%hd114867%_ _%hd114842114862%_)
                       (_%rest114869%_ _%tl114843114864%_))
                  (_%K114841114859%_ _%rest114869%_ _%hd114867%_)))
              (_%else114839114853%_)))))
    (define gx#stx-e
      (lambda (_%stx114830%_)
        (if (##structure-direct-instance-of? _%stx114830%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx114830%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx114830%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx114830%_ '1 '#f '#f)
                _%stx114830%_))))
    (define gx#stx-source
      (lambda (_%stx114828%_)
        (if (##structure-instance-of? _%stx114828%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114828%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114822%_ _%src114823%_)
        (if (or (##structure-instance-of? _%stx114822%_ 'gerbil#AST::t)
                (not _%src114823%_))
            _%stx114822%_
            (##structure gx#AST::t _%stx114822%_ _%src114823%_))))
    (define gx#stx-datum?
      (lambda (_%stx114820%_) (gx#self-quoting? (gx#stx-e _%stx114820%_))))
    (define gx#self-quoting?
      (lambda (_%x114803%_)
        (let ((_%$e114805%_ (immediate? _%x114803%_)))
          (if _%$e114805%_
              _%$e114805%_
              (let ((_%$e114808%_ (number? _%x114803%_)))
                (if _%$e114808%_
                    _%$e114808%_
                    (let ((_%$e114811%_ (keyword? _%x114803%_)))
                      (if _%$e114811%_
                          _%$e114811%_
                          (let ((_%$e114814%_ (string? _%x114803%_)))
                            (if _%$e114814%_
                                _%$e114814%_
                                (let ((_%$e114817%_ (vector? _%x114803%_)))
                                  (if _%$e114817%_
                                      _%$e114817%_
                                      (u8vector? _%x114803%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114801%_) (boolean? (gx#stx-e _%e114801%_))))
    (define gx#stx-keyword?
      (lambda (_%e114799%_) (keyword? (gx#stx-e _%e114799%_))))
    (define gx#stx-char? (lambda (_%e114797%_) (char? (gx#stx-e _%e114797%_))))
    (define gx#stx-number?
      (lambda (_%e114795%_) (number? (gx#stx-e _%e114795%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114793%_) (fixnum? (gx#stx-e _%e114793%_))))
    (define gx#stx-string?
      (lambda (_%e114791%_) (string? (gx#stx-e _%e114791%_))))
    (define gx#stx-null? (lambda (_%e114789%_) (null? (gx#stx-e _%e114789%_))))
    (define gx#stx-pair? (lambda (_%e114787%_) (pair? (gx#stx-e _%e114787%_))))
    (define gx#stx-list?
      (lambda (_%e114749%_)
        (let* ((_%g114750114759%_ (gx#stx-e _%e114749%_))
               (_%E114753114763%_
                (lambda ()
                  (error '"No clause matching"
                         _%g114750114759%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K114755114779%_
                 (lambda (_%rest114777%_) (gx#stx-list? _%rest114777%_)))
                (_%K114754114769%_
                 (lambda (_%tail114767%_) (null? _%tail114767%_))))
            (if (##pair? _%g114750114759%_)
                (let* ((_%tl114757114782%_ (##cdr _%g114750114759%_))
                       (_%rest114785%_ _%tl114757114782%_))
                  (gx#stx-list? _%rest114785%_))
                (let ((_%tail114772%_ _%g114750114759%_))
                  (null? _%tail114772%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e114742%_)
        (let* ((_%e114744%_ (gx#stx-e _%e114742%_))
               (_%$e114746%_ (pair? _%e114744%_)))
          (if _%$e114746%_ _%$e114746%_ (null? _%e114744%_)))))
    (define gx#stx-vector?
      (lambda (_%e114740%_) (vector? (gx#stx-e _%e114740%_))))
    (define gx#stx-box? (lambda (_%e114738%_) (box? (gx#stx-e _%e114738%_))))
    (define gx#stx-eq?
      (lambda (_%x114735%_ _%y114736%_)
        (eq? (gx#stx-e _%x114735%_) (gx#stx-e _%y114736%_))))
    (define gx#stx-eqv?
      (lambda (_%x114732%_ _%y114733%_)
        (eqv? (gx#stx-e _%x114732%_) (gx#stx-e _%y114733%_))))
    (define gx#stx-equal?
      (lambda (_%x114729%_ _%y114730%_)
        (equal? (gx#stx-e _%x114729%_) (gx#stx-e _%y114730%_))))
    (define gx#stx-false? (lambda (_%x114727%_) (not (gx#stx-e _%x114727%_))))
    (define gx#stx-identifier
      (lambda (_%template114724%_ . _%args114725%_)
        (gx#datum->syntax__1
         _%template114724%_
         (apply make-symbol (gx#syntax->datum _%args114725%_))
         (gx#stx-source _%template114724%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx114722%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx114722%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx114717%_)
        (if (##structure-direct-instance-of?
             _%stx114717%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx114717%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx114717%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx114717%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx114717%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx114713%_)
        (let ((_%stx114715%_ (gx#stx-unwrap__0 _%stx114713%_)))
          (if (gx#identifier-quote? _%stx114715%_)
              (##unchecked-structure-ref _%stx114715%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx114668%_)
        (let* ((_%g114669114679%_ (gx#stx-e _%stx114668%_))
               (_%else114672114687%_ (lambda () '#f)))
          (let ((_%K114675114701%_
                 (lambda (_%rest114698%_ _%hd114699%_)
                   (if (gx#identifier? _%hd114699%_)
                       (gx#identifier-list? _%rest114698%_)
                       '#f)))
                (_%K114674114692%_ (lambda () '#t)))
            (let ((_%try-match114671114695%_
                   (lambda ()
                     (if (##null? _%g114669114679%_)
                         (_%K114674114692%_)
                         (_%else114672114687%_)))))
              (if (##pair? _%g114669114679%_)
                  (let ((_%tl114677114706%_ (##cdr _%g114669114679%_))
                        (_%hd114676114704%_ (##car _%g114669114679%_)))
                    (let ((_%hd114709%_ _%hd114676114704%_)
                          (_%rest114711%_ _%tl114677114706%_))
                      (_%K114675114701%_ _%rest114711%_ _%hd114709%_)))
                  (_%try-match114671114695%_)))))))
    (define gx#genident__%
      (lambda (_%e114645%_ _%src114646%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e114648%_ (gx#stx-e _%e114645%_)))
                   (if (interned-symbol? _%e114648%_) _%e114648%_ 'g)))
         (let ((_%$e114650%_ (gx#stx-source _%e114645%_)))
           (if _%$e114650%_ _%$e114650%_ _%src114646%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e114657%_ 'g) (_%src114659%_ '#f))
          (gx#genident__% _%e114657%_ _%src114659%_))))
    (define gx#genident__1
      (lambda (_%e114661%_)
        (let ((_%src114663%_ '#f))
          (gx#genident__% _%e114661%_ _%src114663%_))))
    (define gx#genident
      (lambda _g115128_
        (let ((_g115127_ (##length _g115128_)))
          (cond ((##fx= _g115127_ 0) (apply gx#genident__0 _g115128_))
                ((##fx= _g115127_ 1) (apply gx#genident__1 _g115128_))
                ((##fx= _g115127_ 2) (apply gx#genident__% _g115128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g115128_))))))
    (define gx#gentemps
      (lambda (_%stx-lst114642%_) (gx#stx-map1 gx#genident _%stx-lst114642%_)))
    (define gx#syntax->list
      (lambda (_%stx114640%_) (gx#stx-map1 values _%stx114640%_)))
    (define gx#stx-car
      (lambda (_%stx114637%_)
        (declare (safe))
        (car (gx#syntax-e _%stx114637%_))))
    (define gx#stx-cdr
      (lambda (_%stx114634%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx114634%_))))
    (define gx#stx-length
      (lambda (_%stx114599%_)
        (let _%lp114601%_ ((_%rest114603%_ _%stx114599%_) (_%n114604%_ '0))
          (let* ((_%g114605114613%_ (gx#stx-e _%rest114603%_))
                 (_%else114607114621%_ (lambda () _%n114604%_))
                 (_%K114609114626%_
                  (lambda (_%rest114624%_)
                    (_%lp114601%_ _%rest114624%_ (##fx+ _%n114604%_ '1)))))
            (if (##pair? _%g114605114613%_)
                (let* ((_%tl114611114629%_ (##cdr _%g114605114613%_))
                       (_%rest114632%_ _%tl114611114629%_))
                  (_%K114609114626%_ _%rest114632%_))
                (_%else114607114621%_))))))
    (define gx#stx-for-each
      (lambda _g115130_
        (let ((_g115129_ (##length _g115130_)))
          (cond ((##fx= _g115129_ 2) (apply gx#stx-for-each1 _g115130_))
                ((##fx= _g115129_ 3) (apply gx#stx-for-each2 _g115130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g115130_))))))
    (define gx#stx-for-each1
      (lambda (_%f114542%_ _%stx114543%_)
        (if (procedure? _%f114542%_)
            '#!void
            (error '"expected procedure" _%f114542%_))
        (let _%lp114545%_ ((_%rest114547%_ _%stx114543%_))
          (let* ((_%g114548114558%_ (gx#syntax-e _%rest114547%_))
                 (_%else114551114566%_
                  (lambda () (_%f114542%_ _%rest114547%_))))
            (let ((_%K114554114580%_
                   (lambda (_%rest114577%_ _%hd114578%_)
                     (_%f114542%_ _%hd114578%_)
                     (_%lp114545%_ _%rest114577%_)))
                  (_%K114553114571%_ (lambda () '#!void)))
              (let ((_%try-match114550114574%_
                     (lambda ()
                       (if (##null? _%g114548114558%_)
                           (_%K114553114571%_)
                           (_%else114551114566%_)))))
                (if (##pair? _%g114548114558%_)
                    (let ((_%tl114556114585%_ (##cdr _%g114548114558%_))
                          (_%hd114555114583%_ (##car _%g114548114558%_)))
                      (let ((_%hd114588%_ _%hd114555114583%_)
                            (_%rest114590%_ _%tl114556114585%_))
                        (_%K114554114580%_ _%rest114590%_ _%hd114588%_)))
                    (_%try-match114550114574%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f114447%_ _%xstx114448%_ _%ystx114449%_)
        (if (procedure? _%f114447%_)
            '#!void
            (error '"expected procedure" _%f114447%_))
        (let _%lp114451%_ ((_%xrest114453%_ _%xstx114448%_)
                           (_%yrest114454%_ _%ystx114449%_))
          (let* ((_%g114455114465%_ (gx#syntax-e _%xrest114453%_))
                 (_%else114458114473%_ (lambda () '#!void)))
            (let ((_%K114461114530%_
                   (lambda (_%xrest114499%_ _%xhd114500%_)
                     (let* ((_%g114501114508%_ (gx#syntax-e _%yrest114454%_))
                            (_%E114503114512%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114501114508%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114504114518%_
                             (lambda (_%yrest114515%_ _%yhd114516%_)
                               (_%f114447%_ _%xhd114500%_ _%yhd114516%_)
                               (_%lp114451%_
                                _%xrest114499%_
                                _%yrest114515%_))))
                       (if (##pair? _%g114501114508%_)
                           (let ((_%hd114505114521%_ (##car _%g114501114508%_))
                                 (_%tl114506114523%_
                                  (##cdr _%g114501114508%_)))
                             (let* ((_%yhd114526%_ _%hd114505114521%_)
                                    (_%yrest114528%_ _%tl114506114523%_))
                               (_%K114504114518%_
                                _%yrest114528%_
                                _%yhd114526%_)))
                           (_%E114503114512%_)))))
                  (_%K114460114493%_
                   (lambda ()
                     (let* ((_%yrest114477114482%_ _%yrest114454%_)
                            (_%E114479114486%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114477114482%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114480114490%_
                             (lambda ()
                               (_%f114447%_ _%xrest114453%_ _%yrest114454%_))))
                       (if (not (gx#stx-null? _%yrest114477114482%_))
                           (_%K114480114490%_)
                           (_%E114479114486%_))))))
              (let ((_%try-match114457114496%_
                     (lambda ()
                       (if (not (null? _%g114455114465%_))
                           (_%K114460114493%_)
                           (_%else114458114473%_)))))
                (if (##pair? _%g114455114465%_)
                    (let ((_%tl114463114535%_ (##cdr _%g114455114465%_))
                          (_%hd114462114533%_ (##car _%g114455114465%_)))
                      (let ((_%xhd114538%_ _%hd114462114533%_)
                            (_%xrest114540%_ _%tl114463114535%_))
                        (_%K114461114530%_ _%xrest114540%_ _%xhd114538%_)))
                    (_%try-match114457114496%_))))))))
    (define gx#stx-map
      (lambda _g115132_
        (let ((_g115131_ (##length _g115132_)))
          (cond ((##fx= _g115131_ 2) (apply gx#stx-map1 _g115132_))
                ((##fx= _g115131_ 3) (apply gx#stx-map2 _g115132_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g115132_))))))
    (define gx#stx-map1
      (lambda (_%f114390%_ _%stx114391%_)
        (if (procedure? _%f114390%_)
            '#!void
            (error '"expected procedure" _%f114390%_))
        (let _%recur114393%_ ((_%rest114395%_ _%stx114391%_))
          (let* ((_%g114396114406%_ (gx#syntax-e _%rest114395%_))
                 (_%else114399114414%_
                  (lambda () (_%f114390%_ _%rest114395%_))))
            (let ((_%K114402114428%_
                   (lambda (_%rest114425%_ _%hd114426%_)
                     (cons (_%f114390%_ _%hd114426%_)
                           (_%recur114393%_ _%rest114425%_))))
                  (_%K114401114419%_ (lambda () '())))
              (let ((_%try-match114398114422%_
                     (lambda ()
                       (if (##null? _%g114396114406%_)
                           (_%K114401114419%_)
                           (_%else114399114414%_)))))
                (if (##pair? _%g114396114406%_)
                    (let ((_%tl114404114433%_ (##cdr _%g114396114406%_))
                          (_%hd114403114431%_ (##car _%g114396114406%_)))
                      (let ((_%hd114436%_ _%hd114403114431%_)
                            (_%rest114438%_ _%tl114404114433%_))
                        (_%K114402114428%_ _%rest114438%_ _%hd114436%_)))
                    (_%try-match114398114422%_))))))))
    (define gx#stx-map2
      (lambda (_%f114295%_ _%xstx114296%_ _%ystx114297%_)
        (if (procedure? _%f114295%_)
            '#!void
            (error '"expected procedure" _%f114295%_))
        (let _%recur114299%_ ((_%xrest114301%_ _%xstx114296%_)
                              (_%yrest114302%_ _%ystx114297%_))
          (let* ((_%g114303114313%_ (gx#syntax-e _%xrest114301%_))
                 (_%else114306114321%_ (lambda () '())))
            (let ((_%K114309114378%_
                   (lambda (_%xrest114347%_ _%xhd114348%_)
                     (let* ((_%g114349114356%_ (gx#syntax-e _%yrest114302%_))
                            (_%E114351114360%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114349114356%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114352114366%_
                             (lambda (_%yrest114363%_ _%yhd114364%_)
                               (cons (_%f114295%_ _%xhd114348%_ _%yhd114364%_)
                                     (_%recur114299%_
                                      _%xrest114347%_
                                      _%yrest114363%_)))))
                       (if (##pair? _%g114349114356%_)
                           (let ((_%hd114353114369%_ (##car _%g114349114356%_))
                                 (_%tl114354114371%_
                                  (##cdr _%g114349114356%_)))
                             (let* ((_%yhd114374%_ _%hd114353114369%_)
                                    (_%yrest114376%_ _%tl114354114371%_))
                               (_%K114352114366%_
                                _%yrest114376%_
                                _%yhd114374%_)))
                           (_%E114351114360%_)))))
                  (_%K114308114341%_
                   (lambda ()
                     (let* ((_%yrest114325114330%_ _%yrest114302%_)
                            (_%E114327114334%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114325114330%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114328114338%_
                             (lambda ()
                               (_%f114295%_ _%xrest114301%_ _%yrest114302%_))))
                       (if (not (gx#stx-null? _%yrest114325114330%_))
                           (_%K114328114338%_)
                           (_%E114327114334%_))))))
              (let ((_%try-match114305114344%_
                     (lambda ()
                       (if (not (null? _%g114303114313%_))
                           (_%K114308114341%_)
                           (_%else114306114321%_)))))
                (if (##pair? _%g114303114313%_)
                    (let ((_%tl114311114383%_ (##cdr _%g114303114313%_))
                          (_%hd114310114381%_ (##car _%g114303114313%_)))
                      (let ((_%xhd114386%_ _%hd114310114381%_)
                            (_%xrest114388%_ _%tl114311114383%_))
                        (_%K114309114378%_ _%xrest114388%_ _%xhd114386%_)))
                    (_%try-match114305114344%_))))))))
    (define gx#stx-andmap
      (lambda (_%f114245%_ _%stx114246%_)
        (if (procedure? _%f114245%_)
            '#!void
            (error '"expected procedure" _%f114245%_))
        (let _%lp114248%_ ((_%rest114250%_ _%stx114246%_))
          (let* ((_%g114251114261%_ (gx#syntax-e _%rest114250%_))
                 (_%else114254114269%_
                  (lambda () (_%f114245%_ _%rest114250%_))))
            (let ((_%K114257114283%_
                   (lambda (_%rest114280%_ _%hd114281%_)
                     (if (_%f114245%_ _%hd114281%_)
                         (_%lp114248%_ _%rest114280%_)
                         '#f)))
                  (_%K114256114274%_ (lambda () '#t)))
              (let ((_%try-match114253114277%_
                     (lambda ()
                       (if (##null? _%g114251114261%_)
                           (_%K114256114274%_)
                           (_%else114254114269%_)))))
                (if (##pair? _%g114251114261%_)
                    (let ((_%tl114259114288%_ (##cdr _%g114251114261%_))
                          (_%hd114258114286%_ (##car _%g114251114261%_)))
                      (let ((_%hd114291%_ _%hd114258114286%_)
                            (_%rest114293%_ _%tl114259114288%_))
                        (_%K114257114283%_ _%rest114293%_ _%hd114291%_)))
                    (_%try-match114253114277%_))))))))
    (define gx#stx-ormap
      (lambda (_%f114192%_ _%stx114193%_)
        (if (procedure? _%f114192%_)
            '#!void
            (error '"expected procedure" _%f114192%_))
        (let _%lp114195%_ ((_%rest114197%_ _%stx114193%_))
          (let* ((_%g114198114208%_ (gx#syntax-e _%rest114197%_))
                 (_%else114201114216%_
                  (lambda () (_%f114192%_ _%rest114197%_))))
            (let ((_%K114204114233%_
                   (lambda (_%rest114227%_ _%hd114228%_)
                     (let ((_%$e114230%_ (_%f114192%_ _%hd114228%_)))
                       (if _%$e114230%_
                           _%$e114230%_
                           (_%lp114195%_ _%rest114227%_)))))
                  (_%K114203114221%_ (lambda () '#f)))
              (let ((_%try-match114200114224%_
                     (lambda ()
                       (if (##null? _%g114198114208%_)
                           (_%K114203114221%_)
                           (_%else114201114216%_)))))
                (if (##pair? _%g114198114208%_)
                    (let ((_%tl114206114238%_ (##cdr _%g114198114208%_))
                          (_%hd114205114236%_ (##car _%g114198114208%_)))
                      (let ((_%hd114241%_ _%hd114205114236%_)
                            (_%rest114243%_ _%tl114206114238%_))
                        (_%K114204114233%_ _%rest114243%_ _%hd114241%_)))
                    (_%try-match114200114224%_))))))))
    (define gx#stx-foldl
      (lambda (_%f114140%_ _%iv114141%_ _%stx114142%_)
        (if (procedure? _%f114140%_)
            '#!void
            (error '"expected procedure" _%f114140%_))
        (let _%lp114144%_ ((_%r114146%_ _%iv114141%_)
                           (_%rest114147%_ _%stx114142%_))
          (let* ((_%g114148114158%_ (gx#syntax-e _%rest114147%_))
                 (_%else114151114166%_
                  (lambda () (_%f114140%_ _%rest114147%_ _%r114146%_))))
            (let ((_%K114154114180%_
                   (lambda (_%rest114177%_ _%hd114178%_)
                     (_%lp114144%_
                      (_%f114140%_ _%hd114178%_ _%r114146%_)
                      _%rest114177%_)))
                  (_%K114153114171%_ (lambda () _%r114146%_)))
              (let ((_%try-match114150114174%_
                     (lambda ()
                       (if (##null? _%g114148114158%_)
                           (_%K114153114171%_)
                           (_%else114151114166%_)))))
                (if (##pair? _%g114148114158%_)
                    (let ((_%tl114156114185%_ (##cdr _%g114148114158%_))
                          (_%hd114155114183%_ (##car _%g114148114158%_)))
                      (let ((_%hd114188%_ _%hd114155114183%_)
                            (_%rest114190%_ _%tl114156114185%_))
                        (_%K114154114180%_ _%rest114190%_ _%hd114188%_)))
                    (_%try-match114150114174%_))))))))
    (define gx#stx-foldr
      (lambda (_%f114089%_ _%iv114090%_ _%stx114091%_)
        (if (procedure? _%f114089%_)
            '#!void
            (error '"expected procedure" _%f114089%_))
        (let _%recur114093%_ ((_%rest114095%_ _%stx114091%_))
          (let* ((_%g114096114106%_ (gx#syntax-e _%rest114095%_))
                 (_%else114099114114%_
                  (lambda () (_%f114089%_ _%rest114095%_ _%iv114090%_))))
            (let ((_%K114102114128%_
                   (lambda (_%rest114125%_ _%hd114126%_)
                     (_%f114089%_
                      _%hd114126%_
                      (_%recur114093%_ _%rest114125%_))))
                  (_%K114101114119%_ (lambda () _%iv114090%_)))
              (let ((_%try-match114098114122%_
                     (lambda ()
                       (if (##null? _%g114096114106%_)
                           (_%K114101114119%_)
                           (_%else114099114114%_)))))
                (if (##pair? _%g114096114106%_)
                    (let ((_%tl114104114133%_ (##cdr _%g114096114106%_))
                          (_%hd114103114131%_ (##car _%g114096114106%_)))
                      (let ((_%hd114136%_ _%hd114103114131%_)
                            (_%rest114138%_ _%tl114104114133%_))
                        (_%K114102114128%_ _%rest114138%_ _%hd114136%_)))
                    (_%try-match114098114122%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx114087%_) (gx#stx-foldl cons '() _%stx114087%_)))
    (define gx#stx-last
      (lambda (_%stx114048%_)
        (let _%lp114050%_ ((_%rest114052%_ _%stx114048%_))
          (let* ((_%g114053114061%_ (gx#syntax-e _%rest114052%_))
                 (_%else114055114069%_ (lambda () _%rest114052%_))
                 (_%K114057114075%_
                  (lambda (_%rest114072%_ _%hd114073%_)
                    (if (gx#stx-null? _%rest114072%_)
                        _%hd114073%_
                        (_%lp114050%_ _%rest114072%_)))))
            (if (##pair? _%g114053114061%_)
                (let ((_%hd114058114078%_ (##car _%g114053114061%_))
                      (_%tl114059114080%_ (##cdr _%g114053114061%_)))
                  (let* ((_%hd114083%_ _%hd114058114078%_)
                         (_%rest114085%_ _%tl114059114080%_))
                    (_%K114057114075%_ _%rest114085%_ _%hd114083%_)))
                (_%else114055114069%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx114019%_)
        (let _%lp114021%_ ((_%hd114023%_ _%stx114019%_))
          (let* ((_%g114024114031%_ (gx#syntax-e _%hd114023%_))
                 (_%E114026114035%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g114024114031%_
                           '([_ . rest]))
                    '#!void))
                 (_%K114027114040%_
                  (lambda (_%rest114038%_)
                    (if (gx#stx-pair? _%rest114038%_)
                        (_%lp114021%_ _%rest114038%_)
                        _%hd114023%_))))
            (if (##pair? _%g114024114031%_)
                (let* ((_%tl114029114043%_ (##cdr _%g114024114031%_))
                       (_%rest114046%_ _%tl114029114043%_))
                  (_%K114027114040%_ _%rest114046%_))
                (_%E114026114035%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113988%_ _%k113989%_)
        (let _%lp113991%_ ((_%rest113993%_ _%stx113988%_)
                           (_%k113994%_ _%k113989%_))
          (if (fxpositive? _%k113994%_)
              (let* ((_%g113995114002%_ (gx#syntax-e _%rest113993%_))
                     (_%E113997114006%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113995114002%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113998114011%_
                      (lambda (_%rest114009%_)
                        (_%lp113991%_ _%rest114009%_ (##fx- _%k113994%_ '1)))))
                (if (##pair? _%g113995114002%_)
                    (let* ((_%tl114000114014%_ (##cdr _%g113995114002%_))
                           (_%rest114017%_ _%tl114000114014%_))
                      (_%K113998114011%_ _%rest114017%_))
                    (_%E113997114006%_)))
              _%rest113993%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113985%_ _%k113986%_)
        (gx#stx-car (gx#stx-list-tail _%stx113985%_ _%k113986%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113897%_ _%key?113898%_)
        (if (procedure? _%key?113898%_)
            '#!void
            (error '"expected procedure" _%key?113898%_))
        (let _%lp113900%_ ((_%rest113902%_ _%stx113897%_))
          (let* ((_%g113903113913%_ (gx#stx-e _%rest113902%_))
                 (_%else113906113921%_ (lambda () '#f)))
            (let ((_%K113909113963%_
                   (lambda (_%rest113932%_ _%hd113933%_)
                     (if (_%key?113898%_ _%hd113933%_)
                         (let* ((_%g113934113942%_ (gx#stx-e _%rest113932%_))
                                (_%else113936113950%_ (lambda () '#f))
                                (_%K113938113955%_
                                 (lambda (_%rest113953%_)
                                   (_%lp113900%_ _%rest113953%_))))
                           (if (##pair? _%g113934113942%_)
                               (let* ((_%tl113940113958%_
                                       (##cdr _%g113934113942%_))
                                      (_%rest113961%_ _%tl113940113958%_))
                                 (_%lp113900%_ _%rest113961%_))
                               (_%else113936113950%_)))
                         '#f)))
                  (_%K113908113926%_ (lambda () '#t)))
              (let ((_%try-match113905113929%_
                     (lambda ()
                       (if (##null? _%g113903113913%_)
                           (_%K113908113926%_)
                           (_%else113906113921%_)))))
                (if (##pair? _%g113903113913%_)
                    (let ((_%tl113911113968%_ (##cdr _%g113903113913%_))
                          (_%hd113910113966%_ (##car _%g113903113913%_)))
                      (let ((_%hd113971%_ _%hd113910113966%_)
                            (_%rest113973%_ _%tl113911113968%_))
                        (_%K113909113963%_ _%rest113973%_ _%hd113971%_)))
                    (_%try-match113905113929%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113978%_)
        (let ((_%key?113980%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113978%_ _%key?113980%_))))
    (define gx#stx-plist?
      (lambda _g115134_
        (let ((_g115133_ (##length _g115134_)))
          (cond ((##fx= _g115133_ 1) (apply gx#stx-plist?__0 _g115134_))
                ((##fx= _g115133_ 2) (apply gx#stx-plist?__% _g115134_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g115134_))))))
    (define gx#stx-getq__%
      (lambda (_%key113815%_ _%stx113816%_ _%key=?113817%_)
        (if (procedure? _%key=?113817%_)
            '#!void
            (error '"expected procedure" _%key=?113817%_))
        (let _%lp113819%_ ((_%rest113821%_ _%stx113816%_))
          (let* ((_%g113822113830%_ (gx#syntax-e _%rest113821%_))
                 (_%else113824113838%_ (lambda () '#f))
                 (_%K113826113872%_
                  (lambda (_%rest113841%_ _%hd113842%_)
                    (let* ((_%g113843113850%_ (gx#syntax-e _%rest113841%_))
                           (_%E113845113854%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113843113850%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113846113860%_
                            (lambda (_%rest113857%_ _%val113858%_)
                              (if (_%key=?113817%_ _%hd113842%_ _%key113815%_)
                                  _%val113858%_
                                  (_%lp113819%_ _%rest113857%_)))))
                      (if (##pair? _%g113843113850%_)
                          (let ((_%hd113847113863%_ (##car _%g113843113850%_))
                                (_%tl113848113865%_ (##cdr _%g113843113850%_)))
                            (let* ((_%val113868%_ _%hd113847113863%_)
                                   (_%rest113870%_ _%tl113848113865%_))
                              (_%K113846113860%_
                               _%rest113870%_
                               _%val113868%_)))
                          (_%E113845113854%_))))))
            (if (##pair? _%g113822113830%_)
                (let ((_%hd113827113875%_ (##car _%g113822113830%_))
                      (_%tl113828113877%_ (##cdr _%g113822113830%_)))
                  (let* ((_%hd113880%_ _%hd113827113875%_)
                         (_%rest113882%_ _%tl113828113877%_))
                    (_%K113826113872%_ _%rest113882%_ _%hd113880%_)))
                (_%else113824113838%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113887%_ _%stx113888%_)
        (let ((_%key=?113890%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113887%_ _%stx113888%_ _%key=?113890%_))))
    (define gx#stx-getq
      (lambda _g115136_
        (let ((_g115135_ (##length _g115136_)))
          (cond ((##fx= _g115135_ 2) (apply gx#stx-getq__0 _g115136_))
                ((##fx= _g115135_ 3) (apply gx#stx-getq__% _g115136_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g115136_))))))))
