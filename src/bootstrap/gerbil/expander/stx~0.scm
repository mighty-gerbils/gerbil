(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1713454410)
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
      (lambda _%$args116877%_
        (apply make-instance gx#identifier-wrap::t _%$args116877%_)))
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
      (lambda _%$args116874%_
        (apply make-instance gx#syntax-wrap::t _%$args116874%_)))
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
      (lambda _%$args116871%_
        (apply make-instance gx#syntax-quote::t _%$args116871%_)))
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
      (lambda (_%stx116869%_) (symbol? (gx#stx-e _%stx116869%_))))
    (define gx#identifier-quote?
      (lambda (_%stx116867%_)
        (if (##structure-direct-instance-of? _%stx116867%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx116867%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx116862%_)
        (if (##structure-direct-instance-of? _%stx116862%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx116862%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx116862%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx116857%_)
        (if (##structure-direct-instance-of? _%stx116857%_ 'gx#syntax-quote::t)
            _%stx116857%_
            (if (##structure-direct-instance-of?
                 _%stx116857%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx116857%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx116831%_)
        (if (##structure-direct-instance-of? _%stx116831%_ 'gx#syntax-wrap::t)
            (let _%lp116834%_ ((_%e116836%_
                                (##unchecked-structure-ref
                                 _%stx116831%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks116837%_
                                (cons (##unchecked-structure-ref
                                       _%stx116831%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e116836%_)
                  (let ((_%$e116840%_
                         (##type-id (##structure-type _%e116836%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e116840%_)
                        (_%lp116834%_
                         (##unchecked-structure-ref _%e116836%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e116836%_ '3 '#f '#f)
                          _%marks116837%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e116840%_)
                                (eq? 'gx#identifier-wrap::t _%$e116840%_))
                            (##unchecked-structure-ref _%e116836%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e116840%_)
                                (_%lp116834%_
                                 (##unchecked-structure-ref
                                  _%e116836%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks116837%_)
                                _%e116836%_))))
                  (if (null? _%marks116837%_)
                      _%e116836%_
                      (if (pair? _%e116836%_)
                          (cons (gx#stx-wrap
                                 (##car _%e116836%_)
                                 _%marks116837%_)
                                (gx#stx-wrap
                                 (##cdr _%e116836%_)
                                 _%marks116837%_))
                          (if (vector? _%e116836%_)
                              (vector-map
                               (lambda (_%g116848116850%_)
                                 (gx#stx-wrap
                                  _%g116848116850%_
                                  _%marks116837%_))
                               _%e116836%_)
                              (if (box? _%e116836%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e116836%_)
                                        _%marks116837%_))
                                  _%e116836%_))))))
            (if (##structure-instance-of? _%stx116831%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116831%_ '1 '#f '#f)
                _%stx116831%_))))
    (define gx#syntax->datum
      (lambda (_%stx116824%_)
        (if (##structure-instance-of? _%stx116824%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx116824%_ '1 '#f '#f))
            (if (pair? _%stx116824%_)
                (cons (gx#syntax->datum (##car _%stx116824%_))
                      (gx#syntax->datum (##cdr _%stx116824%_)))
                (if (vector? _%stx116824%_)
                    (vector-map gx#syntax->datum _%stx116824%_)
                    (if (box? _%stx116824%_)
                        (box (gx#syntax->datum (unbox _%stx116824%_)))
                        _%stx116824%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx116758%_ _%datum116759%_ _%src116760%_ _%quote?116761%_)
        (letrec ((_%wrap-datum116763%_
                  (lambda (_%e116796%_ _%marks116797%_)
                    (_%wrap-inner116765%_
                     _%e116796%_
                     (lambda (_%g116798116800%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g116798116800%_
                        _%src116760%_
                        _%marks116797%_)))))
                 (_%wrap-quote116764%_
                  (lambda (_%e116788%_ _%ctx116789%_ _%marks116790%_)
                    (_%wrap-inner116765%_
                     _%e116788%_
                     (lambda (_%g116791116793%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g116791116793%_
                        _%src116760%_
                        _%ctx116789%_
                        _%marks116790%_)))))
                 (_%wrap-inner116765%_
                  (lambda (_%e116776%_ _%wrap-e116777%_)
                    (let _%recur116779%_ ((_%e116781%_ _%e116776%_))
                      (if (symbol? _%e116781%_)
                          (_%wrap-e116777%_ _%e116781%_)
                          (if (pair? _%e116781%_)
                              (cons (_%recur116779%_ (##car _%e116781%_))
                                    (_%recur116779%_ (##cdr _%e116781%_)))
                              (if (vector? _%e116781%_)
                                  (vector-map _%recur116779%_ _%e116781%_)
                                  (if (box? _%e116781%_)
                                      (box (_%recur116779%_
                                            (unbox _%e116781%_)))
                                      _%e116781%_)))))))
                 (_%wrap-outer116766%_
                  (lambda (_%e116774%_)
                    (if (##structure-instance-of? _%e116774%_ 'gerbil#AST::t)
                        _%e116774%_
                        (##structure gx#AST::t _%e116774%_ _%src116760%_)))))
          (if (##structure-instance-of? _%datum116759%_ 'gerbil#AST::t)
              _%datum116759%_
              (if (not _%stx116758%_)
                  (##structure gx#AST::t _%datum116759%_ _%src116760%_)
                  (if (gx#identifier? _%stx116758%_)
                      (let ((_%stx116771%_ (gx#stx-unwrap__0 _%stx116758%_)))
                        (_%wrap-outer116766%_
                         (if (##structure-direct-instance-of?
                              _%stx116771%_
                              'gx#syntax-quote::t)
                             (if _%quote?116761%_
                                 (_%wrap-quote116764%_
                                  _%datum116759%_
                                  (##unchecked-structure-ref
                                   _%stx116771%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx116771%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum116763%_
                                  _%datum116759%_
                                  (##unchecked-structure-ref
                                   _%stx116771%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum116763%_
                              _%datum116759%_
                              (##unchecked-structure-ref
                               _%stx116771%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx116758%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx116806%_ _%datum116807%_)
        (let* ((_%src116809%_ '#f) (_%quote?116811%_ '#t))
          (gx#datum->syntax__%
           _%stx116806%_
           _%datum116807%_
           _%src116809%_
           _%quote?116811%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx116813%_ _%datum116814%_ _%src116815%_)
        (let ((_%quote?116817%_ '#t))
          (gx#datum->syntax__%
           _%stx116813%_
           _%datum116814%_
           _%src116815%_
           _%quote?116817%_))))
    (define gx#datum->syntax
      (lambda _g116958_
        (let ((_g116957_ (##length _g116958_)))
          (cond ((##fx= _g116957_ 2) (apply gx#datum->syntax__0 _g116958_))
                ((##fx= _g116957_ 3) (apply gx#datum->syntax__1 _g116958_))
                ((##fx= _g116957_ 4) (apply gx#datum->syntax__% _g116958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g116958_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx116724%_ _%marks116725%_)
        (let _%lp116727%_ ((_%e116729%_ _%stx116724%_)
                           (_%marks116730%_ _%marks116725%_)
                           (_%src116731%_ (gx#stx-source _%stx116724%_)))
          (if (##structure-direct-instance-of? _%e116729%_ 'gx#syntax-wrap::t)
              (_%lp116727%_
               (##unchecked-structure-ref _%e116729%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e116729%_ '3 '#f '#f)
                _%marks116730%_)
               (##unchecked-structure-ref _%e116729%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e116729%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks116730%_)
                      _%e116729%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e116729%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e116729%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e116729%_ '3 '#f '#f)
                        _%marks116730%_)))
                  (if (##structure-direct-instance-of?
                       _%e116729%_
                       'gx#syntax-quote::t)
                      _%e116729%_
                      (if (##structure-instance-of? _%e116729%_ 'gerbil#AST::t)
                          (_%lp116727%_
                           (##unchecked-structure-ref _%e116729%_ '1 '#f '#f)
                           _%marks116730%_
                           (##unchecked-structure-ref _%e116729%_ '2 '#f '#f))
                          (if (symbol? _%e116729%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e116729%_
                               _%src116731%_
                               (reverse _%marks116730%_))
                              (if (null? _%marks116730%_)
                                  _%e116729%_
                                  (if (pair? _%e116729%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e116729%_)
                                             _%marks116730%_)
                                            (gx#stx-wrap
                                             (##cdr _%e116729%_)
                                             _%marks116730%_))
                                      (if (vector? _%e116729%_)
                                          (vector-map
                                           (lambda (_%g116740116742%_)
                                             (gx#stx-wrap
                                              _%g116740116742%_
                                              _%marks116730%_))
                                           _%e116729%_)
                                          (if (box? _%e116729%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e116729%_)
                                                    _%marks116730%_))
                                              _%e116729%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx116750%_)
        (let ((_%marks116752%_ '()))
          (gx#stx-unwrap__% _%stx116750%_ _%marks116752%_))))
    (define gx#stx-unwrap
      (lambda _g116960_
        (let ((_g116959_ (##length _g116960_)))
          (cond ((##fx= _g116959_ 1) (apply gx#stx-unwrap__0 _g116960_))
                ((##fx= _g116959_ 2) (apply gx#stx-unwrap__% _g116960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g116960_))))))
    (define gx#stx-wrap
      (lambda (_%stx116717%_ _%marks116718%_)
        (__foldl1
         (lambda (_%mark116720%_ _%stx116721%_)
           (gx#stx-apply-mark _%stx116721%_ _%mark116720%_))
         _%stx116717%_
         _%marks116718%_)))
    (define gx#stx-rewrap
      (lambda (_%stx116711%_ _%marks116712%_)
        (__foldr1
         (lambda (_%mark116714%_ _%stx116715%_)
           (gx#stx-apply-mark _%stx116715%_ _%mark116714%_))
         _%stx116711%_
         _%marks116712%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx116705%_ _%mark116706%_)
        (if (##structure-direct-instance-of? _%stx116705%_ 'gx#syntax-quote::t)
            _%stx116705%_
            (if (and (##structure-direct-instance-of?
                      _%stx116705%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark116706%_
                          (##unchecked-structure-ref
                           _%stx116705%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx116705%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx116705%_
                 (gx#stx-source _%stx116705%_)
                 _%mark116706%_)))))
    (define gx#apply-mark
      (lambda (_%mark116669%_ _%marks116670%_)
        (let* ((_%marks116671116679%_ _%marks116670%_)
               (_%else116673116687%_
                (lambda () (cons _%mark116669%_ _%marks116670%_)))
               (_%K116675116693%_
                (lambda (_%rest116690%_ _%hd116691%_)
                  (if (eq? _%mark116669%_ _%hd116691%_)
                      _%rest116690%_
                      (cons _%mark116669%_ _%marks116670%_)))))
          (if (##pair? _%marks116671116679%_)
              (let ((_%hd116676116696%_ (##car _%marks116671116679%_))
                    (_%tl116677116698%_ (##cdr _%marks116671116679%_)))
                (let* ((_%hd116701%_ _%hd116676116696%_)
                       (_%rest116703%_ _%tl116677116698%_))
                  (_%K116675116693%_ _%rest116703%_ _%hd116701%_)))
              (_%else116673116687%_)))))
    (define gx#stx-e
      (lambda (_%stx116664%_)
        (if (##structure-direct-instance-of? _%stx116664%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx116664%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx116664%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116664%_ '1 '#f '#f)
                _%stx116664%_))))
    (define gx#stx-source
      (lambda (_%stx116662%_)
        (if (##structure-instance-of? _%stx116662%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx116662%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx116656%_ _%src116657%_)
        (if (or (##structure-instance-of? _%stx116656%_ 'gerbil#AST::t)
                (not _%src116657%_))
            _%stx116656%_
            (##structure gx#AST::t _%stx116656%_ _%src116657%_))))
    (define gx#stx-datum?
      (lambda (_%stx116654%_) (gx#self-quoting? (gx#stx-e _%stx116654%_))))
    (define gx#self-quoting?
      (lambda (_%x116637%_)
        (let ((_%$e116639%_ (immediate? _%x116637%_)))
          (if _%$e116639%_
              _%$e116639%_
              (let ((_%$e116642%_ (number? _%x116637%_)))
                (if _%$e116642%_
                    _%$e116642%_
                    (let ((_%$e116645%_ (keyword? _%x116637%_)))
                      (if _%$e116645%_
                          _%$e116645%_
                          (let ((_%$e116648%_ (string? _%x116637%_)))
                            (if _%$e116648%_
                                _%$e116648%_
                                (let ((_%$e116651%_ (vector? _%x116637%_)))
                                  (if _%$e116651%_
                                      _%$e116651%_
                                      (u8vector? _%x116637%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e116635%_) (boolean? (gx#stx-e _%e116635%_))))
    (define gx#stx-keyword?
      (lambda (_%e116633%_) (keyword? (gx#stx-e _%e116633%_))))
    (define gx#stx-char? (lambda (_%e116631%_) (char? (gx#stx-e _%e116631%_))))
    (define gx#stx-number?
      (lambda (_%e116629%_) (number? (gx#stx-e _%e116629%_))))
    (define gx#stx-fixnum?
      (lambda (_%e116627%_) (fixnum? (gx#stx-e _%e116627%_))))
    (define gx#stx-string?
      (lambda (_%e116625%_) (string? (gx#stx-e _%e116625%_))))
    (define gx#stx-null? (lambda (_%e116623%_) (null? (gx#stx-e _%e116623%_))))
    (define gx#stx-pair? (lambda (_%e116621%_) (pair? (gx#stx-e _%e116621%_))))
    (define gx#stx-list?
      (lambda (_%e116583%_)
        (let* ((_%g116584116593%_ (gx#stx-e _%e116583%_))
               (_%E116587116597%_
                (lambda ()
                  (error '"No clause matching"
                         _%g116584116593%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K116589116613%_
                 (lambda (_%rest116611%_) (gx#stx-list? _%rest116611%_)))
                (_%K116588116603%_
                 (lambda (_%tail116601%_) (null? _%tail116601%_))))
            (if (##pair? _%g116584116593%_)
                (let* ((_%tl116591116616%_ (##cdr _%g116584116593%_))
                       (_%rest116619%_ _%tl116591116616%_))
                  (gx#stx-list? _%rest116619%_))
                (let ((_%tail116606%_ _%g116584116593%_))
                  (null? _%tail116606%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e116576%_)
        (let* ((_%e116578%_ (gx#stx-e _%e116576%_))
               (_%$e116580%_ (pair? _%e116578%_)))
          (if _%$e116580%_ _%$e116580%_ (null? _%e116578%_)))))
    (define gx#stx-vector?
      (lambda (_%e116574%_) (vector? (gx#stx-e _%e116574%_))))
    (define gx#stx-box? (lambda (_%e116572%_) (box? (gx#stx-e _%e116572%_))))
    (define gx#stx-eq?
      (lambda (_%x116569%_ _%y116570%_)
        (eq? (gx#stx-e _%x116569%_) (gx#stx-e _%y116570%_))))
    (define gx#stx-eqv?
      (lambda (_%x116566%_ _%y116567%_)
        (eqv? (gx#stx-e _%x116566%_) (gx#stx-e _%y116567%_))))
    (define gx#stx-equal?
      (lambda (_%x116563%_ _%y116564%_)
        (equal? (gx#stx-e _%x116563%_) (gx#stx-e _%y116564%_))))
    (define gx#stx-false? (lambda (_%x116561%_) (not (gx#stx-e _%x116561%_))))
    (define gx#stx-identifier
      (lambda (_%template116558%_ . _%args116559%_)
        (gx#datum->syntax__1
         _%template116558%_
         (apply make-symbol (gx#syntax->datum _%args116559%_))
         (gx#stx-source _%template116558%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx116556%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx116556%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx116551%_)
        (if (##structure-direct-instance-of?
             _%stx116551%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx116551%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx116551%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx116551%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx116551%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx116547%_)
        (let ((_%stx116549%_ (gx#stx-unwrap__0 _%stx116547%_)))
          (if (gx#identifier-quote? _%stx116549%_)
              (##unchecked-structure-ref _%stx116549%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx116502%_)
        (let* ((_%g116503116513%_ (gx#stx-e _%stx116502%_))
               (_%else116506116521%_ (lambda () '#f)))
          (let ((_%K116509116535%_
                 (lambda (_%rest116532%_ _%hd116533%_)
                   (if (gx#identifier? _%hd116533%_)
                       (gx#identifier-list? _%rest116532%_)
                       '#f)))
                (_%K116508116526%_ (lambda () '#t)))
            (let ((_%try-match116505116529%_
                   (lambda ()
                     (if (##null? _%g116503116513%_)
                         (_%K116508116526%_)
                         (_%else116506116521%_)))))
              (if (##pair? _%g116503116513%_)
                  (let ((_%tl116511116540%_ (##cdr _%g116503116513%_))
                        (_%hd116510116538%_ (##car _%g116503116513%_)))
                    (let ((_%hd116543%_ _%hd116510116538%_)
                          (_%rest116545%_ _%tl116511116540%_))
                      (_%K116509116535%_ _%rest116545%_ _%hd116543%_)))
                  (_%try-match116505116529%_)))))))
    (define gx#genident__%
      (lambda (_%e116479%_ _%src116480%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e116482%_ (gx#stx-e _%e116479%_)))
                   (if (interned-symbol? _%e116482%_) _%e116482%_ 'g)))
         (let ((_%$e116484%_ (gx#stx-source _%e116479%_)))
           (if _%$e116484%_ _%$e116484%_ _%src116480%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e116491%_ 'g) (_%src116493%_ '#f))
          (gx#genident__% _%e116491%_ _%src116493%_))))
    (define gx#genident__1
      (lambda (_%e116495%_)
        (let ((_%src116497%_ '#f))
          (gx#genident__% _%e116495%_ _%src116497%_))))
    (define gx#genident
      (lambda _g116962_
        (let ((_g116961_ (##length _g116962_)))
          (cond ((##fx= _g116961_ 0) (apply gx#genident__0 _g116962_))
                ((##fx= _g116961_ 1) (apply gx#genident__1 _g116962_))
                ((##fx= _g116961_ 2) (apply gx#genident__% _g116962_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g116962_))))))
    (define gx#gentemps
      (lambda (_%stx-lst116476%_) (gx#stx-map1 gx#genident _%stx-lst116476%_)))
    (define gx#syntax->list
      (lambda (_%stx116474%_) (gx#stx-map1 values _%stx116474%_)))
    (define gx#stx-car
      (lambda (_%stx116471%_)
        (declare (safe))
        (car (gx#syntax-e _%stx116471%_))))
    (define gx#stx-cdr
      (lambda (_%stx116468%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx116468%_))))
    (define gx#stx-length
      (lambda (_%stx116433%_)
        (let _%lp116435%_ ((_%rest116437%_ _%stx116433%_) (_%n116438%_ '0))
          (let* ((_%g116439116447%_ (gx#stx-e _%rest116437%_))
                 (_%else116441116455%_ (lambda () _%n116438%_))
                 (_%K116443116460%_
                  (lambda (_%rest116458%_)
                    (_%lp116435%_ _%rest116458%_ (##fx+ _%n116438%_ '1)))))
            (if (##pair? _%g116439116447%_)
                (let* ((_%tl116445116463%_ (##cdr _%g116439116447%_))
                       (_%rest116466%_ _%tl116445116463%_))
                  (_%K116443116460%_ _%rest116466%_))
                (_%else116441116455%_))))))
    (define gx#stx-for-each
      (lambda _g116964_
        (let ((_g116963_ (##length _g116964_)))
          (cond ((##fx= _g116963_ 2) (apply gx#stx-for-each1 _g116964_))
                ((##fx= _g116963_ 3) (apply gx#stx-for-each2 _g116964_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g116964_))))))
    (define gx#stx-for-each1
      (lambda (_%f116376%_ _%stx116377%_)
        (if (procedure? _%f116376%_)
            '#!void
            (error '"expected procedure" _%f116376%_))
        (let _%lp116379%_ ((_%rest116381%_ _%stx116377%_))
          (let* ((_%g116382116392%_ (gx#syntax-e _%rest116381%_))
                 (_%else116385116400%_
                  (lambda () (_%f116376%_ _%rest116381%_))))
            (let ((_%K116388116414%_
                   (lambda (_%rest116411%_ _%hd116412%_)
                     (_%f116376%_ _%hd116412%_)
                     (_%lp116379%_ _%rest116411%_)))
                  (_%K116387116405%_ (lambda () '#!void)))
              (let ((_%try-match116384116408%_
                     (lambda ()
                       (if (##null? _%g116382116392%_)
                           (_%K116387116405%_)
                           (_%else116385116400%_)))))
                (if (##pair? _%g116382116392%_)
                    (let ((_%tl116390116419%_ (##cdr _%g116382116392%_))
                          (_%hd116389116417%_ (##car _%g116382116392%_)))
                      (let ((_%hd116422%_ _%hd116389116417%_)
                            (_%rest116424%_ _%tl116390116419%_))
                        (_%K116388116414%_ _%rest116424%_ _%hd116422%_)))
                    (_%try-match116384116408%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f116281%_ _%xstx116282%_ _%ystx116283%_)
        (if (procedure? _%f116281%_)
            '#!void
            (error '"expected procedure" _%f116281%_))
        (let _%lp116285%_ ((_%xrest116287%_ _%xstx116282%_)
                           (_%yrest116288%_ _%ystx116283%_))
          (let* ((_%g116289116299%_ (gx#syntax-e _%xrest116287%_))
                 (_%else116292116307%_ (lambda () '#!void)))
            (let ((_%K116295116364%_
                   (lambda (_%xrest116333%_ _%xhd116334%_)
                     (let* ((_%g116335116342%_ (gx#syntax-e _%yrest116288%_))
                            (_%E116337116346%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g116335116342%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K116338116352%_
                             (lambda (_%yrest116349%_ _%yhd116350%_)
                               (_%f116281%_ _%xhd116334%_ _%yhd116350%_)
                               (_%lp116285%_
                                _%xrest116333%_
                                _%yrest116349%_))))
                       (if (##pair? _%g116335116342%_)
                           (let ((_%hd116339116355%_ (##car _%g116335116342%_))
                                 (_%tl116340116357%_
                                  (##cdr _%g116335116342%_)))
                             (let* ((_%yhd116360%_ _%hd116339116355%_)
                                    (_%yrest116362%_ _%tl116340116357%_))
                               (_%K116338116352%_
                                _%yrest116362%_
                                _%yhd116360%_)))
                           (_%E116337116346%_)))))
                  (_%K116294116327%_
                   (lambda ()
                     (let* ((_%yrest116311116316%_ _%yrest116288%_)
                            (_%E116313116320%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest116311116316%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K116314116324%_
                             (lambda ()
                               (_%f116281%_ _%xrest116287%_ _%yrest116288%_))))
                       (if (gx#stx-null? _%yrest116311116316%_)
                           (_%E116313116320%_)
                           (_%K116314116324%_))))))
              (let ((_%try-match116291116330%_
                     (lambda ()
                       (if (null? _%g116289116299%_)
                           (_%else116292116307%_)
                           (_%K116294116327%_)))))
                (if (##pair? _%g116289116299%_)
                    (let ((_%tl116297116369%_ (##cdr _%g116289116299%_))
                          (_%hd116296116367%_ (##car _%g116289116299%_)))
                      (let ((_%xhd116372%_ _%hd116296116367%_)
                            (_%xrest116374%_ _%tl116297116369%_))
                        (_%K116295116364%_ _%xrest116374%_ _%xhd116372%_)))
                    (_%try-match116291116330%_))))))))
    (define gx#stx-map
      (lambda _g116966_
        (let ((_g116965_ (##length _g116966_)))
          (cond ((##fx= _g116965_ 2) (apply gx#stx-map1 _g116966_))
                ((##fx= _g116965_ 3) (apply gx#stx-map2 _g116966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g116966_))))))
    (define gx#stx-map1
      (lambda (_%f116224%_ _%stx116225%_)
        (if (procedure? _%f116224%_)
            '#!void
            (error '"expected procedure" _%f116224%_))
        (let _%recur116227%_ ((_%rest116229%_ _%stx116225%_))
          (let* ((_%g116230116240%_ (gx#syntax-e _%rest116229%_))
                 (_%else116233116248%_
                  (lambda () (_%f116224%_ _%rest116229%_))))
            (let ((_%K116236116262%_
                   (lambda (_%rest116259%_ _%hd116260%_)
                     (cons (_%f116224%_ _%hd116260%_)
                           (_%recur116227%_ _%rest116259%_))))
                  (_%K116235116253%_ (lambda () '())))
              (let ((_%try-match116232116256%_
                     (lambda ()
                       (if (##null? _%g116230116240%_)
                           (_%K116235116253%_)
                           (_%else116233116248%_)))))
                (if (##pair? _%g116230116240%_)
                    (let ((_%tl116238116267%_ (##cdr _%g116230116240%_))
                          (_%hd116237116265%_ (##car _%g116230116240%_)))
                      (let ((_%hd116270%_ _%hd116237116265%_)
                            (_%rest116272%_ _%tl116238116267%_))
                        (_%K116236116262%_ _%rest116272%_ _%hd116270%_)))
                    (_%try-match116232116256%_))))))))
    (define gx#stx-map2
      (lambda (_%f116129%_ _%xstx116130%_ _%ystx116131%_)
        (if (procedure? _%f116129%_)
            '#!void
            (error '"expected procedure" _%f116129%_))
        (let _%recur116133%_ ((_%xrest116135%_ _%xstx116130%_)
                              (_%yrest116136%_ _%ystx116131%_))
          (let* ((_%g116137116147%_ (gx#syntax-e _%xrest116135%_))
                 (_%else116140116155%_ (lambda () '())))
            (let ((_%K116143116212%_
                   (lambda (_%xrest116181%_ _%xhd116182%_)
                     (let* ((_%g116183116190%_ (gx#syntax-e _%yrest116136%_))
                            (_%E116185116194%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g116183116190%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K116186116200%_
                             (lambda (_%yrest116197%_ _%yhd116198%_)
                               (cons (_%f116129%_ _%xhd116182%_ _%yhd116198%_)
                                     (_%recur116133%_
                                      _%xrest116181%_
                                      _%yrest116197%_)))))
                       (if (##pair? _%g116183116190%_)
                           (let ((_%hd116187116203%_ (##car _%g116183116190%_))
                                 (_%tl116188116205%_
                                  (##cdr _%g116183116190%_)))
                             (let* ((_%yhd116208%_ _%hd116187116203%_)
                                    (_%yrest116210%_ _%tl116188116205%_))
                               (_%K116186116200%_
                                _%yrest116210%_
                                _%yhd116208%_)))
                           (_%E116185116194%_)))))
                  (_%K116142116175%_
                   (lambda ()
                     (let* ((_%yrest116159116164%_ _%yrest116136%_)
                            (_%E116161116168%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest116159116164%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K116162116172%_
                             (lambda ()
                               (_%f116129%_ _%xrest116135%_ _%yrest116136%_))))
                       (if (gx#stx-null? _%yrest116159116164%_)
                           (_%E116161116168%_)
                           (_%K116162116172%_))))))
              (let ((_%try-match116139116178%_
                     (lambda ()
                       (if (null? _%g116137116147%_)
                           (_%else116140116155%_)
                           (_%K116142116175%_)))))
                (if (##pair? _%g116137116147%_)
                    (let ((_%tl116145116217%_ (##cdr _%g116137116147%_))
                          (_%hd116144116215%_ (##car _%g116137116147%_)))
                      (let ((_%xhd116220%_ _%hd116144116215%_)
                            (_%xrest116222%_ _%tl116145116217%_))
                        (_%K116143116212%_ _%xrest116222%_ _%xhd116220%_)))
                    (_%try-match116139116178%_))))))))
    (define gx#stx-andmap
      (lambda (_%f116079%_ _%stx116080%_)
        (if (procedure? _%f116079%_)
            '#!void
            (error '"expected procedure" _%f116079%_))
        (let _%lp116082%_ ((_%rest116084%_ _%stx116080%_))
          (let* ((_%g116085116095%_ (gx#syntax-e _%rest116084%_))
                 (_%else116088116103%_
                  (lambda () (_%f116079%_ _%rest116084%_))))
            (let ((_%K116091116117%_
                   (lambda (_%rest116114%_ _%hd116115%_)
                     (if (_%f116079%_ _%hd116115%_)
                         (_%lp116082%_ _%rest116114%_)
                         '#f)))
                  (_%K116090116108%_ (lambda () '#t)))
              (let ((_%try-match116087116111%_
                     (lambda ()
                       (if (##null? _%g116085116095%_)
                           (_%K116090116108%_)
                           (_%else116088116103%_)))))
                (if (##pair? _%g116085116095%_)
                    (let ((_%tl116093116122%_ (##cdr _%g116085116095%_))
                          (_%hd116092116120%_ (##car _%g116085116095%_)))
                      (let ((_%hd116125%_ _%hd116092116120%_)
                            (_%rest116127%_ _%tl116093116122%_))
                        (_%K116091116117%_ _%rest116127%_ _%hd116125%_)))
                    (_%try-match116087116111%_))))))))
    (define gx#stx-ormap
      (lambda (_%f116026%_ _%stx116027%_)
        (if (procedure? _%f116026%_)
            '#!void
            (error '"expected procedure" _%f116026%_))
        (let _%lp116029%_ ((_%rest116031%_ _%stx116027%_))
          (let* ((_%g116032116042%_ (gx#syntax-e _%rest116031%_))
                 (_%else116035116050%_
                  (lambda () (_%f116026%_ _%rest116031%_))))
            (let ((_%K116038116067%_
                   (lambda (_%rest116061%_ _%hd116062%_)
                     (let ((_%$e116064%_ (_%f116026%_ _%hd116062%_)))
                       (if _%$e116064%_
                           _%$e116064%_
                           (_%lp116029%_ _%rest116061%_)))))
                  (_%K116037116055%_ (lambda () '#f)))
              (let ((_%try-match116034116058%_
                     (lambda ()
                       (if (##null? _%g116032116042%_)
                           (_%K116037116055%_)
                           (_%else116035116050%_)))))
                (if (##pair? _%g116032116042%_)
                    (let ((_%tl116040116072%_ (##cdr _%g116032116042%_))
                          (_%hd116039116070%_ (##car _%g116032116042%_)))
                      (let ((_%hd116075%_ _%hd116039116070%_)
                            (_%rest116077%_ _%tl116040116072%_))
                        (_%K116038116067%_ _%rest116077%_ _%hd116075%_)))
                    (_%try-match116034116058%_))))))))
    (define gx#stx-foldl
      (lambda (_%f115974%_ _%iv115975%_ _%stx115976%_)
        (if (procedure? _%f115974%_)
            '#!void
            (error '"expected procedure" _%f115974%_))
        (let _%lp115978%_ ((_%r115980%_ _%iv115975%_)
                           (_%rest115981%_ _%stx115976%_))
          (let* ((_%g115982115992%_ (gx#syntax-e _%rest115981%_))
                 (_%else115985116000%_
                  (lambda () (_%f115974%_ _%rest115981%_ _%r115980%_))))
            (let ((_%K115988116014%_
                   (lambda (_%rest116011%_ _%hd116012%_)
                     (_%lp115978%_
                      (_%f115974%_ _%hd116012%_ _%r115980%_)
                      _%rest116011%_)))
                  (_%K115987116005%_ (lambda () _%r115980%_)))
              (let ((_%try-match115984116008%_
                     (lambda ()
                       (if (##null? _%g115982115992%_)
                           (_%K115987116005%_)
                           (_%else115985116000%_)))))
                (if (##pair? _%g115982115992%_)
                    (let ((_%tl115990116019%_ (##cdr _%g115982115992%_))
                          (_%hd115989116017%_ (##car _%g115982115992%_)))
                      (let ((_%hd116022%_ _%hd115989116017%_)
                            (_%rest116024%_ _%tl115990116019%_))
                        (_%K115988116014%_ _%rest116024%_ _%hd116022%_)))
                    (_%try-match115984116008%_))))))))
    (define gx#stx-foldr
      (lambda (_%f115923%_ _%iv115924%_ _%stx115925%_)
        (if (procedure? _%f115923%_)
            '#!void
            (error '"expected procedure" _%f115923%_))
        (let _%recur115927%_ ((_%rest115929%_ _%stx115925%_))
          (let* ((_%g115930115940%_ (gx#syntax-e _%rest115929%_))
                 (_%else115933115948%_
                  (lambda () (_%f115923%_ _%rest115929%_ _%iv115924%_))))
            (let ((_%K115936115962%_
                   (lambda (_%rest115959%_ _%hd115960%_)
                     (_%f115923%_
                      _%hd115960%_
                      (_%recur115927%_ _%rest115959%_))))
                  (_%K115935115953%_ (lambda () _%iv115924%_)))
              (let ((_%try-match115932115956%_
                     (lambda ()
                       (if (##null? _%g115930115940%_)
                           (_%K115935115953%_)
                           (_%else115933115948%_)))))
                (if (##pair? _%g115930115940%_)
                    (let ((_%tl115938115967%_ (##cdr _%g115930115940%_))
                          (_%hd115937115965%_ (##car _%g115930115940%_)))
                      (let ((_%hd115970%_ _%hd115937115965%_)
                            (_%rest115972%_ _%tl115938115967%_))
                        (_%K115936115962%_ _%rest115972%_ _%hd115970%_)))
                    (_%try-match115932115956%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx115921%_) (gx#stx-foldl cons '() _%stx115921%_)))
    (define gx#stx-last
      (lambda (_%stx115882%_)
        (let _%lp115884%_ ((_%rest115886%_ _%stx115882%_))
          (let* ((_%g115887115895%_ (gx#syntax-e _%rest115886%_))
                 (_%else115889115903%_ (lambda () _%rest115886%_))
                 (_%K115891115909%_
                  (lambda (_%rest115906%_ _%hd115907%_)
                    (if (gx#stx-null? _%rest115906%_)
                        _%hd115907%_
                        (_%lp115884%_ _%rest115906%_)))))
            (if (##pair? _%g115887115895%_)
                (let ((_%hd115892115912%_ (##car _%g115887115895%_))
                      (_%tl115893115914%_ (##cdr _%g115887115895%_)))
                  (let* ((_%hd115917%_ _%hd115892115912%_)
                         (_%rest115919%_ _%tl115893115914%_))
                    (_%K115891115909%_ _%rest115919%_ _%hd115917%_)))
                (_%else115889115903%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx115853%_)
        (let _%lp115855%_ ((_%hd115857%_ _%stx115853%_))
          (let* ((_%g115858115865%_ (gx#syntax-e _%hd115857%_))
                 (_%E115860115869%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g115858115865%_
                           '([_ . rest]))
                    '#!void))
                 (_%K115861115874%_
                  (lambda (_%rest115872%_)
                    (if (gx#stx-pair? _%rest115872%_)
                        (_%lp115855%_ _%rest115872%_)
                        _%hd115857%_))))
            (if (##pair? _%g115858115865%_)
                (let* ((_%tl115863115877%_ (##cdr _%g115858115865%_))
                       (_%rest115880%_ _%tl115863115877%_))
                  (_%K115861115874%_ _%rest115880%_))
                (_%E115860115869%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx115822%_ _%k115823%_)
        (let _%lp115825%_ ((_%rest115827%_ _%stx115822%_)
                           (_%k115828%_ _%k115823%_))
          (if (fxpositive? _%k115828%_)
              (let* ((_%g115829115836%_ (gx#syntax-e _%rest115827%_))
                     (_%E115831115840%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g115829115836%_
                               '([_ . rest]))
                        '#!void))
                     (_%K115832115845%_
                      (lambda (_%rest115843%_)
                        (_%lp115825%_ _%rest115843%_ (##fx- _%k115828%_ '1)))))
                (if (##pair? _%g115829115836%_)
                    (let* ((_%tl115834115848%_ (##cdr _%g115829115836%_))
                           (_%rest115851%_ _%tl115834115848%_))
                      (_%K115832115845%_ _%rest115851%_))
                    (_%E115831115840%_)))
              _%rest115827%_))))
    (define gx#stx-list-ref
      (lambda (_%stx115819%_ _%k115820%_)
        (gx#stx-car (gx#stx-list-tail _%stx115819%_ _%k115820%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx115731%_ _%key?115732%_)
        (if (procedure? _%key?115732%_)
            '#!void
            (error '"expected procedure" _%key?115732%_))
        (let _%lp115734%_ ((_%rest115736%_ _%stx115731%_))
          (let* ((_%g115737115747%_ (gx#stx-e _%rest115736%_))
                 (_%else115740115755%_ (lambda () '#f)))
            (let ((_%K115743115797%_
                   (lambda (_%rest115766%_ _%hd115767%_)
                     (if (_%key?115732%_ _%hd115767%_)
                         (let* ((_%g115768115776%_ (gx#stx-e _%rest115766%_))
                                (_%else115770115784%_ (lambda () '#f))
                                (_%K115772115789%_
                                 (lambda (_%rest115787%_)
                                   (_%lp115734%_ _%rest115787%_))))
                           (if (##pair? _%g115768115776%_)
                               (let* ((_%tl115774115792%_
                                       (##cdr _%g115768115776%_))
                                      (_%rest115795%_ _%tl115774115792%_))
                                 (_%lp115734%_ _%rest115795%_))
                               (_%else115770115784%_)))
                         '#f)))
                  (_%K115742115760%_ (lambda () '#t)))
              (let ((_%try-match115739115763%_
                     (lambda ()
                       (if (##null? _%g115737115747%_)
                           (_%K115742115760%_)
                           (_%else115740115755%_)))))
                (if (##pair? _%g115737115747%_)
                    (let ((_%tl115745115802%_ (##cdr _%g115737115747%_))
                          (_%hd115744115800%_ (##car _%g115737115747%_)))
                      (let ((_%hd115805%_ _%hd115744115800%_)
                            (_%rest115807%_ _%tl115745115802%_))
                        (_%K115743115797%_ _%rest115807%_ _%hd115805%_)))
                    (_%try-match115739115763%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx115812%_)
        (let ((_%key?115814%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx115812%_ _%key?115814%_))))
    (define gx#stx-plist?
      (lambda _g116968_
        (let ((_g116967_ (##length _g116968_)))
          (cond ((##fx= _g116967_ 1) (apply gx#stx-plist?__0 _g116968_))
                ((##fx= _g116967_ 2) (apply gx#stx-plist?__% _g116968_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g116968_))))))
    (define gx#stx-getq__%
      (lambda (_%key115649%_ _%stx115650%_ _%key=?115651%_)
        (if (procedure? _%key=?115651%_)
            '#!void
            (error '"expected procedure" _%key=?115651%_))
        (let _%lp115653%_ ((_%rest115655%_ _%stx115650%_))
          (let* ((_%g115656115664%_ (gx#syntax-e _%rest115655%_))
                 (_%else115658115672%_ (lambda () '#f))
                 (_%K115660115706%_
                  (lambda (_%rest115675%_ _%hd115676%_)
                    (let* ((_%g115677115684%_ (gx#syntax-e _%rest115675%_))
                           (_%E115679115688%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g115677115684%_
                                     '([val . rest]))
                              '#!void))
                           (_%K115680115694%_
                            (lambda (_%rest115691%_ _%val115692%_)
                              (if (_%key=?115651%_ _%hd115676%_ _%key115649%_)
                                  _%val115692%_
                                  (_%lp115653%_ _%rest115691%_)))))
                      (if (##pair? _%g115677115684%_)
                          (let ((_%hd115681115697%_ (##car _%g115677115684%_))
                                (_%tl115682115699%_ (##cdr _%g115677115684%_)))
                            (let* ((_%val115702%_ _%hd115681115697%_)
                                   (_%rest115704%_ _%tl115682115699%_))
                              (_%K115680115694%_
                               _%rest115704%_
                               _%val115702%_)))
                          (_%E115679115688%_))))))
            (if (##pair? _%g115656115664%_)
                (let ((_%hd115661115709%_ (##car _%g115656115664%_))
                      (_%tl115662115711%_ (##cdr _%g115656115664%_)))
                  (let* ((_%hd115714%_ _%hd115661115709%_)
                         (_%rest115716%_ _%tl115662115711%_))
                    (_%K115660115706%_ _%rest115716%_ _%hd115714%_)))
                (_%else115658115672%_))))))
    (define gx#stx-getq__0
      (lambda (_%key115721%_ _%stx115722%_)
        (let ((_%key=?115724%_ gx#stx-eq?))
          (gx#stx-getq__% _%key115721%_ _%stx115722%_ _%key=?115724%_))))
    (define gx#stx-getq
      (lambda _g116970_
        (let ((_g116969_ (##length _g116970_)))
          (cond ((##fx= _g116969_ 2) (apply gx#stx-getq__0 _g116970_))
                ((##fx= _g116969_ 3) (apply gx#stx-getq__% _g116970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g116970_))))))))
