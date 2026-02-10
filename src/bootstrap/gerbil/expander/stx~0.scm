(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1770752336)
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
      (lambda _%$args171364%_
        (apply make-instance gx#identifier-wrap::t _%$args171364%_)))
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
      (lambda _%$args171361%_
        (apply make-instance gx#syntax-wrap::t _%$args171361%_)))
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
      (lambda _%$args171358%_
        (apply make-instance gx#syntax-quote::t _%$args171358%_)))
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
      (lambda (_%stx171356%_) (symbol? (gx#stx-e _%stx171356%_))))
    (define gx#identifier-quote?
      (lambda (_%stx171354%_)
        (if (##structure-direct-instance-of? _%stx171354%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx171354%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx171349%_)
        (if (##structure-direct-instance-of? _%stx171349%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx171349%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx171349%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx171344%_)
        (if (##structure-direct-instance-of? _%stx171344%_ 'gx#syntax-quote::t)
            _%stx171344%_
            (if (##structure-direct-instance-of?
                 _%stx171344%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx171344%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx171318%_)
        (if (##structure-direct-instance-of? _%stx171318%_ 'gx#syntax-wrap::t)
            (let _%lp171321%_ ((_%e171323%_
                                (##unchecked-structure-ref
                                 _%stx171318%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks171324%_
                                (cons (##unchecked-structure-ref
                                       _%stx171318%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e171323%_)
                  (let ((_%$e171327%_
                         (##type-id (##structure-type _%e171323%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e171327%_)
                        (_%lp171321%_
                         (##unchecked-structure-ref _%e171323%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e171323%_ '3 '#f '#f)
                          _%marks171324%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e171327%_)
                                (eq? 'gx#identifier-wrap::t _%$e171327%_))
                            (##unchecked-structure-ref _%e171323%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e171327%_)
                                (_%lp171321%_
                                 (##unchecked-structure-ref
                                  _%e171323%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks171324%_)
                                _%e171323%_))))
                  (if (null? _%marks171324%_)
                      _%e171323%_
                      (if (pair? _%e171323%_)
                          (cons (gx#stx-wrap
                                 (##car _%e171323%_)
                                 _%marks171324%_)
                                (gx#stx-wrap
                                 (##cdr _%e171323%_)
                                 _%marks171324%_))
                          (if (vector? _%e171323%_)
                              (vector-map
                               (lambda (_%g171335171337%_)
                                 (gx#stx-wrap
                                  _%g171335171337%_
                                  _%marks171324%_))
                               _%e171323%_)
                              (if (box? _%e171323%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e171323%_)
                                        _%marks171324%_))
                                  _%e171323%_))))))
            (if (##structure-instance-of? _%stx171318%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx171318%_ '1 '#f '#f)
                _%stx171318%_))))
    (define gx#syntax->datum
      (lambda (_%stx171311%_)
        (if (##structure-instance-of? _%stx171311%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx171311%_ '1 '#f '#f))
            (if (pair? _%stx171311%_)
                (cons (gx#syntax->datum (##car _%stx171311%_))
                      (gx#syntax->datum (##cdr _%stx171311%_)))
                (if (vector? _%stx171311%_)
                    (vector-map gx#syntax->datum _%stx171311%_)
                    (if (box? _%stx171311%_)
                        (box (gx#syntax->datum (unbox _%stx171311%_)))
                        _%stx171311%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx171245%_ _%datum171246%_ _%src171247%_ _%quote?171248%_)
        (letrec ((_%wrap-datum171250%_
                  (lambda (_%e171283%_ _%marks171284%_)
                    (_%wrap-inner171252%_
                     _%e171283%_
                     (lambda (_%g171285171287%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g171285171287%_
                        _%src171247%_
                        _%marks171284%_)))))
                 (_%wrap-quote171251%_
                  (lambda (_%e171275%_ _%ctx171276%_ _%marks171277%_)
                    (_%wrap-inner171252%_
                     _%e171275%_
                     (lambda (_%g171278171280%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g171278171280%_
                        _%src171247%_
                        _%ctx171276%_
                        _%marks171277%_)))))
                 (_%wrap-inner171252%_
                  (lambda (_%e171263%_ _%wrap-e171264%_)
                    (let _%recur171266%_ ((_%e171268%_ _%e171263%_))
                      (if (symbol? _%e171268%_)
                          (_%wrap-e171264%_ _%e171268%_)
                          (if (pair? _%e171268%_)
                              (cons (_%recur171266%_ (##car _%e171268%_))
                                    (_%recur171266%_ (##cdr _%e171268%_)))
                              (if (vector? _%e171268%_)
                                  (vector-map _%recur171266%_ _%e171268%_)
                                  (if (box? _%e171268%_)
                                      (box (_%recur171266%_
                                            (unbox _%e171268%_)))
                                      _%e171268%_)))))))
                 (_%wrap-outer171253%_
                  (lambda (_%e171261%_)
                    (if (##structure-instance-of? _%e171261%_ 'gerbil#AST::t)
                        _%e171261%_
                        (##structure gx#AST::t _%e171261%_ _%src171247%_)))))
          (if (##structure-instance-of? _%datum171246%_ 'gerbil#AST::t)
              _%datum171246%_
              (if (not _%stx171245%_)
                  (##structure gx#AST::t _%datum171246%_ _%src171247%_)
                  (if (gx#identifier? _%stx171245%_)
                      (let ((_%stx171258%_ (gx#stx-unwrap__0 _%stx171245%_)))
                        (_%wrap-outer171253%_
                         (if (##structure-direct-instance-of?
                              _%stx171258%_
                              'gx#syntax-quote::t)
                             (if _%quote?171248%_
                                 (_%wrap-quote171251%_
                                  _%datum171246%_
                                  (##unchecked-structure-ref
                                   _%stx171258%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx171258%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum171250%_
                                  _%datum171246%_
                                  (##unchecked-structure-ref
                                   _%stx171258%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum171250%_
                              _%datum171246%_
                              (##unchecked-structure-ref
                               _%stx171258%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx171245%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx171293%_ _%datum171294%_)
        (let* ((_%src171296%_ '#f) (_%quote?171298%_ '#t))
          (gx#datum->syntax__%
           _%stx171293%_
           _%datum171294%_
           _%src171296%_
           _%quote?171298%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx171300%_ _%datum171301%_ _%src171302%_)
        (let ((_%quote?171304%_ '#t))
          (gx#datum->syntax__%
           _%stx171300%_
           _%datum171301%_
           _%src171302%_
           _%quote?171304%_))))
    (define gx#datum->syntax
      (lambda _g171444_
        (let ((_g171445_ (##length _g171444_)))
          (cond ((##fx= _g171445_ 2) (apply gx#datum->syntax__0 _g171444_))
                ((##fx= _g171445_ 3) (apply gx#datum->syntax__1 _g171444_))
                ((##fx= _g171445_ 4) (apply gx#datum->syntax__% _g171444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g171444_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx171211%_ _%marks171212%_)
        (let _%lp171214%_ ((_%e171216%_ _%stx171211%_)
                           (_%marks171217%_ _%marks171212%_)
                           (_%src171218%_ (gx#stx-source _%stx171211%_)))
          (if (##structure-direct-instance-of? _%e171216%_ 'gx#syntax-wrap::t)
              (_%lp171214%_
               (##unchecked-structure-ref _%e171216%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e171216%_ '3 '#f '#f)
                _%marks171217%_)
               (##unchecked-structure-ref _%e171216%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e171216%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks171217%_)
                      _%e171216%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e171216%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e171216%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e171216%_ '3 '#f '#f)
                        _%marks171217%_)))
                  (if (##structure-direct-instance-of?
                       _%e171216%_
                       'gx#syntax-quote::t)
                      _%e171216%_
                      (if (##structure-instance-of? _%e171216%_ 'gerbil#AST::t)
                          (_%lp171214%_
                           (##unchecked-structure-ref _%e171216%_ '1 '#f '#f)
                           _%marks171217%_
                           (##unchecked-structure-ref _%e171216%_ '2 '#f '#f))
                          (if (symbol? _%e171216%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e171216%_
                               _%src171218%_
                               (reverse _%marks171217%_))
                              (if (null? _%marks171217%_)
                                  _%e171216%_
                                  (if (pair? _%e171216%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e171216%_)
                                             _%marks171217%_)
                                            (gx#stx-wrap
                                             (##cdr _%e171216%_)
                                             _%marks171217%_))
                                      (if (vector? _%e171216%_)
                                          (vector-map
                                           (lambda (_%g171227171229%_)
                                             (gx#stx-wrap
                                              _%g171227171229%_
                                              _%marks171217%_))
                                           _%e171216%_)
                                          (if (box? _%e171216%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e171216%_)
                                                    _%marks171217%_))
                                              _%e171216%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx171237%_)
        (let ((_%marks171239%_ '()))
          (gx#stx-unwrap__% _%stx171237%_ _%marks171239%_))))
    (define gx#stx-unwrap
      (lambda _g171446_
        (let ((_g171447_ (##length _g171446_)))
          (cond ((##fx= _g171447_ 1) (apply gx#stx-unwrap__0 _g171446_))
                ((##fx= _g171447_ 2) (apply gx#stx-unwrap__% _g171446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g171446_))))))
    (define gx#stx-wrap
      (lambda (_%stx171204%_ _%marks171205%_)
        (foldl__0
         (lambda (_%mark171207%_ _%stx171208%_)
           (gx#stx-apply-mark _%stx171208%_ _%mark171207%_))
         _%stx171204%_
         _%marks171205%_)))
    (define gx#stx-rewrap
      (lambda (_%stx171198%_ _%marks171199%_)
        (foldr__0
         (lambda (_%mark171201%_ _%stx171202%_)
           (gx#stx-apply-mark _%stx171202%_ _%mark171201%_))
         _%stx171198%_
         _%marks171199%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx171192%_ _%mark171193%_)
        (if (##structure-direct-instance-of? _%stx171192%_ 'gx#syntax-quote::t)
            _%stx171192%_
            (if (and (##structure-direct-instance-of?
                      _%stx171192%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark171193%_
                          (##unchecked-structure-ref
                           _%stx171192%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx171192%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx171192%_
                 (gx#stx-source _%stx171192%_)
                 _%mark171193%_)))))
    (define gx#apply-mark
      (lambda (_%mark171156%_ _%marks171157%_)
        (let* ((_%marks171158171166%_ _%marks171157%_)
               (_%else171160171174%_
                (lambda () (cons _%mark171156%_ _%marks171157%_)))
               (_%K171162171180%_
                (lambda (_%rest171177%_ _%hd171178%_)
                  (if (eq? _%mark171156%_ _%hd171178%_)
                      _%rest171177%_
                      (cons _%mark171156%_ _%marks171157%_)))))
          (if (pair? _%marks171158171166%_)
              (let ((_%hd171163171183%_ (##car _%marks171158171166%_))
                    (_%tl171164171185%_ (##cdr _%marks171158171166%_)))
                (let* ((_%hd171188%_ _%hd171163171183%_)
                       (_%rest171190%_ _%tl171164171185%_))
                  (_%K171162171180%_ _%rest171190%_ _%hd171188%_)))
              (_%else171160171174%_)))))
    (define gx#stx-e
      (lambda (_%stx171151%_)
        (if (##structure-direct-instance-of? _%stx171151%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx171151%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx171151%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx171151%_ '1 '#f '#f)
                _%stx171151%_))))
    (define gx#stx-source
      (lambda (_%stx171149%_)
        (if (##structure-instance-of? _%stx171149%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx171149%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx171143%_ _%src171144%_)
        (if (or (##structure-instance-of? _%stx171143%_ 'gerbil#AST::t)
                (not _%src171144%_))
            _%stx171143%_
            (##structure gx#AST::t _%stx171143%_ _%src171144%_))))
    (define gx#stx-datum?
      (lambda (_%stx171141%_) (gx#self-quoting? (gx#stx-e _%stx171141%_))))
    (define gx#self-quoting?
      (lambda (_%x171124%_)
        (let ((_%$e171126%_ (immediate? _%x171124%_)))
          (if _%$e171126%_
              _%$e171126%_
              (let ((_%$e171129%_ (number? _%x171124%_)))
                (if _%$e171129%_
                    _%$e171129%_
                    (let ((_%$e171132%_ (keyword? _%x171124%_)))
                      (if _%$e171132%_
                          _%$e171132%_
                          (let ((_%$e171135%_ (string? _%x171124%_)))
                            (if _%$e171135%_
                                _%$e171135%_
                                (let ((_%$e171138%_ (vector? _%x171124%_)))
                                  (if _%$e171138%_
                                      _%$e171138%_
                                      (u8vector? _%x171124%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e171122%_) (boolean? (gx#stx-e _%e171122%_))))
    (define gx#stx-keyword?
      (lambda (_%e171120%_) (keyword? (gx#stx-e _%e171120%_))))
    (define gx#stx-char? (lambda (_%e171118%_) (char? (gx#stx-e _%e171118%_))))
    (define gx#stx-number?
      (lambda (_%e171116%_) (number? (gx#stx-e _%e171116%_))))
    (define gx#stx-fixnum?
      (lambda (_%e171114%_) (fixnum? (gx#stx-e _%e171114%_))))
    (define gx#stx-string?
      (lambda (_%e171112%_) (string? (gx#stx-e _%e171112%_))))
    (define gx#stx-null? (lambda (_%e171110%_) (null? (gx#stx-e _%e171110%_))))
    (define gx#stx-pair? (lambda (_%e171108%_) (pair? (gx#stx-e _%e171108%_))))
    (define gx#stx-list?
      (lambda (_%e171070%_)
        (let* ((_%g171071171080%_ (gx#stx-e _%e171070%_))
               (_%E171074171084%_
                (lambda ()
                  (error '"No clause matching"
                         _%g171071171080%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K171076171100%_
                 (lambda (_%rest171098%_) (gx#stx-list? _%rest171098%_)))
                (_%K171075171090%_
                 (lambda (_%tail171088%_) (null? _%tail171088%_))))
            (if (pair? _%g171071171080%_)
                (let* ((_%tl171078171103%_ (##cdr _%g171071171080%_))
                       (_%rest171106%_ _%tl171078171103%_))
                  (gx#stx-list? _%rest171106%_))
                (let ((_%tail171093%_ _%g171071171080%_))
                  (null? _%tail171093%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e171063%_)
        (let* ((_%e171065%_ (gx#stx-e _%e171063%_))
               (_%$e171067%_ (pair? _%e171065%_)))
          (if _%$e171067%_ _%$e171067%_ (null? _%e171065%_)))))
    (define gx#stx-vector?
      (lambda (_%e171061%_) (vector? (gx#stx-e _%e171061%_))))
    (define gx#stx-box? (lambda (_%e171059%_) (box? (gx#stx-e _%e171059%_))))
    (define gx#stx-eq?
      (lambda (_%x171056%_ _%y171057%_)
        (eq? (gx#stx-e _%x171056%_) (gx#stx-e _%y171057%_))))
    (define gx#stx-eqv?
      (lambda (_%x171053%_ _%y171054%_)
        (eqv? (gx#stx-e _%x171053%_) (gx#stx-e _%y171054%_))))
    (define gx#stx-equal?
      (lambda (_%x171050%_ _%y171051%_)
        (equal? (gx#stx-e _%x171050%_) (gx#stx-e _%y171051%_))))
    (define gx#stx-false? (lambda (_%x171048%_) (not (gx#stx-e _%x171048%_))))
    (define gx#stx-identifier
      (lambda (_%template171045%_ . _%args171046%_)
        (gx#datum->syntax__1
         _%template171045%_
         (apply make-symbol (gx#syntax->datum _%args171046%_))
         (gx#stx-source _%template171045%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx171043%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx171043%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx171038%_)
        (if (##structure-direct-instance-of?
             _%stx171038%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx171038%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx171038%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx171038%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx171038%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx171034%_)
        (let ((_%stx171036%_ (gx#stx-unwrap__0 _%stx171034%_)))
          (if (gx#identifier-quote? _%stx171036%_)
              (##unchecked-structure-ref _%stx171036%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx170989%_)
        (let* ((_%g170990171000%_ (gx#stx-e _%stx170989%_))
               (_%else170993171008%_ (lambda () '#f)))
          (let ((_%K170996171022%_
                 (lambda (_%rest171019%_ _%hd171020%_)
                   (if (gx#identifier? _%hd171020%_)
                       (gx#identifier-list? _%rest171019%_)
                       '#f)))
                (_%K170995171013%_ (lambda () '#t)))
            (let ((_%try-match170992171016%_
                   (lambda ()
                     (if (null? _%g170990171000%_)
                         (_%K170995171013%_)
                         (_%else170993171008%_)))))
              (if (pair? _%g170990171000%_)
                  (let ((_%tl170998171027%_ (##cdr _%g170990171000%_))
                        (_%hd170997171025%_ (##car _%g170990171000%_)))
                    (let ((_%hd171030%_ _%hd170997171025%_)
                          (_%rest171032%_ _%tl170998171027%_))
                      (_%K170996171022%_ _%rest171032%_ _%hd171030%_)))
                  (_%try-match170992171016%_)))))))
    (define gx#genident__%
      (lambda (_%e170969%_ _%src170970%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src170970%_) _%src170970%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e170972%_ (gx#stx-e _%e170969%_)))
              (if (symbol? _%e170972%_) _%e170972%_ 'g)))))
         _%src170970%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e170978%_ 'g) (_%src170980%_ '#f))
          (gx#genident__% _%e170978%_ _%src170980%_))))
    (define gx#genident__1
      (lambda (_%e170982%_)
        (let ((_%src170984%_ '#f))
          (gx#genident__% _%e170982%_ _%src170984%_))))
    (define gx#genident
      (lambda _g171448_
        (let ((_g171449_ (##length _g171448_)))
          (cond ((##fx= _g171449_ 0) (apply gx#genident__0 _g171448_))
                ((##fx= _g171449_ 1) (apply gx#genident__1 _g171448_))
                ((##fx= _g171449_ 2) (apply gx#genident__% _g171448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g171448_))))))
    (define gx#gentemps
      (lambda (_%stx-lst170964%_)
        (gx#stx-map1
         (lambda (_%x170966%_) (gx#genident__% _%x170966%_ _%x170966%_))
         _%stx-lst170964%_)))
    (define gx#syntax->list
      (lambda (_%stx170962%_) (gx#stx-map1 values _%stx170962%_)))
    (define gx#stx-car
      (lambda (_%stx170959%_)
        (declare (safe))
        (car (gx#syntax-e _%stx170959%_))))
    (define gx#stx-cdr
      (lambda (_%stx170956%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx170956%_))))
    (define gx#stx-length
      (lambda (_%stx170921%_)
        (let _%lp170923%_ ((_%rest170925%_ _%stx170921%_) (_%n170926%_ '0))
          (let* ((_%g170927170935%_ (gx#stx-e _%rest170925%_))
                 (_%else170929170943%_ (lambda () _%n170926%_))
                 (_%K170931170948%_
                  (lambda (_%rest170946%_)
                    (_%lp170923%_ _%rest170946%_ (##fx+ _%n170926%_ '1)))))
            (if (pair? _%g170927170935%_)
                (let* ((_%tl170933170951%_ (##cdr _%g170927170935%_))
                       (_%rest170954%_ _%tl170933170951%_))
                  (_%K170931170948%_ _%rest170954%_))
                (_%else170929170943%_))))))
    (define gx#stx-for-each
      (lambda _g171450_
        (let ((_g171451_ (##length _g171450_)))
          (cond ((##fx= _g171451_ 2) (apply gx#stx-for-each1 _g171450_))
                ((##fx= _g171451_ 3) (apply gx#stx-for-each2 _g171450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g171450_))))))
    (define gx#stx-for-each1
      (lambda (_%f170864%_ _%stx170865%_)
        (if (procedure? _%f170864%_)
            '#!void
            (error '"expected procedure" _%f170864%_))
        (let _%lp170867%_ ((_%rest170869%_ _%stx170865%_))
          (let* ((_%g170870170880%_ (gx#syntax-e _%rest170869%_))
                 (_%else170873170888%_
                  (lambda () (_%f170864%_ _%rest170869%_))))
            (let ((_%K170876170902%_
                   (lambda (_%rest170899%_ _%hd170900%_)
                     (_%f170864%_ _%hd170900%_)
                     (_%lp170867%_ _%rest170899%_)))
                  (_%K170875170893%_ (lambda () '#!void)))
              (let ((_%try-match170872170896%_
                     (lambda ()
                       (if (null? _%g170870170880%_)
                           (_%K170875170893%_)
                           (_%else170873170888%_)))))
                (if (pair? _%g170870170880%_)
                    (let ((_%tl170878170907%_ (##cdr _%g170870170880%_))
                          (_%hd170877170905%_ (##car _%g170870170880%_)))
                      (let ((_%hd170910%_ _%hd170877170905%_)
                            (_%rest170912%_ _%tl170878170907%_))
                        (_%K170876170902%_ _%rest170912%_ _%hd170910%_)))
                    (_%try-match170872170896%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f170769%_ _%xstx170770%_ _%ystx170771%_)
        (if (procedure? _%f170769%_)
            '#!void
            (error '"expected procedure" _%f170769%_))
        (let _%lp170773%_ ((_%xrest170775%_ _%xstx170770%_)
                           (_%yrest170776%_ _%ystx170771%_))
          (let* ((_%g170777170787%_ (gx#syntax-e _%xrest170775%_))
                 (_%else170780170795%_ (lambda () '#!void)))
            (let ((_%K170783170852%_
                   (lambda (_%xrest170821%_ _%xhd170822%_)
                     (let* ((_%g170823170830%_ (gx#syntax-e _%yrest170776%_))
                            (_%E170825170834%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g170823170830%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K170826170840%_
                             (lambda (_%yrest170837%_ _%yhd170838%_)
                               (_%f170769%_ _%xhd170822%_ _%yhd170838%_)
                               (_%lp170773%_
                                _%xrest170821%_
                                _%yrest170837%_))))
                       (if (pair? _%g170823170830%_)
                           (let ((_%hd170827170843%_ (##car _%g170823170830%_))
                                 (_%tl170828170845%_
                                  (##cdr _%g170823170830%_)))
                             (let* ((_%yhd170848%_ _%hd170827170843%_)
                                    (_%yrest170850%_ _%tl170828170845%_))
                               (_%K170826170840%_
                                _%yrest170850%_
                                _%yhd170848%_)))
                           (_%E170825170834%_)))))
                  (_%K170782170815%_
                   (lambda ()
                     (let* ((_%yrest170799170804%_ _%yrest170776%_)
                            (_%E170801170808%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest170799170804%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K170802170812%_
                             (lambda ()
                               (_%f170769%_ _%xrest170775%_ _%yrest170776%_))))
                       (if (gx#stx-null? _%yrest170799170804%_)
                           (_%E170801170808%_)
                           (_%K170802170812%_))))))
              (let ((_%try-match170779170818%_
                     (lambda ()
                       (if (null? _%g170777170787%_)
                           (_%else170780170795%_)
                           (_%K170782170815%_)))))
                (if (pair? _%g170777170787%_)
                    (let ((_%tl170785170857%_ (##cdr _%g170777170787%_))
                          (_%hd170784170855%_ (##car _%g170777170787%_)))
                      (let ((_%xhd170860%_ _%hd170784170855%_)
                            (_%xrest170862%_ _%tl170785170857%_))
                        (_%K170783170852%_ _%xrest170862%_ _%xhd170860%_)))
                    (_%try-match170779170818%_))))))))
    (define gx#stx-map
      (lambda _g171452_
        (let ((_g171453_ (##length _g171452_)))
          (cond ((##fx= _g171453_ 2) (apply gx#stx-map1 _g171452_))
                ((##fx= _g171453_ 3) (apply gx#stx-map2 _g171452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g171452_))))))
    (define gx#stx-map1
      (lambda (_%f170712%_ _%stx170713%_)
        (if (procedure? _%f170712%_)
            '#!void
            (error '"expected procedure" _%f170712%_))
        (let _%recur170715%_ ((_%rest170717%_ _%stx170713%_))
          (let* ((_%g170718170728%_ (gx#syntax-e _%rest170717%_))
                 (_%else170721170736%_
                  (lambda () (_%f170712%_ _%rest170717%_))))
            (let ((_%K170724170750%_
                   (lambda (_%rest170747%_ _%hd170748%_)
                     (cons (_%f170712%_ _%hd170748%_)
                           (_%recur170715%_ _%rest170747%_))))
                  (_%K170723170741%_ (lambda () '())))
              (let ((_%try-match170720170744%_
                     (lambda ()
                       (if (null? _%g170718170728%_)
                           (_%K170723170741%_)
                           (_%else170721170736%_)))))
                (if (pair? _%g170718170728%_)
                    (let ((_%tl170726170755%_ (##cdr _%g170718170728%_))
                          (_%hd170725170753%_ (##car _%g170718170728%_)))
                      (let ((_%hd170758%_ _%hd170725170753%_)
                            (_%rest170760%_ _%tl170726170755%_))
                        (_%K170724170750%_ _%rest170760%_ _%hd170758%_)))
                    (_%try-match170720170744%_))))))))
    (define gx#stx-map2
      (lambda (_%f170617%_ _%xstx170618%_ _%ystx170619%_)
        (if (procedure? _%f170617%_)
            '#!void
            (error '"expected procedure" _%f170617%_))
        (let _%recur170621%_ ((_%xrest170623%_ _%xstx170618%_)
                              (_%yrest170624%_ _%ystx170619%_))
          (let* ((_%g170625170635%_ (gx#syntax-e _%xrest170623%_))
                 (_%else170628170643%_ (lambda () '())))
            (let ((_%K170631170700%_
                   (lambda (_%xrest170669%_ _%xhd170670%_)
                     (let* ((_%g170671170678%_ (gx#syntax-e _%yrest170624%_))
                            (_%E170673170682%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g170671170678%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K170674170688%_
                             (lambda (_%yrest170685%_ _%yhd170686%_)
                               (cons (_%f170617%_ _%xhd170670%_ _%yhd170686%_)
                                     (_%recur170621%_
                                      _%xrest170669%_
                                      _%yrest170685%_)))))
                       (if (pair? _%g170671170678%_)
                           (let ((_%hd170675170691%_ (##car _%g170671170678%_))
                                 (_%tl170676170693%_
                                  (##cdr _%g170671170678%_)))
                             (let* ((_%yhd170696%_ _%hd170675170691%_)
                                    (_%yrest170698%_ _%tl170676170693%_))
                               (_%K170674170688%_
                                _%yrest170698%_
                                _%yhd170696%_)))
                           (_%E170673170682%_)))))
                  (_%K170630170663%_
                   (lambda ()
                     (let* ((_%yrest170647170652%_ _%yrest170624%_)
                            (_%E170649170656%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest170647170652%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K170650170660%_
                             (lambda ()
                               (_%f170617%_ _%xrest170623%_ _%yrest170624%_))))
                       (if (gx#stx-null? _%yrest170647170652%_)
                           (_%E170649170656%_)
                           (_%K170650170660%_))))))
              (let ((_%try-match170627170666%_
                     (lambda ()
                       (if (null? _%g170625170635%_)
                           (_%else170628170643%_)
                           (_%K170630170663%_)))))
                (if (pair? _%g170625170635%_)
                    (let ((_%tl170633170705%_ (##cdr _%g170625170635%_))
                          (_%hd170632170703%_ (##car _%g170625170635%_)))
                      (let ((_%xhd170708%_ _%hd170632170703%_)
                            (_%xrest170710%_ _%tl170633170705%_))
                        (_%K170631170700%_ _%xrest170710%_ _%xhd170708%_)))
                    (_%try-match170627170666%_))))))))
    (define gx#stx-andmap
      (lambda (_%f170567%_ _%stx170568%_)
        (if (procedure? _%f170567%_)
            '#!void
            (error '"expected procedure" _%f170567%_))
        (let _%lp170570%_ ((_%rest170572%_ _%stx170568%_))
          (let* ((_%g170573170583%_ (gx#syntax-e _%rest170572%_))
                 (_%else170576170591%_
                  (lambda () (_%f170567%_ _%rest170572%_))))
            (let ((_%K170579170605%_
                   (lambda (_%rest170602%_ _%hd170603%_)
                     (if (_%f170567%_ _%hd170603%_)
                         (_%lp170570%_ _%rest170602%_)
                         '#f)))
                  (_%K170578170596%_ (lambda () '#t)))
              (let ((_%try-match170575170599%_
                     (lambda ()
                       (if (null? _%g170573170583%_)
                           (_%K170578170596%_)
                           (_%else170576170591%_)))))
                (if (pair? _%g170573170583%_)
                    (let ((_%tl170581170610%_ (##cdr _%g170573170583%_))
                          (_%hd170580170608%_ (##car _%g170573170583%_)))
                      (let ((_%hd170613%_ _%hd170580170608%_)
                            (_%rest170615%_ _%tl170581170610%_))
                        (_%K170579170605%_ _%rest170615%_ _%hd170613%_)))
                    (_%try-match170575170599%_))))))))
    (define gx#stx-ormap
      (lambda (_%f170514%_ _%stx170515%_)
        (if (procedure? _%f170514%_)
            '#!void
            (error '"expected procedure" _%f170514%_))
        (let _%lp170517%_ ((_%rest170519%_ _%stx170515%_))
          (let* ((_%g170520170530%_ (gx#syntax-e _%rest170519%_))
                 (_%else170523170538%_
                  (lambda () (_%f170514%_ _%rest170519%_))))
            (let ((_%K170526170555%_
                   (lambda (_%rest170549%_ _%hd170550%_)
                     (let ((_%$e170552%_ (_%f170514%_ _%hd170550%_)))
                       (if _%$e170552%_
                           _%$e170552%_
                           (_%lp170517%_ _%rest170549%_)))))
                  (_%K170525170543%_ (lambda () '#f)))
              (let ((_%try-match170522170546%_
                     (lambda ()
                       (if (null? _%g170520170530%_)
                           (_%K170525170543%_)
                           (_%else170523170538%_)))))
                (if (pair? _%g170520170530%_)
                    (let ((_%tl170528170560%_ (##cdr _%g170520170530%_))
                          (_%hd170527170558%_ (##car _%g170520170530%_)))
                      (let ((_%hd170563%_ _%hd170527170558%_)
                            (_%rest170565%_ _%tl170528170560%_))
                        (_%K170526170555%_ _%rest170565%_ _%hd170563%_)))
                    (_%try-match170522170546%_))))))))
    (define gx#stx-foldl
      (lambda (_%f170462%_ _%iv170463%_ _%stx170464%_)
        (if (procedure? _%f170462%_)
            '#!void
            (error '"expected procedure" _%f170462%_))
        (let _%lp170466%_ ((_%r170468%_ _%iv170463%_)
                           (_%rest170469%_ _%stx170464%_))
          (let* ((_%g170470170480%_ (gx#syntax-e _%rest170469%_))
                 (_%else170473170488%_
                  (lambda () (_%f170462%_ _%rest170469%_ _%r170468%_))))
            (let ((_%K170476170502%_
                   (lambda (_%rest170499%_ _%hd170500%_)
                     (_%lp170466%_
                      (_%f170462%_ _%hd170500%_ _%r170468%_)
                      _%rest170499%_)))
                  (_%K170475170493%_ (lambda () _%r170468%_)))
              (let ((_%try-match170472170496%_
                     (lambda ()
                       (if (null? _%g170470170480%_)
                           (_%K170475170493%_)
                           (_%else170473170488%_)))))
                (if (pair? _%g170470170480%_)
                    (let ((_%tl170478170507%_ (##cdr _%g170470170480%_))
                          (_%hd170477170505%_ (##car _%g170470170480%_)))
                      (let ((_%hd170510%_ _%hd170477170505%_)
                            (_%rest170512%_ _%tl170478170507%_))
                        (_%K170476170502%_ _%rest170512%_ _%hd170510%_)))
                    (_%try-match170472170496%_))))))))
    (define gx#stx-foldr
      (lambda (_%f170411%_ _%iv170412%_ _%stx170413%_)
        (if (procedure? _%f170411%_)
            '#!void
            (error '"expected procedure" _%f170411%_))
        (let _%recur170415%_ ((_%rest170417%_ _%stx170413%_))
          (let* ((_%g170418170428%_ (gx#syntax-e _%rest170417%_))
                 (_%else170421170436%_
                  (lambda () (_%f170411%_ _%rest170417%_ _%iv170412%_))))
            (let ((_%K170424170450%_
                   (lambda (_%rest170447%_ _%hd170448%_)
                     (_%f170411%_
                      _%hd170448%_
                      (_%recur170415%_ _%rest170447%_))))
                  (_%K170423170441%_ (lambda () _%iv170412%_)))
              (let ((_%try-match170420170444%_
                     (lambda ()
                       (if (null? _%g170418170428%_)
                           (_%K170423170441%_)
                           (_%else170421170436%_)))))
                (if (pair? _%g170418170428%_)
                    (let ((_%tl170426170455%_ (##cdr _%g170418170428%_))
                          (_%hd170425170453%_ (##car _%g170418170428%_)))
                      (let ((_%hd170458%_ _%hd170425170453%_)
                            (_%rest170460%_ _%tl170426170455%_))
                        (_%K170424170450%_ _%rest170460%_ _%hd170458%_)))
                    (_%try-match170420170444%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx170409%_) (gx#stx-foldl cons '() _%stx170409%_)))
    (define gx#stx-last
      (lambda (_%stx170370%_)
        (let _%lp170372%_ ((_%rest170374%_ _%stx170370%_))
          (let* ((_%g170375170383%_ (gx#syntax-e _%rest170374%_))
                 (_%else170377170391%_ (lambda () _%rest170374%_))
                 (_%K170379170397%_
                  (lambda (_%rest170394%_ _%hd170395%_)
                    (if (gx#stx-null? _%rest170394%_)
                        _%hd170395%_
                        (_%lp170372%_ _%rest170394%_)))))
            (if (pair? _%g170375170383%_)
                (let ((_%hd170380170400%_ (##car _%g170375170383%_))
                      (_%tl170381170402%_ (##cdr _%g170375170383%_)))
                  (let* ((_%hd170405%_ _%hd170380170400%_)
                         (_%rest170407%_ _%tl170381170402%_))
                    (_%K170379170397%_ _%rest170407%_ _%hd170405%_)))
                (_%else170377170391%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx170341%_)
        (let _%lp170343%_ ((_%hd170345%_ _%stx170341%_))
          (let* ((_%g170346170353%_ (gx#syntax-e _%hd170345%_))
                 (_%E170348170357%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g170346170353%_
                           '([_ . rest]))
                    '#!void))
                 (_%K170349170362%_
                  (lambda (_%rest170360%_)
                    (if (gx#stx-pair? _%rest170360%_)
                        (_%lp170343%_ _%rest170360%_)
                        _%hd170345%_))))
            (if (pair? _%g170346170353%_)
                (let* ((_%tl170351170365%_ (##cdr _%g170346170353%_))
                       (_%rest170368%_ _%tl170351170365%_))
                  (_%K170349170362%_ _%rest170368%_))
                (_%E170348170357%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx170310%_ _%k170311%_)
        (let _%lp170313%_ ((_%rest170315%_ _%stx170310%_)
                           (_%k170316%_ _%k170311%_))
          (if (fxpositive? _%k170316%_)
              (let* ((_%g170317170324%_ (gx#syntax-e _%rest170315%_))
                     (_%E170319170328%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g170317170324%_
                               '([_ . rest]))
                        '#!void))
                     (_%K170320170333%_
                      (lambda (_%rest170331%_)
                        (_%lp170313%_ _%rest170331%_ (##fx- _%k170316%_ '1)))))
                (if (pair? _%g170317170324%_)
                    (let* ((_%tl170322170336%_ (##cdr _%g170317170324%_))
                           (_%rest170339%_ _%tl170322170336%_))
                      (_%K170320170333%_ _%rest170339%_))
                    (_%E170319170328%_)))
              _%rest170315%_))))
    (define gx#stx-list-ref
      (lambda (_%stx170307%_ _%k170308%_)
        (gx#stx-car (gx#stx-list-tail _%stx170307%_ _%k170308%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx170219%_ _%key?170220%_)
        (if (procedure? _%key?170220%_)
            '#!void
            (error '"expected procedure" _%key?170220%_))
        (let _%lp170222%_ ((_%rest170224%_ _%stx170219%_))
          (let* ((_%g170225170235%_ (gx#stx-e _%rest170224%_))
                 (_%else170228170243%_ (lambda () '#f)))
            (let ((_%K170231170285%_
                   (lambda (_%rest170254%_ _%hd170255%_)
                     (if (_%key?170220%_ _%hd170255%_)
                         (let* ((_%g170256170264%_ (gx#stx-e _%rest170254%_))
                                (_%else170258170272%_ (lambda () '#f))
                                (_%K170260170277%_
                                 (lambda (_%rest170275%_)
                                   (_%lp170222%_ _%rest170275%_))))
                           (if (pair? _%g170256170264%_)
                               (let* ((_%tl170262170280%_
                                       (##cdr _%g170256170264%_))
                                      (_%rest170283%_ _%tl170262170280%_))
                                 (_%lp170222%_ _%rest170283%_))
                               (_%else170258170272%_)))
                         '#f)))
                  (_%K170230170248%_ (lambda () '#t)))
              (let ((_%try-match170227170251%_
                     (lambda ()
                       (if (null? _%g170225170235%_)
                           (_%K170230170248%_)
                           (_%else170228170243%_)))))
                (if (pair? _%g170225170235%_)
                    (let ((_%tl170233170290%_ (##cdr _%g170225170235%_))
                          (_%hd170232170288%_ (##car _%g170225170235%_)))
                      (let ((_%hd170293%_ _%hd170232170288%_)
                            (_%rest170295%_ _%tl170233170290%_))
                        (_%K170231170285%_ _%rest170295%_ _%hd170293%_)))
                    (_%try-match170227170251%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx170300%_)
        (let ((_%key?170302%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx170300%_ _%key?170302%_))))
    (define gx#stx-plist?
      (lambda _g171454_
        (let ((_g171455_ (##length _g171454_)))
          (cond ((##fx= _g171455_ 1) (apply gx#stx-plist?__0 _g171454_))
                ((##fx= _g171455_ 2) (apply gx#stx-plist?__% _g171454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g171454_))))))
    (define gx#stx-getq__%
      (lambda (_%key170137%_ _%stx170138%_ _%key=?170139%_)
        (if (procedure? _%key=?170139%_)
            '#!void
            (error '"expected procedure" _%key=?170139%_))
        (let _%lp170141%_ ((_%rest170143%_ _%stx170138%_))
          (let* ((_%g170144170152%_ (gx#syntax-e _%rest170143%_))
                 (_%else170146170160%_ (lambda () '#f))
                 (_%K170148170194%_
                  (lambda (_%rest170163%_ _%hd170164%_)
                    (let* ((_%g170165170172%_ (gx#syntax-e _%rest170163%_))
                           (_%E170167170176%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g170165170172%_
                                     '([val . rest]))
                              '#!void))
                           (_%K170168170182%_
                            (lambda (_%rest170179%_ _%val170180%_)
                              (if (_%key=?170139%_ _%hd170164%_ _%key170137%_)
                                  _%val170180%_
                                  (_%lp170141%_ _%rest170179%_)))))
                      (if (pair? _%g170165170172%_)
                          (let ((_%hd170169170185%_ (##car _%g170165170172%_))
                                (_%tl170170170187%_ (##cdr _%g170165170172%_)))
                            (let* ((_%val170190%_ _%hd170169170185%_)
                                   (_%rest170192%_ _%tl170170170187%_))
                              (_%K170168170182%_
                               _%rest170192%_
                               _%val170190%_)))
                          (_%E170167170176%_))))))
            (if (pair? _%g170144170152%_)
                (let ((_%hd170149170197%_ (##car _%g170144170152%_))
                      (_%tl170150170199%_ (##cdr _%g170144170152%_)))
                  (let* ((_%hd170202%_ _%hd170149170197%_)
                         (_%rest170204%_ _%tl170150170199%_))
                    (_%K170148170194%_ _%rest170204%_ _%hd170202%_)))
                (_%else170146170160%_))))))
    (define gx#stx-getq__0
      (lambda (_%key170209%_ _%stx170210%_)
        (let ((_%key=?170212%_ gx#stx-eq?))
          (gx#stx-getq__% _%key170209%_ _%stx170210%_ _%key=?170212%_))))
    (define gx#stx-getq
      (lambda _g171456_
        (let ((_g171457_ (##length _g171456_)))
          (cond ((##fx= _g171457_ 2) (apply gx#stx-getq__0 _g171456_))
                ((##fx= _g171457_ 3) (apply gx#stx-getq__% _g171456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g171456_))))))))
