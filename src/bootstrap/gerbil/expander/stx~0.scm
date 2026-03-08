(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1773009266)
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
      (lambda _%$args174327%_
        (apply make-instance gx#identifier-wrap::t _%$args174327%_)))
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
      (lambda _%$args174324%_
        (apply make-instance gx#syntax-wrap::t _%$args174324%_)))
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
      (lambda _%$args174321%_
        (apply make-instance gx#syntax-quote::t _%$args174321%_)))
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
      (lambda (_%stx174319%_) (symbol? (gx#stx-e _%stx174319%_))))
    (define gx#identifier-quote?
      (lambda (_%stx174317%_)
        (if (##structure-direct-instance-of? _%stx174317%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx174317%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx174312%_)
        (if (##structure-direct-instance-of? _%stx174312%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx174312%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx174312%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx174307%_)
        (if (##structure-direct-instance-of? _%stx174307%_ 'gx#syntax-quote::t)
            _%stx174307%_
            (if (##structure-direct-instance-of?
                 _%stx174307%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx174307%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx174281%_)
        (if (##structure-direct-instance-of? _%stx174281%_ 'gx#syntax-wrap::t)
            (let _%lp174284%_ ((_%e174286%_
                                (##unchecked-structure-ref
                                 _%stx174281%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks174287%_
                                (cons (##unchecked-structure-ref
                                       _%stx174281%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e174286%_)
                  (let ((_%$e174290%_
                         (##type-id (##structure-type _%e174286%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e174290%_)
                        (_%lp174284%_
                         (##unchecked-structure-ref _%e174286%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e174286%_ '3 '#f '#f)
                          _%marks174287%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e174290%_)
                                (eq? 'gx#identifier-wrap::t _%$e174290%_))
                            (##unchecked-structure-ref _%e174286%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e174290%_)
                                (_%lp174284%_
                                 (##unchecked-structure-ref
                                  _%e174286%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks174287%_)
                                _%e174286%_))))
                  (if (null? _%marks174287%_)
                      _%e174286%_
                      (if (pair? _%e174286%_)
                          (cons (gx#stx-wrap
                                 (##car _%e174286%_)
                                 _%marks174287%_)
                                (gx#stx-wrap
                                 (##cdr _%e174286%_)
                                 _%marks174287%_))
                          (if (vector? _%e174286%_)
                              (vector-map
                               (lambda (_%g174298174300%_)
                                 (gx#stx-wrap
                                  _%g174298174300%_
                                  _%marks174287%_))
                               _%e174286%_)
                              (if (box? _%e174286%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e174286%_)
                                        _%marks174287%_))
                                  _%e174286%_))))))
            (if (##structure-instance-of? _%stx174281%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx174281%_ '1 '#f '#f)
                _%stx174281%_))))
    (define gx#syntax->datum
      (lambda (_%stx174274%_)
        (if (##structure-instance-of? _%stx174274%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx174274%_ '1 '#f '#f))
            (if (pair? _%stx174274%_)
                (cons (gx#syntax->datum (##car _%stx174274%_))
                      (gx#syntax->datum (##cdr _%stx174274%_)))
                (if (vector? _%stx174274%_)
                    (vector-map gx#syntax->datum _%stx174274%_)
                    (if (box? _%stx174274%_)
                        (box (gx#syntax->datum (unbox _%stx174274%_)))
                        _%stx174274%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx174208%_ _%datum174209%_ _%src174210%_ _%quote?174211%_)
        (letrec ((_%wrap-datum174213%_
                  (lambda (_%e174246%_ _%marks174247%_)
                    (_%wrap-inner174215%_
                     _%e174246%_
                     (lambda (_%g174248174250%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g174248174250%_
                        _%src174210%_
                        _%marks174247%_)))))
                 (_%wrap-quote174214%_
                  (lambda (_%e174238%_ _%ctx174239%_ _%marks174240%_)
                    (_%wrap-inner174215%_
                     _%e174238%_
                     (lambda (_%g174241174243%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g174241174243%_
                        _%src174210%_
                        _%ctx174239%_
                        _%marks174240%_)))))
                 (_%wrap-inner174215%_
                  (lambda (_%e174226%_ _%wrap-e174227%_)
                    (let _%recur174229%_ ((_%e174231%_ _%e174226%_))
                      (if (symbol? _%e174231%_)
                          (_%wrap-e174227%_ _%e174231%_)
                          (if (pair? _%e174231%_)
                              (cons (_%recur174229%_ (##car _%e174231%_))
                                    (_%recur174229%_ (##cdr _%e174231%_)))
                              (if (vector? _%e174231%_)
                                  (vector-map _%recur174229%_ _%e174231%_)
                                  (if (box? _%e174231%_)
                                      (box (_%recur174229%_
                                            (unbox _%e174231%_)))
                                      _%e174231%_)))))))
                 (_%wrap-outer174216%_
                  (lambda (_%e174224%_)
                    (if (##structure-instance-of? _%e174224%_ 'gerbil#AST::t)
                        _%e174224%_
                        (##structure gx#AST::t _%e174224%_ _%src174210%_)))))
          (if (##structure-instance-of? _%datum174209%_ 'gerbil#AST::t)
              _%datum174209%_
              (if (not _%stx174208%_)
                  (##structure gx#AST::t _%datum174209%_ _%src174210%_)
                  (if (gx#identifier? _%stx174208%_)
                      (let ((_%stx174221%_ (gx#stx-unwrap__0 _%stx174208%_)))
                        (_%wrap-outer174216%_
                         (if (##structure-direct-instance-of?
                              _%stx174221%_
                              'gx#syntax-quote::t)
                             (if _%quote?174211%_
                                 (_%wrap-quote174214%_
                                  _%datum174209%_
                                  (##unchecked-structure-ref
                                   _%stx174221%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx174221%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum174213%_
                                  _%datum174209%_
                                  (##unchecked-structure-ref
                                   _%stx174221%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum174213%_
                              _%datum174209%_
                              (##unchecked-structure-ref
                               _%stx174221%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx174208%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx174256%_ _%datum174257%_)
        (let* ((_%src174259%_ '#f) (_%quote?174261%_ '#t))
          (gx#datum->syntax__%
           _%stx174256%_
           _%datum174257%_
           _%src174259%_
           _%quote?174261%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx174263%_ _%datum174264%_ _%src174265%_)
        (let ((_%quote?174267%_ '#t))
          (gx#datum->syntax__%
           _%stx174263%_
           _%datum174264%_
           _%src174265%_
           _%quote?174267%_))))
    (define gx#datum->syntax
      (lambda _g174407_
        (let ((_g174408_ (##length _g174407_)))
          (cond ((##fx= _g174408_ 2) (apply gx#datum->syntax__0 _g174407_))
                ((##fx= _g174408_ 3) (apply gx#datum->syntax__1 _g174407_))
                ((##fx= _g174408_ 4) (apply gx#datum->syntax__% _g174407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g174407_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx174174%_ _%marks174175%_)
        (let _%lp174177%_ ((_%e174179%_ _%stx174174%_)
                           (_%marks174180%_ _%marks174175%_)
                           (_%src174181%_ (gx#stx-source _%stx174174%_)))
          (if (##structure-direct-instance-of? _%e174179%_ 'gx#syntax-wrap::t)
              (_%lp174177%_
               (##unchecked-structure-ref _%e174179%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e174179%_ '3 '#f '#f)
                _%marks174180%_)
               (##unchecked-structure-ref _%e174179%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e174179%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks174180%_)
                      _%e174179%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e174179%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e174179%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e174179%_ '3 '#f '#f)
                        _%marks174180%_)))
                  (if (##structure-direct-instance-of?
                       _%e174179%_
                       'gx#syntax-quote::t)
                      _%e174179%_
                      (if (##structure-instance-of? _%e174179%_ 'gerbil#AST::t)
                          (_%lp174177%_
                           (##unchecked-structure-ref _%e174179%_ '1 '#f '#f)
                           _%marks174180%_
                           (##unchecked-structure-ref _%e174179%_ '2 '#f '#f))
                          (if (symbol? _%e174179%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e174179%_
                               _%src174181%_
                               (reverse _%marks174180%_))
                              (if (null? _%marks174180%_)
                                  _%e174179%_
                                  (if (pair? _%e174179%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e174179%_)
                                             _%marks174180%_)
                                            (gx#stx-wrap
                                             (##cdr _%e174179%_)
                                             _%marks174180%_))
                                      (if (vector? _%e174179%_)
                                          (vector-map
                                           (lambda (_%g174190174192%_)
                                             (gx#stx-wrap
                                              _%g174190174192%_
                                              _%marks174180%_))
                                           _%e174179%_)
                                          (if (box? _%e174179%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e174179%_)
                                                    _%marks174180%_))
                                              _%e174179%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx174200%_)
        (let ((_%marks174202%_ '()))
          (gx#stx-unwrap__% _%stx174200%_ _%marks174202%_))))
    (define gx#stx-unwrap
      (lambda _g174409_
        (let ((_g174410_ (##length _g174409_)))
          (cond ((##fx= _g174410_ 1) (apply gx#stx-unwrap__0 _g174409_))
                ((##fx= _g174410_ 2) (apply gx#stx-unwrap__% _g174409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g174409_))))))
    (define gx#stx-wrap
      (lambda (_%stx174167%_ _%marks174168%_)
        (foldl__0
         (lambda (_%mark174170%_ _%stx174171%_)
           (gx#stx-apply-mark _%stx174171%_ _%mark174170%_))
         _%stx174167%_
         _%marks174168%_)))
    (define gx#stx-rewrap
      (lambda (_%stx174161%_ _%marks174162%_)
        (foldr__0
         (lambda (_%mark174164%_ _%stx174165%_)
           (gx#stx-apply-mark _%stx174165%_ _%mark174164%_))
         _%stx174161%_
         _%marks174162%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx174155%_ _%mark174156%_)
        (if (##structure-direct-instance-of? _%stx174155%_ 'gx#syntax-quote::t)
            _%stx174155%_
            (if (and (##structure-direct-instance-of?
                      _%stx174155%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark174156%_
                          (##unchecked-structure-ref
                           _%stx174155%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx174155%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx174155%_
                 (gx#stx-source _%stx174155%_)
                 _%mark174156%_)))))
    (define gx#apply-mark
      (lambda (_%mark174119%_ _%marks174120%_)
        (let* ((_%marks174121174129%_ _%marks174120%_)
               (_%else174123174137%_
                (lambda () (cons _%mark174119%_ _%marks174120%_)))
               (_%K174125174143%_
                (lambda (_%rest174140%_ _%hd174141%_)
                  (if (eq? _%mark174119%_ _%hd174141%_)
                      _%rest174140%_
                      (cons _%mark174119%_ _%marks174120%_)))))
          (if (pair? _%marks174121174129%_)
              (let ((_%hd174126174146%_ (##car _%marks174121174129%_))
                    (_%tl174127174148%_ (##cdr _%marks174121174129%_)))
                (let* ((_%hd174151%_ _%hd174126174146%_)
                       (_%rest174153%_ _%tl174127174148%_))
                  (_%K174125174143%_ _%rest174153%_ _%hd174151%_)))
              (_%else174123174137%_)))))
    (define gx#stx-e
      (lambda (_%stx174114%_)
        (if (##structure-direct-instance-of? _%stx174114%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx174114%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx174114%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx174114%_ '1 '#f '#f)
                _%stx174114%_))))
    (define gx#stx-source
      (lambda (_%stx174112%_)
        (if (##structure-instance-of? _%stx174112%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx174112%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx174106%_ _%src174107%_)
        (if (or (##structure-instance-of? _%stx174106%_ 'gerbil#AST::t)
                (not _%src174107%_))
            _%stx174106%_
            (##structure gx#AST::t _%stx174106%_ _%src174107%_))))
    (define gx#stx-datum?
      (lambda (_%stx174104%_) (gx#self-quoting? (gx#stx-e _%stx174104%_))))
    (define gx#self-quoting?
      (lambda (_%x174087%_)
        (let ((_%$e174089%_ (immediate? _%x174087%_)))
          (if _%$e174089%_
              _%$e174089%_
              (let ((_%$e174092%_ (number? _%x174087%_)))
                (if _%$e174092%_
                    _%$e174092%_
                    (let ((_%$e174095%_ (keyword? _%x174087%_)))
                      (if _%$e174095%_
                          _%$e174095%_
                          (let ((_%$e174098%_ (string? _%x174087%_)))
                            (if _%$e174098%_
                                _%$e174098%_
                                (let ((_%$e174101%_ (vector? _%x174087%_)))
                                  (if _%$e174101%_
                                      _%$e174101%_
                                      (u8vector? _%x174087%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e174085%_) (boolean? (gx#stx-e _%e174085%_))))
    (define gx#stx-keyword?
      (lambda (_%e174083%_) (keyword? (gx#stx-e _%e174083%_))))
    (define gx#stx-char? (lambda (_%e174081%_) (char? (gx#stx-e _%e174081%_))))
    (define gx#stx-number?
      (lambda (_%e174079%_) (number? (gx#stx-e _%e174079%_))))
    (define gx#stx-fixnum?
      (lambda (_%e174077%_) (fixnum? (gx#stx-e _%e174077%_))))
    (define gx#stx-string?
      (lambda (_%e174075%_) (string? (gx#stx-e _%e174075%_))))
    (define gx#stx-null? (lambda (_%e174073%_) (null? (gx#stx-e _%e174073%_))))
    (define gx#stx-pair? (lambda (_%e174071%_) (pair? (gx#stx-e _%e174071%_))))
    (define gx#stx-list?
      (lambda (_%e174033%_)
        (let* ((_%g174034174043%_ (gx#stx-e _%e174033%_))
               (_%E174037174047%_
                (lambda ()
                  (error '"No clause matching"
                         _%g174034174043%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K174039174063%_
                 (lambda (_%rest174061%_) (gx#stx-list? _%rest174061%_)))
                (_%K174038174053%_
                 (lambda (_%tail174051%_) (null? _%tail174051%_))))
            (if (pair? _%g174034174043%_)
                (let* ((_%tl174041174066%_ (##cdr _%g174034174043%_))
                       (_%rest174069%_ _%tl174041174066%_))
                  (gx#stx-list? _%rest174069%_))
                (let ((_%tail174056%_ _%g174034174043%_))
                  (null? _%tail174056%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e174026%_)
        (let* ((_%e174028%_ (gx#stx-e _%e174026%_))
               (_%$e174030%_ (pair? _%e174028%_)))
          (if _%$e174030%_ _%$e174030%_ (null? _%e174028%_)))))
    (define gx#stx-vector?
      (lambda (_%e174024%_) (vector? (gx#stx-e _%e174024%_))))
    (define gx#stx-box? (lambda (_%e174022%_) (box? (gx#stx-e _%e174022%_))))
    (define gx#stx-eq?
      (lambda (_%x174019%_ _%y174020%_)
        (eq? (gx#stx-e _%x174019%_) (gx#stx-e _%y174020%_))))
    (define gx#stx-eqv?
      (lambda (_%x174016%_ _%y174017%_)
        (eqv? (gx#stx-e _%x174016%_) (gx#stx-e _%y174017%_))))
    (define gx#stx-equal?
      (lambda (_%x174013%_ _%y174014%_)
        (equal? (gx#stx-e _%x174013%_) (gx#stx-e _%y174014%_))))
    (define gx#stx-false? (lambda (_%x174011%_) (not (gx#stx-e _%x174011%_))))
    (define gx#stx-identifier
      (lambda (_%template174008%_ . _%args174009%_)
        (gx#datum->syntax__1
         _%template174008%_
         (apply make-symbol (gx#syntax->datum _%args174009%_))
         (gx#stx-source _%template174008%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx174006%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx174006%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx174001%_)
        (if (##structure-direct-instance-of?
             _%stx174001%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx174001%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx174001%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx174001%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx174001%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx173997%_)
        (let ((_%stx173999%_ (gx#stx-unwrap__0 _%stx173997%_)))
          (if (gx#identifier-quote? _%stx173999%_)
              (##unchecked-structure-ref _%stx173999%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx173952%_)
        (let* ((_%g173953173963%_ (gx#stx-e _%stx173952%_))
               (_%else173956173971%_ (lambda () '#f)))
          (let ((_%K173959173985%_
                 (lambda (_%rest173982%_ _%hd173983%_)
                   (if (gx#identifier? _%hd173983%_)
                       (gx#identifier-list? _%rest173982%_)
                       '#f)))
                (_%K173958173976%_ (lambda () '#t)))
            (let ((_%try-match173955173979%_
                   (lambda ()
                     (if (null? _%g173953173963%_)
                         (_%K173958173976%_)
                         (_%else173956173971%_)))))
              (if (pair? _%g173953173963%_)
                  (let ((_%tl173961173990%_ (##cdr _%g173953173963%_))
                        (_%hd173960173988%_ (##car _%g173953173963%_)))
                    (let ((_%hd173993%_ _%hd173960173988%_)
                          (_%rest173995%_ _%tl173961173990%_))
                      (_%K173959173985%_ _%rest173995%_ _%hd173993%_)))
                  (_%try-match173955173979%_)))))))
    (define gx#genident__%
      (lambda (_%e173932%_ _%src173933%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src173933%_) _%src173933%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e173935%_ (gx#stx-e _%e173932%_)))
              (if (symbol? _%e173935%_) _%e173935%_ 'g)))))
         _%src173933%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e173941%_ 'g) (_%src173943%_ '#f))
          (gx#genident__% _%e173941%_ _%src173943%_))))
    (define gx#genident__1
      (lambda (_%e173945%_)
        (let ((_%src173947%_ '#f))
          (gx#genident__% _%e173945%_ _%src173947%_))))
    (define gx#genident
      (lambda _g174411_
        (let ((_g174412_ (##length _g174411_)))
          (cond ((##fx= _g174412_ 0) (apply gx#genident__0 _g174411_))
                ((##fx= _g174412_ 1) (apply gx#genident__1 _g174411_))
                ((##fx= _g174412_ 2) (apply gx#genident__% _g174411_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g174411_))))))
    (define gx#gentemps
      (lambda (_%stx-lst173927%_)
        (gx#stx-map1
         (lambda (_%x173929%_) (gx#genident__% _%x173929%_ _%x173929%_))
         _%stx-lst173927%_)))
    (define gx#syntax->list
      (lambda (_%stx173925%_) (gx#stx-map1 values _%stx173925%_)))
    (define gx#stx-car
      (lambda (_%stx173922%_)
        (declare (safe))
        (car (gx#syntax-e _%stx173922%_))))
    (define gx#stx-cdr
      (lambda (_%stx173919%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx173919%_))))
    (define gx#stx-length
      (lambda (_%stx173884%_)
        (let _%lp173886%_ ((_%rest173888%_ _%stx173884%_) (_%n173889%_ '0))
          (let* ((_%g173890173898%_ (gx#stx-e _%rest173888%_))
                 (_%else173892173906%_ (lambda () _%n173889%_))
                 (_%K173894173911%_
                  (lambda (_%rest173909%_)
                    (_%lp173886%_ _%rest173909%_ (##fx+ _%n173889%_ '1)))))
            (if (pair? _%g173890173898%_)
                (let* ((_%tl173896173914%_ (##cdr _%g173890173898%_))
                       (_%rest173917%_ _%tl173896173914%_))
                  (_%K173894173911%_ _%rest173917%_))
                (_%else173892173906%_))))))
    (define gx#stx-for-each
      (lambda _g174413_
        (let ((_g174414_ (##length _g174413_)))
          (cond ((##fx= _g174414_ 2) (apply gx#stx-for-each1 _g174413_))
                ((##fx= _g174414_ 3) (apply gx#stx-for-each2 _g174413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g174413_))))))
    (define gx#stx-for-each1
      (lambda (_%f173827%_ _%stx173828%_)
        (if (procedure? _%f173827%_)
            '#!void
            (error '"expected procedure" _%f173827%_))
        (let _%lp173830%_ ((_%rest173832%_ _%stx173828%_))
          (let* ((_%g173833173843%_ (gx#syntax-e _%rest173832%_))
                 (_%else173836173851%_
                  (lambda () (_%f173827%_ _%rest173832%_))))
            (let ((_%K173839173865%_
                   (lambda (_%rest173862%_ _%hd173863%_)
                     (_%f173827%_ _%hd173863%_)
                     (_%lp173830%_ _%rest173862%_)))
                  (_%K173838173856%_ (lambda () '#!void)))
              (let ((_%try-match173835173859%_
                     (lambda ()
                       (if (null? _%g173833173843%_)
                           (_%K173838173856%_)
                           (_%else173836173851%_)))))
                (if (pair? _%g173833173843%_)
                    (let ((_%tl173841173870%_ (##cdr _%g173833173843%_))
                          (_%hd173840173868%_ (##car _%g173833173843%_)))
                      (let ((_%hd173873%_ _%hd173840173868%_)
                            (_%rest173875%_ _%tl173841173870%_))
                        (_%K173839173865%_ _%rest173875%_ _%hd173873%_)))
                    (_%try-match173835173859%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f173732%_ _%xstx173733%_ _%ystx173734%_)
        (if (procedure? _%f173732%_)
            '#!void
            (error '"expected procedure" _%f173732%_))
        (let _%lp173736%_ ((_%xrest173738%_ _%xstx173733%_)
                           (_%yrest173739%_ _%ystx173734%_))
          (let* ((_%g173740173750%_ (gx#syntax-e _%xrest173738%_))
                 (_%else173743173758%_ (lambda () '#!void)))
            (let ((_%K173746173815%_
                   (lambda (_%xrest173784%_ _%xhd173785%_)
                     (let* ((_%g173786173793%_ (gx#syntax-e _%yrest173739%_))
                            (_%E173788173797%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g173786173793%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K173789173803%_
                             (lambda (_%yrest173800%_ _%yhd173801%_)
                               (_%f173732%_ _%xhd173785%_ _%yhd173801%_)
                               (_%lp173736%_
                                _%xrest173784%_
                                _%yrest173800%_))))
                       (if (pair? _%g173786173793%_)
                           (let ((_%hd173790173806%_ (##car _%g173786173793%_))
                                 (_%tl173791173808%_
                                  (##cdr _%g173786173793%_)))
                             (let* ((_%yhd173811%_ _%hd173790173806%_)
                                    (_%yrest173813%_ _%tl173791173808%_))
                               (_%K173789173803%_
                                _%yrest173813%_
                                _%yhd173811%_)))
                           (_%E173788173797%_)))))
                  (_%K173745173778%_
                   (lambda ()
                     (let* ((_%yrest173762173767%_ _%yrest173739%_)
                            (_%E173764173771%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest173762173767%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K173765173775%_
                             (lambda ()
                               (_%f173732%_ _%xrest173738%_ _%yrest173739%_))))
                       (if (gx#stx-null? _%yrest173762173767%_)
                           (_%E173764173771%_)
                           (_%K173765173775%_))))))
              (let ((_%try-match173742173781%_
                     (lambda ()
                       (if (null? _%g173740173750%_)
                           (_%else173743173758%_)
                           (_%K173745173778%_)))))
                (if (pair? _%g173740173750%_)
                    (let ((_%tl173748173820%_ (##cdr _%g173740173750%_))
                          (_%hd173747173818%_ (##car _%g173740173750%_)))
                      (let ((_%xhd173823%_ _%hd173747173818%_)
                            (_%xrest173825%_ _%tl173748173820%_))
                        (_%K173746173815%_ _%xrest173825%_ _%xhd173823%_)))
                    (_%try-match173742173781%_))))))))
    (define gx#stx-map
      (lambda _g174415_
        (let ((_g174416_ (##length _g174415_)))
          (cond ((##fx= _g174416_ 2) (apply gx#stx-map1 _g174415_))
                ((##fx= _g174416_ 3) (apply gx#stx-map2 _g174415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g174415_))))))
    (define gx#stx-map1
      (lambda (_%f173675%_ _%stx173676%_)
        (if (procedure? _%f173675%_)
            '#!void
            (error '"expected procedure" _%f173675%_))
        (let _%recur173678%_ ((_%rest173680%_ _%stx173676%_))
          (let* ((_%g173681173691%_ (gx#syntax-e _%rest173680%_))
                 (_%else173684173699%_
                  (lambda () (_%f173675%_ _%rest173680%_))))
            (let ((_%K173687173713%_
                   (lambda (_%rest173710%_ _%hd173711%_)
                     (cons (_%f173675%_ _%hd173711%_)
                           (_%recur173678%_ _%rest173710%_))))
                  (_%K173686173704%_ (lambda () '())))
              (let ((_%try-match173683173707%_
                     (lambda ()
                       (if (null? _%g173681173691%_)
                           (_%K173686173704%_)
                           (_%else173684173699%_)))))
                (if (pair? _%g173681173691%_)
                    (let ((_%tl173689173718%_ (##cdr _%g173681173691%_))
                          (_%hd173688173716%_ (##car _%g173681173691%_)))
                      (let ((_%hd173721%_ _%hd173688173716%_)
                            (_%rest173723%_ _%tl173689173718%_))
                        (_%K173687173713%_ _%rest173723%_ _%hd173721%_)))
                    (_%try-match173683173707%_))))))))
    (define gx#stx-map2
      (lambda (_%f173580%_ _%xstx173581%_ _%ystx173582%_)
        (if (procedure? _%f173580%_)
            '#!void
            (error '"expected procedure" _%f173580%_))
        (let _%recur173584%_ ((_%xrest173586%_ _%xstx173581%_)
                              (_%yrest173587%_ _%ystx173582%_))
          (let* ((_%g173588173598%_ (gx#syntax-e _%xrest173586%_))
                 (_%else173591173606%_ (lambda () '())))
            (let ((_%K173594173663%_
                   (lambda (_%xrest173632%_ _%xhd173633%_)
                     (let* ((_%g173634173641%_ (gx#syntax-e _%yrest173587%_))
                            (_%E173636173645%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g173634173641%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K173637173651%_
                             (lambda (_%yrest173648%_ _%yhd173649%_)
                               (cons (_%f173580%_ _%xhd173633%_ _%yhd173649%_)
                                     (_%recur173584%_
                                      _%xrest173632%_
                                      _%yrest173648%_)))))
                       (if (pair? _%g173634173641%_)
                           (let ((_%hd173638173654%_ (##car _%g173634173641%_))
                                 (_%tl173639173656%_
                                  (##cdr _%g173634173641%_)))
                             (let* ((_%yhd173659%_ _%hd173638173654%_)
                                    (_%yrest173661%_ _%tl173639173656%_))
                               (_%K173637173651%_
                                _%yrest173661%_
                                _%yhd173659%_)))
                           (_%E173636173645%_)))))
                  (_%K173593173626%_
                   (lambda ()
                     (let* ((_%yrest173610173615%_ _%yrest173587%_)
                            (_%E173612173619%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest173610173615%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K173613173623%_
                             (lambda ()
                               (_%f173580%_ _%xrest173586%_ _%yrest173587%_))))
                       (if (gx#stx-null? _%yrest173610173615%_)
                           (_%E173612173619%_)
                           (_%K173613173623%_))))))
              (let ((_%try-match173590173629%_
                     (lambda ()
                       (if (null? _%g173588173598%_)
                           (_%else173591173606%_)
                           (_%K173593173626%_)))))
                (if (pair? _%g173588173598%_)
                    (let ((_%tl173596173668%_ (##cdr _%g173588173598%_))
                          (_%hd173595173666%_ (##car _%g173588173598%_)))
                      (let ((_%xhd173671%_ _%hd173595173666%_)
                            (_%xrest173673%_ _%tl173596173668%_))
                        (_%K173594173663%_ _%xrest173673%_ _%xhd173671%_)))
                    (_%try-match173590173629%_))))))))
    (define gx#stx-andmap
      (lambda (_%f173530%_ _%stx173531%_)
        (if (procedure? _%f173530%_)
            '#!void
            (error '"expected procedure" _%f173530%_))
        (let _%lp173533%_ ((_%rest173535%_ _%stx173531%_))
          (let* ((_%g173536173546%_ (gx#syntax-e _%rest173535%_))
                 (_%else173539173554%_
                  (lambda () (_%f173530%_ _%rest173535%_))))
            (let ((_%K173542173568%_
                   (lambda (_%rest173565%_ _%hd173566%_)
                     (if (_%f173530%_ _%hd173566%_)
                         (_%lp173533%_ _%rest173565%_)
                         '#f)))
                  (_%K173541173559%_ (lambda () '#t)))
              (let ((_%try-match173538173562%_
                     (lambda ()
                       (if (null? _%g173536173546%_)
                           (_%K173541173559%_)
                           (_%else173539173554%_)))))
                (if (pair? _%g173536173546%_)
                    (let ((_%tl173544173573%_ (##cdr _%g173536173546%_))
                          (_%hd173543173571%_ (##car _%g173536173546%_)))
                      (let ((_%hd173576%_ _%hd173543173571%_)
                            (_%rest173578%_ _%tl173544173573%_))
                        (_%K173542173568%_ _%rest173578%_ _%hd173576%_)))
                    (_%try-match173538173562%_))))))))
    (define gx#stx-ormap
      (lambda (_%f173477%_ _%stx173478%_)
        (if (procedure? _%f173477%_)
            '#!void
            (error '"expected procedure" _%f173477%_))
        (let _%lp173480%_ ((_%rest173482%_ _%stx173478%_))
          (let* ((_%g173483173493%_ (gx#syntax-e _%rest173482%_))
                 (_%else173486173501%_
                  (lambda () (_%f173477%_ _%rest173482%_))))
            (let ((_%K173489173518%_
                   (lambda (_%rest173512%_ _%hd173513%_)
                     (let ((_%$e173515%_ (_%f173477%_ _%hd173513%_)))
                       (if _%$e173515%_
                           _%$e173515%_
                           (_%lp173480%_ _%rest173512%_)))))
                  (_%K173488173506%_ (lambda () '#f)))
              (let ((_%try-match173485173509%_
                     (lambda ()
                       (if (null? _%g173483173493%_)
                           (_%K173488173506%_)
                           (_%else173486173501%_)))))
                (if (pair? _%g173483173493%_)
                    (let ((_%tl173491173523%_ (##cdr _%g173483173493%_))
                          (_%hd173490173521%_ (##car _%g173483173493%_)))
                      (let ((_%hd173526%_ _%hd173490173521%_)
                            (_%rest173528%_ _%tl173491173523%_))
                        (_%K173489173518%_ _%rest173528%_ _%hd173526%_)))
                    (_%try-match173485173509%_))))))))
    (define gx#stx-foldl
      (lambda (_%f173425%_ _%iv173426%_ _%stx173427%_)
        (if (procedure? _%f173425%_)
            '#!void
            (error '"expected procedure" _%f173425%_))
        (let _%lp173429%_ ((_%r173431%_ _%iv173426%_)
                           (_%rest173432%_ _%stx173427%_))
          (let* ((_%g173433173443%_ (gx#syntax-e _%rest173432%_))
                 (_%else173436173451%_
                  (lambda () (_%f173425%_ _%rest173432%_ _%r173431%_))))
            (let ((_%K173439173465%_
                   (lambda (_%rest173462%_ _%hd173463%_)
                     (_%lp173429%_
                      (_%f173425%_ _%hd173463%_ _%r173431%_)
                      _%rest173462%_)))
                  (_%K173438173456%_ (lambda () _%r173431%_)))
              (let ((_%try-match173435173459%_
                     (lambda ()
                       (if (null? _%g173433173443%_)
                           (_%K173438173456%_)
                           (_%else173436173451%_)))))
                (if (pair? _%g173433173443%_)
                    (let ((_%tl173441173470%_ (##cdr _%g173433173443%_))
                          (_%hd173440173468%_ (##car _%g173433173443%_)))
                      (let ((_%hd173473%_ _%hd173440173468%_)
                            (_%rest173475%_ _%tl173441173470%_))
                        (_%K173439173465%_ _%rest173475%_ _%hd173473%_)))
                    (_%try-match173435173459%_))))))))
    (define gx#stx-foldr
      (lambda (_%f173374%_ _%iv173375%_ _%stx173376%_)
        (if (procedure? _%f173374%_)
            '#!void
            (error '"expected procedure" _%f173374%_))
        (let _%recur173378%_ ((_%rest173380%_ _%stx173376%_))
          (let* ((_%g173381173391%_ (gx#syntax-e _%rest173380%_))
                 (_%else173384173399%_
                  (lambda () (_%f173374%_ _%rest173380%_ _%iv173375%_))))
            (let ((_%K173387173413%_
                   (lambda (_%rest173410%_ _%hd173411%_)
                     (_%f173374%_
                      _%hd173411%_
                      (_%recur173378%_ _%rest173410%_))))
                  (_%K173386173404%_ (lambda () _%iv173375%_)))
              (let ((_%try-match173383173407%_
                     (lambda ()
                       (if (null? _%g173381173391%_)
                           (_%K173386173404%_)
                           (_%else173384173399%_)))))
                (if (pair? _%g173381173391%_)
                    (let ((_%tl173389173418%_ (##cdr _%g173381173391%_))
                          (_%hd173388173416%_ (##car _%g173381173391%_)))
                      (let ((_%hd173421%_ _%hd173388173416%_)
                            (_%rest173423%_ _%tl173389173418%_))
                        (_%K173387173413%_ _%rest173423%_ _%hd173421%_)))
                    (_%try-match173383173407%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx173372%_) (gx#stx-foldl cons '() _%stx173372%_)))
    (define gx#stx-last
      (lambda (_%stx173333%_)
        (let _%lp173335%_ ((_%rest173337%_ _%stx173333%_))
          (let* ((_%g173338173346%_ (gx#syntax-e _%rest173337%_))
                 (_%else173340173354%_ (lambda () _%rest173337%_))
                 (_%K173342173360%_
                  (lambda (_%rest173357%_ _%hd173358%_)
                    (if (gx#stx-null? _%rest173357%_)
                        _%hd173358%_
                        (_%lp173335%_ _%rest173357%_)))))
            (if (pair? _%g173338173346%_)
                (let ((_%hd173343173363%_ (##car _%g173338173346%_))
                      (_%tl173344173365%_ (##cdr _%g173338173346%_)))
                  (let* ((_%hd173368%_ _%hd173343173363%_)
                         (_%rest173370%_ _%tl173344173365%_))
                    (_%K173342173360%_ _%rest173370%_ _%hd173368%_)))
                (_%else173340173354%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx173304%_)
        (let _%lp173306%_ ((_%hd173308%_ _%stx173304%_))
          (let* ((_%g173309173316%_ (gx#syntax-e _%hd173308%_))
                 (_%E173311173320%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g173309173316%_
                           '([_ . rest]))
                    '#!void))
                 (_%K173312173325%_
                  (lambda (_%rest173323%_)
                    (if (gx#stx-pair? _%rest173323%_)
                        (_%lp173306%_ _%rest173323%_)
                        _%hd173308%_))))
            (if (pair? _%g173309173316%_)
                (let* ((_%tl173314173328%_ (##cdr _%g173309173316%_))
                       (_%rest173331%_ _%tl173314173328%_))
                  (_%K173312173325%_ _%rest173331%_))
                (_%E173311173320%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx173273%_ _%k173274%_)
        (let _%lp173276%_ ((_%rest173278%_ _%stx173273%_)
                           (_%k173279%_ _%k173274%_))
          (if (fxpositive? _%k173279%_)
              (let* ((_%g173280173287%_ (gx#syntax-e _%rest173278%_))
                     (_%E173282173291%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g173280173287%_
                               '([_ . rest]))
                        '#!void))
                     (_%K173283173296%_
                      (lambda (_%rest173294%_)
                        (_%lp173276%_ _%rest173294%_ (##fx- _%k173279%_ '1)))))
                (if (pair? _%g173280173287%_)
                    (let* ((_%tl173285173299%_ (##cdr _%g173280173287%_))
                           (_%rest173302%_ _%tl173285173299%_))
                      (_%K173283173296%_ _%rest173302%_))
                    (_%E173282173291%_)))
              _%rest173278%_))))
    (define gx#stx-list-ref
      (lambda (_%stx173270%_ _%k173271%_)
        (gx#stx-car (gx#stx-list-tail _%stx173270%_ _%k173271%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx173182%_ _%key?173183%_)
        (if (procedure? _%key?173183%_)
            '#!void
            (error '"expected procedure" _%key?173183%_))
        (let _%lp173185%_ ((_%rest173187%_ _%stx173182%_))
          (let* ((_%g173188173198%_ (gx#stx-e _%rest173187%_))
                 (_%else173191173206%_ (lambda () '#f)))
            (let ((_%K173194173248%_
                   (lambda (_%rest173217%_ _%hd173218%_)
                     (if (_%key?173183%_ _%hd173218%_)
                         (let* ((_%g173219173227%_ (gx#stx-e _%rest173217%_))
                                (_%else173221173235%_ (lambda () '#f))
                                (_%K173223173240%_
                                 (lambda (_%rest173238%_)
                                   (_%lp173185%_ _%rest173238%_))))
                           (if (pair? _%g173219173227%_)
                               (let* ((_%tl173225173243%_
                                       (##cdr _%g173219173227%_))
                                      (_%rest173246%_ _%tl173225173243%_))
                                 (_%lp173185%_ _%rest173246%_))
                               (_%else173221173235%_)))
                         '#f)))
                  (_%K173193173211%_ (lambda () '#t)))
              (let ((_%try-match173190173214%_
                     (lambda ()
                       (if (null? _%g173188173198%_)
                           (_%K173193173211%_)
                           (_%else173191173206%_)))))
                (if (pair? _%g173188173198%_)
                    (let ((_%tl173196173253%_ (##cdr _%g173188173198%_))
                          (_%hd173195173251%_ (##car _%g173188173198%_)))
                      (let ((_%hd173256%_ _%hd173195173251%_)
                            (_%rest173258%_ _%tl173196173253%_))
                        (_%K173194173248%_ _%rest173258%_ _%hd173256%_)))
                    (_%try-match173190173214%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx173263%_)
        (let ((_%key?173265%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx173263%_ _%key?173265%_))))
    (define gx#stx-plist?
      (lambda _g174417_
        (let ((_g174418_ (##length _g174417_)))
          (cond ((##fx= _g174418_ 1) (apply gx#stx-plist?__0 _g174417_))
                ((##fx= _g174418_ 2) (apply gx#stx-plist?__% _g174417_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g174417_))))))
    (define gx#stx-getq__%
      (lambda (_%key173100%_ _%stx173101%_ _%key=?173102%_)
        (if (procedure? _%key=?173102%_)
            '#!void
            (error '"expected procedure" _%key=?173102%_))
        (let _%lp173104%_ ((_%rest173106%_ _%stx173101%_))
          (let* ((_%g173107173115%_ (gx#syntax-e _%rest173106%_))
                 (_%else173109173123%_ (lambda () '#f))
                 (_%K173111173157%_
                  (lambda (_%rest173126%_ _%hd173127%_)
                    (let* ((_%g173128173135%_ (gx#syntax-e _%rest173126%_))
                           (_%E173130173139%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g173128173135%_
                                     '([val . rest]))
                              '#!void))
                           (_%K173131173145%_
                            (lambda (_%rest173142%_ _%val173143%_)
                              (if (_%key=?173102%_ _%hd173127%_ _%key173100%_)
                                  _%val173143%_
                                  (_%lp173104%_ _%rest173142%_)))))
                      (if (pair? _%g173128173135%_)
                          (let ((_%hd173132173148%_ (##car _%g173128173135%_))
                                (_%tl173133173150%_ (##cdr _%g173128173135%_)))
                            (let* ((_%val173153%_ _%hd173132173148%_)
                                   (_%rest173155%_ _%tl173133173150%_))
                              (_%K173131173145%_
                               _%rest173155%_
                               _%val173153%_)))
                          (_%E173130173139%_))))))
            (if (pair? _%g173107173115%_)
                (let ((_%hd173112173160%_ (##car _%g173107173115%_))
                      (_%tl173113173162%_ (##cdr _%g173107173115%_)))
                  (let* ((_%hd173165%_ _%hd173112173160%_)
                         (_%rest173167%_ _%tl173113173162%_))
                    (_%K173111173157%_ _%rest173167%_ _%hd173165%_)))
                (_%else173109173123%_))))))
    (define gx#stx-getq__0
      (lambda (_%key173172%_ _%stx173173%_)
        (let ((_%key=?173175%_ gx#stx-eq?))
          (gx#stx-getq__% _%key173172%_ _%stx173173%_ _%key=?173175%_))))
    (define gx#stx-getq
      (lambda _g174419_
        (let ((_g174420_ (##length _g174419_)))
          (cond ((##fx= _g174420_ 2) (apply gx#stx-getq__0 _g174419_))
                ((##fx= _g174420_ 3) (apply gx#stx-getq__% _g174419_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g174419_))))))))
