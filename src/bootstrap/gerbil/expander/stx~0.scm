(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1773012985)
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
      (lambda _%$args174337%_
        (apply make-instance gx#identifier-wrap::t _%$args174337%_)))
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
      (lambda _%$args174334%_
        (apply make-instance gx#syntax-wrap::t _%$args174334%_)))
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
      (lambda _%$args174331%_
        (apply make-instance gx#syntax-quote::t _%$args174331%_)))
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
      (lambda (_%stx174329%_) (symbol? (gx#stx-e _%stx174329%_))))
    (define gx#identifier-quote?
      (lambda (_%stx174327%_)
        (if (##structure-direct-instance-of? _%stx174327%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx174327%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx174322%_)
        (if (##structure-direct-instance-of? _%stx174322%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx174322%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx174322%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx174317%_)
        (if (##structure-direct-instance-of? _%stx174317%_ 'gx#syntax-quote::t)
            _%stx174317%_
            (if (##structure-direct-instance-of?
                 _%stx174317%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx174317%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx174291%_)
        (if (##structure-direct-instance-of? _%stx174291%_ 'gx#syntax-wrap::t)
            (let _%lp174294%_ ((_%e174296%_
                                (##unchecked-structure-ref
                                 _%stx174291%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks174297%_
                                (cons (##unchecked-structure-ref
                                       _%stx174291%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e174296%_)
                  (let ((_%$e174300%_
                         (##type-id (##structure-type _%e174296%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e174300%_)
                        (_%lp174294%_
                         (##unchecked-structure-ref _%e174296%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e174296%_ '3 '#f '#f)
                          _%marks174297%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e174300%_)
                                (eq? 'gx#identifier-wrap::t _%$e174300%_))
                            (##unchecked-structure-ref _%e174296%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e174300%_)
                                (_%lp174294%_
                                 (##unchecked-structure-ref
                                  _%e174296%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks174297%_)
                                _%e174296%_))))
                  (if (null? _%marks174297%_)
                      _%e174296%_
                      (if (pair? _%e174296%_)
                          (cons (gx#stx-wrap
                                 (##car _%e174296%_)
                                 _%marks174297%_)
                                (gx#stx-wrap
                                 (##cdr _%e174296%_)
                                 _%marks174297%_))
                          (if (vector? _%e174296%_)
                              (vector-map
                               (lambda (_%g174308174310%_)
                                 (gx#stx-wrap
                                  _%g174308174310%_
                                  _%marks174297%_))
                               _%e174296%_)
                              (if (box? _%e174296%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e174296%_)
                                        _%marks174297%_))
                                  _%e174296%_))))))
            (if (##structure-instance-of? _%stx174291%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx174291%_ '1 '#f '#f)
                _%stx174291%_))))
    (define gx#syntax->datum
      (lambda (_%stx174284%_)
        (if (##structure-instance-of? _%stx174284%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx174284%_ '1 '#f '#f))
            (if (pair? _%stx174284%_)
                (cons (gx#syntax->datum (##car _%stx174284%_))
                      (gx#syntax->datum (##cdr _%stx174284%_)))
                (if (vector? _%stx174284%_)
                    (vector-map gx#syntax->datum _%stx174284%_)
                    (if (box? _%stx174284%_)
                        (box (gx#syntax->datum (unbox _%stx174284%_)))
                        _%stx174284%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx174218%_ _%datum174219%_ _%src174220%_ _%quote?174221%_)
        (letrec ((_%wrap-datum174223%_
                  (lambda (_%e174256%_ _%marks174257%_)
                    (_%wrap-inner174225%_
                     _%e174256%_
                     (lambda (_%g174258174260%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g174258174260%_
                        _%src174220%_
                        _%marks174257%_)))))
                 (_%wrap-quote174224%_
                  (lambda (_%e174248%_ _%ctx174249%_ _%marks174250%_)
                    (_%wrap-inner174225%_
                     _%e174248%_
                     (lambda (_%g174251174253%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g174251174253%_
                        _%src174220%_
                        _%ctx174249%_
                        _%marks174250%_)))))
                 (_%wrap-inner174225%_
                  (lambda (_%e174236%_ _%wrap-e174237%_)
                    (let _%recur174239%_ ((_%e174241%_ _%e174236%_))
                      (if (symbol? _%e174241%_)
                          (_%wrap-e174237%_ _%e174241%_)
                          (if (pair? _%e174241%_)
                              (cons (_%recur174239%_ (##car _%e174241%_))
                                    (_%recur174239%_ (##cdr _%e174241%_)))
                              (if (vector? _%e174241%_)
                                  (vector-map _%recur174239%_ _%e174241%_)
                                  (if (box? _%e174241%_)
                                      (box (_%recur174239%_
                                            (unbox _%e174241%_)))
                                      _%e174241%_)))))))
                 (_%wrap-outer174226%_
                  (lambda (_%e174234%_)
                    (if (##structure-instance-of? _%e174234%_ 'gerbil#AST::t)
                        _%e174234%_
                        (##structure gx#AST::t _%e174234%_ _%src174220%_)))))
          (if (##structure-instance-of? _%datum174219%_ 'gerbil#AST::t)
              _%datum174219%_
              (if (not _%stx174218%_)
                  (##structure gx#AST::t _%datum174219%_ _%src174220%_)
                  (if (gx#identifier? _%stx174218%_)
                      (let ((_%stx174231%_ (gx#stx-unwrap__0 _%stx174218%_)))
                        (_%wrap-outer174226%_
                         (if (##structure-direct-instance-of?
                              _%stx174231%_
                              'gx#syntax-quote::t)
                             (if _%quote?174221%_
                                 (_%wrap-quote174224%_
                                  _%datum174219%_
                                  (##unchecked-structure-ref
                                   _%stx174231%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx174231%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum174223%_
                                  _%datum174219%_
                                  (##unchecked-structure-ref
                                   _%stx174231%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum174223%_
                              _%datum174219%_
                              (##unchecked-structure-ref
                               _%stx174231%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx174218%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx174266%_ _%datum174267%_)
        (let* ((_%src174269%_ '#f) (_%quote?174271%_ '#t))
          (gx#datum->syntax__%
           _%stx174266%_
           _%datum174267%_
           _%src174269%_
           _%quote?174271%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx174273%_ _%datum174274%_ _%src174275%_)
        (let ((_%quote?174277%_ '#t))
          (gx#datum->syntax__%
           _%stx174273%_
           _%datum174274%_
           _%src174275%_
           _%quote?174277%_))))
    (define gx#datum->syntax
      (lambda _g174417_
        (let ((_g174418_ (##length _g174417_)))
          (cond ((##fx= _g174418_ 2) (apply gx#datum->syntax__0 _g174417_))
                ((##fx= _g174418_ 3) (apply gx#datum->syntax__1 _g174417_))
                ((##fx= _g174418_ 4) (apply gx#datum->syntax__% _g174417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g174417_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx174184%_ _%marks174185%_)
        (let _%lp174187%_ ((_%e174189%_ _%stx174184%_)
                           (_%marks174190%_ _%marks174185%_)
                           (_%src174191%_ (gx#stx-source _%stx174184%_)))
          (if (##structure-direct-instance-of? _%e174189%_ 'gx#syntax-wrap::t)
              (_%lp174187%_
               (##unchecked-structure-ref _%e174189%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e174189%_ '3 '#f '#f)
                _%marks174190%_)
               (##unchecked-structure-ref _%e174189%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e174189%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks174190%_)
                      _%e174189%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e174189%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e174189%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e174189%_ '3 '#f '#f)
                        _%marks174190%_)))
                  (if (##structure-direct-instance-of?
                       _%e174189%_
                       'gx#syntax-quote::t)
                      _%e174189%_
                      (if (##structure-instance-of? _%e174189%_ 'gerbil#AST::t)
                          (_%lp174187%_
                           (##unchecked-structure-ref _%e174189%_ '1 '#f '#f)
                           _%marks174190%_
                           (##unchecked-structure-ref _%e174189%_ '2 '#f '#f))
                          (if (symbol? _%e174189%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e174189%_
                               _%src174191%_
                               (reverse _%marks174190%_))
                              (if (null? _%marks174190%_)
                                  _%e174189%_
                                  (if (pair? _%e174189%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e174189%_)
                                             _%marks174190%_)
                                            (gx#stx-wrap
                                             (##cdr _%e174189%_)
                                             _%marks174190%_))
                                      (if (vector? _%e174189%_)
                                          (vector-map
                                           (lambda (_%g174200174202%_)
                                             (gx#stx-wrap
                                              _%g174200174202%_
                                              _%marks174190%_))
                                           _%e174189%_)
                                          (if (box? _%e174189%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e174189%_)
                                                    _%marks174190%_))
                                              _%e174189%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx174210%_)
        (let ((_%marks174212%_ '()))
          (gx#stx-unwrap__% _%stx174210%_ _%marks174212%_))))
    (define gx#stx-unwrap
      (lambda _g174419_
        (let ((_g174420_ (##length _g174419_)))
          (cond ((##fx= _g174420_ 1) (apply gx#stx-unwrap__0 _g174419_))
                ((##fx= _g174420_ 2) (apply gx#stx-unwrap__% _g174419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g174419_))))))
    (define gx#stx-wrap
      (lambda (_%stx174177%_ _%marks174178%_)
        (foldl__0
         (lambda (_%mark174180%_ _%stx174181%_)
           (gx#stx-apply-mark _%stx174181%_ _%mark174180%_))
         _%stx174177%_
         _%marks174178%_)))
    (define gx#stx-rewrap
      (lambda (_%stx174171%_ _%marks174172%_)
        (foldr__0
         (lambda (_%mark174174%_ _%stx174175%_)
           (gx#stx-apply-mark _%stx174175%_ _%mark174174%_))
         _%stx174171%_
         _%marks174172%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx174165%_ _%mark174166%_)
        (if (##structure-direct-instance-of? _%stx174165%_ 'gx#syntax-quote::t)
            _%stx174165%_
            (if (and (##structure-direct-instance-of?
                      _%stx174165%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark174166%_
                          (##unchecked-structure-ref
                           _%stx174165%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx174165%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx174165%_
                 (gx#stx-source _%stx174165%_)
                 _%mark174166%_)))))
    (define gx#apply-mark
      (lambda (_%mark174129%_ _%marks174130%_)
        (let* ((_%marks174131174139%_ _%marks174130%_)
               (_%else174133174147%_
                (lambda () (cons _%mark174129%_ _%marks174130%_)))
               (_%K174135174153%_
                (lambda (_%rest174150%_ _%hd174151%_)
                  (if (eq? _%mark174129%_ _%hd174151%_)
                      _%rest174150%_
                      (cons _%mark174129%_ _%marks174130%_)))))
          (if (pair? _%marks174131174139%_)
              (let ((_%hd174136174156%_ (##car _%marks174131174139%_))
                    (_%tl174137174158%_ (##cdr _%marks174131174139%_)))
                (let* ((_%hd174161%_ _%hd174136174156%_)
                       (_%rest174163%_ _%tl174137174158%_))
                  (_%K174135174153%_ _%rest174163%_ _%hd174161%_)))
              (_%else174133174147%_)))))
    (define gx#stx-e
      (lambda (_%stx174124%_)
        (if (##structure-direct-instance-of? _%stx174124%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx174124%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx174124%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx174124%_ '1 '#f '#f)
                _%stx174124%_))))
    (define gx#stx-source
      (lambda (_%stx174122%_)
        (if (##structure-instance-of? _%stx174122%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx174122%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx174116%_ _%src174117%_)
        (if (or (##structure-instance-of? _%stx174116%_ 'gerbil#AST::t)
                (not _%src174117%_))
            _%stx174116%_
            (##structure gx#AST::t _%stx174116%_ _%src174117%_))))
    (define gx#stx-datum?
      (lambda (_%stx174114%_) (gx#self-quoting? (gx#stx-e _%stx174114%_))))
    (define gx#self-quoting?
      (lambda (_%x174097%_)
        (let ((_%$e174099%_ (immediate? _%x174097%_)))
          (if _%$e174099%_
              _%$e174099%_
              (let ((_%$e174102%_ (number? _%x174097%_)))
                (if _%$e174102%_
                    _%$e174102%_
                    (let ((_%$e174105%_ (keyword? _%x174097%_)))
                      (if _%$e174105%_
                          _%$e174105%_
                          (let ((_%$e174108%_ (string? _%x174097%_)))
                            (if _%$e174108%_
                                _%$e174108%_
                                (let ((_%$e174111%_ (vector? _%x174097%_)))
                                  (if _%$e174111%_
                                      _%$e174111%_
                                      (u8vector? _%x174097%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e174095%_) (boolean? (gx#stx-e _%e174095%_))))
    (define gx#stx-keyword?
      (lambda (_%e174093%_) (keyword? (gx#stx-e _%e174093%_))))
    (define gx#stx-char? (lambda (_%e174091%_) (char? (gx#stx-e _%e174091%_))))
    (define gx#stx-number?
      (lambda (_%e174089%_) (number? (gx#stx-e _%e174089%_))))
    (define gx#stx-fixnum?
      (lambda (_%e174087%_) (fixnum? (gx#stx-e _%e174087%_))))
    (define gx#stx-string?
      (lambda (_%e174085%_) (string? (gx#stx-e _%e174085%_))))
    (define gx#stx-null? (lambda (_%e174083%_) (null? (gx#stx-e _%e174083%_))))
    (define gx#stx-pair? (lambda (_%e174081%_) (pair? (gx#stx-e _%e174081%_))))
    (define gx#stx-list?
      (lambda (_%e174043%_)
        (let* ((_%g174044174053%_ (gx#stx-e _%e174043%_))
               (_%E174047174057%_
                (lambda ()
                  (error '"No clause matching"
                         _%g174044174053%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K174049174073%_
                 (lambda (_%rest174071%_) (gx#stx-list? _%rest174071%_)))
                (_%K174048174063%_
                 (lambda (_%tail174061%_) (null? _%tail174061%_))))
            (if (pair? _%g174044174053%_)
                (let* ((_%tl174051174076%_ (##cdr _%g174044174053%_))
                       (_%rest174079%_ _%tl174051174076%_))
                  (gx#stx-list? _%rest174079%_))
                (let ((_%tail174066%_ _%g174044174053%_))
                  (null? _%tail174066%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e174036%_)
        (let* ((_%e174038%_ (gx#stx-e _%e174036%_))
               (_%$e174040%_ (pair? _%e174038%_)))
          (if _%$e174040%_ _%$e174040%_ (null? _%e174038%_)))))
    (define gx#stx-vector?
      (lambda (_%e174034%_) (vector? (gx#stx-e _%e174034%_))))
    (define gx#stx-box? (lambda (_%e174032%_) (box? (gx#stx-e _%e174032%_))))
    (define gx#stx-eq?
      (lambda (_%x174029%_ _%y174030%_)
        (eq? (gx#stx-e _%x174029%_) (gx#stx-e _%y174030%_))))
    (define gx#stx-eqv?
      (lambda (_%x174026%_ _%y174027%_)
        (eqv? (gx#stx-e _%x174026%_) (gx#stx-e _%y174027%_))))
    (define gx#stx-equal?
      (lambda (_%x174023%_ _%y174024%_)
        (equal? (gx#stx-e _%x174023%_) (gx#stx-e _%y174024%_))))
    (define gx#stx-false? (lambda (_%x174021%_) (not (gx#stx-e _%x174021%_))))
    (define gx#stx-identifier
      (lambda (_%template174018%_ . _%args174019%_)
        (gx#datum->syntax__1
         _%template174018%_
         (apply make-symbol (gx#syntax->datum _%args174019%_))
         (gx#stx-source _%template174018%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx174016%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx174016%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx174011%_)
        (if (##structure-direct-instance-of?
             _%stx174011%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx174011%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx174011%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx174011%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx174011%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx174007%_)
        (let ((_%stx174009%_ (gx#stx-unwrap__0 _%stx174007%_)))
          (if (gx#identifier-quote? _%stx174009%_)
              (##unchecked-structure-ref _%stx174009%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx173962%_)
        (let* ((_%g173963173973%_ (gx#stx-e _%stx173962%_))
               (_%else173966173981%_ (lambda () '#f)))
          (let ((_%K173969173995%_
                 (lambda (_%rest173992%_ _%hd173993%_)
                   (if (gx#identifier? _%hd173993%_)
                       (gx#identifier-list? _%rest173992%_)
                       '#f)))
                (_%K173968173986%_ (lambda () '#t)))
            (let ((_%try-match173965173989%_
                   (lambda ()
                     (if (null? _%g173963173973%_)
                         (_%K173968173986%_)
                         (_%else173966173981%_)))))
              (if (pair? _%g173963173973%_)
                  (let ((_%tl173971174000%_ (##cdr _%g173963173973%_))
                        (_%hd173970173998%_ (##car _%g173963173973%_)))
                    (let ((_%hd174003%_ _%hd173970173998%_)
                          (_%rest174005%_ _%tl173971174000%_))
                      (_%K173969173995%_ _%rest174005%_ _%hd174003%_)))
                  (_%try-match173965173989%_)))))))
    (define gx#genident__%
      (lambda (_%e173942%_ _%src173943%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src173943%_) _%src173943%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e173945%_ (gx#stx-e _%e173942%_)))
              (if (symbol? _%e173945%_) _%e173945%_ 'g)))))
         _%src173943%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e173951%_ 'g) (_%src173953%_ '#f))
          (gx#genident__% _%e173951%_ _%src173953%_))))
    (define gx#genident__1
      (lambda (_%e173955%_)
        (let ((_%src173957%_ '#f))
          (gx#genident__% _%e173955%_ _%src173957%_))))
    (define gx#genident
      (lambda _g174421_
        (let ((_g174422_ (##length _g174421_)))
          (cond ((##fx= _g174422_ 0) (apply gx#genident__0 _g174421_))
                ((##fx= _g174422_ 1) (apply gx#genident__1 _g174421_))
                ((##fx= _g174422_ 2) (apply gx#genident__% _g174421_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g174421_))))))
    (define gx#gentemps
      (lambda (_%stx-lst173937%_)
        (gx#stx-map1
         (lambda (_%x173939%_) (gx#genident__% _%x173939%_ _%x173939%_))
         _%stx-lst173937%_)))
    (define gx#syntax->list
      (lambda (_%stx173935%_) (gx#stx-map1 values _%stx173935%_)))
    (define gx#stx-car
      (lambda (_%stx173932%_)
        (declare (safe))
        (car (gx#syntax-e _%stx173932%_))))
    (define gx#stx-cdr
      (lambda (_%stx173929%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx173929%_))))
    (define gx#stx-length
      (lambda (_%stx173894%_)
        (let _%lp173896%_ ((_%rest173898%_ _%stx173894%_) (_%n173899%_ '0))
          (let* ((_%g173900173908%_ (gx#stx-e _%rest173898%_))
                 (_%else173902173916%_ (lambda () _%n173899%_))
                 (_%K173904173921%_
                  (lambda (_%rest173919%_)
                    (_%lp173896%_ _%rest173919%_ (##fx+ _%n173899%_ '1)))))
            (if (pair? _%g173900173908%_)
                (let* ((_%tl173906173924%_ (##cdr _%g173900173908%_))
                       (_%rest173927%_ _%tl173906173924%_))
                  (_%K173904173921%_ _%rest173927%_))
                (_%else173902173916%_))))))
    (define gx#stx-for-each
      (lambda _g174423_
        (let ((_g174424_ (##length _g174423_)))
          (cond ((##fx= _g174424_ 2) (apply gx#stx-for-each1 _g174423_))
                ((##fx= _g174424_ 3) (apply gx#stx-for-each2 _g174423_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g174423_))))))
    (define gx#stx-for-each1
      (lambda (_%f173837%_ _%stx173838%_)
        (if (procedure? _%f173837%_)
            '#!void
            (error '"expected procedure" _%f173837%_))
        (let _%lp173840%_ ((_%rest173842%_ _%stx173838%_))
          (let* ((_%g173843173853%_ (gx#syntax-e _%rest173842%_))
                 (_%else173846173861%_
                  (lambda () (_%f173837%_ _%rest173842%_))))
            (let ((_%K173849173875%_
                   (lambda (_%rest173872%_ _%hd173873%_)
                     (_%f173837%_ _%hd173873%_)
                     (_%lp173840%_ _%rest173872%_)))
                  (_%K173848173866%_ (lambda () '#!void)))
              (let ((_%try-match173845173869%_
                     (lambda ()
                       (if (null? _%g173843173853%_)
                           (_%K173848173866%_)
                           (_%else173846173861%_)))))
                (if (pair? _%g173843173853%_)
                    (let ((_%tl173851173880%_ (##cdr _%g173843173853%_))
                          (_%hd173850173878%_ (##car _%g173843173853%_)))
                      (let ((_%hd173883%_ _%hd173850173878%_)
                            (_%rest173885%_ _%tl173851173880%_))
                        (_%K173849173875%_ _%rest173885%_ _%hd173883%_)))
                    (_%try-match173845173869%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f173742%_ _%xstx173743%_ _%ystx173744%_)
        (if (procedure? _%f173742%_)
            '#!void
            (error '"expected procedure" _%f173742%_))
        (let _%lp173746%_ ((_%xrest173748%_ _%xstx173743%_)
                           (_%yrest173749%_ _%ystx173744%_))
          (let* ((_%g173750173760%_ (gx#syntax-e _%xrest173748%_))
                 (_%else173753173768%_ (lambda () '#!void)))
            (let ((_%K173756173825%_
                   (lambda (_%xrest173794%_ _%xhd173795%_)
                     (let* ((_%g173796173803%_ (gx#syntax-e _%yrest173749%_))
                            (_%E173798173807%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g173796173803%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K173799173813%_
                             (lambda (_%yrest173810%_ _%yhd173811%_)
                               (_%f173742%_ _%xhd173795%_ _%yhd173811%_)
                               (_%lp173746%_
                                _%xrest173794%_
                                _%yrest173810%_))))
                       (if (pair? _%g173796173803%_)
                           (let ((_%hd173800173816%_ (##car _%g173796173803%_))
                                 (_%tl173801173818%_
                                  (##cdr _%g173796173803%_)))
                             (let* ((_%yhd173821%_ _%hd173800173816%_)
                                    (_%yrest173823%_ _%tl173801173818%_))
                               (_%K173799173813%_
                                _%yrest173823%_
                                _%yhd173821%_)))
                           (_%E173798173807%_)))))
                  (_%K173755173788%_
                   (lambda ()
                     (let* ((_%yrest173772173777%_ _%yrest173749%_)
                            (_%E173774173781%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest173772173777%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K173775173785%_
                             (lambda ()
                               (_%f173742%_ _%xrest173748%_ _%yrest173749%_))))
                       (if (gx#stx-null? _%yrest173772173777%_)
                           (_%E173774173781%_)
                           (_%K173775173785%_))))))
              (let ((_%try-match173752173791%_
                     (lambda ()
                       (if (null? _%g173750173760%_)
                           (_%else173753173768%_)
                           (_%K173755173788%_)))))
                (if (pair? _%g173750173760%_)
                    (let ((_%tl173758173830%_ (##cdr _%g173750173760%_))
                          (_%hd173757173828%_ (##car _%g173750173760%_)))
                      (let ((_%xhd173833%_ _%hd173757173828%_)
                            (_%xrest173835%_ _%tl173758173830%_))
                        (_%K173756173825%_ _%xrest173835%_ _%xhd173833%_)))
                    (_%try-match173752173791%_))))))))
    (define gx#stx-map
      (lambda _g174425_
        (let ((_g174426_ (##length _g174425_)))
          (cond ((##fx= _g174426_ 2) (apply gx#stx-map1 _g174425_))
                ((##fx= _g174426_ 3) (apply gx#stx-map2 _g174425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g174425_))))))
    (define gx#stx-map1
      (lambda (_%f173685%_ _%stx173686%_)
        (if (procedure? _%f173685%_)
            '#!void
            (error '"expected procedure" _%f173685%_))
        (let _%recur173688%_ ((_%rest173690%_ _%stx173686%_))
          (let* ((_%g173691173701%_ (gx#syntax-e _%rest173690%_))
                 (_%else173694173709%_
                  (lambda () (_%f173685%_ _%rest173690%_))))
            (let ((_%K173697173723%_
                   (lambda (_%rest173720%_ _%hd173721%_)
                     (cons (_%f173685%_ _%hd173721%_)
                           (_%recur173688%_ _%rest173720%_))))
                  (_%K173696173714%_ (lambda () '())))
              (let ((_%try-match173693173717%_
                     (lambda ()
                       (if (null? _%g173691173701%_)
                           (_%K173696173714%_)
                           (_%else173694173709%_)))))
                (if (pair? _%g173691173701%_)
                    (let ((_%tl173699173728%_ (##cdr _%g173691173701%_))
                          (_%hd173698173726%_ (##car _%g173691173701%_)))
                      (let ((_%hd173731%_ _%hd173698173726%_)
                            (_%rest173733%_ _%tl173699173728%_))
                        (_%K173697173723%_ _%rest173733%_ _%hd173731%_)))
                    (_%try-match173693173717%_))))))))
    (define gx#stx-map2
      (lambda (_%f173590%_ _%xstx173591%_ _%ystx173592%_)
        (if (procedure? _%f173590%_)
            '#!void
            (error '"expected procedure" _%f173590%_))
        (let _%recur173594%_ ((_%xrest173596%_ _%xstx173591%_)
                              (_%yrest173597%_ _%ystx173592%_))
          (let* ((_%g173598173608%_ (gx#syntax-e _%xrest173596%_))
                 (_%else173601173616%_ (lambda () '())))
            (let ((_%K173604173673%_
                   (lambda (_%xrest173642%_ _%xhd173643%_)
                     (let* ((_%g173644173651%_ (gx#syntax-e _%yrest173597%_))
                            (_%E173646173655%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g173644173651%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K173647173661%_
                             (lambda (_%yrest173658%_ _%yhd173659%_)
                               (cons (_%f173590%_ _%xhd173643%_ _%yhd173659%_)
                                     (_%recur173594%_
                                      _%xrest173642%_
                                      _%yrest173658%_)))))
                       (if (pair? _%g173644173651%_)
                           (let ((_%hd173648173664%_ (##car _%g173644173651%_))
                                 (_%tl173649173666%_
                                  (##cdr _%g173644173651%_)))
                             (let* ((_%yhd173669%_ _%hd173648173664%_)
                                    (_%yrest173671%_ _%tl173649173666%_))
                               (_%K173647173661%_
                                _%yrest173671%_
                                _%yhd173669%_)))
                           (_%E173646173655%_)))))
                  (_%K173603173636%_
                   (lambda ()
                     (let* ((_%yrest173620173625%_ _%yrest173597%_)
                            (_%E173622173629%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest173620173625%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K173623173633%_
                             (lambda ()
                               (_%f173590%_ _%xrest173596%_ _%yrest173597%_))))
                       (if (gx#stx-null? _%yrest173620173625%_)
                           (_%E173622173629%_)
                           (_%K173623173633%_))))))
              (let ((_%try-match173600173639%_
                     (lambda ()
                       (if (null? _%g173598173608%_)
                           (_%else173601173616%_)
                           (_%K173603173636%_)))))
                (if (pair? _%g173598173608%_)
                    (let ((_%tl173606173678%_ (##cdr _%g173598173608%_))
                          (_%hd173605173676%_ (##car _%g173598173608%_)))
                      (let ((_%xhd173681%_ _%hd173605173676%_)
                            (_%xrest173683%_ _%tl173606173678%_))
                        (_%K173604173673%_ _%xrest173683%_ _%xhd173681%_)))
                    (_%try-match173600173639%_))))))))
    (define gx#stx-andmap
      (lambda (_%f173540%_ _%stx173541%_)
        (if (procedure? _%f173540%_)
            '#!void
            (error '"expected procedure" _%f173540%_))
        (let _%lp173543%_ ((_%rest173545%_ _%stx173541%_))
          (let* ((_%g173546173556%_ (gx#syntax-e _%rest173545%_))
                 (_%else173549173564%_
                  (lambda () (_%f173540%_ _%rest173545%_))))
            (let ((_%K173552173578%_
                   (lambda (_%rest173575%_ _%hd173576%_)
                     (if (_%f173540%_ _%hd173576%_)
                         (_%lp173543%_ _%rest173575%_)
                         '#f)))
                  (_%K173551173569%_ (lambda () '#t)))
              (let ((_%try-match173548173572%_
                     (lambda ()
                       (if (null? _%g173546173556%_)
                           (_%K173551173569%_)
                           (_%else173549173564%_)))))
                (if (pair? _%g173546173556%_)
                    (let ((_%tl173554173583%_ (##cdr _%g173546173556%_))
                          (_%hd173553173581%_ (##car _%g173546173556%_)))
                      (let ((_%hd173586%_ _%hd173553173581%_)
                            (_%rest173588%_ _%tl173554173583%_))
                        (_%K173552173578%_ _%rest173588%_ _%hd173586%_)))
                    (_%try-match173548173572%_))))))))
    (define gx#stx-ormap
      (lambda (_%f173487%_ _%stx173488%_)
        (if (procedure? _%f173487%_)
            '#!void
            (error '"expected procedure" _%f173487%_))
        (let _%lp173490%_ ((_%rest173492%_ _%stx173488%_))
          (let* ((_%g173493173503%_ (gx#syntax-e _%rest173492%_))
                 (_%else173496173511%_
                  (lambda () (_%f173487%_ _%rest173492%_))))
            (let ((_%K173499173528%_
                   (lambda (_%rest173522%_ _%hd173523%_)
                     (let ((_%$e173525%_ (_%f173487%_ _%hd173523%_)))
                       (if _%$e173525%_
                           _%$e173525%_
                           (_%lp173490%_ _%rest173522%_)))))
                  (_%K173498173516%_ (lambda () '#f)))
              (let ((_%try-match173495173519%_
                     (lambda ()
                       (if (null? _%g173493173503%_)
                           (_%K173498173516%_)
                           (_%else173496173511%_)))))
                (if (pair? _%g173493173503%_)
                    (let ((_%tl173501173533%_ (##cdr _%g173493173503%_))
                          (_%hd173500173531%_ (##car _%g173493173503%_)))
                      (let ((_%hd173536%_ _%hd173500173531%_)
                            (_%rest173538%_ _%tl173501173533%_))
                        (_%K173499173528%_ _%rest173538%_ _%hd173536%_)))
                    (_%try-match173495173519%_))))))))
    (define gx#stx-foldl
      (lambda (_%f173435%_ _%iv173436%_ _%stx173437%_)
        (if (procedure? _%f173435%_)
            '#!void
            (error '"expected procedure" _%f173435%_))
        (let _%lp173439%_ ((_%r173441%_ _%iv173436%_)
                           (_%rest173442%_ _%stx173437%_))
          (let* ((_%g173443173453%_ (gx#syntax-e _%rest173442%_))
                 (_%else173446173461%_
                  (lambda () (_%f173435%_ _%rest173442%_ _%r173441%_))))
            (let ((_%K173449173475%_
                   (lambda (_%rest173472%_ _%hd173473%_)
                     (_%lp173439%_
                      (_%f173435%_ _%hd173473%_ _%r173441%_)
                      _%rest173472%_)))
                  (_%K173448173466%_ (lambda () _%r173441%_)))
              (let ((_%try-match173445173469%_
                     (lambda ()
                       (if (null? _%g173443173453%_)
                           (_%K173448173466%_)
                           (_%else173446173461%_)))))
                (if (pair? _%g173443173453%_)
                    (let ((_%tl173451173480%_ (##cdr _%g173443173453%_))
                          (_%hd173450173478%_ (##car _%g173443173453%_)))
                      (let ((_%hd173483%_ _%hd173450173478%_)
                            (_%rest173485%_ _%tl173451173480%_))
                        (_%K173449173475%_ _%rest173485%_ _%hd173483%_)))
                    (_%try-match173445173469%_))))))))
    (define gx#stx-foldr
      (lambda (_%f173384%_ _%iv173385%_ _%stx173386%_)
        (if (procedure? _%f173384%_)
            '#!void
            (error '"expected procedure" _%f173384%_))
        (let _%recur173388%_ ((_%rest173390%_ _%stx173386%_))
          (let* ((_%g173391173401%_ (gx#syntax-e _%rest173390%_))
                 (_%else173394173409%_
                  (lambda () (_%f173384%_ _%rest173390%_ _%iv173385%_))))
            (let ((_%K173397173423%_
                   (lambda (_%rest173420%_ _%hd173421%_)
                     (_%f173384%_
                      _%hd173421%_
                      (_%recur173388%_ _%rest173420%_))))
                  (_%K173396173414%_ (lambda () _%iv173385%_)))
              (let ((_%try-match173393173417%_
                     (lambda ()
                       (if (null? _%g173391173401%_)
                           (_%K173396173414%_)
                           (_%else173394173409%_)))))
                (if (pair? _%g173391173401%_)
                    (let ((_%tl173399173428%_ (##cdr _%g173391173401%_))
                          (_%hd173398173426%_ (##car _%g173391173401%_)))
                      (let ((_%hd173431%_ _%hd173398173426%_)
                            (_%rest173433%_ _%tl173399173428%_))
                        (_%K173397173423%_ _%rest173433%_ _%hd173431%_)))
                    (_%try-match173393173417%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx173382%_) (gx#stx-foldl cons '() _%stx173382%_)))
    (define gx#stx-last
      (lambda (_%stx173343%_)
        (let _%lp173345%_ ((_%rest173347%_ _%stx173343%_))
          (let* ((_%g173348173356%_ (gx#syntax-e _%rest173347%_))
                 (_%else173350173364%_ (lambda () _%rest173347%_))
                 (_%K173352173370%_
                  (lambda (_%rest173367%_ _%hd173368%_)
                    (if (gx#stx-null? _%rest173367%_)
                        _%hd173368%_
                        (_%lp173345%_ _%rest173367%_)))))
            (if (pair? _%g173348173356%_)
                (let ((_%hd173353173373%_ (##car _%g173348173356%_))
                      (_%tl173354173375%_ (##cdr _%g173348173356%_)))
                  (let* ((_%hd173378%_ _%hd173353173373%_)
                         (_%rest173380%_ _%tl173354173375%_))
                    (_%K173352173370%_ _%rest173380%_ _%hd173378%_)))
                (_%else173350173364%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx173314%_)
        (let _%lp173316%_ ((_%hd173318%_ _%stx173314%_))
          (let* ((_%g173319173326%_ (gx#syntax-e _%hd173318%_))
                 (_%E173321173330%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g173319173326%_
                           '([_ . rest]))
                    '#!void))
                 (_%K173322173335%_
                  (lambda (_%rest173333%_)
                    (if (gx#stx-pair? _%rest173333%_)
                        (_%lp173316%_ _%rest173333%_)
                        _%hd173318%_))))
            (if (pair? _%g173319173326%_)
                (let* ((_%tl173324173338%_ (##cdr _%g173319173326%_))
                       (_%rest173341%_ _%tl173324173338%_))
                  (_%K173322173335%_ _%rest173341%_))
                (_%E173321173330%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx173283%_ _%k173284%_)
        (let _%lp173286%_ ((_%rest173288%_ _%stx173283%_)
                           (_%k173289%_ _%k173284%_))
          (if (fxpositive? _%k173289%_)
              (let* ((_%g173290173297%_ (gx#syntax-e _%rest173288%_))
                     (_%E173292173301%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g173290173297%_
                               '([_ . rest]))
                        '#!void))
                     (_%K173293173306%_
                      (lambda (_%rest173304%_)
                        (_%lp173286%_ _%rest173304%_ (##fx- _%k173289%_ '1)))))
                (if (pair? _%g173290173297%_)
                    (let* ((_%tl173295173309%_ (##cdr _%g173290173297%_))
                           (_%rest173312%_ _%tl173295173309%_))
                      (_%K173293173306%_ _%rest173312%_))
                    (_%E173292173301%_)))
              _%rest173288%_))))
    (define gx#stx-list-ref
      (lambda (_%stx173280%_ _%k173281%_)
        (gx#stx-car (gx#stx-list-tail _%stx173280%_ _%k173281%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx173192%_ _%key?173193%_)
        (if (procedure? _%key?173193%_)
            '#!void
            (error '"expected procedure" _%key?173193%_))
        (let _%lp173195%_ ((_%rest173197%_ _%stx173192%_))
          (let* ((_%g173198173208%_ (gx#stx-e _%rest173197%_))
                 (_%else173201173216%_ (lambda () '#f)))
            (let ((_%K173204173258%_
                   (lambda (_%rest173227%_ _%hd173228%_)
                     (if (_%key?173193%_ _%hd173228%_)
                         (let* ((_%g173229173237%_ (gx#stx-e _%rest173227%_))
                                (_%else173231173245%_ (lambda () '#f))
                                (_%K173233173250%_
                                 (lambda (_%rest173248%_)
                                   (_%lp173195%_ _%rest173248%_))))
                           (if (pair? _%g173229173237%_)
                               (let* ((_%tl173235173253%_
                                       (##cdr _%g173229173237%_))
                                      (_%rest173256%_ _%tl173235173253%_))
                                 (_%lp173195%_ _%rest173256%_))
                               (_%else173231173245%_)))
                         '#f)))
                  (_%K173203173221%_ (lambda () '#t)))
              (let ((_%try-match173200173224%_
                     (lambda ()
                       (if (null? _%g173198173208%_)
                           (_%K173203173221%_)
                           (_%else173201173216%_)))))
                (if (pair? _%g173198173208%_)
                    (let ((_%tl173206173263%_ (##cdr _%g173198173208%_))
                          (_%hd173205173261%_ (##car _%g173198173208%_)))
                      (let ((_%hd173266%_ _%hd173205173261%_)
                            (_%rest173268%_ _%tl173206173263%_))
                        (_%K173204173258%_ _%rest173268%_ _%hd173266%_)))
                    (_%try-match173200173224%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx173273%_)
        (let ((_%key?173275%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx173273%_ _%key?173275%_))))
    (define gx#stx-plist?
      (lambda _g174427_
        (let ((_g174428_ (##length _g174427_)))
          (cond ((##fx= _g174428_ 1) (apply gx#stx-plist?__0 _g174427_))
                ((##fx= _g174428_ 2) (apply gx#stx-plist?__% _g174427_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g174427_))))))
    (define gx#stx-getq__%
      (lambda (_%key173110%_ _%stx173111%_ _%key=?173112%_)
        (if (procedure? _%key=?173112%_)
            '#!void
            (error '"expected procedure" _%key=?173112%_))
        (let _%lp173114%_ ((_%rest173116%_ _%stx173111%_))
          (let* ((_%g173117173125%_ (gx#syntax-e _%rest173116%_))
                 (_%else173119173133%_ (lambda () '#f))
                 (_%K173121173167%_
                  (lambda (_%rest173136%_ _%hd173137%_)
                    (let* ((_%g173138173145%_ (gx#syntax-e _%rest173136%_))
                           (_%E173140173149%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g173138173145%_
                                     '([val . rest]))
                              '#!void))
                           (_%K173141173155%_
                            (lambda (_%rest173152%_ _%val173153%_)
                              (if (_%key=?173112%_ _%hd173137%_ _%key173110%_)
                                  _%val173153%_
                                  (_%lp173114%_ _%rest173152%_)))))
                      (if (pair? _%g173138173145%_)
                          (let ((_%hd173142173158%_ (##car _%g173138173145%_))
                                (_%tl173143173160%_ (##cdr _%g173138173145%_)))
                            (let* ((_%val173163%_ _%hd173142173158%_)
                                   (_%rest173165%_ _%tl173143173160%_))
                              (_%K173141173155%_
                               _%rest173165%_
                               _%val173163%_)))
                          (_%E173140173149%_))))))
            (if (pair? _%g173117173125%_)
                (let ((_%hd173122173170%_ (##car _%g173117173125%_))
                      (_%tl173123173172%_ (##cdr _%g173117173125%_)))
                  (let* ((_%hd173175%_ _%hd173122173170%_)
                         (_%rest173177%_ _%tl173123173172%_))
                    (_%K173121173167%_ _%rest173177%_ _%hd173175%_)))
                (_%else173119173133%_))))))
    (define gx#stx-getq__0
      (lambda (_%key173182%_ _%stx173183%_)
        (let ((_%key=?173185%_ gx#stx-eq?))
          (gx#stx-getq__% _%key173182%_ _%stx173183%_ _%key=?173185%_))))
    (define gx#stx-getq
      (lambda _g174429_
        (let ((_g174430_ (##length _g174429_)))
          (cond ((##fx= _g174430_ 2) (apply gx#stx-getq__0 _g174429_))
                ((##fx= _g174430_ 3) (apply gx#stx-getq__% _g174429_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g174429_))))))))
