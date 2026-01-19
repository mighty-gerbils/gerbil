(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1768863412)
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
      (lambda _%$args129980%_
        (apply make-instance gx#identifier-wrap::t _%$args129980%_)))
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
      (lambda _%$args129977%_
        (apply make-instance gx#syntax-wrap::t _%$args129977%_)))
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
      (lambda _%$args129974%_
        (apply make-instance gx#syntax-quote::t _%$args129974%_)))
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
      (lambda (_%stx129972%_) (symbol? (gx#stx-e _%stx129972%_))))
    (define gx#identifier-quote?
      (lambda (_%stx129970%_)
        (if (##structure-direct-instance-of? _%stx129970%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx129970%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx129965%_)
        (if (##structure-direct-instance-of? _%stx129965%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx129965%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx129965%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx129960%_)
        (if (##structure-direct-instance-of? _%stx129960%_ 'gx#syntax-quote::t)
            _%stx129960%_
            (if (##structure-direct-instance-of?
                 _%stx129960%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx129960%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx129934%_)
        (if (##structure-direct-instance-of? _%stx129934%_ 'gx#syntax-wrap::t)
            (let _%lp129937%_ ((_%e129939%_
                                (##unchecked-structure-ref
                                 _%stx129934%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks129940%_
                                (cons (##unchecked-structure-ref
                                       _%stx129934%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e129939%_)
                  (let ((_%$e129943%_
                         (##type-id (##structure-type _%e129939%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e129943%_)
                        (_%lp129937%_
                         (##unchecked-structure-ref _%e129939%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e129939%_ '3 '#f '#f)
                          _%marks129940%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e129943%_)
                                (eq? 'gx#identifier-wrap::t _%$e129943%_))
                            (##unchecked-structure-ref _%e129939%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e129943%_)
                                (_%lp129937%_
                                 (##unchecked-structure-ref
                                  _%e129939%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks129940%_)
                                _%e129939%_))))
                  (if (null? _%marks129940%_)
                      _%e129939%_
                      (if (pair? _%e129939%_)
                          (cons (gx#stx-wrap
                                 (##car _%e129939%_)
                                 _%marks129940%_)
                                (gx#stx-wrap
                                 (##cdr _%e129939%_)
                                 _%marks129940%_))
                          (if (vector? _%e129939%_)
                              (vector-map
                               (lambda (_%g129951129953%_)
                                 (gx#stx-wrap
                                  _%g129951129953%_
                                  _%marks129940%_))
                               _%e129939%_)
                              (if (box? _%e129939%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e129939%_)
                                        _%marks129940%_))
                                  _%e129939%_))))))
            (if (##structure-instance-of? _%stx129934%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx129934%_ '1 '#f '#f)
                _%stx129934%_))))
    (define gx#syntax->datum
      (lambda (_%stx129927%_)
        (if (##structure-instance-of? _%stx129927%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx129927%_ '1 '#f '#f))
            (if (pair? _%stx129927%_)
                (cons (gx#syntax->datum (##car _%stx129927%_))
                      (gx#syntax->datum (##cdr _%stx129927%_)))
                (if (vector? _%stx129927%_)
                    (vector-map gx#syntax->datum _%stx129927%_)
                    (if (box? _%stx129927%_)
                        (box (gx#syntax->datum (unbox _%stx129927%_)))
                        _%stx129927%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx129861%_ _%datum129862%_ _%src129863%_ _%quote?129864%_)
        (letrec ((_%wrap-datum129866%_
                  (lambda (_%e129899%_ _%marks129900%_)
                    (_%wrap-inner129868%_
                     _%e129899%_
                     (lambda (_%g129901129903%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g129901129903%_
                        _%src129863%_
                        _%marks129900%_)))))
                 (_%wrap-quote129867%_
                  (lambda (_%e129891%_ _%ctx129892%_ _%marks129893%_)
                    (_%wrap-inner129868%_
                     _%e129891%_
                     (lambda (_%g129894129896%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g129894129896%_
                        _%src129863%_
                        _%ctx129892%_
                        _%marks129893%_)))))
                 (_%wrap-inner129868%_
                  (lambda (_%e129879%_ _%wrap-e129880%_)
                    (let _%recur129882%_ ((_%e129884%_ _%e129879%_))
                      (if (symbol? _%e129884%_)
                          (_%wrap-e129880%_ _%e129884%_)
                          (if (pair? _%e129884%_)
                              (cons (_%recur129882%_ (##car _%e129884%_))
                                    (_%recur129882%_ (##cdr _%e129884%_)))
                              (if (vector? _%e129884%_)
                                  (vector-map _%recur129882%_ _%e129884%_)
                                  (if (box? _%e129884%_)
                                      (box (_%recur129882%_
                                            (unbox _%e129884%_)))
                                      _%e129884%_)))))))
                 (_%wrap-outer129869%_
                  (lambda (_%e129877%_)
                    (if (##structure-instance-of? _%e129877%_ 'gerbil#AST::t)
                        _%e129877%_
                        (##structure gx#AST::t _%e129877%_ _%src129863%_)))))
          (if (##structure-instance-of? _%datum129862%_ 'gerbil#AST::t)
              _%datum129862%_
              (if (not _%stx129861%_)
                  (##structure gx#AST::t _%datum129862%_ _%src129863%_)
                  (if (gx#identifier? _%stx129861%_)
                      (let ((_%stx129874%_ (gx#stx-unwrap__0 _%stx129861%_)))
                        (_%wrap-outer129869%_
                         (if (##structure-direct-instance-of?
                              _%stx129874%_
                              'gx#syntax-quote::t)
                             (if _%quote?129864%_
                                 (_%wrap-quote129867%_
                                  _%datum129862%_
                                  (##unchecked-structure-ref
                                   _%stx129874%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx129874%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum129866%_
                                  _%datum129862%_
                                  (##unchecked-structure-ref
                                   _%stx129874%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum129866%_
                              _%datum129862%_
                              (##unchecked-structure-ref
                               _%stx129874%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx129861%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx129909%_ _%datum129910%_)
        (let* ((_%src129912%_ '#f) (_%quote?129914%_ '#t))
          (gx#datum->syntax__%
           _%stx129909%_
           _%datum129910%_
           _%src129912%_
           _%quote?129914%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx129916%_ _%datum129917%_ _%src129918%_)
        (let ((_%quote?129920%_ '#t))
          (gx#datum->syntax__%
           _%stx129916%_
           _%datum129917%_
           _%src129918%_
           _%quote?129920%_))))
    (define gx#datum->syntax
      (lambda _g130060_
        (let ((_g130061_ (##length _g130060_)))
          (cond ((##fx= _g130061_ 2) (apply gx#datum->syntax__0 _g130060_))
                ((##fx= _g130061_ 3) (apply gx#datum->syntax__1 _g130060_))
                ((##fx= _g130061_ 4) (apply gx#datum->syntax__% _g130060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g130060_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx129827%_ _%marks129828%_)
        (let _%lp129830%_ ((_%e129832%_ _%stx129827%_)
                           (_%marks129833%_ _%marks129828%_)
                           (_%src129834%_ (gx#stx-source _%stx129827%_)))
          (if (##structure-direct-instance-of? _%e129832%_ 'gx#syntax-wrap::t)
              (_%lp129830%_
               (##unchecked-structure-ref _%e129832%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e129832%_ '3 '#f '#f)
                _%marks129833%_)
               (##unchecked-structure-ref _%e129832%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e129832%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks129833%_)
                      _%e129832%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e129832%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e129832%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e129832%_ '3 '#f '#f)
                        _%marks129833%_)))
                  (if (##structure-direct-instance-of?
                       _%e129832%_
                       'gx#syntax-quote::t)
                      _%e129832%_
                      (if (##structure-instance-of? _%e129832%_ 'gerbil#AST::t)
                          (_%lp129830%_
                           (##unchecked-structure-ref _%e129832%_ '1 '#f '#f)
                           _%marks129833%_
                           (##unchecked-structure-ref _%e129832%_ '2 '#f '#f))
                          (if (symbol? _%e129832%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e129832%_
                               _%src129834%_
                               (reverse _%marks129833%_))
                              (if (null? _%marks129833%_)
                                  _%e129832%_
                                  (if (pair? _%e129832%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e129832%_)
                                             _%marks129833%_)
                                            (gx#stx-wrap
                                             (##cdr _%e129832%_)
                                             _%marks129833%_))
                                      (if (vector? _%e129832%_)
                                          (vector-map
                                           (lambda (_%g129843129845%_)
                                             (gx#stx-wrap
                                              _%g129843129845%_
                                              _%marks129833%_))
                                           _%e129832%_)
                                          (if (box? _%e129832%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e129832%_)
                                                    _%marks129833%_))
                                              _%e129832%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx129853%_)
        (let ((_%marks129855%_ '()))
          (gx#stx-unwrap__% _%stx129853%_ _%marks129855%_))))
    (define gx#stx-unwrap
      (lambda _g130062_
        (let ((_g130063_ (##length _g130062_)))
          (cond ((##fx= _g130063_ 1) (apply gx#stx-unwrap__0 _g130062_))
                ((##fx= _g130063_ 2) (apply gx#stx-unwrap__% _g130062_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g130062_))))))
    (define gx#stx-wrap
      (lambda (_%stx129820%_ _%marks129821%_)
        (__foldl1
         (lambda (_%mark129823%_ _%stx129824%_)
           (gx#stx-apply-mark _%stx129824%_ _%mark129823%_))
         _%stx129820%_
         _%marks129821%_)))
    (define gx#stx-rewrap
      (lambda (_%stx129814%_ _%marks129815%_)
        (__foldr1
         (lambda (_%mark129817%_ _%stx129818%_)
           (gx#stx-apply-mark _%stx129818%_ _%mark129817%_))
         _%stx129814%_
         _%marks129815%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx129808%_ _%mark129809%_)
        (if (##structure-direct-instance-of? _%stx129808%_ 'gx#syntax-quote::t)
            _%stx129808%_
            (if (and (##structure-direct-instance-of?
                      _%stx129808%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark129809%_
                          (##unchecked-structure-ref
                           _%stx129808%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx129808%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx129808%_
                 (gx#stx-source _%stx129808%_)
                 _%mark129809%_)))))
    (define gx#apply-mark
      (lambda (_%mark129772%_ _%marks129773%_)
        (let* ((_%marks129774129782%_ _%marks129773%_)
               (_%else129776129790%_
                (lambda () (cons _%mark129772%_ _%marks129773%_)))
               (_%K129778129796%_
                (lambda (_%rest129793%_ _%hd129794%_)
                  (if (eq? _%mark129772%_ _%hd129794%_)
                      _%rest129793%_
                      (cons _%mark129772%_ _%marks129773%_)))))
          (if (pair? _%marks129774129782%_)
              (let ((_%hd129779129799%_ (##car _%marks129774129782%_))
                    (_%tl129780129801%_ (##cdr _%marks129774129782%_)))
                (let* ((_%hd129804%_ _%hd129779129799%_)
                       (_%rest129806%_ _%tl129780129801%_))
                  (_%K129778129796%_ _%rest129806%_ _%hd129804%_)))
              (_%else129776129790%_)))))
    (define gx#stx-e
      (lambda (_%stx129767%_)
        (if (##structure-direct-instance-of? _%stx129767%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx129767%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx129767%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx129767%_ '1 '#f '#f)
                _%stx129767%_))))
    (define gx#stx-source
      (lambda (_%stx129765%_)
        (if (##structure-instance-of? _%stx129765%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx129765%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx129759%_ _%src129760%_)
        (if (or (##structure-instance-of? _%stx129759%_ 'gerbil#AST::t)
                (not _%src129760%_))
            _%stx129759%_
            (##structure gx#AST::t _%stx129759%_ _%src129760%_))))
    (define gx#stx-datum?
      (lambda (_%stx129757%_) (gx#self-quoting? (gx#stx-e _%stx129757%_))))
    (define gx#self-quoting?
      (lambda (_%x129740%_)
        (let ((_%$e129742%_ (immediate? _%x129740%_)))
          (if _%$e129742%_
              _%$e129742%_
              (let ((_%$e129745%_ (number? _%x129740%_)))
                (if _%$e129745%_
                    _%$e129745%_
                    (let ((_%$e129748%_ (keyword? _%x129740%_)))
                      (if _%$e129748%_
                          _%$e129748%_
                          (let ((_%$e129751%_ (string? _%x129740%_)))
                            (if _%$e129751%_
                                _%$e129751%_
                                (let ((_%$e129754%_ (vector? _%x129740%_)))
                                  (if _%$e129754%_
                                      _%$e129754%_
                                      (u8vector? _%x129740%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e129738%_) (boolean? (gx#stx-e _%e129738%_))))
    (define gx#stx-keyword?
      (lambda (_%e129736%_) (keyword? (gx#stx-e _%e129736%_))))
    (define gx#stx-char? (lambda (_%e129734%_) (char? (gx#stx-e _%e129734%_))))
    (define gx#stx-number?
      (lambda (_%e129732%_) (number? (gx#stx-e _%e129732%_))))
    (define gx#stx-fixnum?
      (lambda (_%e129730%_) (fixnum? (gx#stx-e _%e129730%_))))
    (define gx#stx-string?
      (lambda (_%e129728%_) (string? (gx#stx-e _%e129728%_))))
    (define gx#stx-null? (lambda (_%e129726%_) (null? (gx#stx-e _%e129726%_))))
    (define gx#stx-pair? (lambda (_%e129724%_) (pair? (gx#stx-e _%e129724%_))))
    (define gx#stx-list?
      (lambda (_%e129686%_)
        (let* ((_%g129687129696%_ (gx#stx-e _%e129686%_))
               (_%E129690129700%_
                (lambda ()
                  (error '"No clause matching"
                         _%g129687129696%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K129692129716%_
                 (lambda (_%rest129714%_) (gx#stx-list? _%rest129714%_)))
                (_%K129691129706%_
                 (lambda (_%tail129704%_) (null? _%tail129704%_))))
            (if (pair? _%g129687129696%_)
                (let* ((_%tl129694129719%_ (##cdr _%g129687129696%_))
                       (_%rest129722%_ _%tl129694129719%_))
                  (gx#stx-list? _%rest129722%_))
                (let ((_%tail129709%_ _%g129687129696%_))
                  (null? _%tail129709%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e129679%_)
        (let* ((_%e129681%_ (gx#stx-e _%e129679%_))
               (_%$e129683%_ (pair? _%e129681%_)))
          (if _%$e129683%_ _%$e129683%_ (null? _%e129681%_)))))
    (define gx#stx-vector?
      (lambda (_%e129677%_) (vector? (gx#stx-e _%e129677%_))))
    (define gx#stx-box? (lambda (_%e129675%_) (box? (gx#stx-e _%e129675%_))))
    (define gx#stx-eq?
      (lambda (_%x129672%_ _%y129673%_)
        (eq? (gx#stx-e _%x129672%_) (gx#stx-e _%y129673%_))))
    (define gx#stx-eqv?
      (lambda (_%x129669%_ _%y129670%_)
        (eqv? (gx#stx-e _%x129669%_) (gx#stx-e _%y129670%_))))
    (define gx#stx-equal?
      (lambda (_%x129666%_ _%y129667%_)
        (equal? (gx#stx-e _%x129666%_) (gx#stx-e _%y129667%_))))
    (define gx#stx-false? (lambda (_%x129664%_) (not (gx#stx-e _%x129664%_))))
    (define gx#stx-identifier
      (lambda (_%template129661%_ . _%args129662%_)
        (gx#datum->syntax__1
         _%template129661%_
         (apply make-symbol (gx#syntax->datum _%args129662%_))
         (gx#stx-source _%template129661%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx129659%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx129659%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx129654%_)
        (if (##structure-direct-instance-of?
             _%stx129654%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx129654%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx129654%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx129654%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx129654%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx129650%_)
        (let ((_%stx129652%_ (gx#stx-unwrap__0 _%stx129650%_)))
          (if (gx#identifier-quote? _%stx129652%_)
              (##unchecked-structure-ref _%stx129652%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx129605%_)
        (let* ((_%g129606129616%_ (gx#stx-e _%stx129605%_))
               (_%else129609129624%_ (lambda () '#f)))
          (let ((_%K129612129638%_
                 (lambda (_%rest129635%_ _%hd129636%_)
                   (if (gx#identifier? _%hd129636%_)
                       (gx#identifier-list? _%rest129635%_)
                       '#f)))
                (_%K129611129629%_ (lambda () '#t)))
            (let ((_%try-match129608129632%_
                   (lambda ()
                     (if (null? _%g129606129616%_)
                         (_%K129611129629%_)
                         (_%else129609129624%_)))))
              (if (pair? _%g129606129616%_)
                  (let ((_%tl129614129643%_ (##cdr _%g129606129616%_))
                        (_%hd129613129641%_ (##car _%g129606129616%_)))
                    (let ((_%hd129646%_ _%hd129613129641%_)
                          (_%rest129648%_ _%tl129614129643%_))
                      (_%K129612129638%_ _%rest129648%_ _%hd129646%_)))
                  (_%try-match129608129632%_)))))))
    (define gx#genident__%
      (lambda (_%e129582%_ _%src129583%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e129585%_ (gx#stx-e _%e129582%_)))
                   (if (interned-symbol? _%e129585%_) _%e129585%_ 'g)))
         (let ((_%$e129587%_ (gx#stx-source _%e129582%_)))
           (if _%$e129587%_ _%$e129587%_ _%src129583%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e129594%_ 'g) (_%src129596%_ '#f))
          (gx#genident__% _%e129594%_ _%src129596%_))))
    (define gx#genident__1
      (lambda (_%e129598%_)
        (let ((_%src129600%_ '#f))
          (gx#genident__% _%e129598%_ _%src129600%_))))
    (define gx#genident
      (lambda _g130064_
        (let ((_g130065_ (##length _g130064_)))
          (cond ((##fx= _g130065_ 0) (apply gx#genident__0 _g130064_))
                ((##fx= _g130065_ 1) (apply gx#genident__1 _g130064_))
                ((##fx= _g130065_ 2) (apply gx#genident__% _g130064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g130064_))))))
    (define gx#gentemps
      (lambda (_%stx-lst129579%_) (gx#stx-map1 gx#genident _%stx-lst129579%_)))
    (define gx#syntax->list
      (lambda (_%stx129577%_) (gx#stx-map1 values _%stx129577%_)))
    (define gx#stx-car
      (lambda (_%stx129574%_)
        (declare (safe))
        (car (gx#syntax-e _%stx129574%_))))
    (define gx#stx-cdr
      (lambda (_%stx129571%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx129571%_))))
    (define gx#stx-length
      (lambda (_%stx129536%_)
        (let _%lp129538%_ ((_%rest129540%_ _%stx129536%_) (_%n129541%_ '0))
          (let* ((_%g129542129550%_ (gx#stx-e _%rest129540%_))
                 (_%else129544129558%_ (lambda () _%n129541%_))
                 (_%K129546129563%_
                  (lambda (_%rest129561%_)
                    (_%lp129538%_ _%rest129561%_ (##fx+ _%n129541%_ '1)))))
            (if (pair? _%g129542129550%_)
                (let* ((_%tl129548129566%_ (##cdr _%g129542129550%_))
                       (_%rest129569%_ _%tl129548129566%_))
                  (_%K129546129563%_ _%rest129569%_))
                (_%else129544129558%_))))))
    (define gx#stx-for-each
      (lambda _g130066_
        (let ((_g130067_ (##length _g130066_)))
          (cond ((##fx= _g130067_ 2) (apply gx#stx-for-each1 _g130066_))
                ((##fx= _g130067_ 3) (apply gx#stx-for-each2 _g130066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g130066_))))))
    (define gx#stx-for-each1
      (lambda (_%f129479%_ _%stx129480%_)
        (if (procedure? _%f129479%_)
            '#!void
            (error '"expected procedure" _%f129479%_))
        (let _%lp129482%_ ((_%rest129484%_ _%stx129480%_))
          (let* ((_%g129485129495%_ (gx#syntax-e _%rest129484%_))
                 (_%else129488129503%_
                  (lambda () (_%f129479%_ _%rest129484%_))))
            (let ((_%K129491129517%_
                   (lambda (_%rest129514%_ _%hd129515%_)
                     (_%f129479%_ _%hd129515%_)
                     (_%lp129482%_ _%rest129514%_)))
                  (_%K129490129508%_ (lambda () '#!void)))
              (let ((_%try-match129487129511%_
                     (lambda ()
                       (if (null? _%g129485129495%_)
                           (_%K129490129508%_)
                           (_%else129488129503%_)))))
                (if (pair? _%g129485129495%_)
                    (let ((_%tl129493129522%_ (##cdr _%g129485129495%_))
                          (_%hd129492129520%_ (##car _%g129485129495%_)))
                      (let ((_%hd129525%_ _%hd129492129520%_)
                            (_%rest129527%_ _%tl129493129522%_))
                        (_%K129491129517%_ _%rest129527%_ _%hd129525%_)))
                    (_%try-match129487129511%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f129384%_ _%xstx129385%_ _%ystx129386%_)
        (if (procedure? _%f129384%_)
            '#!void
            (error '"expected procedure" _%f129384%_))
        (let _%lp129388%_ ((_%xrest129390%_ _%xstx129385%_)
                           (_%yrest129391%_ _%ystx129386%_))
          (let* ((_%g129392129402%_ (gx#syntax-e _%xrest129390%_))
                 (_%else129395129410%_ (lambda () '#!void)))
            (let ((_%K129398129467%_
                   (lambda (_%xrest129436%_ _%xhd129437%_)
                     (let* ((_%g129438129445%_ (gx#syntax-e _%yrest129391%_))
                            (_%E129440129449%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g129438129445%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K129441129455%_
                             (lambda (_%yrest129452%_ _%yhd129453%_)
                               (_%f129384%_ _%xhd129437%_ _%yhd129453%_)
                               (_%lp129388%_
                                _%xrest129436%_
                                _%yrest129452%_))))
                       (if (pair? _%g129438129445%_)
                           (let ((_%hd129442129458%_ (##car _%g129438129445%_))
                                 (_%tl129443129460%_
                                  (##cdr _%g129438129445%_)))
                             (let* ((_%yhd129463%_ _%hd129442129458%_)
                                    (_%yrest129465%_ _%tl129443129460%_))
                               (_%K129441129455%_
                                _%yrest129465%_
                                _%yhd129463%_)))
                           (_%E129440129449%_)))))
                  (_%K129397129430%_
                   (lambda ()
                     (let* ((_%yrest129414129419%_ _%yrest129391%_)
                            (_%E129416129423%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest129414129419%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K129417129427%_
                             (lambda ()
                               (_%f129384%_ _%xrest129390%_ _%yrest129391%_))))
                       (if (gx#stx-null? _%yrest129414129419%_)
                           (_%E129416129423%_)
                           (_%K129417129427%_))))))
              (let ((_%try-match129394129433%_
                     (lambda ()
                       (if (null? _%g129392129402%_)
                           (_%else129395129410%_)
                           (_%K129397129430%_)))))
                (if (pair? _%g129392129402%_)
                    (let ((_%tl129400129472%_ (##cdr _%g129392129402%_))
                          (_%hd129399129470%_ (##car _%g129392129402%_)))
                      (let ((_%xhd129475%_ _%hd129399129470%_)
                            (_%xrest129477%_ _%tl129400129472%_))
                        (_%K129398129467%_ _%xrest129477%_ _%xhd129475%_)))
                    (_%try-match129394129433%_))))))))
    (define gx#stx-map
      (lambda _g130068_
        (let ((_g130069_ (##length _g130068_)))
          (cond ((##fx= _g130069_ 2) (apply gx#stx-map1 _g130068_))
                ((##fx= _g130069_ 3) (apply gx#stx-map2 _g130068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g130068_))))))
    (define gx#stx-map1
      (lambda (_%f129327%_ _%stx129328%_)
        (if (procedure? _%f129327%_)
            '#!void
            (error '"expected procedure" _%f129327%_))
        (let _%recur129330%_ ((_%rest129332%_ _%stx129328%_))
          (let* ((_%g129333129343%_ (gx#syntax-e _%rest129332%_))
                 (_%else129336129351%_
                  (lambda () (_%f129327%_ _%rest129332%_))))
            (let ((_%K129339129365%_
                   (lambda (_%rest129362%_ _%hd129363%_)
                     (cons (_%f129327%_ _%hd129363%_)
                           (_%recur129330%_ _%rest129362%_))))
                  (_%K129338129356%_ (lambda () '())))
              (let ((_%try-match129335129359%_
                     (lambda ()
                       (if (null? _%g129333129343%_)
                           (_%K129338129356%_)
                           (_%else129336129351%_)))))
                (if (pair? _%g129333129343%_)
                    (let ((_%tl129341129370%_ (##cdr _%g129333129343%_))
                          (_%hd129340129368%_ (##car _%g129333129343%_)))
                      (let ((_%hd129373%_ _%hd129340129368%_)
                            (_%rest129375%_ _%tl129341129370%_))
                        (_%K129339129365%_ _%rest129375%_ _%hd129373%_)))
                    (_%try-match129335129359%_))))))))
    (define gx#stx-map2
      (lambda (_%f129232%_ _%xstx129233%_ _%ystx129234%_)
        (if (procedure? _%f129232%_)
            '#!void
            (error '"expected procedure" _%f129232%_))
        (let _%recur129236%_ ((_%xrest129238%_ _%xstx129233%_)
                              (_%yrest129239%_ _%ystx129234%_))
          (let* ((_%g129240129250%_ (gx#syntax-e _%xrest129238%_))
                 (_%else129243129258%_ (lambda () '())))
            (let ((_%K129246129315%_
                   (lambda (_%xrest129284%_ _%xhd129285%_)
                     (let* ((_%g129286129293%_ (gx#syntax-e _%yrest129239%_))
                            (_%E129288129297%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g129286129293%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K129289129303%_
                             (lambda (_%yrest129300%_ _%yhd129301%_)
                               (cons (_%f129232%_ _%xhd129285%_ _%yhd129301%_)
                                     (_%recur129236%_
                                      _%xrest129284%_
                                      _%yrest129300%_)))))
                       (if (pair? _%g129286129293%_)
                           (let ((_%hd129290129306%_ (##car _%g129286129293%_))
                                 (_%tl129291129308%_
                                  (##cdr _%g129286129293%_)))
                             (let* ((_%yhd129311%_ _%hd129290129306%_)
                                    (_%yrest129313%_ _%tl129291129308%_))
                               (_%K129289129303%_
                                _%yrest129313%_
                                _%yhd129311%_)))
                           (_%E129288129297%_)))))
                  (_%K129245129278%_
                   (lambda ()
                     (let* ((_%yrest129262129267%_ _%yrest129239%_)
                            (_%E129264129271%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest129262129267%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K129265129275%_
                             (lambda ()
                               (_%f129232%_ _%xrest129238%_ _%yrest129239%_))))
                       (if (gx#stx-null? _%yrest129262129267%_)
                           (_%E129264129271%_)
                           (_%K129265129275%_))))))
              (let ((_%try-match129242129281%_
                     (lambda ()
                       (if (null? _%g129240129250%_)
                           (_%else129243129258%_)
                           (_%K129245129278%_)))))
                (if (pair? _%g129240129250%_)
                    (let ((_%tl129248129320%_ (##cdr _%g129240129250%_))
                          (_%hd129247129318%_ (##car _%g129240129250%_)))
                      (let ((_%xhd129323%_ _%hd129247129318%_)
                            (_%xrest129325%_ _%tl129248129320%_))
                        (_%K129246129315%_ _%xrest129325%_ _%xhd129323%_)))
                    (_%try-match129242129281%_))))))))
    (define gx#stx-andmap
      (lambda (_%f129182%_ _%stx129183%_)
        (if (procedure? _%f129182%_)
            '#!void
            (error '"expected procedure" _%f129182%_))
        (let _%lp129185%_ ((_%rest129187%_ _%stx129183%_))
          (let* ((_%g129188129198%_ (gx#syntax-e _%rest129187%_))
                 (_%else129191129206%_
                  (lambda () (_%f129182%_ _%rest129187%_))))
            (let ((_%K129194129220%_
                   (lambda (_%rest129217%_ _%hd129218%_)
                     (if (_%f129182%_ _%hd129218%_)
                         (_%lp129185%_ _%rest129217%_)
                         '#f)))
                  (_%K129193129211%_ (lambda () '#t)))
              (let ((_%try-match129190129214%_
                     (lambda ()
                       (if (null? _%g129188129198%_)
                           (_%K129193129211%_)
                           (_%else129191129206%_)))))
                (if (pair? _%g129188129198%_)
                    (let ((_%tl129196129225%_ (##cdr _%g129188129198%_))
                          (_%hd129195129223%_ (##car _%g129188129198%_)))
                      (let ((_%hd129228%_ _%hd129195129223%_)
                            (_%rest129230%_ _%tl129196129225%_))
                        (_%K129194129220%_ _%rest129230%_ _%hd129228%_)))
                    (_%try-match129190129214%_))))))))
    (define gx#stx-ormap
      (lambda (_%f129129%_ _%stx129130%_)
        (if (procedure? _%f129129%_)
            '#!void
            (error '"expected procedure" _%f129129%_))
        (let _%lp129132%_ ((_%rest129134%_ _%stx129130%_))
          (let* ((_%g129135129145%_ (gx#syntax-e _%rest129134%_))
                 (_%else129138129153%_
                  (lambda () (_%f129129%_ _%rest129134%_))))
            (let ((_%K129141129170%_
                   (lambda (_%rest129164%_ _%hd129165%_)
                     (let ((_%$e129167%_ (_%f129129%_ _%hd129165%_)))
                       (if _%$e129167%_
                           _%$e129167%_
                           (_%lp129132%_ _%rest129164%_)))))
                  (_%K129140129158%_ (lambda () '#f)))
              (let ((_%try-match129137129161%_
                     (lambda ()
                       (if (null? _%g129135129145%_)
                           (_%K129140129158%_)
                           (_%else129138129153%_)))))
                (if (pair? _%g129135129145%_)
                    (let ((_%tl129143129175%_ (##cdr _%g129135129145%_))
                          (_%hd129142129173%_ (##car _%g129135129145%_)))
                      (let ((_%hd129178%_ _%hd129142129173%_)
                            (_%rest129180%_ _%tl129143129175%_))
                        (_%K129141129170%_ _%rest129180%_ _%hd129178%_)))
                    (_%try-match129137129161%_))))))))
    (define gx#stx-foldl
      (lambda (_%f129077%_ _%iv129078%_ _%stx129079%_)
        (if (procedure? _%f129077%_)
            '#!void
            (error '"expected procedure" _%f129077%_))
        (let _%lp129081%_ ((_%r129083%_ _%iv129078%_)
                           (_%rest129084%_ _%stx129079%_))
          (let* ((_%g129085129095%_ (gx#syntax-e _%rest129084%_))
                 (_%else129088129103%_
                  (lambda () (_%f129077%_ _%rest129084%_ _%r129083%_))))
            (let ((_%K129091129117%_
                   (lambda (_%rest129114%_ _%hd129115%_)
                     (_%lp129081%_
                      (_%f129077%_ _%hd129115%_ _%r129083%_)
                      _%rest129114%_)))
                  (_%K129090129108%_ (lambda () _%r129083%_)))
              (let ((_%try-match129087129111%_
                     (lambda ()
                       (if (null? _%g129085129095%_)
                           (_%K129090129108%_)
                           (_%else129088129103%_)))))
                (if (pair? _%g129085129095%_)
                    (let ((_%tl129093129122%_ (##cdr _%g129085129095%_))
                          (_%hd129092129120%_ (##car _%g129085129095%_)))
                      (let ((_%hd129125%_ _%hd129092129120%_)
                            (_%rest129127%_ _%tl129093129122%_))
                        (_%K129091129117%_ _%rest129127%_ _%hd129125%_)))
                    (_%try-match129087129111%_))))))))
    (define gx#stx-foldr
      (lambda (_%f129026%_ _%iv129027%_ _%stx129028%_)
        (if (procedure? _%f129026%_)
            '#!void
            (error '"expected procedure" _%f129026%_))
        (let _%recur129030%_ ((_%rest129032%_ _%stx129028%_))
          (let* ((_%g129033129043%_ (gx#syntax-e _%rest129032%_))
                 (_%else129036129051%_
                  (lambda () (_%f129026%_ _%rest129032%_ _%iv129027%_))))
            (let ((_%K129039129065%_
                   (lambda (_%rest129062%_ _%hd129063%_)
                     (_%f129026%_
                      _%hd129063%_
                      (_%recur129030%_ _%rest129062%_))))
                  (_%K129038129056%_ (lambda () _%iv129027%_)))
              (let ((_%try-match129035129059%_
                     (lambda ()
                       (if (null? _%g129033129043%_)
                           (_%K129038129056%_)
                           (_%else129036129051%_)))))
                (if (pair? _%g129033129043%_)
                    (let ((_%tl129041129070%_ (##cdr _%g129033129043%_))
                          (_%hd129040129068%_ (##car _%g129033129043%_)))
                      (let ((_%hd129073%_ _%hd129040129068%_)
                            (_%rest129075%_ _%tl129041129070%_))
                        (_%K129039129065%_ _%rest129075%_ _%hd129073%_)))
                    (_%try-match129035129059%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx129024%_) (gx#stx-foldl cons '() _%stx129024%_)))
    (define gx#stx-last
      (lambda (_%stx128985%_)
        (let _%lp128987%_ ((_%rest128989%_ _%stx128985%_))
          (let* ((_%g128990128998%_ (gx#syntax-e _%rest128989%_))
                 (_%else128992129006%_ (lambda () _%rest128989%_))
                 (_%K128994129012%_
                  (lambda (_%rest129009%_ _%hd129010%_)
                    (if (gx#stx-null? _%rest129009%_)
                        _%hd129010%_
                        (_%lp128987%_ _%rest129009%_)))))
            (if (pair? _%g128990128998%_)
                (let ((_%hd128995129015%_ (##car _%g128990128998%_))
                      (_%tl128996129017%_ (##cdr _%g128990128998%_)))
                  (let* ((_%hd129020%_ _%hd128995129015%_)
                         (_%rest129022%_ _%tl128996129017%_))
                    (_%K128994129012%_ _%rest129022%_ _%hd129020%_)))
                (_%else128992129006%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx128956%_)
        (let _%lp128958%_ ((_%hd128960%_ _%stx128956%_))
          (let* ((_%g128961128968%_ (gx#syntax-e _%hd128960%_))
                 (_%E128963128972%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g128961128968%_
                           '([_ . rest]))
                    '#!void))
                 (_%K128964128977%_
                  (lambda (_%rest128975%_)
                    (if (gx#stx-pair? _%rest128975%_)
                        (_%lp128958%_ _%rest128975%_)
                        _%hd128960%_))))
            (if (pair? _%g128961128968%_)
                (let* ((_%tl128966128980%_ (##cdr _%g128961128968%_))
                       (_%rest128983%_ _%tl128966128980%_))
                  (_%K128964128977%_ _%rest128983%_))
                (_%E128963128972%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx128925%_ _%k128926%_)
        (let _%lp128928%_ ((_%rest128930%_ _%stx128925%_)
                           (_%k128931%_ _%k128926%_))
          (if (fxpositive? _%k128931%_)
              (let* ((_%g128932128939%_ (gx#syntax-e _%rest128930%_))
                     (_%E128934128943%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g128932128939%_
                               '([_ . rest]))
                        '#!void))
                     (_%K128935128948%_
                      (lambda (_%rest128946%_)
                        (_%lp128928%_ _%rest128946%_ (##fx- _%k128931%_ '1)))))
                (if (pair? _%g128932128939%_)
                    (let* ((_%tl128937128951%_ (##cdr _%g128932128939%_))
                           (_%rest128954%_ _%tl128937128951%_))
                      (_%K128935128948%_ _%rest128954%_))
                    (_%E128934128943%_)))
              _%rest128930%_))))
    (define gx#stx-list-ref
      (lambda (_%stx128922%_ _%k128923%_)
        (gx#stx-car (gx#stx-list-tail _%stx128922%_ _%k128923%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx128834%_ _%key?128835%_)
        (if (procedure? _%key?128835%_)
            '#!void
            (error '"expected procedure" _%key?128835%_))
        (let _%lp128837%_ ((_%rest128839%_ _%stx128834%_))
          (let* ((_%g128840128850%_ (gx#stx-e _%rest128839%_))
                 (_%else128843128858%_ (lambda () '#f)))
            (let ((_%K128846128900%_
                   (lambda (_%rest128869%_ _%hd128870%_)
                     (if (_%key?128835%_ _%hd128870%_)
                         (let* ((_%g128871128879%_ (gx#stx-e _%rest128869%_))
                                (_%else128873128887%_ (lambda () '#f))
                                (_%K128875128892%_
                                 (lambda (_%rest128890%_)
                                   (_%lp128837%_ _%rest128890%_))))
                           (if (pair? _%g128871128879%_)
                               (let* ((_%tl128877128895%_
                                       (##cdr _%g128871128879%_))
                                      (_%rest128898%_ _%tl128877128895%_))
                                 (_%lp128837%_ _%rest128898%_))
                               (_%else128873128887%_)))
                         '#f)))
                  (_%K128845128863%_ (lambda () '#t)))
              (let ((_%try-match128842128866%_
                     (lambda ()
                       (if (null? _%g128840128850%_)
                           (_%K128845128863%_)
                           (_%else128843128858%_)))))
                (if (pair? _%g128840128850%_)
                    (let ((_%tl128848128905%_ (##cdr _%g128840128850%_))
                          (_%hd128847128903%_ (##car _%g128840128850%_)))
                      (let ((_%hd128908%_ _%hd128847128903%_)
                            (_%rest128910%_ _%tl128848128905%_))
                        (_%K128846128900%_ _%rest128910%_ _%hd128908%_)))
                    (_%try-match128842128866%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx128915%_)
        (let ((_%key?128917%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx128915%_ _%key?128917%_))))
    (define gx#stx-plist?
      (lambda _g130070_
        (let ((_g130071_ (##length _g130070_)))
          (cond ((##fx= _g130071_ 1) (apply gx#stx-plist?__0 _g130070_))
                ((##fx= _g130071_ 2) (apply gx#stx-plist?__% _g130070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g130070_))))))
    (define gx#stx-getq__%
      (lambda (_%key128752%_ _%stx128753%_ _%key=?128754%_)
        (if (procedure? _%key=?128754%_)
            '#!void
            (error '"expected procedure" _%key=?128754%_))
        (let _%lp128756%_ ((_%rest128758%_ _%stx128753%_))
          (let* ((_%g128759128767%_ (gx#syntax-e _%rest128758%_))
                 (_%else128761128775%_ (lambda () '#f))
                 (_%K128763128809%_
                  (lambda (_%rest128778%_ _%hd128779%_)
                    (let* ((_%g128780128787%_ (gx#syntax-e _%rest128778%_))
                           (_%E128782128791%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g128780128787%_
                                     '([val . rest]))
                              '#!void))
                           (_%K128783128797%_
                            (lambda (_%rest128794%_ _%val128795%_)
                              (if (_%key=?128754%_ _%hd128779%_ _%key128752%_)
                                  _%val128795%_
                                  (_%lp128756%_ _%rest128794%_)))))
                      (if (pair? _%g128780128787%_)
                          (let ((_%hd128784128800%_ (##car _%g128780128787%_))
                                (_%tl128785128802%_ (##cdr _%g128780128787%_)))
                            (let* ((_%val128805%_ _%hd128784128800%_)
                                   (_%rest128807%_ _%tl128785128802%_))
                              (_%K128783128797%_
                               _%rest128807%_
                               _%val128805%_)))
                          (_%E128782128791%_))))))
            (if (pair? _%g128759128767%_)
                (let ((_%hd128764128812%_ (##car _%g128759128767%_))
                      (_%tl128765128814%_ (##cdr _%g128759128767%_)))
                  (let* ((_%hd128817%_ _%hd128764128812%_)
                         (_%rest128819%_ _%tl128765128814%_))
                    (_%K128763128809%_ _%rest128819%_ _%hd128817%_)))
                (_%else128761128775%_))))))
    (define gx#stx-getq__0
      (lambda (_%key128824%_ _%stx128825%_)
        (let ((_%key=?128827%_ gx#stx-eq?))
          (gx#stx-getq__% _%key128824%_ _%stx128825%_ _%key=?128827%_))))
    (define gx#stx-getq
      (lambda _g130072_
        (let ((_g130073_ (##length _g130072_)))
          (cond ((##fx= _g130073_ 2) (apply gx#stx-getq__0 _g130072_))
                ((##fx= _g130073_ 3) (apply gx#stx-getq__% _g130072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g130072_))))))))
