(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1779274770)
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
      (lambda _%$args174616%_
        (apply make-instance gx#identifier-wrap::t _%$args174616%_)))
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
      (lambda _%$args174613%_
        (apply make-instance gx#syntax-wrap::t _%$args174613%_)))
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
      (lambda _%$args174610%_
        (apply make-instance gx#syntax-quote::t _%$args174610%_)))
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
      (lambda (_%stx174608%_) (symbol? (gx#stx-e _%stx174608%_))))
    (define gx#identifier-quote?
      (lambda (_%stx174606%_)
        (if (##structure-direct-instance-of? _%stx174606%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx174606%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx174601%_)
        (if (##structure-direct-instance-of? _%stx174601%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx174601%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx174601%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx174596%_)
        (if (##structure-direct-instance-of? _%stx174596%_ 'gx#syntax-quote::t)
            _%stx174596%_
            (if (##structure-direct-instance-of?
                 _%stx174596%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx174596%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx174570%_)
        (if (##structure-direct-instance-of? _%stx174570%_ 'gx#syntax-wrap::t)
            (let _%lp174573%_ ((_%e174575%_
                                (##unchecked-structure-ref
                                 _%stx174570%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks174576%_
                                (cons (##unchecked-structure-ref
                                       _%stx174570%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e174575%_)
                  (let ((_%$e174579%_
                         (##type-id (##structure-type _%e174575%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e174579%_)
                        (_%lp174573%_
                         (##unchecked-structure-ref _%e174575%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e174575%_ '3 '#f '#f)
                          _%marks174576%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e174579%_)
                                (eq? 'gx#identifier-wrap::t _%$e174579%_))
                            (##unchecked-structure-ref _%e174575%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e174579%_)
                                (_%lp174573%_
                                 (##unchecked-structure-ref
                                  _%e174575%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks174576%_)
                                _%e174575%_))))
                  (if (null? _%marks174576%_)
                      _%e174575%_
                      (if (pair? _%e174575%_)
                          (cons (gx#stx-wrap
                                 (##car _%e174575%_)
                                 _%marks174576%_)
                                (gx#stx-wrap
                                 (##cdr _%e174575%_)
                                 _%marks174576%_))
                          (if (vector? _%e174575%_)
                              (vector-map
                               (lambda (_%g174587174589%_)
                                 (gx#stx-wrap
                                  _%g174587174589%_
                                  _%marks174576%_))
                               _%e174575%_)
                              (if (box? _%e174575%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e174575%_)
                                        _%marks174576%_))
                                  _%e174575%_))))))
            (if (##structure-instance-of? _%stx174570%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx174570%_ '1 '#f '#f)
                _%stx174570%_))))
    (define gx#syntax->datum
      (lambda (_%stx174563%_)
        (if (##structure-instance-of? _%stx174563%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx174563%_ '1 '#f '#f))
            (if (pair? _%stx174563%_)
                (cons (gx#syntax->datum (##car _%stx174563%_))
                      (gx#syntax->datum (##cdr _%stx174563%_)))
                (if (vector? _%stx174563%_)
                    (vector-map gx#syntax->datum _%stx174563%_)
                    (if (box? _%stx174563%_)
                        (box (gx#syntax->datum (unbox _%stx174563%_)))
                        _%stx174563%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx174497%_ _%datum174498%_ _%src174499%_ _%quote?174500%_)
        (letrec ((_%wrap-datum174502%_
                  (lambda (_%e174535%_ _%marks174536%_)
                    (_%wrap-inner174504%_
                     _%e174535%_
                     (lambda (_%g174537174539%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g174537174539%_
                        _%src174499%_
                        _%marks174536%_)))))
                 (_%wrap-quote174503%_
                  (lambda (_%e174527%_ _%ctx174528%_ _%marks174529%_)
                    (_%wrap-inner174504%_
                     _%e174527%_
                     (lambda (_%g174530174532%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g174530174532%_
                        _%src174499%_
                        _%ctx174528%_
                        _%marks174529%_)))))
                 (_%wrap-inner174504%_
                  (lambda (_%e174515%_ _%wrap-e174516%_)
                    (let _%recur174518%_ ((_%e174520%_ _%e174515%_))
                      (if (symbol? _%e174520%_)
                          (_%wrap-e174516%_ _%e174520%_)
                          (if (pair? _%e174520%_)
                              (cons (_%recur174518%_ (##car _%e174520%_))
                                    (_%recur174518%_ (##cdr _%e174520%_)))
                              (if (vector? _%e174520%_)
                                  (vector-map _%recur174518%_ _%e174520%_)
                                  (if (box? _%e174520%_)
                                      (box (_%recur174518%_
                                            (unbox _%e174520%_)))
                                      _%e174520%_)))))))
                 (_%wrap-outer174505%_
                  (lambda (_%e174513%_)
                    (if (##structure-instance-of? _%e174513%_ 'gerbil#AST::t)
                        _%e174513%_
                        (##structure gx#AST::t _%e174513%_ _%src174499%_)))))
          (if (##structure-instance-of? _%datum174498%_ 'gerbil#AST::t)
              _%datum174498%_
              (if (not _%stx174497%_)
                  (##structure gx#AST::t _%datum174498%_ _%src174499%_)
                  (if (gx#identifier? _%stx174497%_)
                      (let ((_%stx174510%_ (gx#stx-unwrap__0 _%stx174497%_)))
                        (_%wrap-outer174505%_
                         (if (##structure-direct-instance-of?
                              _%stx174510%_
                              'gx#syntax-quote::t)
                             (if _%quote?174500%_
                                 (_%wrap-quote174503%_
                                  _%datum174498%_
                                  (##unchecked-structure-ref
                                   _%stx174510%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx174510%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum174502%_
                                  _%datum174498%_
                                  (##unchecked-structure-ref
                                   _%stx174510%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum174502%_
                              _%datum174498%_
                              (##unchecked-structure-ref
                               _%stx174510%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx174497%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx174545%_ _%datum174546%_)
        (let* ((_%src174548%_ '#f) (_%quote?174550%_ '#t))
          (gx#datum->syntax__%
           _%stx174545%_
           _%datum174546%_
           _%src174548%_
           _%quote?174550%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx174552%_ _%datum174553%_ _%src174554%_)
        (let ((_%quote?174556%_ '#t))
          (gx#datum->syntax__%
           _%stx174552%_
           _%datum174553%_
           _%src174554%_
           _%quote?174556%_))))
    (define gx#datum->syntax
      (lambda _g174696_
        (let ((_g174697_ (##length _g174696_)))
          (cond ((##fx= _g174697_ 2) (apply gx#datum->syntax__0 _g174696_))
                ((##fx= _g174697_ 3) (apply gx#datum->syntax__1 _g174696_))
                ((##fx= _g174697_ 4) (apply gx#datum->syntax__% _g174696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g174696_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx174463%_ _%marks174464%_)
        (let _%lp174466%_ ((_%e174468%_ _%stx174463%_)
                           (_%marks174469%_ _%marks174464%_)
                           (_%src174470%_ (gx#stx-source _%stx174463%_)))
          (if (##structure-direct-instance-of? _%e174468%_ 'gx#syntax-wrap::t)
              (_%lp174466%_
               (##unchecked-structure-ref _%e174468%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e174468%_ '3 '#f '#f)
                _%marks174469%_)
               (##unchecked-structure-ref _%e174468%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e174468%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks174469%_)
                      _%e174468%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e174468%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e174468%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e174468%_ '3 '#f '#f)
                        _%marks174469%_)))
                  (if (##structure-direct-instance-of?
                       _%e174468%_
                       'gx#syntax-quote::t)
                      _%e174468%_
                      (if (##structure-instance-of? _%e174468%_ 'gerbil#AST::t)
                          (_%lp174466%_
                           (##unchecked-structure-ref _%e174468%_ '1 '#f '#f)
                           _%marks174469%_
                           (##unchecked-structure-ref _%e174468%_ '2 '#f '#f))
                          (if (symbol? _%e174468%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e174468%_
                               _%src174470%_
                               (reverse _%marks174469%_))
                              (if (null? _%marks174469%_)
                                  _%e174468%_
                                  (if (pair? _%e174468%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e174468%_)
                                             _%marks174469%_)
                                            (gx#stx-wrap
                                             (##cdr _%e174468%_)
                                             _%marks174469%_))
                                      (if (vector? _%e174468%_)
                                          (vector-map
                                           (lambda (_%g174479174481%_)
                                             (gx#stx-wrap
                                              _%g174479174481%_
                                              _%marks174469%_))
                                           _%e174468%_)
                                          (if (box? _%e174468%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e174468%_)
                                                    _%marks174469%_))
                                              _%e174468%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx174489%_)
        (let ((_%marks174491%_ '()))
          (gx#stx-unwrap__% _%stx174489%_ _%marks174491%_))))
    (define gx#stx-unwrap
      (lambda _g174698_
        (let ((_g174699_ (##length _g174698_)))
          (cond ((##fx= _g174699_ 1) (apply gx#stx-unwrap__0 _g174698_))
                ((##fx= _g174699_ 2) (apply gx#stx-unwrap__% _g174698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g174698_))))))
    (define gx#stx-wrap
      (lambda (_%stx174456%_ _%marks174457%_)
        (foldl__0
         (lambda (_%mark174459%_ _%stx174460%_)
           (gx#stx-apply-mark _%stx174460%_ _%mark174459%_))
         _%stx174456%_
         _%marks174457%_)))
    (define gx#stx-rewrap
      (lambda (_%stx174450%_ _%marks174451%_)
        (foldr__0
         (lambda (_%mark174453%_ _%stx174454%_)
           (gx#stx-apply-mark _%stx174454%_ _%mark174453%_))
         _%stx174450%_
         _%marks174451%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx174444%_ _%mark174445%_)
        (if (##structure-direct-instance-of? _%stx174444%_ 'gx#syntax-quote::t)
            _%stx174444%_
            (if (and (##structure-direct-instance-of?
                      _%stx174444%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark174445%_
                          (##unchecked-structure-ref
                           _%stx174444%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx174444%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx174444%_
                 (gx#stx-source _%stx174444%_)
                 _%mark174445%_)))))
    (define gx#apply-mark
      (lambda (_%mark174408%_ _%marks174409%_)
        (let* ((_%marks174410174418%_ _%marks174409%_)
               (_%else174412174426%_
                (lambda () (cons _%mark174408%_ _%marks174409%_)))
               (_%K174414174432%_
                (lambda (_%rest174429%_ _%hd174430%_)
                  (if (eq? _%mark174408%_ _%hd174430%_)
                      _%rest174429%_
                      (cons _%mark174408%_ _%marks174409%_)))))
          (if (pair? _%marks174410174418%_)
              (let ((_%hd174415174435%_ (##car _%marks174410174418%_))
                    (_%tl174416174437%_ (##cdr _%marks174410174418%_)))
                (let* ((_%hd174440%_ _%hd174415174435%_)
                       (_%rest174442%_ _%tl174416174437%_))
                  (_%K174414174432%_ _%rest174442%_ _%hd174440%_)))
              (_%else174412174426%_)))))
    (define gx#stx-e
      (lambda (_%stx174403%_)
        (if (##structure-direct-instance-of? _%stx174403%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx174403%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx174403%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx174403%_ '1 '#f '#f)
                _%stx174403%_))))
    (define gx#stx-source
      (lambda (_%stx174401%_)
        (if (##structure-instance-of? _%stx174401%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx174401%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx174395%_ _%src174396%_)
        (if (or (##structure-instance-of? _%stx174395%_ 'gerbil#AST::t)
                (not _%src174396%_))
            _%stx174395%_
            (##structure gx#AST::t _%stx174395%_ _%src174396%_))))
    (define gx#stx-datum?
      (lambda (_%stx174393%_) (gx#self-quoting? (gx#stx-e _%stx174393%_))))
    (define gx#self-quoting?
      (lambda (_%x174376%_)
        (let ((_%$e174378%_ (immediate? _%x174376%_)))
          (if _%$e174378%_
              _%$e174378%_
              (let ((_%$e174381%_ (number? _%x174376%_)))
                (if _%$e174381%_
                    _%$e174381%_
                    (let ((_%$e174384%_ (keyword? _%x174376%_)))
                      (if _%$e174384%_
                          _%$e174384%_
                          (let ((_%$e174387%_ (string? _%x174376%_)))
                            (if _%$e174387%_
                                _%$e174387%_
                                (let ((_%$e174390%_ (vector? _%x174376%_)))
                                  (if _%$e174390%_
                                      _%$e174390%_
                                      (u8vector? _%x174376%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e174374%_) (boolean? (gx#stx-e _%e174374%_))))
    (define gx#stx-keyword?
      (lambda (_%e174372%_) (keyword? (gx#stx-e _%e174372%_))))
    (define gx#stx-char? (lambda (_%e174370%_) (char? (gx#stx-e _%e174370%_))))
    (define gx#stx-number?
      (lambda (_%e174368%_) (number? (gx#stx-e _%e174368%_))))
    (define gx#stx-fixnum?
      (lambda (_%e174366%_) (fixnum? (gx#stx-e _%e174366%_))))
    (define gx#stx-string?
      (lambda (_%e174364%_) (string? (gx#stx-e _%e174364%_))))
    (define gx#stx-null? (lambda (_%e174362%_) (null? (gx#stx-e _%e174362%_))))
    (define gx#stx-pair? (lambda (_%e174360%_) (pair? (gx#stx-e _%e174360%_))))
    (define gx#stx-list?
      (lambda (_%e174322%_)
        (let* ((_%g174323174332%_ (gx#stx-e _%e174322%_))
               (_%E174326174336%_
                (lambda ()
                  (error '"No clause matching"
                         _%g174323174332%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K174328174352%_
                 (lambda (_%rest174350%_) (gx#stx-list? _%rest174350%_)))
                (_%K174327174342%_
                 (lambda (_%tail174340%_) (null? _%tail174340%_))))
            (if (pair? _%g174323174332%_)
                (let* ((_%tl174330174355%_ (##cdr _%g174323174332%_))
                       (_%rest174358%_ _%tl174330174355%_))
                  (gx#stx-list? _%rest174358%_))
                (let ((_%tail174345%_ _%g174323174332%_))
                  (null? _%tail174345%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e174315%_)
        (let* ((_%e174317%_ (gx#stx-e _%e174315%_))
               (_%$e174319%_ (pair? _%e174317%_)))
          (if _%$e174319%_ _%$e174319%_ (null? _%e174317%_)))))
    (define gx#stx-vector?
      (lambda (_%e174313%_) (vector? (gx#stx-e _%e174313%_))))
    (define gx#stx-box? (lambda (_%e174311%_) (box? (gx#stx-e _%e174311%_))))
    (define gx#stx-eq?
      (lambda (_%x174308%_ _%y174309%_)
        (eq? (gx#stx-e _%x174308%_) (gx#stx-e _%y174309%_))))
    (define gx#stx-eqv?
      (lambda (_%x174305%_ _%y174306%_)
        (eqv? (gx#stx-e _%x174305%_) (gx#stx-e _%y174306%_))))
    (define gx#stx-equal?
      (lambda (_%x174302%_ _%y174303%_)
        (equal? (gx#stx-e _%x174302%_) (gx#stx-e _%y174303%_))))
    (define gx#stx-false? (lambda (_%x174300%_) (not (gx#stx-e _%x174300%_))))
    (define gx#stx-identifier
      (lambda (_%template174297%_ . _%args174298%_)
        (gx#datum->syntax__1
         _%template174297%_
         (apply make-symbol (gx#syntax->datum _%args174298%_))
         (gx#stx-source _%template174297%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx174295%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx174295%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx174290%_)
        (if (##structure-direct-instance-of?
             _%stx174290%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx174290%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx174290%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx174290%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx174290%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx174286%_)
        (let ((_%stx174288%_ (gx#stx-unwrap__0 _%stx174286%_)))
          (if (gx#identifier-quote? _%stx174288%_)
              (##unchecked-structure-ref _%stx174288%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx174241%_)
        (let* ((_%g174242174252%_ (gx#stx-e _%stx174241%_))
               (_%else174245174260%_ (lambda () '#f)))
          (let ((_%K174248174274%_
                 (lambda (_%rest174271%_ _%hd174272%_)
                   (if (gx#identifier? _%hd174272%_)
                       (gx#identifier-list? _%rest174271%_)
                       '#f)))
                (_%K174247174265%_ (lambda () '#t)))
            (let ((_%try-match174244174268%_
                   (lambda ()
                     (if (null? _%g174242174252%_)
                         (_%K174247174265%_)
                         (_%else174245174260%_)))))
              (if (pair? _%g174242174252%_)
                  (let ((_%tl174250174279%_ (##cdr _%g174242174252%_))
                        (_%hd174249174277%_ (##car _%g174242174252%_)))
                    (let ((_%hd174282%_ _%hd174249174277%_)
                          (_%rest174284%_ _%tl174250174279%_))
                      (_%K174248174274%_ _%rest174284%_ _%hd174282%_)))
                  (_%try-match174244174268%_)))))))
    (define gx#genident__%
      (lambda (_%e174221%_ _%src174222%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src174222%_) _%src174222%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e174224%_ (gx#stx-e _%e174221%_)))
              (if (symbol? _%e174224%_) _%e174224%_ 'g)))))
         _%src174222%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e174230%_ 'g) (_%src174232%_ '#f))
          (gx#genident__% _%e174230%_ _%src174232%_))))
    (define gx#genident__1
      (lambda (_%e174234%_)
        (let ((_%src174236%_ '#f))
          (gx#genident__% _%e174234%_ _%src174236%_))))
    (define gx#genident
      (lambda _g174700_
        (let ((_g174701_ (##length _g174700_)))
          (cond ((##fx= _g174701_ 0) (apply gx#genident__0 _g174700_))
                ((##fx= _g174701_ 1) (apply gx#genident__1 _g174700_))
                ((##fx= _g174701_ 2) (apply gx#genident__% _g174700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g174700_))))))
    (define gx#gentemps
      (lambda (_%stx-lst174216%_)
        (gx#stx-map1
         (lambda (_%x174218%_) (gx#genident__% _%x174218%_ _%x174218%_))
         _%stx-lst174216%_)))
    (define gx#syntax->list
      (lambda (_%stx174214%_) (gx#stx-map1 values _%stx174214%_)))
    (define gx#stx-car
      (lambda (_%stx174211%_)
        (declare (safe))
        (car (gx#syntax-e _%stx174211%_))))
    (define gx#stx-cdr
      (lambda (_%stx174208%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx174208%_))))
    (define gx#stx-length
      (lambda (_%stx174173%_)
        (let _%lp174175%_ ((_%rest174177%_ _%stx174173%_) (_%n174178%_ '0))
          (let* ((_%g174179174187%_ (gx#stx-e _%rest174177%_))
                 (_%else174181174195%_ (lambda () _%n174178%_))
                 (_%K174183174200%_
                  (lambda (_%rest174198%_)
                    (_%lp174175%_ _%rest174198%_ (##fx+ _%n174178%_ '1)))))
            (if (pair? _%g174179174187%_)
                (let* ((_%tl174185174203%_ (##cdr _%g174179174187%_))
                       (_%rest174206%_ _%tl174185174203%_))
                  (_%K174183174200%_ _%rest174206%_))
                (_%else174181174195%_))))))
    (define gx#stx-for-each
      (lambda _g174702_
        (let ((_g174703_ (##length _g174702_)))
          (cond ((##fx= _g174703_ 2) (apply gx#stx-for-each1 _g174702_))
                ((##fx= _g174703_ 3) (apply gx#stx-for-each2 _g174702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g174702_))))))
    (define gx#stx-for-each1
      (lambda (_%f174116%_ _%stx174117%_)
        (if (procedure? _%f174116%_)
            '#!void
            (error '"expected procedure" _%f174116%_))
        (let _%lp174119%_ ((_%rest174121%_ _%stx174117%_))
          (let* ((_%g174122174132%_ (gx#syntax-e _%rest174121%_))
                 (_%else174125174140%_
                  (lambda () (_%f174116%_ _%rest174121%_))))
            (let ((_%K174128174154%_
                   (lambda (_%rest174151%_ _%hd174152%_)
                     (_%f174116%_ _%hd174152%_)
                     (_%lp174119%_ _%rest174151%_)))
                  (_%K174127174145%_ (lambda () '#!void)))
              (let ((_%try-match174124174148%_
                     (lambda ()
                       (if (null? _%g174122174132%_)
                           (_%K174127174145%_)
                           (_%else174125174140%_)))))
                (if (pair? _%g174122174132%_)
                    (let ((_%tl174130174159%_ (##cdr _%g174122174132%_))
                          (_%hd174129174157%_ (##car _%g174122174132%_)))
                      (let ((_%hd174162%_ _%hd174129174157%_)
                            (_%rest174164%_ _%tl174130174159%_))
                        (_%K174128174154%_ _%rest174164%_ _%hd174162%_)))
                    (_%try-match174124174148%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f174021%_ _%xstx174022%_ _%ystx174023%_)
        (if (procedure? _%f174021%_)
            '#!void
            (error '"expected procedure" _%f174021%_))
        (let _%lp174025%_ ((_%xrest174027%_ _%xstx174022%_)
                           (_%yrest174028%_ _%ystx174023%_))
          (let* ((_%g174029174039%_ (gx#syntax-e _%xrest174027%_))
                 (_%else174032174047%_ (lambda () '#!void)))
            (let ((_%K174035174104%_
                   (lambda (_%xrest174073%_ _%xhd174074%_)
                     (let* ((_%g174075174082%_ (gx#syntax-e _%yrest174028%_))
                            (_%E174077174086%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g174075174082%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K174078174092%_
                             (lambda (_%yrest174089%_ _%yhd174090%_)
                               (_%f174021%_ _%xhd174074%_ _%yhd174090%_)
                               (_%lp174025%_
                                _%xrest174073%_
                                _%yrest174089%_))))
                       (if (pair? _%g174075174082%_)
                           (let ((_%hd174079174095%_ (##car _%g174075174082%_))
                                 (_%tl174080174097%_
                                  (##cdr _%g174075174082%_)))
                             (let* ((_%yhd174100%_ _%hd174079174095%_)
                                    (_%yrest174102%_ _%tl174080174097%_))
                               (_%K174078174092%_
                                _%yrest174102%_
                                _%yhd174100%_)))
                           (_%E174077174086%_)))))
                  (_%K174034174067%_
                   (lambda ()
                     (let* ((_%yrest174051174056%_ _%yrest174028%_)
                            (_%E174053174060%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest174051174056%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K174054174064%_
                             (lambda ()
                               (_%f174021%_ _%xrest174027%_ _%yrest174028%_))))
                       (if (gx#stx-null? _%yrest174051174056%_)
                           (_%E174053174060%_)
                           (_%K174054174064%_))))))
              (let ((_%try-match174031174070%_
                     (lambda ()
                       (if (null? _%g174029174039%_)
                           (_%else174032174047%_)
                           (_%K174034174067%_)))))
                (if (pair? _%g174029174039%_)
                    (let ((_%tl174037174109%_ (##cdr _%g174029174039%_))
                          (_%hd174036174107%_ (##car _%g174029174039%_)))
                      (let ((_%xhd174112%_ _%hd174036174107%_)
                            (_%xrest174114%_ _%tl174037174109%_))
                        (_%K174035174104%_ _%xrest174114%_ _%xhd174112%_)))
                    (_%try-match174031174070%_))))))))
    (define gx#stx-map
      (lambda _g174704_
        (let ((_g174705_ (##length _g174704_)))
          (cond ((##fx= _g174705_ 2) (apply gx#stx-map1 _g174704_))
                ((##fx= _g174705_ 3) (apply gx#stx-map2 _g174704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g174704_))))))
    (define gx#stx-map1
      (lambda (_%f173964%_ _%stx173965%_)
        (if (procedure? _%f173964%_)
            '#!void
            (error '"expected procedure" _%f173964%_))
        (let _%recur173967%_ ((_%rest173969%_ _%stx173965%_))
          (let* ((_%g173970173980%_ (gx#syntax-e _%rest173969%_))
                 (_%else173973173988%_
                  (lambda () (_%f173964%_ _%rest173969%_))))
            (let ((_%K173976174002%_
                   (lambda (_%rest173999%_ _%hd174000%_)
                     (cons (_%f173964%_ _%hd174000%_)
                           (_%recur173967%_ _%rest173999%_))))
                  (_%K173975173993%_ (lambda () '())))
              (let ((_%try-match173972173996%_
                     (lambda ()
                       (if (null? _%g173970173980%_)
                           (_%K173975173993%_)
                           (_%else173973173988%_)))))
                (if (pair? _%g173970173980%_)
                    (let ((_%tl173978174007%_ (##cdr _%g173970173980%_))
                          (_%hd173977174005%_ (##car _%g173970173980%_)))
                      (let ((_%hd174010%_ _%hd173977174005%_)
                            (_%rest174012%_ _%tl173978174007%_))
                        (_%K173976174002%_ _%rest174012%_ _%hd174010%_)))
                    (_%try-match173972173996%_))))))))
    (define gx#stx-map2
      (lambda (_%f173869%_ _%xstx173870%_ _%ystx173871%_)
        (if (procedure? _%f173869%_)
            '#!void
            (error '"expected procedure" _%f173869%_))
        (let _%recur173873%_ ((_%xrest173875%_ _%xstx173870%_)
                              (_%yrest173876%_ _%ystx173871%_))
          (let* ((_%g173877173887%_ (gx#syntax-e _%xrest173875%_))
                 (_%else173880173895%_ (lambda () '())))
            (let ((_%K173883173952%_
                   (lambda (_%xrest173921%_ _%xhd173922%_)
                     (let* ((_%g173923173930%_ (gx#syntax-e _%yrest173876%_))
                            (_%E173925173934%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g173923173930%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K173926173940%_
                             (lambda (_%yrest173937%_ _%yhd173938%_)
                               (cons (_%f173869%_ _%xhd173922%_ _%yhd173938%_)
                                     (_%recur173873%_
                                      _%xrest173921%_
                                      _%yrest173937%_)))))
                       (if (pair? _%g173923173930%_)
                           (let ((_%hd173927173943%_ (##car _%g173923173930%_))
                                 (_%tl173928173945%_
                                  (##cdr _%g173923173930%_)))
                             (let* ((_%yhd173948%_ _%hd173927173943%_)
                                    (_%yrest173950%_ _%tl173928173945%_))
                               (_%K173926173940%_
                                _%yrest173950%_
                                _%yhd173948%_)))
                           (_%E173925173934%_)))))
                  (_%K173882173915%_
                   (lambda ()
                     (let* ((_%yrest173899173904%_ _%yrest173876%_)
                            (_%E173901173908%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest173899173904%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K173902173912%_
                             (lambda ()
                               (_%f173869%_ _%xrest173875%_ _%yrest173876%_))))
                       (if (gx#stx-null? _%yrest173899173904%_)
                           (_%E173901173908%_)
                           (_%K173902173912%_))))))
              (let ((_%try-match173879173918%_
                     (lambda ()
                       (if (null? _%g173877173887%_)
                           (_%else173880173895%_)
                           (_%K173882173915%_)))))
                (if (pair? _%g173877173887%_)
                    (let ((_%tl173885173957%_ (##cdr _%g173877173887%_))
                          (_%hd173884173955%_ (##car _%g173877173887%_)))
                      (let ((_%xhd173960%_ _%hd173884173955%_)
                            (_%xrest173962%_ _%tl173885173957%_))
                        (_%K173883173952%_ _%xrest173962%_ _%xhd173960%_)))
                    (_%try-match173879173918%_))))))))
    (define gx#stx-andmap
      (lambda (_%f173819%_ _%stx173820%_)
        (if (procedure? _%f173819%_)
            '#!void
            (error '"expected procedure" _%f173819%_))
        (let _%lp173822%_ ((_%rest173824%_ _%stx173820%_))
          (let* ((_%g173825173835%_ (gx#syntax-e _%rest173824%_))
                 (_%else173828173843%_
                  (lambda () (_%f173819%_ _%rest173824%_))))
            (let ((_%K173831173857%_
                   (lambda (_%rest173854%_ _%hd173855%_)
                     (if (_%f173819%_ _%hd173855%_)
                         (_%lp173822%_ _%rest173854%_)
                         '#f)))
                  (_%K173830173848%_ (lambda () '#t)))
              (let ((_%try-match173827173851%_
                     (lambda ()
                       (if (null? _%g173825173835%_)
                           (_%K173830173848%_)
                           (_%else173828173843%_)))))
                (if (pair? _%g173825173835%_)
                    (let ((_%tl173833173862%_ (##cdr _%g173825173835%_))
                          (_%hd173832173860%_ (##car _%g173825173835%_)))
                      (let ((_%hd173865%_ _%hd173832173860%_)
                            (_%rest173867%_ _%tl173833173862%_))
                        (_%K173831173857%_ _%rest173867%_ _%hd173865%_)))
                    (_%try-match173827173851%_))))))))
    (define gx#stx-ormap
      (lambda (_%f173766%_ _%stx173767%_)
        (if (procedure? _%f173766%_)
            '#!void
            (error '"expected procedure" _%f173766%_))
        (let _%lp173769%_ ((_%rest173771%_ _%stx173767%_))
          (let* ((_%g173772173782%_ (gx#syntax-e _%rest173771%_))
                 (_%else173775173790%_
                  (lambda () (_%f173766%_ _%rest173771%_))))
            (let ((_%K173778173807%_
                   (lambda (_%rest173801%_ _%hd173802%_)
                     (let ((_%$e173804%_ (_%f173766%_ _%hd173802%_)))
                       (if _%$e173804%_
                           _%$e173804%_
                           (_%lp173769%_ _%rest173801%_)))))
                  (_%K173777173795%_ (lambda () '#f)))
              (let ((_%try-match173774173798%_
                     (lambda ()
                       (if (null? _%g173772173782%_)
                           (_%K173777173795%_)
                           (_%else173775173790%_)))))
                (if (pair? _%g173772173782%_)
                    (let ((_%tl173780173812%_ (##cdr _%g173772173782%_))
                          (_%hd173779173810%_ (##car _%g173772173782%_)))
                      (let ((_%hd173815%_ _%hd173779173810%_)
                            (_%rest173817%_ _%tl173780173812%_))
                        (_%K173778173807%_ _%rest173817%_ _%hd173815%_)))
                    (_%try-match173774173798%_))))))))
    (define gx#stx-foldl
      (lambda (_%f173714%_ _%iv173715%_ _%stx173716%_)
        (if (procedure? _%f173714%_)
            '#!void
            (error '"expected procedure" _%f173714%_))
        (let _%lp173718%_ ((_%r173720%_ _%iv173715%_)
                           (_%rest173721%_ _%stx173716%_))
          (let* ((_%g173722173732%_ (gx#syntax-e _%rest173721%_))
                 (_%else173725173740%_
                  (lambda () (_%f173714%_ _%rest173721%_ _%r173720%_))))
            (let ((_%K173728173754%_
                   (lambda (_%rest173751%_ _%hd173752%_)
                     (_%lp173718%_
                      (_%f173714%_ _%hd173752%_ _%r173720%_)
                      _%rest173751%_)))
                  (_%K173727173745%_ (lambda () _%r173720%_)))
              (let ((_%try-match173724173748%_
                     (lambda ()
                       (if (null? _%g173722173732%_)
                           (_%K173727173745%_)
                           (_%else173725173740%_)))))
                (if (pair? _%g173722173732%_)
                    (let ((_%tl173730173759%_ (##cdr _%g173722173732%_))
                          (_%hd173729173757%_ (##car _%g173722173732%_)))
                      (let ((_%hd173762%_ _%hd173729173757%_)
                            (_%rest173764%_ _%tl173730173759%_))
                        (_%K173728173754%_ _%rest173764%_ _%hd173762%_)))
                    (_%try-match173724173748%_))))))))
    (define gx#stx-foldr
      (lambda (_%f173663%_ _%iv173664%_ _%stx173665%_)
        (if (procedure? _%f173663%_)
            '#!void
            (error '"expected procedure" _%f173663%_))
        (let _%recur173667%_ ((_%rest173669%_ _%stx173665%_))
          (let* ((_%g173670173680%_ (gx#syntax-e _%rest173669%_))
                 (_%else173673173688%_
                  (lambda () (_%f173663%_ _%rest173669%_ _%iv173664%_))))
            (let ((_%K173676173702%_
                   (lambda (_%rest173699%_ _%hd173700%_)
                     (_%f173663%_
                      _%hd173700%_
                      (_%recur173667%_ _%rest173699%_))))
                  (_%K173675173693%_ (lambda () _%iv173664%_)))
              (let ((_%try-match173672173696%_
                     (lambda ()
                       (if (null? _%g173670173680%_)
                           (_%K173675173693%_)
                           (_%else173673173688%_)))))
                (if (pair? _%g173670173680%_)
                    (let ((_%tl173678173707%_ (##cdr _%g173670173680%_))
                          (_%hd173677173705%_ (##car _%g173670173680%_)))
                      (let ((_%hd173710%_ _%hd173677173705%_)
                            (_%rest173712%_ _%tl173678173707%_))
                        (_%K173676173702%_ _%rest173712%_ _%hd173710%_)))
                    (_%try-match173672173696%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx173661%_) (gx#stx-foldl cons '() _%stx173661%_)))
    (define gx#stx-last
      (lambda (_%stx173622%_)
        (let _%lp173624%_ ((_%rest173626%_ _%stx173622%_))
          (let* ((_%g173627173635%_ (gx#syntax-e _%rest173626%_))
                 (_%else173629173643%_ (lambda () _%rest173626%_))
                 (_%K173631173649%_
                  (lambda (_%rest173646%_ _%hd173647%_)
                    (if (gx#stx-null? _%rest173646%_)
                        _%hd173647%_
                        (_%lp173624%_ _%rest173646%_)))))
            (if (pair? _%g173627173635%_)
                (let ((_%hd173632173652%_ (##car _%g173627173635%_))
                      (_%tl173633173654%_ (##cdr _%g173627173635%_)))
                  (let* ((_%hd173657%_ _%hd173632173652%_)
                         (_%rest173659%_ _%tl173633173654%_))
                    (_%K173631173649%_ _%rest173659%_ _%hd173657%_)))
                (_%else173629173643%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx173593%_)
        (let _%lp173595%_ ((_%hd173597%_ _%stx173593%_))
          (let* ((_%g173598173605%_ (gx#syntax-e _%hd173597%_))
                 (_%E173600173609%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g173598173605%_
                           '([_ . rest]))
                    '#!void))
                 (_%K173601173614%_
                  (lambda (_%rest173612%_)
                    (if (gx#stx-pair? _%rest173612%_)
                        (_%lp173595%_ _%rest173612%_)
                        _%hd173597%_))))
            (if (pair? _%g173598173605%_)
                (let* ((_%tl173603173617%_ (##cdr _%g173598173605%_))
                       (_%rest173620%_ _%tl173603173617%_))
                  (_%K173601173614%_ _%rest173620%_))
                (_%E173600173609%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx173562%_ _%k173563%_)
        (let _%lp173565%_ ((_%rest173567%_ _%stx173562%_)
                           (_%k173568%_ _%k173563%_))
          (if (fxpositive? _%k173568%_)
              (let* ((_%g173569173576%_ (gx#syntax-e _%rest173567%_))
                     (_%E173571173580%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g173569173576%_
                               '([_ . rest]))
                        '#!void))
                     (_%K173572173585%_
                      (lambda (_%rest173583%_)
                        (_%lp173565%_ _%rest173583%_ (##fx- _%k173568%_ '1)))))
                (if (pair? _%g173569173576%_)
                    (let* ((_%tl173574173588%_ (##cdr _%g173569173576%_))
                           (_%rest173591%_ _%tl173574173588%_))
                      (_%K173572173585%_ _%rest173591%_))
                    (_%E173571173580%_)))
              _%rest173567%_))))
    (define gx#stx-list-ref
      (lambda (_%stx173559%_ _%k173560%_)
        (gx#stx-car (gx#stx-list-tail _%stx173559%_ _%k173560%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx173471%_ _%key?173472%_)
        (if (procedure? _%key?173472%_)
            '#!void
            (error '"expected procedure" _%key?173472%_))
        (let _%lp173474%_ ((_%rest173476%_ _%stx173471%_))
          (let* ((_%g173477173487%_ (gx#stx-e _%rest173476%_))
                 (_%else173480173495%_ (lambda () '#f)))
            (let ((_%K173483173537%_
                   (lambda (_%rest173506%_ _%hd173507%_)
                     (if (_%key?173472%_ _%hd173507%_)
                         (let* ((_%g173508173516%_ (gx#stx-e _%rest173506%_))
                                (_%else173510173524%_ (lambda () '#f))
                                (_%K173512173529%_
                                 (lambda (_%rest173527%_)
                                   (_%lp173474%_ _%rest173527%_))))
                           (if (pair? _%g173508173516%_)
                               (let* ((_%tl173514173532%_
                                       (##cdr _%g173508173516%_))
                                      (_%rest173535%_ _%tl173514173532%_))
                                 (_%lp173474%_ _%rest173535%_))
                               (_%else173510173524%_)))
                         '#f)))
                  (_%K173482173500%_ (lambda () '#t)))
              (let ((_%try-match173479173503%_
                     (lambda ()
                       (if (null? _%g173477173487%_)
                           (_%K173482173500%_)
                           (_%else173480173495%_)))))
                (if (pair? _%g173477173487%_)
                    (let ((_%tl173485173542%_ (##cdr _%g173477173487%_))
                          (_%hd173484173540%_ (##car _%g173477173487%_)))
                      (let ((_%hd173545%_ _%hd173484173540%_)
                            (_%rest173547%_ _%tl173485173542%_))
                        (_%K173483173537%_ _%rest173547%_ _%hd173545%_)))
                    (_%try-match173479173503%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx173552%_)
        (let ((_%key?173554%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx173552%_ _%key?173554%_))))
    (define gx#stx-plist?
      (lambda _g174706_
        (let ((_g174707_ (##length _g174706_)))
          (cond ((##fx= _g174707_ 1) (apply gx#stx-plist?__0 _g174706_))
                ((##fx= _g174707_ 2) (apply gx#stx-plist?__% _g174706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g174706_))))))
    (define gx#stx-getq__%
      (lambda (_%key173389%_ _%stx173390%_ _%key=?173391%_)
        (if (procedure? _%key=?173391%_)
            '#!void
            (error '"expected procedure" _%key=?173391%_))
        (let _%lp173393%_ ((_%rest173395%_ _%stx173390%_))
          (let* ((_%g173396173404%_ (gx#syntax-e _%rest173395%_))
                 (_%else173398173412%_ (lambda () '#f))
                 (_%K173400173446%_
                  (lambda (_%rest173415%_ _%hd173416%_)
                    (let* ((_%g173417173424%_ (gx#syntax-e _%rest173415%_))
                           (_%E173419173428%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g173417173424%_
                                     '([val . rest]))
                              '#!void))
                           (_%K173420173434%_
                            (lambda (_%rest173431%_ _%val173432%_)
                              (if (_%key=?173391%_ _%hd173416%_ _%key173389%_)
                                  _%val173432%_
                                  (_%lp173393%_ _%rest173431%_)))))
                      (if (pair? _%g173417173424%_)
                          (let ((_%hd173421173437%_ (##car _%g173417173424%_))
                                (_%tl173422173439%_ (##cdr _%g173417173424%_)))
                            (let* ((_%val173442%_ _%hd173421173437%_)
                                   (_%rest173444%_ _%tl173422173439%_))
                              (_%K173420173434%_
                               _%rest173444%_
                               _%val173442%_)))
                          (_%E173419173428%_))))))
            (if (pair? _%g173396173404%_)
                (let ((_%hd173401173449%_ (##car _%g173396173404%_))
                      (_%tl173402173451%_ (##cdr _%g173396173404%_)))
                  (let* ((_%hd173454%_ _%hd173401173449%_)
                         (_%rest173456%_ _%tl173402173451%_))
                    (_%K173400173446%_ _%rest173456%_ _%hd173454%_)))
                (_%else173398173412%_))))))
    (define gx#stx-getq__0
      (lambda (_%key173461%_ _%stx173462%_)
        (let ((_%key=?173464%_ gx#stx-eq?))
          (gx#stx-getq__% _%key173461%_ _%stx173462%_ _%key=?173464%_))))
    (define gx#stx-getq
      (lambda _g174708_
        (let ((_g174709_ (##length _g174708_)))
          (cond ((##fx= _g174709_ 2) (apply gx#stx-getq__0 _g174708_))
                ((##fx= _g174709_ 3) (apply gx#stx-getq__% _g174708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g174708_))))))))
