(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712697255)
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
      (lambda _%$args114191%_
        (apply make-instance gx#identifier-wrap::t _%$args114191%_)))
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
      (lambda _%$args114188%_
        (apply make-instance gx#syntax-wrap::t _%$args114188%_)))
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
      (lambda _%$args114185%_
        (apply make-instance gx#syntax-quote::t _%$args114185%_)))
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
      (lambda (_%stx114183%_) (symbol? (gx#stx-e _%stx114183%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114181%_)
        (if (##structure-direct-instance-of? _%stx114181%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114181%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114176%_)
        (if (##structure-direct-instance-of? _%stx114176%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx114176%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx114176%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114171%_)
        (if (##structure-direct-instance-of? _%stx114171%_ 'gx#syntax-quote::t)
            _%stx114171%_
            (if (##structure-direct-instance-of?
                 _%stx114171%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx114171%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx114145%_)
        (if (##structure-direct-instance-of? _%stx114145%_ 'gx#syntax-wrap::t)
            (let _%lp114148%_ ((_%e114150%_
                                (##unchecked-structure-ref
                                 _%stx114145%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks114151%_
                                (cons (##unchecked-structure-ref
                                       _%stx114145%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e114150%_)
                  (let ((_%$e114154%_
                         (##type-id (##structure-type _%e114150%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e114154%_)
                        (_%lp114148%_
                         (##unchecked-structure-ref _%e114150%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e114150%_ '3 '#f '#f)
                          _%marks114151%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e114154%_)
                                (eq? 'gx#identifier-wrap::t _%$e114154%_))
                            (##unchecked-structure-ref _%e114150%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e114154%_)
                                (_%lp114148%_
                                 (##unchecked-structure-ref
                                  _%e114150%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks114151%_)
                                _%e114150%_))))
                  (if (null? _%marks114151%_)
                      _%e114150%_
                      (if (pair? _%e114150%_)
                          (cons (gx#stx-wrap (car _%e114150%_) _%marks114151%_)
                                (gx#stx-wrap
                                 (cdr _%e114150%_)
                                 _%marks114151%_))
                          (if (vector? _%e114150%_)
                              (vector-map
                               (lambda (_%g114162114164%_)
                                 (gx#stx-wrap
                                  _%g114162114164%_
                                  _%marks114151%_))
                               _%e114150%_)
                              (if (box? _%e114150%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e114150%_)
                                        _%marks114151%_))
                                  _%e114150%_))))))
            (if (##structure-instance-of? _%stx114145%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx114145%_ '1 '#f '#f)
                _%stx114145%_))))
    (define gx#syntax->datum
      (lambda (_%stx114138%_)
        (if (##structure-instance-of? _%stx114138%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx114138%_ '1 '#f '#f))
            (if (pair? _%stx114138%_)
                (cons (gx#syntax->datum (car _%stx114138%_))
                      (gx#syntax->datum (cdr _%stx114138%_)))
                (if (vector? _%stx114138%_)
                    (vector-map gx#syntax->datum _%stx114138%_)
                    (if (box? _%stx114138%_)
                        (box (gx#syntax->datum (unbox _%stx114138%_)))
                        _%stx114138%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114072%_ _%datum114073%_ _%src114074%_ _%quote?114075%_)
        (letrec ((_%wrap-datum114077%_
                  (lambda (_%e114110%_ _%marks114111%_)
                    (_%wrap-inner114079%_
                     _%e114110%_
                     (lambda (_%g114112114114%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114112114114%_
                        _%src114074%_
                        _%marks114111%_)))))
                 (_%wrap-quote114078%_
                  (lambda (_%e114102%_ _%ctx114103%_ _%marks114104%_)
                    (_%wrap-inner114079%_
                     _%e114102%_
                     (lambda (_%g114105114107%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114105114107%_
                        _%src114074%_
                        _%ctx114103%_
                        _%marks114104%_)))))
                 (_%wrap-inner114079%_
                  (lambda (_%e114090%_ _%wrap-e114091%_)
                    (let _%recur114093%_ ((_%e114095%_ _%e114090%_))
                      (if (symbol? _%e114095%_)
                          (_%wrap-e114091%_ _%e114095%_)
                          (if (pair? _%e114095%_)
                              (cons (_%recur114093%_ (car _%e114095%_))
                                    (_%recur114093%_ (cdr _%e114095%_)))
                              (if (vector? _%e114095%_)
                                  (vector-map _%recur114093%_ _%e114095%_)
                                  (if (box? _%e114095%_)
                                      (box (_%recur114093%_
                                            (unbox _%e114095%_)))
                                      _%e114095%_)))))))
                 (_%wrap-outer114080%_
                  (lambda (_%e114088%_)
                    (if (##structure-instance-of? _%e114088%_ 'gerbil#AST::t)
                        _%e114088%_
                        (##structure gx#AST::t _%e114088%_ _%src114074%_)))))
          (if (##structure-instance-of? _%datum114073%_ 'gerbil#AST::t)
              _%datum114073%_
              (if (not _%stx114072%_)
                  (##structure gx#AST::t _%datum114073%_ _%src114074%_)
                  (if (gx#identifier? _%stx114072%_)
                      (let ((_%stx114085%_ (gx#stx-unwrap__0 _%stx114072%_)))
                        (_%wrap-outer114080%_
                         (if (##structure-direct-instance-of?
                              _%stx114085%_
                              'gx#syntax-quote::t)
                             (if _%quote?114075%_
                                 (_%wrap-quote114078%_
                                  _%datum114073%_
                                  (##unchecked-structure-ref
                                   _%stx114085%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx114085%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum114077%_
                                  _%datum114073%_
                                  (##unchecked-structure-ref
                                   _%stx114085%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum114077%_
                              _%datum114073%_
                              (##unchecked-structure-ref
                               _%stx114085%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx114072%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114120%_ _%datum114121%_)
        (let* ((_%src114123%_ '#f) (_%quote?114125%_ '#t))
          (gx#datum->syntax__%
           _%stx114120%_
           _%datum114121%_
           _%src114123%_
           _%quote?114125%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114127%_ _%datum114128%_ _%src114129%_)
        (let ((_%quote?114131%_ '#t))
          (gx#datum->syntax__%
           _%stx114127%_
           _%datum114128%_
           _%src114129%_
           _%quote?114131%_))))
    (define gx#datum->syntax
      (lambda _g114272_
        (let ((_g114271_ (##length _g114272_)))
          (cond ((##fx= _g114271_ 2) (apply gx#datum->syntax__0 _g114272_))
                ((##fx= _g114271_ 3) (apply gx#datum->syntax__1 _g114272_))
                ((##fx= _g114271_ 4) (apply gx#datum->syntax__% _g114272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g114272_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114038%_ _%marks114039%_)
        (let _%lp114041%_ ((_%e114043%_ _%stx114038%_)
                           (_%marks114044%_ _%marks114039%_)
                           (_%src114045%_ (gx#stx-source _%stx114038%_)))
          (if (##structure-direct-instance-of? _%e114043%_ 'gx#syntax-wrap::t)
              (_%lp114041%_
               (##unchecked-structure-ref _%e114043%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e114043%_ '3 '#f '#f)
                _%marks114044%_)
               (##unchecked-structure-ref _%e114043%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e114043%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks114044%_)
                      _%e114043%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e114043%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e114043%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e114043%_ '3 '#f '#f)
                        _%marks114044%_)))
                  (if (##structure-direct-instance-of?
                       _%e114043%_
                       'gx#syntax-quote::t)
                      _%e114043%_
                      (if (##structure-instance-of? _%e114043%_ 'gerbil#AST::t)
                          (_%lp114041%_
                           (##unchecked-structure-ref _%e114043%_ '1 '#f '#f)
                           _%marks114044%_
                           (##unchecked-structure-ref _%e114043%_ '2 '#f '#f))
                          (if (symbol? _%e114043%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e114043%_
                               _%src114045%_
                               (reverse _%marks114044%_))
                              (if (null? _%marks114044%_)
                                  _%e114043%_
                                  (if (pair? _%e114043%_)
                                      (cons (gx#stx-wrap
                                             (car _%e114043%_)
                                             _%marks114044%_)
                                            (gx#stx-wrap
                                             (cdr _%e114043%_)
                                             _%marks114044%_))
                                      (if (vector? _%e114043%_)
                                          (vector-map
                                           (lambda (_%g114054114056%_)
                                             (gx#stx-wrap
                                              _%g114054114056%_
                                              _%marks114044%_))
                                           _%e114043%_)
                                          (if (box? _%e114043%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e114043%_)
                                                    _%marks114044%_))
                                              _%e114043%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114064%_)
        (let ((_%marks114066%_ '()))
          (gx#stx-unwrap__% _%stx114064%_ _%marks114066%_))))
    (define gx#stx-unwrap
      (lambda _g114274_
        (let ((_g114273_ (##length _g114274_)))
          (cond ((##fx= _g114273_ 1) (apply gx#stx-unwrap__0 _g114274_))
                ((##fx= _g114273_ 2) (apply gx#stx-unwrap__% _g114274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g114274_))))))
    (define gx#stx-wrap
      (lambda (_%stx114031%_ _%marks114032%_)
        (__foldl1
         (lambda (_%mark114034%_ _%stx114035%_)
           (gx#stx-apply-mark _%stx114035%_ _%mark114034%_))
         _%stx114031%_
         _%marks114032%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114025%_ _%marks114026%_)
        (__foldr1
         (lambda (_%mark114028%_ _%stx114029%_)
           (gx#stx-apply-mark _%stx114029%_ _%mark114028%_))
         _%stx114025%_
         _%marks114026%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114019%_ _%mark114020%_)
        (if (##structure-direct-instance-of? _%stx114019%_ 'gx#syntax-quote::t)
            _%stx114019%_
            (if (and (##structure-direct-instance-of?
                      _%stx114019%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114020%_
                          (##unchecked-structure-ref
                           _%stx114019%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx114019%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx114019%_
                 (gx#stx-source _%stx114019%_)
                 _%mark114020%_)))))
    (define gx#apply-mark
      (lambda (_%mark113983%_ _%marks113984%_)
        (let* ((_%marks113985113993%_ _%marks113984%_)
               (_%else113987114001%_
                (lambda () (cons _%mark113983%_ _%marks113984%_)))
               (_%K113989114007%_
                (lambda (_%rest114004%_ _%hd114005%_)
                  (if (eq? _%mark113983%_ _%hd114005%_)
                      _%rest114004%_
                      (cons _%mark113983%_ _%marks113984%_)))))
          (if (##pair? _%marks113985113993%_)
              (let ((_%hd113990114010%_ (##car _%marks113985113993%_))
                    (_%tl113991114012%_ (##cdr _%marks113985113993%_)))
                (let* ((_%hd114015%_ _%hd113990114010%_)
                       (_%rest114017%_ _%tl113991114012%_))
                  (_%K113989114007%_ _%rest114017%_ _%hd114015%_)))
              (_%else113987114001%_)))))
    (define gx#stx-e
      (lambda (_%stx113978%_)
        (if (##structure-direct-instance-of? _%stx113978%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx113978%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx113978%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx113978%_ '1 '#f '#f)
                _%stx113978%_))))
    (define gx#stx-source
      (lambda (_%stx113976%_)
        (if (##structure-instance-of? _%stx113976%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx113976%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx113970%_ _%src113971%_)
        (if (or (##structure-instance-of? _%stx113970%_ 'gerbil#AST::t)
                (not _%src113971%_))
            _%stx113970%_
            (##structure gx#AST::t _%stx113970%_ _%src113971%_))))
    (define gx#stx-datum?
      (lambda (_%stx113968%_) (gx#self-quoting? (gx#stx-e _%stx113968%_))))
    (define gx#self-quoting?
      (lambda (_%x113951%_)
        (let ((_%$e113953%_ (immediate? _%x113951%_)))
          (if _%$e113953%_
              _%$e113953%_
              (let ((_%$e113956%_ (number? _%x113951%_)))
                (if _%$e113956%_
                    _%$e113956%_
                    (let ((_%$e113959%_ (keyword? _%x113951%_)))
                      (if _%$e113959%_
                          _%$e113959%_
                          (let ((_%$e113962%_ (string? _%x113951%_)))
                            (if _%$e113962%_
                                _%$e113962%_
                                (let ((_%$e113965%_ (vector? _%x113951%_)))
                                  (if _%$e113965%_
                                      _%$e113965%_
                                      (u8vector? _%x113951%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e113949%_) (boolean? (gx#stx-e _%e113949%_))))
    (define gx#stx-keyword?
      (lambda (_%e113947%_) (keyword? (gx#stx-e _%e113947%_))))
    (define gx#stx-char? (lambda (_%e113945%_) (char? (gx#stx-e _%e113945%_))))
    (define gx#stx-number?
      (lambda (_%e113943%_) (number? (gx#stx-e _%e113943%_))))
    (define gx#stx-fixnum?
      (lambda (_%e113941%_) (fixnum? (gx#stx-e _%e113941%_))))
    (define gx#stx-string?
      (lambda (_%e113939%_) (string? (gx#stx-e _%e113939%_))))
    (define gx#stx-null? (lambda (_%e113937%_) (null? (gx#stx-e _%e113937%_))))
    (define gx#stx-pair? (lambda (_%e113935%_) (pair? (gx#stx-e _%e113935%_))))
    (define gx#stx-list?
      (lambda (_%e113897%_)
        (let* ((_%g113898113907%_ (gx#stx-e _%e113897%_))
               (_%E113901113911%_
                (lambda ()
                  (error '"No clause matching"
                         _%g113898113907%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K113903113927%_
                 (lambda (_%rest113925%_) (gx#stx-list? _%rest113925%_)))
                (_%K113902113917%_
                 (lambda (_%tail113915%_) (null? _%tail113915%_))))
            (if (##pair? _%g113898113907%_)
                (let* ((_%tl113905113930%_ (##cdr _%g113898113907%_))
                       (_%rest113933%_ _%tl113905113930%_))
                  (gx#stx-list? _%rest113933%_))
                (let ((_%tail113920%_ _%g113898113907%_))
                  (null? _%tail113920%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e113890%_)
        (let* ((_%e113892%_ (gx#stx-e _%e113890%_))
               (_%$e113894%_ (pair? _%e113892%_)))
          (if _%$e113894%_ _%$e113894%_ (null? _%e113892%_)))))
    (define gx#stx-vector?
      (lambda (_%e113888%_) (vector? (gx#stx-e _%e113888%_))))
    (define gx#stx-box? (lambda (_%e113886%_) (box? (gx#stx-e _%e113886%_))))
    (define gx#stx-eq?
      (lambda (_%x113883%_ _%y113884%_)
        (eq? (gx#stx-e _%x113883%_) (gx#stx-e _%y113884%_))))
    (define gx#stx-eqv?
      (lambda (_%x113880%_ _%y113881%_)
        (eqv? (gx#stx-e _%x113880%_) (gx#stx-e _%y113881%_))))
    (define gx#stx-equal?
      (lambda (_%x113877%_ _%y113878%_)
        (equal? (gx#stx-e _%x113877%_) (gx#stx-e _%y113878%_))))
    (define gx#stx-false? (lambda (_%x113875%_) (not (gx#stx-e _%x113875%_))))
    (define gx#stx-identifier
      (lambda (_%template113872%_ . _%args113873%_)
        (gx#datum->syntax__1
         _%template113872%_
         (apply make-symbol (gx#syntax->datum _%args113873%_))
         (gx#stx-source _%template113872%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx113870%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx113870%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx113865%_)
        (if (##structure-direct-instance-of?
             _%stx113865%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx113865%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx113865%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx113865%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx113865%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx113861%_)
        (let ((_%stx113863%_ (gx#stx-unwrap__0 _%stx113861%_)))
          (if (gx#identifier-quote? _%stx113863%_)
              (##unchecked-structure-ref _%stx113863%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx113816%_)
        (let* ((_%g113817113827%_ (gx#stx-e _%stx113816%_))
               (_%else113820113835%_ (lambda () '#f)))
          (let ((_%K113823113849%_
                 (lambda (_%rest113846%_ _%hd113847%_)
                   (if (gx#identifier? _%hd113847%_)
                       (gx#identifier-list? _%rest113846%_)
                       '#f)))
                (_%K113822113840%_ (lambda () '#t)))
            (let ((_%try-match113819113843%_
                   (lambda ()
                     (if (##null? _%g113817113827%_)
                         (_%K113822113840%_)
                         (_%else113820113835%_)))))
              (if (##pair? _%g113817113827%_)
                  (let ((_%tl113825113854%_ (##cdr _%g113817113827%_))
                        (_%hd113824113852%_ (##car _%g113817113827%_)))
                    (let ((_%hd113857%_ _%hd113824113852%_)
                          (_%rest113859%_ _%tl113825113854%_))
                      (_%K113823113849%_ _%rest113859%_ _%hd113857%_)))
                  (_%try-match113819113843%_)))))))
    (define gx#genident__%
      (lambda (_%e113793%_ _%src113794%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e113796%_ (gx#stx-e _%e113793%_)))
                   (if (interned-symbol? _%e113796%_) _%e113796%_ 'g)))
         (let ((_%$e113798%_ (gx#stx-source _%e113793%_)))
           (if _%$e113798%_ _%$e113798%_ _%src113794%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e113805%_ 'g) (_%src113807%_ '#f))
          (gx#genident__% _%e113805%_ _%src113807%_))))
    (define gx#genident__1
      (lambda (_%e113809%_)
        (let ((_%src113811%_ '#f))
          (gx#genident__% _%e113809%_ _%src113811%_))))
    (define gx#genident
      (lambda _g114276_
        (let ((_g114275_ (##length _g114276_)))
          (cond ((##fx= _g114275_ 0) (apply gx#genident__0 _g114276_))
                ((##fx= _g114275_ 1) (apply gx#genident__1 _g114276_))
                ((##fx= _g114275_ 2) (apply gx#genident__% _g114276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g114276_))))))
    (define gx#gentemps
      (lambda (_%stx-lst113790%_) (gx#stx-map1 gx#genident _%stx-lst113790%_)))
    (define gx#syntax->list
      (lambda (_%stx113788%_) (gx#stx-map1 values _%stx113788%_)))
    (define gx#stx-car
      (lambda (_%stx113785%_)
        (declare (safe))
        (car (gx#syntax-e _%stx113785%_))))
    (define gx#stx-cdr
      (lambda (_%stx113782%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx113782%_))))
    (define gx#stx-length
      (lambda (_%stx113747%_)
        (let _%lp113749%_ ((_%rest113751%_ _%stx113747%_) (_%n113752%_ '0))
          (let* ((_%g113753113761%_ (gx#stx-e _%rest113751%_))
                 (_%else113755113769%_ (lambda () _%n113752%_))
                 (_%K113757113774%_
                  (lambda (_%rest113772%_)
                    (_%lp113749%_ _%rest113772%_ (##fx+ _%n113752%_ '1)))))
            (if (##pair? _%g113753113761%_)
                (let* ((_%tl113759113777%_ (##cdr _%g113753113761%_))
                       (_%rest113780%_ _%tl113759113777%_))
                  (_%K113757113774%_ _%rest113780%_))
                (_%else113755113769%_))))))
    (define gx#stx-for-each
      (lambda _g114278_
        (let ((_g114277_ (##length _g114278_)))
          (cond ((##fx= _g114277_ 2) (apply gx#stx-for-each1 _g114278_))
                ((##fx= _g114277_ 3) (apply gx#stx-for-each2 _g114278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g114278_))))))
    (define gx#stx-for-each1
      (lambda (_%f113690%_ _%stx113691%_)
        (if (procedure? _%f113690%_)
            '#!void
            (error '"expected procedure" _%f113690%_))
        (let _%lp113693%_ ((_%rest113695%_ _%stx113691%_))
          (let* ((_%g113696113706%_ (gx#syntax-e _%rest113695%_))
                 (_%else113699113714%_
                  (lambda () (_%f113690%_ _%rest113695%_))))
            (let ((_%K113702113728%_
                   (lambda (_%rest113725%_ _%hd113726%_)
                     (_%f113690%_ _%hd113726%_)
                     (_%lp113693%_ _%rest113725%_)))
                  (_%K113701113719%_ (lambda () '#!void)))
              (let ((_%try-match113698113722%_
                     (lambda ()
                       (if (##null? _%g113696113706%_)
                           (_%K113701113719%_)
                           (_%else113699113714%_)))))
                (if (##pair? _%g113696113706%_)
                    (let ((_%tl113704113733%_ (##cdr _%g113696113706%_))
                          (_%hd113703113731%_ (##car _%g113696113706%_)))
                      (let ((_%hd113736%_ _%hd113703113731%_)
                            (_%rest113738%_ _%tl113704113733%_))
                        (_%K113702113728%_ _%rest113738%_ _%hd113736%_)))
                    (_%try-match113698113722%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f113595%_ _%xstx113596%_ _%ystx113597%_)
        (if (procedure? _%f113595%_)
            '#!void
            (error '"expected procedure" _%f113595%_))
        (let _%lp113599%_ ((_%xrest113601%_ _%xstx113596%_)
                           (_%yrest113602%_ _%ystx113597%_))
          (let* ((_%g113603113613%_ (gx#syntax-e _%xrest113601%_))
                 (_%else113606113621%_ (lambda () '#!void)))
            (let ((_%K113609113678%_
                   (lambda (_%xrest113647%_ _%xhd113648%_)
                     (let* ((_%g113649113656%_ (gx#syntax-e _%yrest113602%_))
                            (_%E113651113660%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113649113656%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113652113666%_
                             (lambda (_%yrest113663%_ _%yhd113664%_)
                               (_%f113595%_ _%xhd113648%_ _%yhd113664%_)
                               (_%lp113599%_
                                _%xrest113647%_
                                _%yrest113663%_))))
                       (if (##pair? _%g113649113656%_)
                           (let ((_%hd113653113669%_ (##car _%g113649113656%_))
                                 (_%tl113654113671%_
                                  (##cdr _%g113649113656%_)))
                             (let* ((_%yhd113674%_ _%hd113653113669%_)
                                    (_%yrest113676%_ _%tl113654113671%_))
                               (_%K113652113666%_
                                _%yrest113676%_
                                _%yhd113674%_)))
                           (_%E113651113660%_)))))
                  (_%K113608113641%_
                   (lambda ()
                     (let* ((_%yrest113625113630%_ _%yrest113602%_)
                            (_%E113627113634%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113625113630%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113628113638%_
                             (lambda ()
                               (_%f113595%_ _%xrest113601%_ _%yrest113602%_))))
                       (if (not (gx#stx-null? _%yrest113625113630%_))
                           (_%K113628113638%_)
                           (_%E113627113634%_))))))
              (let ((_%try-match113605113644%_
                     (lambda ()
                       (if (not (null? _%g113603113613%_))
                           (_%K113608113641%_)
                           (_%else113606113621%_)))))
                (if (##pair? _%g113603113613%_)
                    (let ((_%tl113611113683%_ (##cdr _%g113603113613%_))
                          (_%hd113610113681%_ (##car _%g113603113613%_)))
                      (let ((_%xhd113686%_ _%hd113610113681%_)
                            (_%xrest113688%_ _%tl113611113683%_))
                        (_%K113609113678%_ _%xrest113688%_ _%xhd113686%_)))
                    (_%try-match113605113644%_))))))))
    (define gx#stx-map
      (lambda _g114280_
        (let ((_g114279_ (##length _g114280_)))
          (cond ((##fx= _g114279_ 2) (apply gx#stx-map1 _g114280_))
                ((##fx= _g114279_ 3) (apply gx#stx-map2 _g114280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g114280_))))))
    (define gx#stx-map1
      (lambda (_%f113538%_ _%stx113539%_)
        (if (procedure? _%f113538%_)
            '#!void
            (error '"expected procedure" _%f113538%_))
        (let _%recur113541%_ ((_%rest113543%_ _%stx113539%_))
          (let* ((_%g113544113554%_ (gx#syntax-e _%rest113543%_))
                 (_%else113547113562%_
                  (lambda () (_%f113538%_ _%rest113543%_))))
            (let ((_%K113550113576%_
                   (lambda (_%rest113573%_ _%hd113574%_)
                     (cons (_%f113538%_ _%hd113574%_)
                           (_%recur113541%_ _%rest113573%_))))
                  (_%K113549113567%_ (lambda () '())))
              (let ((_%try-match113546113570%_
                     (lambda ()
                       (if (##null? _%g113544113554%_)
                           (_%K113549113567%_)
                           (_%else113547113562%_)))))
                (if (##pair? _%g113544113554%_)
                    (let ((_%tl113552113581%_ (##cdr _%g113544113554%_))
                          (_%hd113551113579%_ (##car _%g113544113554%_)))
                      (let ((_%hd113584%_ _%hd113551113579%_)
                            (_%rest113586%_ _%tl113552113581%_))
                        (_%K113550113576%_ _%rest113586%_ _%hd113584%_)))
                    (_%try-match113546113570%_))))))))
    (define gx#stx-map2
      (lambda (_%f113443%_ _%xstx113444%_ _%ystx113445%_)
        (if (procedure? _%f113443%_)
            '#!void
            (error '"expected procedure" _%f113443%_))
        (let _%recur113447%_ ((_%xrest113449%_ _%xstx113444%_)
                              (_%yrest113450%_ _%ystx113445%_))
          (let* ((_%g113451113461%_ (gx#syntax-e _%xrest113449%_))
                 (_%else113454113469%_ (lambda () '())))
            (let ((_%K113457113526%_
                   (lambda (_%xrest113495%_ _%xhd113496%_)
                     (let* ((_%g113497113504%_ (gx#syntax-e _%yrest113450%_))
                            (_%E113499113508%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113497113504%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113500113514%_
                             (lambda (_%yrest113511%_ _%yhd113512%_)
                               (cons (_%f113443%_ _%xhd113496%_ _%yhd113512%_)
                                     (_%recur113447%_
                                      _%xrest113495%_
                                      _%yrest113511%_)))))
                       (if (##pair? _%g113497113504%_)
                           (let ((_%hd113501113517%_ (##car _%g113497113504%_))
                                 (_%tl113502113519%_
                                  (##cdr _%g113497113504%_)))
                             (let* ((_%yhd113522%_ _%hd113501113517%_)
                                    (_%yrest113524%_ _%tl113502113519%_))
                               (_%K113500113514%_
                                _%yrest113524%_
                                _%yhd113522%_)))
                           (_%E113499113508%_)))))
                  (_%K113456113489%_
                   (lambda ()
                     (let* ((_%yrest113473113478%_ _%yrest113450%_)
                            (_%E113475113482%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113473113478%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113476113486%_
                             (lambda ()
                               (_%f113443%_ _%xrest113449%_ _%yrest113450%_))))
                       (if (not (gx#stx-null? _%yrest113473113478%_))
                           (_%K113476113486%_)
                           (_%E113475113482%_))))))
              (let ((_%try-match113453113492%_
                     (lambda ()
                       (if (not (null? _%g113451113461%_))
                           (_%K113456113489%_)
                           (_%else113454113469%_)))))
                (if (##pair? _%g113451113461%_)
                    (let ((_%tl113459113531%_ (##cdr _%g113451113461%_))
                          (_%hd113458113529%_ (##car _%g113451113461%_)))
                      (let ((_%xhd113534%_ _%hd113458113529%_)
                            (_%xrest113536%_ _%tl113459113531%_))
                        (_%K113457113526%_ _%xrest113536%_ _%xhd113534%_)))
                    (_%try-match113453113492%_))))))))
    (define gx#stx-andmap
      (lambda (_%f113393%_ _%stx113394%_)
        (if (procedure? _%f113393%_)
            '#!void
            (error '"expected procedure" _%f113393%_))
        (let _%lp113396%_ ((_%rest113398%_ _%stx113394%_))
          (let* ((_%g113399113409%_ (gx#syntax-e _%rest113398%_))
                 (_%else113402113417%_
                  (lambda () (_%f113393%_ _%rest113398%_))))
            (let ((_%K113405113431%_
                   (lambda (_%rest113428%_ _%hd113429%_)
                     (if (_%f113393%_ _%hd113429%_)
                         (_%lp113396%_ _%rest113428%_)
                         '#f)))
                  (_%K113404113422%_ (lambda () '#t)))
              (let ((_%try-match113401113425%_
                     (lambda ()
                       (if (##null? _%g113399113409%_)
                           (_%K113404113422%_)
                           (_%else113402113417%_)))))
                (if (##pair? _%g113399113409%_)
                    (let ((_%tl113407113436%_ (##cdr _%g113399113409%_))
                          (_%hd113406113434%_ (##car _%g113399113409%_)))
                      (let ((_%hd113439%_ _%hd113406113434%_)
                            (_%rest113441%_ _%tl113407113436%_))
                        (_%K113405113431%_ _%rest113441%_ _%hd113439%_)))
                    (_%try-match113401113425%_))))))))
    (define gx#stx-ormap
      (lambda (_%f113340%_ _%stx113341%_)
        (if (procedure? _%f113340%_)
            '#!void
            (error '"expected procedure" _%f113340%_))
        (let _%lp113343%_ ((_%rest113345%_ _%stx113341%_))
          (let* ((_%g113346113356%_ (gx#syntax-e _%rest113345%_))
                 (_%else113349113364%_
                  (lambda () (_%f113340%_ _%rest113345%_))))
            (let ((_%K113352113381%_
                   (lambda (_%rest113375%_ _%hd113376%_)
                     (let ((_%$e113378%_ (_%f113340%_ _%hd113376%_)))
                       (if _%$e113378%_
                           _%$e113378%_
                           (_%lp113343%_ _%rest113375%_)))))
                  (_%K113351113369%_ (lambda () '#f)))
              (let ((_%try-match113348113372%_
                     (lambda ()
                       (if (##null? _%g113346113356%_)
                           (_%K113351113369%_)
                           (_%else113349113364%_)))))
                (if (##pair? _%g113346113356%_)
                    (let ((_%tl113354113386%_ (##cdr _%g113346113356%_))
                          (_%hd113353113384%_ (##car _%g113346113356%_)))
                      (let ((_%hd113389%_ _%hd113353113384%_)
                            (_%rest113391%_ _%tl113354113386%_))
                        (_%K113352113381%_ _%rest113391%_ _%hd113389%_)))
                    (_%try-match113348113372%_))))))))
    (define gx#stx-foldl
      (lambda (_%f113288%_ _%iv113289%_ _%stx113290%_)
        (if (procedure? _%f113288%_)
            '#!void
            (error '"expected procedure" _%f113288%_))
        (let _%lp113292%_ ((_%r113294%_ _%iv113289%_)
                           (_%rest113295%_ _%stx113290%_))
          (let* ((_%g113296113306%_ (gx#syntax-e _%rest113295%_))
                 (_%else113299113314%_
                  (lambda () (_%f113288%_ _%rest113295%_ _%r113294%_))))
            (let ((_%K113302113328%_
                   (lambda (_%rest113325%_ _%hd113326%_)
                     (_%lp113292%_
                      (_%f113288%_ _%hd113326%_ _%r113294%_)
                      _%rest113325%_)))
                  (_%K113301113319%_ (lambda () _%r113294%_)))
              (let ((_%try-match113298113322%_
                     (lambda ()
                       (if (##null? _%g113296113306%_)
                           (_%K113301113319%_)
                           (_%else113299113314%_)))))
                (if (##pair? _%g113296113306%_)
                    (let ((_%tl113304113333%_ (##cdr _%g113296113306%_))
                          (_%hd113303113331%_ (##car _%g113296113306%_)))
                      (let ((_%hd113336%_ _%hd113303113331%_)
                            (_%rest113338%_ _%tl113304113333%_))
                        (_%K113302113328%_ _%rest113338%_ _%hd113336%_)))
                    (_%try-match113298113322%_))))))))
    (define gx#stx-foldr
      (lambda (_%f113237%_ _%iv113238%_ _%stx113239%_)
        (if (procedure? _%f113237%_)
            '#!void
            (error '"expected procedure" _%f113237%_))
        (let _%recur113241%_ ((_%rest113243%_ _%stx113239%_))
          (let* ((_%g113244113254%_ (gx#syntax-e _%rest113243%_))
                 (_%else113247113262%_
                  (lambda () (_%f113237%_ _%rest113243%_ _%iv113238%_))))
            (let ((_%K113250113276%_
                   (lambda (_%rest113273%_ _%hd113274%_)
                     (_%f113237%_
                      _%hd113274%_
                      (_%recur113241%_ _%rest113273%_))))
                  (_%K113249113267%_ (lambda () _%iv113238%_)))
              (let ((_%try-match113246113270%_
                     (lambda ()
                       (if (##null? _%g113244113254%_)
                           (_%K113249113267%_)
                           (_%else113247113262%_)))))
                (if (##pair? _%g113244113254%_)
                    (let ((_%tl113252113281%_ (##cdr _%g113244113254%_))
                          (_%hd113251113279%_ (##car _%g113244113254%_)))
                      (let ((_%hd113284%_ _%hd113251113279%_)
                            (_%rest113286%_ _%tl113252113281%_))
                        (_%K113250113276%_ _%rest113286%_ _%hd113284%_)))
                    (_%try-match113246113270%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx113235%_) (gx#stx-foldl cons '() _%stx113235%_)))
    (define gx#stx-last
      (lambda (_%stx113196%_)
        (let _%lp113198%_ ((_%rest113200%_ _%stx113196%_))
          (let* ((_%g113201113209%_ (gx#syntax-e _%rest113200%_))
                 (_%else113203113217%_ (lambda () _%rest113200%_))
                 (_%K113205113223%_
                  (lambda (_%rest113220%_ _%hd113221%_)
                    (if (gx#stx-null? _%rest113220%_)
                        _%hd113221%_
                        (_%lp113198%_ _%rest113220%_)))))
            (if (##pair? _%g113201113209%_)
                (let ((_%hd113206113226%_ (##car _%g113201113209%_))
                      (_%tl113207113228%_ (##cdr _%g113201113209%_)))
                  (let* ((_%hd113231%_ _%hd113206113226%_)
                         (_%rest113233%_ _%tl113207113228%_))
                    (_%K113205113223%_ _%rest113233%_ _%hd113231%_)))
                (_%else113203113217%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113167%_)
        (let _%lp113169%_ ((_%hd113171%_ _%stx113167%_))
          (let* ((_%g113172113179%_ (gx#syntax-e _%hd113171%_))
                 (_%E113174113183%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113172113179%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113175113188%_
                  (lambda (_%rest113186%_)
                    (if (gx#stx-pair? _%rest113186%_)
                        (_%lp113169%_ _%rest113186%_)
                        _%hd113171%_))))
            (if (##pair? _%g113172113179%_)
                (let* ((_%tl113177113191%_ (##cdr _%g113172113179%_))
                       (_%rest113194%_ _%tl113177113191%_))
                  (_%K113175113188%_ _%rest113194%_))
                (_%E113174113183%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113136%_ _%k113137%_)
        (let _%lp113139%_ ((_%rest113141%_ _%stx113136%_)
                           (_%k113142%_ _%k113137%_))
          (if (fxpositive? _%k113142%_)
              (let* ((_%g113143113150%_ (gx#syntax-e _%rest113141%_))
                     (_%E113145113154%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113143113150%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113146113159%_
                      (lambda (_%rest113157%_)
                        (_%lp113139%_ _%rest113157%_ (##fx- _%k113142%_ '1)))))
                (if (##pair? _%g113143113150%_)
                    (let* ((_%tl113148113162%_ (##cdr _%g113143113150%_))
                           (_%rest113165%_ _%tl113148113162%_))
                      (_%K113146113159%_ _%rest113165%_))
                    (_%E113145113154%_)))
              _%rest113141%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113133%_ _%k113134%_)
        (gx#stx-car (gx#stx-list-tail _%stx113133%_ _%k113134%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113045%_ _%key?113046%_)
        (if (procedure? _%key?113046%_)
            '#!void
            (error '"expected procedure" _%key?113046%_))
        (let _%lp113048%_ ((_%rest113050%_ _%stx113045%_))
          (let* ((_%g113051113061%_ (gx#stx-e _%rest113050%_))
                 (_%else113054113069%_ (lambda () '#f)))
            (let ((_%K113057113111%_
                   (lambda (_%rest113080%_ _%hd113081%_)
                     (if (_%key?113046%_ _%hd113081%_)
                         (let* ((_%g113082113090%_ (gx#stx-e _%rest113080%_))
                                (_%else113084113098%_ (lambda () '#f))
                                (_%K113086113103%_
                                 (lambda (_%rest113101%_)
                                   (_%lp113048%_ _%rest113101%_))))
                           (if (##pair? _%g113082113090%_)
                               (let* ((_%tl113088113106%_
                                       (##cdr _%g113082113090%_))
                                      (_%rest113109%_ _%tl113088113106%_))
                                 (_%lp113048%_ _%rest113109%_))
                               (_%else113084113098%_)))
                         '#f)))
                  (_%K113056113074%_ (lambda () '#t)))
              (let ((_%try-match113053113077%_
                     (lambda ()
                       (if (##null? _%g113051113061%_)
                           (_%K113056113074%_)
                           (_%else113054113069%_)))))
                (if (##pair? _%g113051113061%_)
                    (let ((_%tl113059113116%_ (##cdr _%g113051113061%_))
                          (_%hd113058113114%_ (##car _%g113051113061%_)))
                      (let ((_%hd113119%_ _%hd113058113114%_)
                            (_%rest113121%_ _%tl113059113116%_))
                        (_%K113057113111%_ _%rest113121%_ _%hd113119%_)))
                    (_%try-match113053113077%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113126%_)
        (let ((_%key?113128%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113126%_ _%key?113128%_))))
    (define gx#stx-plist?
      (lambda _g114282_
        (let ((_g114281_ (##length _g114282_)))
          (cond ((##fx= _g114281_ 1) (apply gx#stx-plist?__0 _g114282_))
                ((##fx= _g114281_ 2) (apply gx#stx-plist?__% _g114282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g114282_))))))
    (define gx#stx-getq__%
      (lambda (_%key112963%_ _%stx112964%_ _%key=?112965%_)
        (if (procedure? _%key=?112965%_)
            '#!void
            (error '"expected procedure" _%key=?112965%_))
        (let _%lp112967%_ ((_%rest112969%_ _%stx112964%_))
          (let* ((_%g112970112978%_ (gx#syntax-e _%rest112969%_))
                 (_%else112972112986%_ (lambda () '#f))
                 (_%K112974113020%_
                  (lambda (_%rest112989%_ _%hd112990%_)
                    (let* ((_%g112991112998%_ (gx#syntax-e _%rest112989%_))
                           (_%E112993113002%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g112991112998%_
                                     '([val . rest]))
                              '#!void))
                           (_%K112994113008%_
                            (lambda (_%rest113005%_ _%val113006%_)
                              (if (_%key=?112965%_ _%hd112990%_ _%key112963%_)
                                  _%val113006%_
                                  (_%lp112967%_ _%rest113005%_)))))
                      (if (##pair? _%g112991112998%_)
                          (let ((_%hd112995113011%_ (##car _%g112991112998%_))
                                (_%tl112996113013%_ (##cdr _%g112991112998%_)))
                            (let* ((_%val113016%_ _%hd112995113011%_)
                                   (_%rest113018%_ _%tl112996113013%_))
                              (_%K112994113008%_
                               _%rest113018%_
                               _%val113016%_)))
                          (_%E112993113002%_))))))
            (if (##pair? _%g112970112978%_)
                (let ((_%hd112975113023%_ (##car _%g112970112978%_))
                      (_%tl112976113025%_ (##cdr _%g112970112978%_)))
                  (let* ((_%hd113028%_ _%hd112975113023%_)
                         (_%rest113030%_ _%tl112976113025%_))
                    (_%K112974113020%_ _%rest113030%_ _%hd113028%_)))
                (_%else112972112986%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113035%_ _%stx113036%_)
        (let ((_%key=?113038%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113035%_ _%stx113036%_ _%key=?113038%_))))
    (define gx#stx-getq
      (lambda _g114284_
        (let ((_g114283_ (##length _g114284_)))
          (cond ((##fx= _g114283_ 2) (apply gx#stx-getq__0 _g114284_))
                ((##fx= _g114283_ 3) (apply gx#stx-getq__% _g114284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g114284_))))))))
