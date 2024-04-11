(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712823026)
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
      (lambda _%$args116196%_
        (apply make-instance gx#identifier-wrap::t _%$args116196%_)))
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
      (lambda _%$args116193%_
        (apply make-instance gx#syntax-wrap::t _%$args116193%_)))
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
      (lambda _%$args116190%_
        (apply make-instance gx#syntax-quote::t _%$args116190%_)))
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
      (lambda (_%stx116188%_) (symbol? (gx#stx-e _%stx116188%_))))
    (define gx#identifier-quote?
      (lambda (_%stx116186%_)
        (if (##structure-direct-instance-of? _%stx116186%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx116186%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx116181%_)
        (if (##structure-direct-instance-of? _%stx116181%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx116181%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx116181%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx116176%_)
        (if (##structure-direct-instance-of? _%stx116176%_ 'gx#syntax-quote::t)
            _%stx116176%_
            (if (##structure-direct-instance-of?
                 _%stx116176%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx116176%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx116150%_)
        (if (##structure-direct-instance-of? _%stx116150%_ 'gx#syntax-wrap::t)
            (let _%lp116153%_ ((_%e116155%_
                                (##unchecked-structure-ref
                                 _%stx116150%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks116156%_
                                (cons (##unchecked-structure-ref
                                       _%stx116150%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e116155%_)
                  (let ((_%$e116159%_
                         (##type-id (##structure-type _%e116155%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e116159%_)
                        (_%lp116153%_
                         (##unchecked-structure-ref _%e116155%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e116155%_ '3 '#f '#f)
                          _%marks116156%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e116159%_)
                                (eq? 'gx#identifier-wrap::t _%$e116159%_))
                            (##unchecked-structure-ref _%e116155%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e116159%_)
                                (_%lp116153%_
                                 (##unchecked-structure-ref
                                  _%e116155%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks116156%_)
                                _%e116155%_))))
                  (if (null? _%marks116156%_)
                      _%e116155%_
                      (if (pair? _%e116155%_)
                          (cons (gx#stx-wrap (car _%e116155%_) _%marks116156%_)
                                (gx#stx-wrap
                                 (cdr _%e116155%_)
                                 _%marks116156%_))
                          (if (vector? _%e116155%_)
                              (vector-map
                               (lambda (_%g116167116169%_)
                                 (gx#stx-wrap
                                  _%g116167116169%_
                                  _%marks116156%_))
                               _%e116155%_)
                              (if (box? _%e116155%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e116155%_)
                                        _%marks116156%_))
                                  _%e116155%_))))))
            (if (##structure-instance-of? _%stx116150%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116150%_ '1 '#f '#f)
                _%stx116150%_))))
    (define gx#syntax->datum
      (lambda (_%stx116143%_)
        (if (##structure-instance-of? _%stx116143%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx116143%_ '1 '#f '#f))
            (if (pair? _%stx116143%_)
                (cons (gx#syntax->datum (car _%stx116143%_))
                      (gx#syntax->datum (cdr _%stx116143%_)))
                (if (vector? _%stx116143%_)
                    (vector-map gx#syntax->datum _%stx116143%_)
                    (if (box? _%stx116143%_)
                        (box (gx#syntax->datum (unbox _%stx116143%_)))
                        _%stx116143%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx116077%_ _%datum116078%_ _%src116079%_ _%quote?116080%_)
        (letrec ((_%wrap-datum116082%_
                  (lambda (_%e116115%_ _%marks116116%_)
                    (_%wrap-inner116084%_
                     _%e116115%_
                     (lambda (_%g116117116119%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g116117116119%_
                        _%src116079%_
                        _%marks116116%_)))))
                 (_%wrap-quote116083%_
                  (lambda (_%e116107%_ _%ctx116108%_ _%marks116109%_)
                    (_%wrap-inner116084%_
                     _%e116107%_
                     (lambda (_%g116110116112%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g116110116112%_
                        _%src116079%_
                        _%ctx116108%_
                        _%marks116109%_)))))
                 (_%wrap-inner116084%_
                  (lambda (_%e116095%_ _%wrap-e116096%_)
                    (let _%recur116098%_ ((_%e116100%_ _%e116095%_))
                      (if (symbol? _%e116100%_)
                          (_%wrap-e116096%_ _%e116100%_)
                          (if (pair? _%e116100%_)
                              (cons (_%recur116098%_ (car _%e116100%_))
                                    (_%recur116098%_ (cdr _%e116100%_)))
                              (if (vector? _%e116100%_)
                                  (vector-map _%recur116098%_ _%e116100%_)
                                  (if (box? _%e116100%_)
                                      (box (_%recur116098%_
                                            (unbox _%e116100%_)))
                                      _%e116100%_)))))))
                 (_%wrap-outer116085%_
                  (lambda (_%e116093%_)
                    (if (##structure-instance-of? _%e116093%_ 'gerbil#AST::t)
                        _%e116093%_
                        (##structure gx#AST::t _%e116093%_ _%src116079%_)))))
          (if (##structure-instance-of? _%datum116078%_ 'gerbil#AST::t)
              _%datum116078%_
              (if (not _%stx116077%_)
                  (##structure gx#AST::t _%datum116078%_ _%src116079%_)
                  (if (gx#identifier? _%stx116077%_)
                      (let ((_%stx116090%_ (gx#stx-unwrap__0 _%stx116077%_)))
                        (_%wrap-outer116085%_
                         (if (##structure-direct-instance-of?
                              _%stx116090%_
                              'gx#syntax-quote::t)
                             (if _%quote?116080%_
                                 (_%wrap-quote116083%_
                                  _%datum116078%_
                                  (##unchecked-structure-ref
                                   _%stx116090%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx116090%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum116082%_
                                  _%datum116078%_
                                  (##unchecked-structure-ref
                                   _%stx116090%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum116082%_
                              _%datum116078%_
                              (##unchecked-structure-ref
                               _%stx116090%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx116077%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx116125%_ _%datum116126%_)
        (let* ((_%src116128%_ '#f) (_%quote?116130%_ '#t))
          (gx#datum->syntax__%
           _%stx116125%_
           _%datum116126%_
           _%src116128%_
           _%quote?116130%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx116132%_ _%datum116133%_ _%src116134%_)
        (let ((_%quote?116136%_ '#t))
          (gx#datum->syntax__%
           _%stx116132%_
           _%datum116133%_
           _%src116134%_
           _%quote?116136%_))))
    (define gx#datum->syntax
      (lambda _g116277_
        (let ((_g116276_ (##length _g116277_)))
          (cond ((##fx= _g116276_ 2) (apply gx#datum->syntax__0 _g116277_))
                ((##fx= _g116276_ 3) (apply gx#datum->syntax__1 _g116277_))
                ((##fx= _g116276_ 4) (apply gx#datum->syntax__% _g116277_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g116277_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx116043%_ _%marks116044%_)
        (let _%lp116046%_ ((_%e116048%_ _%stx116043%_)
                           (_%marks116049%_ _%marks116044%_)
                           (_%src116050%_ (gx#stx-source _%stx116043%_)))
          (if (##structure-direct-instance-of? _%e116048%_ 'gx#syntax-wrap::t)
              (_%lp116046%_
               (##unchecked-structure-ref _%e116048%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e116048%_ '3 '#f '#f)
                _%marks116049%_)
               (##unchecked-structure-ref _%e116048%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e116048%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks116049%_)
                      _%e116048%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e116048%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e116048%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e116048%_ '3 '#f '#f)
                        _%marks116049%_)))
                  (if (##structure-direct-instance-of?
                       _%e116048%_
                       'gx#syntax-quote::t)
                      _%e116048%_
                      (if (##structure-instance-of? _%e116048%_ 'gerbil#AST::t)
                          (_%lp116046%_
                           (##unchecked-structure-ref _%e116048%_ '1 '#f '#f)
                           _%marks116049%_
                           (##unchecked-structure-ref _%e116048%_ '2 '#f '#f))
                          (if (symbol? _%e116048%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e116048%_
                               _%src116050%_
                               (reverse _%marks116049%_))
                              (if (null? _%marks116049%_)
                                  _%e116048%_
                                  (if (pair? _%e116048%_)
                                      (cons (gx#stx-wrap
                                             (car _%e116048%_)
                                             _%marks116049%_)
                                            (gx#stx-wrap
                                             (cdr _%e116048%_)
                                             _%marks116049%_))
                                      (if (vector? _%e116048%_)
                                          (vector-map
                                           (lambda (_%g116059116061%_)
                                             (gx#stx-wrap
                                              _%g116059116061%_
                                              _%marks116049%_))
                                           _%e116048%_)
                                          (if (box? _%e116048%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e116048%_)
                                                    _%marks116049%_))
                                              _%e116048%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx116069%_)
        (let ((_%marks116071%_ '()))
          (gx#stx-unwrap__% _%stx116069%_ _%marks116071%_))))
    (define gx#stx-unwrap
      (lambda _g116279_
        (let ((_g116278_ (##length _g116279_)))
          (cond ((##fx= _g116278_ 1) (apply gx#stx-unwrap__0 _g116279_))
                ((##fx= _g116278_ 2) (apply gx#stx-unwrap__% _g116279_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g116279_))))))
    (define gx#stx-wrap
      (lambda (_%stx116036%_ _%marks116037%_)
        (__foldl1
         (lambda (_%mark116039%_ _%stx116040%_)
           (gx#stx-apply-mark _%stx116040%_ _%mark116039%_))
         _%stx116036%_
         _%marks116037%_)))
    (define gx#stx-rewrap
      (lambda (_%stx116030%_ _%marks116031%_)
        (__foldr1
         (lambda (_%mark116033%_ _%stx116034%_)
           (gx#stx-apply-mark _%stx116034%_ _%mark116033%_))
         _%stx116030%_
         _%marks116031%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx116024%_ _%mark116025%_)
        (if (##structure-direct-instance-of? _%stx116024%_ 'gx#syntax-quote::t)
            _%stx116024%_
            (if (and (##structure-direct-instance-of?
                      _%stx116024%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark116025%_
                          (##unchecked-structure-ref
                           _%stx116024%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx116024%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx116024%_
                 (gx#stx-source _%stx116024%_)
                 _%mark116025%_)))))
    (define gx#apply-mark
      (lambda (_%mark115988%_ _%marks115989%_)
        (let* ((_%marks115990115998%_ _%marks115989%_)
               (_%else115992116006%_
                (lambda () (cons _%mark115988%_ _%marks115989%_)))
               (_%K115994116012%_
                (lambda (_%rest116009%_ _%hd116010%_)
                  (if (eq? _%mark115988%_ _%hd116010%_)
                      _%rest116009%_
                      (cons _%mark115988%_ _%marks115989%_)))))
          (if (##pair? _%marks115990115998%_)
              (let ((_%hd115995116015%_ (##car _%marks115990115998%_))
                    (_%tl115996116017%_ (##cdr _%marks115990115998%_)))
                (let* ((_%hd116020%_ _%hd115995116015%_)
                       (_%rest116022%_ _%tl115996116017%_))
                  (_%K115994116012%_ _%rest116022%_ _%hd116020%_)))
              (_%else115992116006%_)))))
    (define gx#stx-e
      (lambda (_%stx115983%_)
        (if (##structure-direct-instance-of? _%stx115983%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx115983%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx115983%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx115983%_ '1 '#f '#f)
                _%stx115983%_))))
    (define gx#stx-source
      (lambda (_%stx115981%_)
        (if (##structure-instance-of? _%stx115981%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx115981%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx115975%_ _%src115976%_)
        (if (or (##structure-instance-of? _%stx115975%_ 'gerbil#AST::t)
                (not _%src115976%_))
            _%stx115975%_
            (##structure gx#AST::t _%stx115975%_ _%src115976%_))))
    (define gx#stx-datum?
      (lambda (_%stx115973%_) (gx#self-quoting? (gx#stx-e _%stx115973%_))))
    (define gx#self-quoting?
      (lambda (_%x115956%_)
        (let ((_%$e115958%_ (immediate? _%x115956%_)))
          (if _%$e115958%_
              _%$e115958%_
              (let ((_%$e115961%_ (number? _%x115956%_)))
                (if _%$e115961%_
                    _%$e115961%_
                    (let ((_%$e115964%_ (keyword? _%x115956%_)))
                      (if _%$e115964%_
                          _%$e115964%_
                          (let ((_%$e115967%_ (string? _%x115956%_)))
                            (if _%$e115967%_
                                _%$e115967%_
                                (let ((_%$e115970%_ (vector? _%x115956%_)))
                                  (if _%$e115970%_
                                      _%$e115970%_
                                      (u8vector? _%x115956%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e115954%_) (boolean? (gx#stx-e _%e115954%_))))
    (define gx#stx-keyword?
      (lambda (_%e115952%_) (keyword? (gx#stx-e _%e115952%_))))
    (define gx#stx-char? (lambda (_%e115950%_) (char? (gx#stx-e _%e115950%_))))
    (define gx#stx-number?
      (lambda (_%e115948%_) (number? (gx#stx-e _%e115948%_))))
    (define gx#stx-fixnum?
      (lambda (_%e115946%_) (fixnum? (gx#stx-e _%e115946%_))))
    (define gx#stx-string?
      (lambda (_%e115944%_) (string? (gx#stx-e _%e115944%_))))
    (define gx#stx-null? (lambda (_%e115942%_) (null? (gx#stx-e _%e115942%_))))
    (define gx#stx-pair? (lambda (_%e115940%_) (pair? (gx#stx-e _%e115940%_))))
    (define gx#stx-list?
      (lambda (_%e115902%_)
        (let* ((_%g115903115912%_ (gx#stx-e _%e115902%_))
               (_%E115906115916%_
                (lambda ()
                  (error '"No clause matching"
                         _%g115903115912%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K115908115932%_
                 (lambda (_%rest115930%_) (gx#stx-list? _%rest115930%_)))
                (_%K115907115922%_
                 (lambda (_%tail115920%_) (null? _%tail115920%_))))
            (if (##pair? _%g115903115912%_)
                (let* ((_%tl115910115935%_ (##cdr _%g115903115912%_))
                       (_%rest115938%_ _%tl115910115935%_))
                  (gx#stx-list? _%rest115938%_))
                (let ((_%tail115925%_ _%g115903115912%_))
                  (null? _%tail115925%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e115895%_)
        (let* ((_%e115897%_ (gx#stx-e _%e115895%_))
               (_%$e115899%_ (pair? _%e115897%_)))
          (if _%$e115899%_ _%$e115899%_ (null? _%e115897%_)))))
    (define gx#stx-vector?
      (lambda (_%e115893%_) (vector? (gx#stx-e _%e115893%_))))
    (define gx#stx-box? (lambda (_%e115891%_) (box? (gx#stx-e _%e115891%_))))
    (define gx#stx-eq?
      (lambda (_%x115888%_ _%y115889%_)
        (eq? (gx#stx-e _%x115888%_) (gx#stx-e _%y115889%_))))
    (define gx#stx-eqv?
      (lambda (_%x115885%_ _%y115886%_)
        (eqv? (gx#stx-e _%x115885%_) (gx#stx-e _%y115886%_))))
    (define gx#stx-equal?
      (lambda (_%x115882%_ _%y115883%_)
        (equal? (gx#stx-e _%x115882%_) (gx#stx-e _%y115883%_))))
    (define gx#stx-false? (lambda (_%x115880%_) (not (gx#stx-e _%x115880%_))))
    (define gx#stx-identifier
      (lambda (_%template115877%_ . _%args115878%_)
        (gx#datum->syntax__1
         _%template115877%_
         (apply make-symbol (gx#syntax->datum _%args115878%_))
         (gx#stx-source _%template115877%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx115875%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx115875%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx115870%_)
        (if (##structure-direct-instance-of?
             _%stx115870%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx115870%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx115870%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx115870%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx115870%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx115866%_)
        (let ((_%stx115868%_ (gx#stx-unwrap__0 _%stx115866%_)))
          (if (gx#identifier-quote? _%stx115868%_)
              (##unchecked-structure-ref _%stx115868%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx115821%_)
        (let* ((_%g115822115832%_ (gx#stx-e _%stx115821%_))
               (_%else115825115840%_ (lambda () '#f)))
          (let ((_%K115828115854%_
                 (lambda (_%rest115851%_ _%hd115852%_)
                   (if (gx#identifier? _%hd115852%_)
                       (gx#identifier-list? _%rest115851%_)
                       '#f)))
                (_%K115827115845%_ (lambda () '#t)))
            (let ((_%try-match115824115848%_
                   (lambda ()
                     (if (##null? _%g115822115832%_)
                         (_%K115827115845%_)
                         (_%else115825115840%_)))))
              (if (##pair? _%g115822115832%_)
                  (let ((_%tl115830115859%_ (##cdr _%g115822115832%_))
                        (_%hd115829115857%_ (##car _%g115822115832%_)))
                    (let ((_%hd115862%_ _%hd115829115857%_)
                          (_%rest115864%_ _%tl115830115859%_))
                      (_%K115828115854%_ _%rest115864%_ _%hd115862%_)))
                  (_%try-match115824115848%_)))))))
    (define gx#genident__%
      (lambda (_%e115798%_ _%src115799%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e115801%_ (gx#stx-e _%e115798%_)))
                   (if (interned-symbol? _%e115801%_) _%e115801%_ 'g)))
         (let ((_%$e115803%_ (gx#stx-source _%e115798%_)))
           (if _%$e115803%_ _%$e115803%_ _%src115799%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e115810%_ 'g) (_%src115812%_ '#f))
          (gx#genident__% _%e115810%_ _%src115812%_))))
    (define gx#genident__1
      (lambda (_%e115814%_)
        (let ((_%src115816%_ '#f))
          (gx#genident__% _%e115814%_ _%src115816%_))))
    (define gx#genident
      (lambda _g116281_
        (let ((_g116280_ (##length _g116281_)))
          (cond ((##fx= _g116280_ 0) (apply gx#genident__0 _g116281_))
                ((##fx= _g116280_ 1) (apply gx#genident__1 _g116281_))
                ((##fx= _g116280_ 2) (apply gx#genident__% _g116281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g116281_))))))
    (define gx#gentemps
      (lambda (_%stx-lst115795%_) (gx#stx-map1 gx#genident _%stx-lst115795%_)))
    (define gx#syntax->list
      (lambda (_%stx115793%_) (gx#stx-map1 values _%stx115793%_)))
    (define gx#stx-car
      (lambda (_%stx115790%_)
        (declare (safe))
        (car (gx#syntax-e _%stx115790%_))))
    (define gx#stx-cdr
      (lambda (_%stx115787%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx115787%_))))
    (define gx#stx-length
      (lambda (_%stx115752%_)
        (let _%lp115754%_ ((_%rest115756%_ _%stx115752%_) (_%n115757%_ '0))
          (let* ((_%g115758115766%_ (gx#stx-e _%rest115756%_))
                 (_%else115760115774%_ (lambda () _%n115757%_))
                 (_%K115762115779%_
                  (lambda (_%rest115777%_)
                    (_%lp115754%_ _%rest115777%_ (##fx+ _%n115757%_ '1)))))
            (if (##pair? _%g115758115766%_)
                (let* ((_%tl115764115782%_ (##cdr _%g115758115766%_))
                       (_%rest115785%_ _%tl115764115782%_))
                  (_%K115762115779%_ _%rest115785%_))
                (_%else115760115774%_))))))
    (define gx#stx-for-each
      (lambda _g116283_
        (let ((_g116282_ (##length _g116283_)))
          (cond ((##fx= _g116282_ 2) (apply gx#stx-for-each1 _g116283_))
                ((##fx= _g116282_ 3) (apply gx#stx-for-each2 _g116283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g116283_))))))
    (define gx#stx-for-each1
      (lambda (_%f115695%_ _%stx115696%_)
        (if (procedure? _%f115695%_)
            '#!void
            (error '"expected procedure" _%f115695%_))
        (let _%lp115698%_ ((_%rest115700%_ _%stx115696%_))
          (let* ((_%g115701115711%_ (gx#syntax-e _%rest115700%_))
                 (_%else115704115719%_
                  (lambda () (_%f115695%_ _%rest115700%_))))
            (let ((_%K115707115733%_
                   (lambda (_%rest115730%_ _%hd115731%_)
                     (_%f115695%_ _%hd115731%_)
                     (_%lp115698%_ _%rest115730%_)))
                  (_%K115706115724%_ (lambda () '#!void)))
              (let ((_%try-match115703115727%_
                     (lambda ()
                       (if (##null? _%g115701115711%_)
                           (_%K115706115724%_)
                           (_%else115704115719%_)))))
                (if (##pair? _%g115701115711%_)
                    (let ((_%tl115709115738%_ (##cdr _%g115701115711%_))
                          (_%hd115708115736%_ (##car _%g115701115711%_)))
                      (let ((_%hd115741%_ _%hd115708115736%_)
                            (_%rest115743%_ _%tl115709115738%_))
                        (_%K115707115733%_ _%rest115743%_ _%hd115741%_)))
                    (_%try-match115703115727%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f115600%_ _%xstx115601%_ _%ystx115602%_)
        (if (procedure? _%f115600%_)
            '#!void
            (error '"expected procedure" _%f115600%_))
        (let _%lp115604%_ ((_%xrest115606%_ _%xstx115601%_)
                           (_%yrest115607%_ _%ystx115602%_))
          (let* ((_%g115608115618%_ (gx#syntax-e _%xrest115606%_))
                 (_%else115611115626%_ (lambda () '#!void)))
            (let ((_%K115614115683%_
                   (lambda (_%xrest115652%_ _%xhd115653%_)
                     (let* ((_%g115654115661%_ (gx#syntax-e _%yrest115607%_))
                            (_%E115656115665%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g115654115661%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K115657115671%_
                             (lambda (_%yrest115668%_ _%yhd115669%_)
                               (_%f115600%_ _%xhd115653%_ _%yhd115669%_)
                               (_%lp115604%_
                                _%xrest115652%_
                                _%yrest115668%_))))
                       (if (##pair? _%g115654115661%_)
                           (let ((_%hd115658115674%_ (##car _%g115654115661%_))
                                 (_%tl115659115676%_
                                  (##cdr _%g115654115661%_)))
                             (let* ((_%yhd115679%_ _%hd115658115674%_)
                                    (_%yrest115681%_ _%tl115659115676%_))
                               (_%K115657115671%_
                                _%yrest115681%_
                                _%yhd115679%_)))
                           (_%E115656115665%_)))))
                  (_%K115613115646%_
                   (lambda ()
                     (let* ((_%yrest115630115635%_ _%yrest115607%_)
                            (_%E115632115639%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest115630115635%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K115633115643%_
                             (lambda ()
                               (_%f115600%_ _%xrest115606%_ _%yrest115607%_))))
                       (if (not (gx#stx-null? _%yrest115630115635%_))
                           (_%K115633115643%_)
                           (_%E115632115639%_))))))
              (let ((_%try-match115610115649%_
                     (lambda ()
                       (if (not (null? _%g115608115618%_))
                           (_%K115613115646%_)
                           (_%else115611115626%_)))))
                (if (##pair? _%g115608115618%_)
                    (let ((_%tl115616115688%_ (##cdr _%g115608115618%_))
                          (_%hd115615115686%_ (##car _%g115608115618%_)))
                      (let ((_%xhd115691%_ _%hd115615115686%_)
                            (_%xrest115693%_ _%tl115616115688%_))
                        (_%K115614115683%_ _%xrest115693%_ _%xhd115691%_)))
                    (_%try-match115610115649%_))))))))
    (define gx#stx-map
      (lambda _g116285_
        (let ((_g116284_ (##length _g116285_)))
          (cond ((##fx= _g116284_ 2) (apply gx#stx-map1 _g116285_))
                ((##fx= _g116284_ 3) (apply gx#stx-map2 _g116285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g116285_))))))
    (define gx#stx-map1
      (lambda (_%f115543%_ _%stx115544%_)
        (if (procedure? _%f115543%_)
            '#!void
            (error '"expected procedure" _%f115543%_))
        (let _%recur115546%_ ((_%rest115548%_ _%stx115544%_))
          (let* ((_%g115549115559%_ (gx#syntax-e _%rest115548%_))
                 (_%else115552115567%_
                  (lambda () (_%f115543%_ _%rest115548%_))))
            (let ((_%K115555115581%_
                   (lambda (_%rest115578%_ _%hd115579%_)
                     (cons (_%f115543%_ _%hd115579%_)
                           (_%recur115546%_ _%rest115578%_))))
                  (_%K115554115572%_ (lambda () '())))
              (let ((_%try-match115551115575%_
                     (lambda ()
                       (if (##null? _%g115549115559%_)
                           (_%K115554115572%_)
                           (_%else115552115567%_)))))
                (if (##pair? _%g115549115559%_)
                    (let ((_%tl115557115586%_ (##cdr _%g115549115559%_))
                          (_%hd115556115584%_ (##car _%g115549115559%_)))
                      (let ((_%hd115589%_ _%hd115556115584%_)
                            (_%rest115591%_ _%tl115557115586%_))
                        (_%K115555115581%_ _%rest115591%_ _%hd115589%_)))
                    (_%try-match115551115575%_))))))))
    (define gx#stx-map2
      (lambda (_%f115448%_ _%xstx115449%_ _%ystx115450%_)
        (if (procedure? _%f115448%_)
            '#!void
            (error '"expected procedure" _%f115448%_))
        (let _%recur115452%_ ((_%xrest115454%_ _%xstx115449%_)
                              (_%yrest115455%_ _%ystx115450%_))
          (let* ((_%g115456115466%_ (gx#syntax-e _%xrest115454%_))
                 (_%else115459115474%_ (lambda () '())))
            (let ((_%K115462115531%_
                   (lambda (_%xrest115500%_ _%xhd115501%_)
                     (let* ((_%g115502115509%_ (gx#syntax-e _%yrest115455%_))
                            (_%E115504115513%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g115502115509%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K115505115519%_
                             (lambda (_%yrest115516%_ _%yhd115517%_)
                               (cons (_%f115448%_ _%xhd115501%_ _%yhd115517%_)
                                     (_%recur115452%_
                                      _%xrest115500%_
                                      _%yrest115516%_)))))
                       (if (##pair? _%g115502115509%_)
                           (let ((_%hd115506115522%_ (##car _%g115502115509%_))
                                 (_%tl115507115524%_
                                  (##cdr _%g115502115509%_)))
                             (let* ((_%yhd115527%_ _%hd115506115522%_)
                                    (_%yrest115529%_ _%tl115507115524%_))
                               (_%K115505115519%_
                                _%yrest115529%_
                                _%yhd115527%_)))
                           (_%E115504115513%_)))))
                  (_%K115461115494%_
                   (lambda ()
                     (let* ((_%yrest115478115483%_ _%yrest115455%_)
                            (_%E115480115487%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest115478115483%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K115481115491%_
                             (lambda ()
                               (_%f115448%_ _%xrest115454%_ _%yrest115455%_))))
                       (if (not (gx#stx-null? _%yrest115478115483%_))
                           (_%K115481115491%_)
                           (_%E115480115487%_))))))
              (let ((_%try-match115458115497%_
                     (lambda ()
                       (if (not (null? _%g115456115466%_))
                           (_%K115461115494%_)
                           (_%else115459115474%_)))))
                (if (##pair? _%g115456115466%_)
                    (let ((_%tl115464115536%_ (##cdr _%g115456115466%_))
                          (_%hd115463115534%_ (##car _%g115456115466%_)))
                      (let ((_%xhd115539%_ _%hd115463115534%_)
                            (_%xrest115541%_ _%tl115464115536%_))
                        (_%K115462115531%_ _%xrest115541%_ _%xhd115539%_)))
                    (_%try-match115458115497%_))))))))
    (define gx#stx-andmap
      (lambda (_%f115398%_ _%stx115399%_)
        (if (procedure? _%f115398%_)
            '#!void
            (error '"expected procedure" _%f115398%_))
        (let _%lp115401%_ ((_%rest115403%_ _%stx115399%_))
          (let* ((_%g115404115414%_ (gx#syntax-e _%rest115403%_))
                 (_%else115407115422%_
                  (lambda () (_%f115398%_ _%rest115403%_))))
            (let ((_%K115410115436%_
                   (lambda (_%rest115433%_ _%hd115434%_)
                     (if (_%f115398%_ _%hd115434%_)
                         (_%lp115401%_ _%rest115433%_)
                         '#f)))
                  (_%K115409115427%_ (lambda () '#t)))
              (let ((_%try-match115406115430%_
                     (lambda ()
                       (if (##null? _%g115404115414%_)
                           (_%K115409115427%_)
                           (_%else115407115422%_)))))
                (if (##pair? _%g115404115414%_)
                    (let ((_%tl115412115441%_ (##cdr _%g115404115414%_))
                          (_%hd115411115439%_ (##car _%g115404115414%_)))
                      (let ((_%hd115444%_ _%hd115411115439%_)
                            (_%rest115446%_ _%tl115412115441%_))
                        (_%K115410115436%_ _%rest115446%_ _%hd115444%_)))
                    (_%try-match115406115430%_))))))))
    (define gx#stx-ormap
      (lambda (_%f115345%_ _%stx115346%_)
        (if (procedure? _%f115345%_)
            '#!void
            (error '"expected procedure" _%f115345%_))
        (let _%lp115348%_ ((_%rest115350%_ _%stx115346%_))
          (let* ((_%g115351115361%_ (gx#syntax-e _%rest115350%_))
                 (_%else115354115369%_
                  (lambda () (_%f115345%_ _%rest115350%_))))
            (let ((_%K115357115386%_
                   (lambda (_%rest115380%_ _%hd115381%_)
                     (let ((_%$e115383%_ (_%f115345%_ _%hd115381%_)))
                       (if _%$e115383%_
                           _%$e115383%_
                           (_%lp115348%_ _%rest115380%_)))))
                  (_%K115356115374%_ (lambda () '#f)))
              (let ((_%try-match115353115377%_
                     (lambda ()
                       (if (##null? _%g115351115361%_)
                           (_%K115356115374%_)
                           (_%else115354115369%_)))))
                (if (##pair? _%g115351115361%_)
                    (let ((_%tl115359115391%_ (##cdr _%g115351115361%_))
                          (_%hd115358115389%_ (##car _%g115351115361%_)))
                      (let ((_%hd115394%_ _%hd115358115389%_)
                            (_%rest115396%_ _%tl115359115391%_))
                        (_%K115357115386%_ _%rest115396%_ _%hd115394%_)))
                    (_%try-match115353115377%_))))))))
    (define gx#stx-foldl
      (lambda (_%f115293%_ _%iv115294%_ _%stx115295%_)
        (if (procedure? _%f115293%_)
            '#!void
            (error '"expected procedure" _%f115293%_))
        (let _%lp115297%_ ((_%r115299%_ _%iv115294%_)
                           (_%rest115300%_ _%stx115295%_))
          (let* ((_%g115301115311%_ (gx#syntax-e _%rest115300%_))
                 (_%else115304115319%_
                  (lambda () (_%f115293%_ _%rest115300%_ _%r115299%_))))
            (let ((_%K115307115333%_
                   (lambda (_%rest115330%_ _%hd115331%_)
                     (_%lp115297%_
                      (_%f115293%_ _%hd115331%_ _%r115299%_)
                      _%rest115330%_)))
                  (_%K115306115324%_ (lambda () _%r115299%_)))
              (let ((_%try-match115303115327%_
                     (lambda ()
                       (if (##null? _%g115301115311%_)
                           (_%K115306115324%_)
                           (_%else115304115319%_)))))
                (if (##pair? _%g115301115311%_)
                    (let ((_%tl115309115338%_ (##cdr _%g115301115311%_))
                          (_%hd115308115336%_ (##car _%g115301115311%_)))
                      (let ((_%hd115341%_ _%hd115308115336%_)
                            (_%rest115343%_ _%tl115309115338%_))
                        (_%K115307115333%_ _%rest115343%_ _%hd115341%_)))
                    (_%try-match115303115327%_))))))))
    (define gx#stx-foldr
      (lambda (_%f115242%_ _%iv115243%_ _%stx115244%_)
        (if (procedure? _%f115242%_)
            '#!void
            (error '"expected procedure" _%f115242%_))
        (let _%recur115246%_ ((_%rest115248%_ _%stx115244%_))
          (let* ((_%g115249115259%_ (gx#syntax-e _%rest115248%_))
                 (_%else115252115267%_
                  (lambda () (_%f115242%_ _%rest115248%_ _%iv115243%_))))
            (let ((_%K115255115281%_
                   (lambda (_%rest115278%_ _%hd115279%_)
                     (_%f115242%_
                      _%hd115279%_
                      (_%recur115246%_ _%rest115278%_))))
                  (_%K115254115272%_ (lambda () _%iv115243%_)))
              (let ((_%try-match115251115275%_
                     (lambda ()
                       (if (##null? _%g115249115259%_)
                           (_%K115254115272%_)
                           (_%else115252115267%_)))))
                (if (##pair? _%g115249115259%_)
                    (let ((_%tl115257115286%_ (##cdr _%g115249115259%_))
                          (_%hd115256115284%_ (##car _%g115249115259%_)))
                      (let ((_%hd115289%_ _%hd115256115284%_)
                            (_%rest115291%_ _%tl115257115286%_))
                        (_%K115255115281%_ _%rest115291%_ _%hd115289%_)))
                    (_%try-match115251115275%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx115240%_) (gx#stx-foldl cons '() _%stx115240%_)))
    (define gx#stx-last
      (lambda (_%stx115201%_)
        (let _%lp115203%_ ((_%rest115205%_ _%stx115201%_))
          (let* ((_%g115206115214%_ (gx#syntax-e _%rest115205%_))
                 (_%else115208115222%_ (lambda () _%rest115205%_))
                 (_%K115210115228%_
                  (lambda (_%rest115225%_ _%hd115226%_)
                    (if (gx#stx-null? _%rest115225%_)
                        _%hd115226%_
                        (_%lp115203%_ _%rest115225%_)))))
            (if (##pair? _%g115206115214%_)
                (let ((_%hd115211115231%_ (##car _%g115206115214%_))
                      (_%tl115212115233%_ (##cdr _%g115206115214%_)))
                  (let* ((_%hd115236%_ _%hd115211115231%_)
                         (_%rest115238%_ _%tl115212115233%_))
                    (_%K115210115228%_ _%rest115238%_ _%hd115236%_)))
                (_%else115208115222%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx115172%_)
        (let _%lp115174%_ ((_%hd115176%_ _%stx115172%_))
          (let* ((_%g115177115184%_ (gx#syntax-e _%hd115176%_))
                 (_%E115179115188%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g115177115184%_
                           '([_ . rest]))
                    '#!void))
                 (_%K115180115193%_
                  (lambda (_%rest115191%_)
                    (if (gx#stx-pair? _%rest115191%_)
                        (_%lp115174%_ _%rest115191%_)
                        _%hd115176%_))))
            (if (##pair? _%g115177115184%_)
                (let* ((_%tl115182115196%_ (##cdr _%g115177115184%_))
                       (_%rest115199%_ _%tl115182115196%_))
                  (_%K115180115193%_ _%rest115199%_))
                (_%E115179115188%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx115141%_ _%k115142%_)
        (let _%lp115144%_ ((_%rest115146%_ _%stx115141%_)
                           (_%k115147%_ _%k115142%_))
          (if (fxpositive? _%k115147%_)
              (let* ((_%g115148115155%_ (gx#syntax-e _%rest115146%_))
                     (_%E115150115159%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g115148115155%_
                               '([_ . rest]))
                        '#!void))
                     (_%K115151115164%_
                      (lambda (_%rest115162%_)
                        (_%lp115144%_ _%rest115162%_ (##fx- _%k115147%_ '1)))))
                (if (##pair? _%g115148115155%_)
                    (let* ((_%tl115153115167%_ (##cdr _%g115148115155%_))
                           (_%rest115170%_ _%tl115153115167%_))
                      (_%K115151115164%_ _%rest115170%_))
                    (_%E115150115159%_)))
              _%rest115146%_))))
    (define gx#stx-list-ref
      (lambda (_%stx115138%_ _%k115139%_)
        (gx#stx-car (gx#stx-list-tail _%stx115138%_ _%k115139%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx115050%_ _%key?115051%_)
        (if (procedure? _%key?115051%_)
            '#!void
            (error '"expected procedure" _%key?115051%_))
        (let _%lp115053%_ ((_%rest115055%_ _%stx115050%_))
          (let* ((_%g115056115066%_ (gx#stx-e _%rest115055%_))
                 (_%else115059115074%_ (lambda () '#f)))
            (let ((_%K115062115116%_
                   (lambda (_%rest115085%_ _%hd115086%_)
                     (if (_%key?115051%_ _%hd115086%_)
                         (let* ((_%g115087115095%_ (gx#stx-e _%rest115085%_))
                                (_%else115089115103%_ (lambda () '#f))
                                (_%K115091115108%_
                                 (lambda (_%rest115106%_)
                                   (_%lp115053%_ _%rest115106%_))))
                           (if (##pair? _%g115087115095%_)
                               (let* ((_%tl115093115111%_
                                       (##cdr _%g115087115095%_))
                                      (_%rest115114%_ _%tl115093115111%_))
                                 (_%lp115053%_ _%rest115114%_))
                               (_%else115089115103%_)))
                         '#f)))
                  (_%K115061115079%_ (lambda () '#t)))
              (let ((_%try-match115058115082%_
                     (lambda ()
                       (if (##null? _%g115056115066%_)
                           (_%K115061115079%_)
                           (_%else115059115074%_)))))
                (if (##pair? _%g115056115066%_)
                    (let ((_%tl115064115121%_ (##cdr _%g115056115066%_))
                          (_%hd115063115119%_ (##car _%g115056115066%_)))
                      (let ((_%hd115124%_ _%hd115063115119%_)
                            (_%rest115126%_ _%tl115064115121%_))
                        (_%K115062115116%_ _%rest115126%_ _%hd115124%_)))
                    (_%try-match115058115082%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx115131%_)
        (let ((_%key?115133%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx115131%_ _%key?115133%_))))
    (define gx#stx-plist?
      (lambda _g116287_
        (let ((_g116286_ (##length _g116287_)))
          (cond ((##fx= _g116286_ 1) (apply gx#stx-plist?__0 _g116287_))
                ((##fx= _g116286_ 2) (apply gx#stx-plist?__% _g116287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g116287_))))))
    (define gx#stx-getq__%
      (lambda (_%key114968%_ _%stx114969%_ _%key=?114970%_)
        (if (procedure? _%key=?114970%_)
            '#!void
            (error '"expected procedure" _%key=?114970%_))
        (let _%lp114972%_ ((_%rest114974%_ _%stx114969%_))
          (let* ((_%g114975114983%_ (gx#syntax-e _%rest114974%_))
                 (_%else114977114991%_ (lambda () '#f))
                 (_%K114979115025%_
                  (lambda (_%rest114994%_ _%hd114995%_)
                    (let* ((_%g114996115003%_ (gx#syntax-e _%rest114994%_))
                           (_%E114998115007%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g114996115003%_
                                     '([val . rest]))
                              '#!void))
                           (_%K114999115013%_
                            (lambda (_%rest115010%_ _%val115011%_)
                              (if (_%key=?114970%_ _%hd114995%_ _%key114968%_)
                                  _%val115011%_
                                  (_%lp114972%_ _%rest115010%_)))))
                      (if (##pair? _%g114996115003%_)
                          (let ((_%hd115000115016%_ (##car _%g114996115003%_))
                                (_%tl115001115018%_ (##cdr _%g114996115003%_)))
                            (let* ((_%val115021%_ _%hd115000115016%_)
                                   (_%rest115023%_ _%tl115001115018%_))
                              (_%K114999115013%_
                               _%rest115023%_
                               _%val115021%_)))
                          (_%E114998115007%_))))))
            (if (##pair? _%g114975114983%_)
                (let ((_%hd114980115028%_ (##car _%g114975114983%_))
                      (_%tl114981115030%_ (##cdr _%g114975114983%_)))
                  (let* ((_%hd115033%_ _%hd114980115028%_)
                         (_%rest115035%_ _%tl114981115030%_))
                    (_%K114979115025%_ _%rest115035%_ _%hd115033%_)))
                (_%else114977114991%_))))))
    (define gx#stx-getq__0
      (lambda (_%key115040%_ _%stx115041%_)
        (let ((_%key=?115043%_ gx#stx-eq?))
          (gx#stx-getq__% _%key115040%_ _%stx115041%_ _%key=?115043%_))))
    (define gx#stx-getq
      (lambda _g116289_
        (let ((_g116288_ (##length _g116289_)))
          (cond ((##fx= _g116288_ 2) (apply gx#stx-getq__0 _g116289_))
                ((##fx= _g116288_ 3) (apply gx#stx-getq__% _g116289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g116289_))))))))
