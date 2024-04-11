(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712846034)
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
      (lambda _%$args116199%_
        (apply make-instance gx#identifier-wrap::t _%$args116199%_)))
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
      (lambda _%$args116196%_
        (apply make-instance gx#syntax-wrap::t _%$args116196%_)))
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
      (lambda _%$args116193%_
        (apply make-instance gx#syntax-quote::t _%$args116193%_)))
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
      (lambda (_%stx116191%_) (symbol? (gx#stx-e _%stx116191%_))))
    (define gx#identifier-quote?
      (lambda (_%stx116189%_)
        (if (##structure-direct-instance-of? _%stx116189%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx116189%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx116184%_)
        (if (##structure-direct-instance-of? _%stx116184%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx116184%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx116184%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx116179%_)
        (if (##structure-direct-instance-of? _%stx116179%_ 'gx#syntax-quote::t)
            _%stx116179%_
            (if (##structure-direct-instance-of?
                 _%stx116179%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx116179%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx116153%_)
        (if (##structure-direct-instance-of? _%stx116153%_ 'gx#syntax-wrap::t)
            (let _%lp116156%_ ((_%e116158%_
                                (##unchecked-structure-ref
                                 _%stx116153%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks116159%_
                                (cons (##unchecked-structure-ref
                                       _%stx116153%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e116158%_)
                  (let ((_%$e116162%_
                         (##type-id (##structure-type _%e116158%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e116162%_)
                        (_%lp116156%_
                         (##unchecked-structure-ref _%e116158%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e116158%_ '3 '#f '#f)
                          _%marks116159%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e116162%_)
                                (eq? 'gx#identifier-wrap::t _%$e116162%_))
                            (##unchecked-structure-ref _%e116158%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e116162%_)
                                (_%lp116156%_
                                 (##unchecked-structure-ref
                                  _%e116158%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks116159%_)
                                _%e116158%_))))
                  (if (null? _%marks116159%_)
                      _%e116158%_
                      (if (pair? _%e116158%_)
                          (cons (gx#stx-wrap
                                 (##car _%e116158%_)
                                 _%marks116159%_)
                                (gx#stx-wrap
                                 (##cdr _%e116158%_)
                                 _%marks116159%_))
                          (if (vector? _%e116158%_)
                              (vector-map
                               (lambda (_%g116170116172%_)
                                 (gx#stx-wrap
                                  _%g116170116172%_
                                  _%marks116159%_))
                               _%e116158%_)
                              (if (box? _%e116158%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e116158%_)
                                        _%marks116159%_))
                                  _%e116158%_))))))
            (if (##structure-instance-of? _%stx116153%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116153%_ '1 '#f '#f)
                _%stx116153%_))))
    (define gx#syntax->datum
      (lambda (_%stx116146%_)
        (if (##structure-instance-of? _%stx116146%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx116146%_ '1 '#f '#f))
            (if (pair? _%stx116146%_)
                (cons (gx#syntax->datum (##car _%stx116146%_))
                      (gx#syntax->datum (##cdr _%stx116146%_)))
                (if (vector? _%stx116146%_)
                    (vector-map gx#syntax->datum _%stx116146%_)
                    (if (box? _%stx116146%_)
                        (box (gx#syntax->datum (unbox _%stx116146%_)))
                        _%stx116146%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx116080%_ _%datum116081%_ _%src116082%_ _%quote?116083%_)
        (letrec ((_%wrap-datum116085%_
                  (lambda (_%e116118%_ _%marks116119%_)
                    (_%wrap-inner116087%_
                     _%e116118%_
                     (lambda (_%g116120116122%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g116120116122%_
                        _%src116082%_
                        _%marks116119%_)))))
                 (_%wrap-quote116086%_
                  (lambda (_%e116110%_ _%ctx116111%_ _%marks116112%_)
                    (_%wrap-inner116087%_
                     _%e116110%_
                     (lambda (_%g116113116115%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g116113116115%_
                        _%src116082%_
                        _%ctx116111%_
                        _%marks116112%_)))))
                 (_%wrap-inner116087%_
                  (lambda (_%e116098%_ _%wrap-e116099%_)
                    (let _%recur116101%_ ((_%e116103%_ _%e116098%_))
                      (if (symbol? _%e116103%_)
                          (_%wrap-e116099%_ _%e116103%_)
                          (if (pair? _%e116103%_)
                              (cons (_%recur116101%_ (##car _%e116103%_))
                                    (_%recur116101%_ (##cdr _%e116103%_)))
                              (if (vector? _%e116103%_)
                                  (vector-map _%recur116101%_ _%e116103%_)
                                  (if (box? _%e116103%_)
                                      (box (_%recur116101%_
                                            (unbox _%e116103%_)))
                                      _%e116103%_)))))))
                 (_%wrap-outer116088%_
                  (lambda (_%e116096%_)
                    (if (##structure-instance-of? _%e116096%_ 'gerbil#AST::t)
                        _%e116096%_
                        (##structure gx#AST::t _%e116096%_ _%src116082%_)))))
          (if (##structure-instance-of? _%datum116081%_ 'gerbil#AST::t)
              _%datum116081%_
              (if (not _%stx116080%_)
                  (##structure gx#AST::t _%datum116081%_ _%src116082%_)
                  (if (gx#identifier? _%stx116080%_)
                      (let ((_%stx116093%_ (gx#stx-unwrap__0 _%stx116080%_)))
                        (_%wrap-outer116088%_
                         (if (##structure-direct-instance-of?
                              _%stx116093%_
                              'gx#syntax-quote::t)
                             (if _%quote?116083%_
                                 (_%wrap-quote116086%_
                                  _%datum116081%_
                                  (##unchecked-structure-ref
                                   _%stx116093%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx116093%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum116085%_
                                  _%datum116081%_
                                  (##unchecked-structure-ref
                                   _%stx116093%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum116085%_
                              _%datum116081%_
                              (##unchecked-structure-ref
                               _%stx116093%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx116080%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx116128%_ _%datum116129%_)
        (let* ((_%src116131%_ '#f) (_%quote?116133%_ '#t))
          (gx#datum->syntax__%
           _%stx116128%_
           _%datum116129%_
           _%src116131%_
           _%quote?116133%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx116135%_ _%datum116136%_ _%src116137%_)
        (let ((_%quote?116139%_ '#t))
          (gx#datum->syntax__%
           _%stx116135%_
           _%datum116136%_
           _%src116137%_
           _%quote?116139%_))))
    (define gx#datum->syntax
      (lambda _g116280_
        (let ((_g116279_ (##length _g116280_)))
          (cond ((##fx= _g116279_ 2) (apply gx#datum->syntax__0 _g116280_))
                ((##fx= _g116279_ 3) (apply gx#datum->syntax__1 _g116280_))
                ((##fx= _g116279_ 4) (apply gx#datum->syntax__% _g116280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g116280_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx116046%_ _%marks116047%_)
        (let _%lp116049%_ ((_%e116051%_ _%stx116046%_)
                           (_%marks116052%_ _%marks116047%_)
                           (_%src116053%_ (gx#stx-source _%stx116046%_)))
          (if (##structure-direct-instance-of? _%e116051%_ 'gx#syntax-wrap::t)
              (_%lp116049%_
               (##unchecked-structure-ref _%e116051%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e116051%_ '3 '#f '#f)
                _%marks116052%_)
               (##unchecked-structure-ref _%e116051%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e116051%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks116052%_)
                      _%e116051%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e116051%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e116051%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e116051%_ '3 '#f '#f)
                        _%marks116052%_)))
                  (if (##structure-direct-instance-of?
                       _%e116051%_
                       'gx#syntax-quote::t)
                      _%e116051%_
                      (if (##structure-instance-of? _%e116051%_ 'gerbil#AST::t)
                          (_%lp116049%_
                           (##unchecked-structure-ref _%e116051%_ '1 '#f '#f)
                           _%marks116052%_
                           (##unchecked-structure-ref _%e116051%_ '2 '#f '#f))
                          (if (symbol? _%e116051%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e116051%_
                               _%src116053%_
                               (reverse _%marks116052%_))
                              (if (null? _%marks116052%_)
                                  _%e116051%_
                                  (if (pair? _%e116051%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e116051%_)
                                             _%marks116052%_)
                                            (gx#stx-wrap
                                             (##cdr _%e116051%_)
                                             _%marks116052%_))
                                      (if (vector? _%e116051%_)
                                          (vector-map
                                           (lambda (_%g116062116064%_)
                                             (gx#stx-wrap
                                              _%g116062116064%_
                                              _%marks116052%_))
                                           _%e116051%_)
                                          (if (box? _%e116051%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e116051%_)
                                                    _%marks116052%_))
                                              _%e116051%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx116072%_)
        (let ((_%marks116074%_ '()))
          (gx#stx-unwrap__% _%stx116072%_ _%marks116074%_))))
    (define gx#stx-unwrap
      (lambda _g116282_
        (let ((_g116281_ (##length _g116282_)))
          (cond ((##fx= _g116281_ 1) (apply gx#stx-unwrap__0 _g116282_))
                ((##fx= _g116281_ 2) (apply gx#stx-unwrap__% _g116282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g116282_))))))
    (define gx#stx-wrap
      (lambda (_%stx116039%_ _%marks116040%_)
        (__foldl1
         (lambda (_%mark116042%_ _%stx116043%_)
           (gx#stx-apply-mark _%stx116043%_ _%mark116042%_))
         _%stx116039%_
         _%marks116040%_)))
    (define gx#stx-rewrap
      (lambda (_%stx116033%_ _%marks116034%_)
        (__foldr1
         (lambda (_%mark116036%_ _%stx116037%_)
           (gx#stx-apply-mark _%stx116037%_ _%mark116036%_))
         _%stx116033%_
         _%marks116034%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx116027%_ _%mark116028%_)
        (if (##structure-direct-instance-of? _%stx116027%_ 'gx#syntax-quote::t)
            _%stx116027%_
            (if (and (##structure-direct-instance-of?
                      _%stx116027%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark116028%_
                          (##unchecked-structure-ref
                           _%stx116027%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx116027%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx116027%_
                 (gx#stx-source _%stx116027%_)
                 _%mark116028%_)))))
    (define gx#apply-mark
      (lambda (_%mark115991%_ _%marks115992%_)
        (let* ((_%marks115993116001%_ _%marks115992%_)
               (_%else115995116009%_
                (lambda () (cons _%mark115991%_ _%marks115992%_)))
               (_%K115997116015%_
                (lambda (_%rest116012%_ _%hd116013%_)
                  (if (eq? _%mark115991%_ _%hd116013%_)
                      _%rest116012%_
                      (cons _%mark115991%_ _%marks115992%_)))))
          (if (##pair? _%marks115993116001%_)
              (let ((_%hd115998116018%_ (##car _%marks115993116001%_))
                    (_%tl115999116020%_ (##cdr _%marks115993116001%_)))
                (let* ((_%hd116023%_ _%hd115998116018%_)
                       (_%rest116025%_ _%tl115999116020%_))
                  (_%K115997116015%_ _%rest116025%_ _%hd116023%_)))
              (_%else115995116009%_)))))
    (define gx#stx-e
      (lambda (_%stx115986%_)
        (if (##structure-direct-instance-of? _%stx115986%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx115986%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx115986%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx115986%_ '1 '#f '#f)
                _%stx115986%_))))
    (define gx#stx-source
      (lambda (_%stx115984%_)
        (if (##structure-instance-of? _%stx115984%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx115984%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx115978%_ _%src115979%_)
        (if (or (##structure-instance-of? _%stx115978%_ 'gerbil#AST::t)
                (not _%src115979%_))
            _%stx115978%_
            (##structure gx#AST::t _%stx115978%_ _%src115979%_))))
    (define gx#stx-datum?
      (lambda (_%stx115976%_) (gx#self-quoting? (gx#stx-e _%stx115976%_))))
    (define gx#self-quoting?
      (lambda (_%x115959%_)
        (let ((_%$e115961%_ (immediate? _%x115959%_)))
          (if _%$e115961%_
              _%$e115961%_
              (let ((_%$e115964%_ (number? _%x115959%_)))
                (if _%$e115964%_
                    _%$e115964%_
                    (let ((_%$e115967%_ (keyword? _%x115959%_)))
                      (if _%$e115967%_
                          _%$e115967%_
                          (let ((_%$e115970%_ (string? _%x115959%_)))
                            (if _%$e115970%_
                                _%$e115970%_
                                (let ((_%$e115973%_ (vector? _%x115959%_)))
                                  (if _%$e115973%_
                                      _%$e115973%_
                                      (u8vector? _%x115959%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e115957%_) (boolean? (gx#stx-e _%e115957%_))))
    (define gx#stx-keyword?
      (lambda (_%e115955%_) (keyword? (gx#stx-e _%e115955%_))))
    (define gx#stx-char? (lambda (_%e115953%_) (char? (gx#stx-e _%e115953%_))))
    (define gx#stx-number?
      (lambda (_%e115951%_) (number? (gx#stx-e _%e115951%_))))
    (define gx#stx-fixnum?
      (lambda (_%e115949%_) (fixnum? (gx#stx-e _%e115949%_))))
    (define gx#stx-string?
      (lambda (_%e115947%_) (string? (gx#stx-e _%e115947%_))))
    (define gx#stx-null? (lambda (_%e115945%_) (null? (gx#stx-e _%e115945%_))))
    (define gx#stx-pair? (lambda (_%e115943%_) (pair? (gx#stx-e _%e115943%_))))
    (define gx#stx-list?
      (lambda (_%e115905%_)
        (let* ((_%g115906115915%_ (gx#stx-e _%e115905%_))
               (_%E115909115919%_
                (lambda ()
                  (error '"No clause matching"
                         _%g115906115915%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K115911115935%_
                 (lambda (_%rest115933%_) (gx#stx-list? _%rest115933%_)))
                (_%K115910115925%_
                 (lambda (_%tail115923%_) (null? _%tail115923%_))))
            (if (##pair? _%g115906115915%_)
                (let* ((_%tl115913115938%_ (##cdr _%g115906115915%_))
                       (_%rest115941%_ _%tl115913115938%_))
                  (gx#stx-list? _%rest115941%_))
                (let ((_%tail115928%_ _%g115906115915%_))
                  (null? _%tail115928%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e115898%_)
        (let* ((_%e115900%_ (gx#stx-e _%e115898%_))
               (_%$e115902%_ (pair? _%e115900%_)))
          (if _%$e115902%_ _%$e115902%_ (null? _%e115900%_)))))
    (define gx#stx-vector?
      (lambda (_%e115896%_) (vector? (gx#stx-e _%e115896%_))))
    (define gx#stx-box? (lambda (_%e115894%_) (box? (gx#stx-e _%e115894%_))))
    (define gx#stx-eq?
      (lambda (_%x115891%_ _%y115892%_)
        (eq? (gx#stx-e _%x115891%_) (gx#stx-e _%y115892%_))))
    (define gx#stx-eqv?
      (lambda (_%x115888%_ _%y115889%_)
        (eqv? (gx#stx-e _%x115888%_) (gx#stx-e _%y115889%_))))
    (define gx#stx-equal?
      (lambda (_%x115885%_ _%y115886%_)
        (equal? (gx#stx-e _%x115885%_) (gx#stx-e _%y115886%_))))
    (define gx#stx-false? (lambda (_%x115883%_) (not (gx#stx-e _%x115883%_))))
    (define gx#stx-identifier
      (lambda (_%template115880%_ . _%args115881%_)
        (gx#datum->syntax__1
         _%template115880%_
         (apply make-symbol (gx#syntax->datum _%args115881%_))
         (gx#stx-source _%template115880%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx115878%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx115878%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx115873%_)
        (if (##structure-direct-instance-of?
             _%stx115873%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx115873%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx115873%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx115873%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx115873%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx115869%_)
        (let ((_%stx115871%_ (gx#stx-unwrap__0 _%stx115869%_)))
          (if (gx#identifier-quote? _%stx115871%_)
              (##unchecked-structure-ref _%stx115871%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx115824%_)
        (let* ((_%g115825115835%_ (gx#stx-e _%stx115824%_))
               (_%else115828115843%_ (lambda () '#f)))
          (let ((_%K115831115857%_
                 (lambda (_%rest115854%_ _%hd115855%_)
                   (if (gx#identifier? _%hd115855%_)
                       (gx#identifier-list? _%rest115854%_)
                       '#f)))
                (_%K115830115848%_ (lambda () '#t)))
            (let ((_%try-match115827115851%_
                   (lambda ()
                     (if (##null? _%g115825115835%_)
                         (_%K115830115848%_)
                         (_%else115828115843%_)))))
              (if (##pair? _%g115825115835%_)
                  (let ((_%tl115833115862%_ (##cdr _%g115825115835%_))
                        (_%hd115832115860%_ (##car _%g115825115835%_)))
                    (let ((_%hd115865%_ _%hd115832115860%_)
                          (_%rest115867%_ _%tl115833115862%_))
                      (_%K115831115857%_ _%rest115867%_ _%hd115865%_)))
                  (_%try-match115827115851%_)))))))
    (define gx#genident__%
      (lambda (_%e115801%_ _%src115802%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e115804%_ (gx#stx-e _%e115801%_)))
                   (if (interned-symbol? _%e115804%_) _%e115804%_ 'g)))
         (let ((_%$e115806%_ (gx#stx-source _%e115801%_)))
           (if _%$e115806%_ _%$e115806%_ _%src115802%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e115813%_ 'g) (_%src115815%_ '#f))
          (gx#genident__% _%e115813%_ _%src115815%_))))
    (define gx#genident__1
      (lambda (_%e115817%_)
        (let ((_%src115819%_ '#f))
          (gx#genident__% _%e115817%_ _%src115819%_))))
    (define gx#genident
      (lambda _g116284_
        (let ((_g116283_ (##length _g116284_)))
          (cond ((##fx= _g116283_ 0) (apply gx#genident__0 _g116284_))
                ((##fx= _g116283_ 1) (apply gx#genident__1 _g116284_))
                ((##fx= _g116283_ 2) (apply gx#genident__% _g116284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g116284_))))))
    (define gx#gentemps
      (lambda (_%stx-lst115798%_) (gx#stx-map1 gx#genident _%stx-lst115798%_)))
    (define gx#syntax->list
      (lambda (_%stx115796%_) (gx#stx-map1 values _%stx115796%_)))
    (define gx#stx-car
      (lambda (_%stx115793%_)
        (declare (safe))
        (car (gx#syntax-e _%stx115793%_))))
    (define gx#stx-cdr
      (lambda (_%stx115790%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx115790%_))))
    (define gx#stx-length
      (lambda (_%stx115755%_)
        (let _%lp115757%_ ((_%rest115759%_ _%stx115755%_) (_%n115760%_ '0))
          (let* ((_%g115761115769%_ (gx#stx-e _%rest115759%_))
                 (_%else115763115777%_ (lambda () _%n115760%_))
                 (_%K115765115782%_
                  (lambda (_%rest115780%_)
                    (_%lp115757%_ _%rest115780%_ (##fx+ _%n115760%_ '1)))))
            (if (##pair? _%g115761115769%_)
                (let* ((_%tl115767115785%_ (##cdr _%g115761115769%_))
                       (_%rest115788%_ _%tl115767115785%_))
                  (_%K115765115782%_ _%rest115788%_))
                (_%else115763115777%_))))))
    (define gx#stx-for-each
      (lambda _g116286_
        (let ((_g116285_ (##length _g116286_)))
          (cond ((##fx= _g116285_ 2) (apply gx#stx-for-each1 _g116286_))
                ((##fx= _g116285_ 3) (apply gx#stx-for-each2 _g116286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g116286_))))))
    (define gx#stx-for-each1
      (lambda (_%f115698%_ _%stx115699%_)
        (if (procedure? _%f115698%_)
            '#!void
            (error '"expected procedure" _%f115698%_))
        (let _%lp115701%_ ((_%rest115703%_ _%stx115699%_))
          (let* ((_%g115704115714%_ (gx#syntax-e _%rest115703%_))
                 (_%else115707115722%_
                  (lambda () (_%f115698%_ _%rest115703%_))))
            (let ((_%K115710115736%_
                   (lambda (_%rest115733%_ _%hd115734%_)
                     (_%f115698%_ _%hd115734%_)
                     (_%lp115701%_ _%rest115733%_)))
                  (_%K115709115727%_ (lambda () '#!void)))
              (let ((_%try-match115706115730%_
                     (lambda ()
                       (if (##null? _%g115704115714%_)
                           (_%K115709115727%_)
                           (_%else115707115722%_)))))
                (if (##pair? _%g115704115714%_)
                    (let ((_%tl115712115741%_ (##cdr _%g115704115714%_))
                          (_%hd115711115739%_ (##car _%g115704115714%_)))
                      (let ((_%hd115744%_ _%hd115711115739%_)
                            (_%rest115746%_ _%tl115712115741%_))
                        (_%K115710115736%_ _%rest115746%_ _%hd115744%_)))
                    (_%try-match115706115730%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f115603%_ _%xstx115604%_ _%ystx115605%_)
        (if (procedure? _%f115603%_)
            '#!void
            (error '"expected procedure" _%f115603%_))
        (let _%lp115607%_ ((_%xrest115609%_ _%xstx115604%_)
                           (_%yrest115610%_ _%ystx115605%_))
          (let* ((_%g115611115621%_ (gx#syntax-e _%xrest115609%_))
                 (_%else115614115629%_ (lambda () '#!void)))
            (let ((_%K115617115686%_
                   (lambda (_%xrest115655%_ _%xhd115656%_)
                     (let* ((_%g115657115664%_ (gx#syntax-e _%yrest115610%_))
                            (_%E115659115668%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g115657115664%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K115660115674%_
                             (lambda (_%yrest115671%_ _%yhd115672%_)
                               (_%f115603%_ _%xhd115656%_ _%yhd115672%_)
                               (_%lp115607%_
                                _%xrest115655%_
                                _%yrest115671%_))))
                       (if (##pair? _%g115657115664%_)
                           (let ((_%hd115661115677%_ (##car _%g115657115664%_))
                                 (_%tl115662115679%_
                                  (##cdr _%g115657115664%_)))
                             (let* ((_%yhd115682%_ _%hd115661115677%_)
                                    (_%yrest115684%_ _%tl115662115679%_))
                               (_%K115660115674%_
                                _%yrest115684%_
                                _%yhd115682%_)))
                           (_%E115659115668%_)))))
                  (_%K115616115649%_
                   (lambda ()
                     (let* ((_%yrest115633115638%_ _%yrest115610%_)
                            (_%E115635115642%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest115633115638%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K115636115646%_
                             (lambda ()
                               (_%f115603%_ _%xrest115609%_ _%yrest115610%_))))
                       (if (gx#stx-null? _%yrest115633115638%_)
                           (_%E115635115642%_)
                           (_%K115636115646%_))))))
              (let ((_%try-match115613115652%_
                     (lambda ()
                       (if (null? _%g115611115621%_)
                           (_%else115614115629%_)
                           (_%K115616115649%_)))))
                (if (##pair? _%g115611115621%_)
                    (let ((_%tl115619115691%_ (##cdr _%g115611115621%_))
                          (_%hd115618115689%_ (##car _%g115611115621%_)))
                      (let ((_%xhd115694%_ _%hd115618115689%_)
                            (_%xrest115696%_ _%tl115619115691%_))
                        (_%K115617115686%_ _%xrest115696%_ _%xhd115694%_)))
                    (_%try-match115613115652%_))))))))
    (define gx#stx-map
      (lambda _g116288_
        (let ((_g116287_ (##length _g116288_)))
          (cond ((##fx= _g116287_ 2) (apply gx#stx-map1 _g116288_))
                ((##fx= _g116287_ 3) (apply gx#stx-map2 _g116288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g116288_))))))
    (define gx#stx-map1
      (lambda (_%f115546%_ _%stx115547%_)
        (if (procedure? _%f115546%_)
            '#!void
            (error '"expected procedure" _%f115546%_))
        (let _%recur115549%_ ((_%rest115551%_ _%stx115547%_))
          (let* ((_%g115552115562%_ (gx#syntax-e _%rest115551%_))
                 (_%else115555115570%_
                  (lambda () (_%f115546%_ _%rest115551%_))))
            (let ((_%K115558115584%_
                   (lambda (_%rest115581%_ _%hd115582%_)
                     (cons (_%f115546%_ _%hd115582%_)
                           (_%recur115549%_ _%rest115581%_))))
                  (_%K115557115575%_ (lambda () '())))
              (let ((_%try-match115554115578%_
                     (lambda ()
                       (if (##null? _%g115552115562%_)
                           (_%K115557115575%_)
                           (_%else115555115570%_)))))
                (if (##pair? _%g115552115562%_)
                    (let ((_%tl115560115589%_ (##cdr _%g115552115562%_))
                          (_%hd115559115587%_ (##car _%g115552115562%_)))
                      (let ((_%hd115592%_ _%hd115559115587%_)
                            (_%rest115594%_ _%tl115560115589%_))
                        (_%K115558115584%_ _%rest115594%_ _%hd115592%_)))
                    (_%try-match115554115578%_))))))))
    (define gx#stx-map2
      (lambda (_%f115451%_ _%xstx115452%_ _%ystx115453%_)
        (if (procedure? _%f115451%_)
            '#!void
            (error '"expected procedure" _%f115451%_))
        (let _%recur115455%_ ((_%xrest115457%_ _%xstx115452%_)
                              (_%yrest115458%_ _%ystx115453%_))
          (let* ((_%g115459115469%_ (gx#syntax-e _%xrest115457%_))
                 (_%else115462115477%_ (lambda () '())))
            (let ((_%K115465115534%_
                   (lambda (_%xrest115503%_ _%xhd115504%_)
                     (let* ((_%g115505115512%_ (gx#syntax-e _%yrest115458%_))
                            (_%E115507115516%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g115505115512%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K115508115522%_
                             (lambda (_%yrest115519%_ _%yhd115520%_)
                               (cons (_%f115451%_ _%xhd115504%_ _%yhd115520%_)
                                     (_%recur115455%_
                                      _%xrest115503%_
                                      _%yrest115519%_)))))
                       (if (##pair? _%g115505115512%_)
                           (let ((_%hd115509115525%_ (##car _%g115505115512%_))
                                 (_%tl115510115527%_
                                  (##cdr _%g115505115512%_)))
                             (let* ((_%yhd115530%_ _%hd115509115525%_)
                                    (_%yrest115532%_ _%tl115510115527%_))
                               (_%K115508115522%_
                                _%yrest115532%_
                                _%yhd115530%_)))
                           (_%E115507115516%_)))))
                  (_%K115464115497%_
                   (lambda ()
                     (let* ((_%yrest115481115486%_ _%yrest115458%_)
                            (_%E115483115490%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest115481115486%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K115484115494%_
                             (lambda ()
                               (_%f115451%_ _%xrest115457%_ _%yrest115458%_))))
                       (if (gx#stx-null? _%yrest115481115486%_)
                           (_%E115483115490%_)
                           (_%K115484115494%_))))))
              (let ((_%try-match115461115500%_
                     (lambda ()
                       (if (null? _%g115459115469%_)
                           (_%else115462115477%_)
                           (_%K115464115497%_)))))
                (if (##pair? _%g115459115469%_)
                    (let ((_%tl115467115539%_ (##cdr _%g115459115469%_))
                          (_%hd115466115537%_ (##car _%g115459115469%_)))
                      (let ((_%xhd115542%_ _%hd115466115537%_)
                            (_%xrest115544%_ _%tl115467115539%_))
                        (_%K115465115534%_ _%xrest115544%_ _%xhd115542%_)))
                    (_%try-match115461115500%_))))))))
    (define gx#stx-andmap
      (lambda (_%f115401%_ _%stx115402%_)
        (if (procedure? _%f115401%_)
            '#!void
            (error '"expected procedure" _%f115401%_))
        (let _%lp115404%_ ((_%rest115406%_ _%stx115402%_))
          (let* ((_%g115407115417%_ (gx#syntax-e _%rest115406%_))
                 (_%else115410115425%_
                  (lambda () (_%f115401%_ _%rest115406%_))))
            (let ((_%K115413115439%_
                   (lambda (_%rest115436%_ _%hd115437%_)
                     (if (_%f115401%_ _%hd115437%_)
                         (_%lp115404%_ _%rest115436%_)
                         '#f)))
                  (_%K115412115430%_ (lambda () '#t)))
              (let ((_%try-match115409115433%_
                     (lambda ()
                       (if (##null? _%g115407115417%_)
                           (_%K115412115430%_)
                           (_%else115410115425%_)))))
                (if (##pair? _%g115407115417%_)
                    (let ((_%tl115415115444%_ (##cdr _%g115407115417%_))
                          (_%hd115414115442%_ (##car _%g115407115417%_)))
                      (let ((_%hd115447%_ _%hd115414115442%_)
                            (_%rest115449%_ _%tl115415115444%_))
                        (_%K115413115439%_ _%rest115449%_ _%hd115447%_)))
                    (_%try-match115409115433%_))))))))
    (define gx#stx-ormap
      (lambda (_%f115348%_ _%stx115349%_)
        (if (procedure? _%f115348%_)
            '#!void
            (error '"expected procedure" _%f115348%_))
        (let _%lp115351%_ ((_%rest115353%_ _%stx115349%_))
          (let* ((_%g115354115364%_ (gx#syntax-e _%rest115353%_))
                 (_%else115357115372%_
                  (lambda () (_%f115348%_ _%rest115353%_))))
            (let ((_%K115360115389%_
                   (lambda (_%rest115383%_ _%hd115384%_)
                     (let ((_%$e115386%_ (_%f115348%_ _%hd115384%_)))
                       (if _%$e115386%_
                           _%$e115386%_
                           (_%lp115351%_ _%rest115383%_)))))
                  (_%K115359115377%_ (lambda () '#f)))
              (let ((_%try-match115356115380%_
                     (lambda ()
                       (if (##null? _%g115354115364%_)
                           (_%K115359115377%_)
                           (_%else115357115372%_)))))
                (if (##pair? _%g115354115364%_)
                    (let ((_%tl115362115394%_ (##cdr _%g115354115364%_))
                          (_%hd115361115392%_ (##car _%g115354115364%_)))
                      (let ((_%hd115397%_ _%hd115361115392%_)
                            (_%rest115399%_ _%tl115362115394%_))
                        (_%K115360115389%_ _%rest115399%_ _%hd115397%_)))
                    (_%try-match115356115380%_))))))))
    (define gx#stx-foldl
      (lambda (_%f115296%_ _%iv115297%_ _%stx115298%_)
        (if (procedure? _%f115296%_)
            '#!void
            (error '"expected procedure" _%f115296%_))
        (let _%lp115300%_ ((_%r115302%_ _%iv115297%_)
                           (_%rest115303%_ _%stx115298%_))
          (let* ((_%g115304115314%_ (gx#syntax-e _%rest115303%_))
                 (_%else115307115322%_
                  (lambda () (_%f115296%_ _%rest115303%_ _%r115302%_))))
            (let ((_%K115310115336%_
                   (lambda (_%rest115333%_ _%hd115334%_)
                     (_%lp115300%_
                      (_%f115296%_ _%hd115334%_ _%r115302%_)
                      _%rest115333%_)))
                  (_%K115309115327%_ (lambda () _%r115302%_)))
              (let ((_%try-match115306115330%_
                     (lambda ()
                       (if (##null? _%g115304115314%_)
                           (_%K115309115327%_)
                           (_%else115307115322%_)))))
                (if (##pair? _%g115304115314%_)
                    (let ((_%tl115312115341%_ (##cdr _%g115304115314%_))
                          (_%hd115311115339%_ (##car _%g115304115314%_)))
                      (let ((_%hd115344%_ _%hd115311115339%_)
                            (_%rest115346%_ _%tl115312115341%_))
                        (_%K115310115336%_ _%rest115346%_ _%hd115344%_)))
                    (_%try-match115306115330%_))))))))
    (define gx#stx-foldr
      (lambda (_%f115245%_ _%iv115246%_ _%stx115247%_)
        (if (procedure? _%f115245%_)
            '#!void
            (error '"expected procedure" _%f115245%_))
        (let _%recur115249%_ ((_%rest115251%_ _%stx115247%_))
          (let* ((_%g115252115262%_ (gx#syntax-e _%rest115251%_))
                 (_%else115255115270%_
                  (lambda () (_%f115245%_ _%rest115251%_ _%iv115246%_))))
            (let ((_%K115258115284%_
                   (lambda (_%rest115281%_ _%hd115282%_)
                     (_%f115245%_
                      _%hd115282%_
                      (_%recur115249%_ _%rest115281%_))))
                  (_%K115257115275%_ (lambda () _%iv115246%_)))
              (let ((_%try-match115254115278%_
                     (lambda ()
                       (if (##null? _%g115252115262%_)
                           (_%K115257115275%_)
                           (_%else115255115270%_)))))
                (if (##pair? _%g115252115262%_)
                    (let ((_%tl115260115289%_ (##cdr _%g115252115262%_))
                          (_%hd115259115287%_ (##car _%g115252115262%_)))
                      (let ((_%hd115292%_ _%hd115259115287%_)
                            (_%rest115294%_ _%tl115260115289%_))
                        (_%K115258115284%_ _%rest115294%_ _%hd115292%_)))
                    (_%try-match115254115278%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx115243%_) (gx#stx-foldl cons '() _%stx115243%_)))
    (define gx#stx-last
      (lambda (_%stx115204%_)
        (let _%lp115206%_ ((_%rest115208%_ _%stx115204%_))
          (let* ((_%g115209115217%_ (gx#syntax-e _%rest115208%_))
                 (_%else115211115225%_ (lambda () _%rest115208%_))
                 (_%K115213115231%_
                  (lambda (_%rest115228%_ _%hd115229%_)
                    (if (gx#stx-null? _%rest115228%_)
                        _%hd115229%_
                        (_%lp115206%_ _%rest115228%_)))))
            (if (##pair? _%g115209115217%_)
                (let ((_%hd115214115234%_ (##car _%g115209115217%_))
                      (_%tl115215115236%_ (##cdr _%g115209115217%_)))
                  (let* ((_%hd115239%_ _%hd115214115234%_)
                         (_%rest115241%_ _%tl115215115236%_))
                    (_%K115213115231%_ _%rest115241%_ _%hd115239%_)))
                (_%else115211115225%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx115175%_)
        (let _%lp115177%_ ((_%hd115179%_ _%stx115175%_))
          (let* ((_%g115180115187%_ (gx#syntax-e _%hd115179%_))
                 (_%E115182115191%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g115180115187%_
                           '([_ . rest]))
                    '#!void))
                 (_%K115183115196%_
                  (lambda (_%rest115194%_)
                    (if (gx#stx-pair? _%rest115194%_)
                        (_%lp115177%_ _%rest115194%_)
                        _%hd115179%_))))
            (if (##pair? _%g115180115187%_)
                (let* ((_%tl115185115199%_ (##cdr _%g115180115187%_))
                       (_%rest115202%_ _%tl115185115199%_))
                  (_%K115183115196%_ _%rest115202%_))
                (_%E115182115191%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx115144%_ _%k115145%_)
        (let _%lp115147%_ ((_%rest115149%_ _%stx115144%_)
                           (_%k115150%_ _%k115145%_))
          (if (fxpositive? _%k115150%_)
              (let* ((_%g115151115158%_ (gx#syntax-e _%rest115149%_))
                     (_%E115153115162%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g115151115158%_
                               '([_ . rest]))
                        '#!void))
                     (_%K115154115167%_
                      (lambda (_%rest115165%_)
                        (_%lp115147%_ _%rest115165%_ (##fx- _%k115150%_ '1)))))
                (if (##pair? _%g115151115158%_)
                    (let* ((_%tl115156115170%_ (##cdr _%g115151115158%_))
                           (_%rest115173%_ _%tl115156115170%_))
                      (_%K115154115167%_ _%rest115173%_))
                    (_%E115153115162%_)))
              _%rest115149%_))))
    (define gx#stx-list-ref
      (lambda (_%stx115141%_ _%k115142%_)
        (gx#stx-car (gx#stx-list-tail _%stx115141%_ _%k115142%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx115053%_ _%key?115054%_)
        (if (procedure? _%key?115054%_)
            '#!void
            (error '"expected procedure" _%key?115054%_))
        (let _%lp115056%_ ((_%rest115058%_ _%stx115053%_))
          (let* ((_%g115059115069%_ (gx#stx-e _%rest115058%_))
                 (_%else115062115077%_ (lambda () '#f)))
            (let ((_%K115065115119%_
                   (lambda (_%rest115088%_ _%hd115089%_)
                     (if (_%key?115054%_ _%hd115089%_)
                         (let* ((_%g115090115098%_ (gx#stx-e _%rest115088%_))
                                (_%else115092115106%_ (lambda () '#f))
                                (_%K115094115111%_
                                 (lambda (_%rest115109%_)
                                   (_%lp115056%_ _%rest115109%_))))
                           (if (##pair? _%g115090115098%_)
                               (let* ((_%tl115096115114%_
                                       (##cdr _%g115090115098%_))
                                      (_%rest115117%_ _%tl115096115114%_))
                                 (_%lp115056%_ _%rest115117%_))
                               (_%else115092115106%_)))
                         '#f)))
                  (_%K115064115082%_ (lambda () '#t)))
              (let ((_%try-match115061115085%_
                     (lambda ()
                       (if (##null? _%g115059115069%_)
                           (_%K115064115082%_)
                           (_%else115062115077%_)))))
                (if (##pair? _%g115059115069%_)
                    (let ((_%tl115067115124%_ (##cdr _%g115059115069%_))
                          (_%hd115066115122%_ (##car _%g115059115069%_)))
                      (let ((_%hd115127%_ _%hd115066115122%_)
                            (_%rest115129%_ _%tl115067115124%_))
                        (_%K115065115119%_ _%rest115129%_ _%hd115127%_)))
                    (_%try-match115061115085%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx115134%_)
        (let ((_%key?115136%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx115134%_ _%key?115136%_))))
    (define gx#stx-plist?
      (lambda _g116290_
        (let ((_g116289_ (##length _g116290_)))
          (cond ((##fx= _g116289_ 1) (apply gx#stx-plist?__0 _g116290_))
                ((##fx= _g116289_ 2) (apply gx#stx-plist?__% _g116290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g116290_))))))
    (define gx#stx-getq__%
      (lambda (_%key114971%_ _%stx114972%_ _%key=?114973%_)
        (if (procedure? _%key=?114973%_)
            '#!void
            (error '"expected procedure" _%key=?114973%_))
        (let _%lp114975%_ ((_%rest114977%_ _%stx114972%_))
          (let* ((_%g114978114986%_ (gx#syntax-e _%rest114977%_))
                 (_%else114980114994%_ (lambda () '#f))
                 (_%K114982115028%_
                  (lambda (_%rest114997%_ _%hd114998%_)
                    (let* ((_%g114999115006%_ (gx#syntax-e _%rest114997%_))
                           (_%E115001115010%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g114999115006%_
                                     '([val . rest]))
                              '#!void))
                           (_%K115002115016%_
                            (lambda (_%rest115013%_ _%val115014%_)
                              (if (_%key=?114973%_ _%hd114998%_ _%key114971%_)
                                  _%val115014%_
                                  (_%lp114975%_ _%rest115013%_)))))
                      (if (##pair? _%g114999115006%_)
                          (let ((_%hd115003115019%_ (##car _%g114999115006%_))
                                (_%tl115004115021%_ (##cdr _%g114999115006%_)))
                            (let* ((_%val115024%_ _%hd115003115019%_)
                                   (_%rest115026%_ _%tl115004115021%_))
                              (_%K115002115016%_
                               _%rest115026%_
                               _%val115024%_)))
                          (_%E115001115010%_))))))
            (if (##pair? _%g114978114986%_)
                (let ((_%hd114983115031%_ (##car _%g114978114986%_))
                      (_%tl114984115033%_ (##cdr _%g114978114986%_)))
                  (let* ((_%hd115036%_ _%hd114983115031%_)
                         (_%rest115038%_ _%tl114984115033%_))
                    (_%K114982115028%_ _%rest115038%_ _%hd115036%_)))
                (_%else114980114994%_))))))
    (define gx#stx-getq__0
      (lambda (_%key115043%_ _%stx115044%_)
        (let ((_%key=?115046%_ gx#stx-eq?))
          (gx#stx-getq__% _%key115043%_ _%stx115044%_ _%key=?115046%_))))
    (define gx#stx-getq
      (lambda _g116292_
        (let ((_g116291_ (##length _g116292_)))
          (cond ((##fx= _g116291_ 2) (apply gx#stx-getq__0 _g116292_))
                ((##fx= _g116291_ 3) (apply gx#stx-getq__% _g116292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g116292_))))))))
