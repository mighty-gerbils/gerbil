(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1768865823)
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
      (lambda _%$args130022%_
        (apply make-instance gx#identifier-wrap::t _%$args130022%_)))
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
      (lambda _%$args130019%_
        (apply make-instance gx#syntax-wrap::t _%$args130019%_)))
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
      (lambda _%$args130016%_
        (apply make-instance gx#syntax-quote::t _%$args130016%_)))
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
      (lambda (_%stx130014%_) (symbol? (gx#stx-e _%stx130014%_))))
    (define gx#identifier-quote?
      (lambda (_%stx130012%_)
        (if (##structure-direct-instance-of? _%stx130012%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx130012%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx130007%_)
        (if (##structure-direct-instance-of? _%stx130007%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx130007%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx130007%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx130002%_)
        (if (##structure-direct-instance-of? _%stx130002%_ 'gx#syntax-quote::t)
            _%stx130002%_
            (if (##structure-direct-instance-of?
                 _%stx130002%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx130002%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx129976%_)
        (if (##structure-direct-instance-of? _%stx129976%_ 'gx#syntax-wrap::t)
            (let _%lp129979%_ ((_%e129981%_
                                (##unchecked-structure-ref
                                 _%stx129976%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks129982%_
                                (cons (##unchecked-structure-ref
                                       _%stx129976%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e129981%_)
                  (let ((_%$e129985%_
                         (##type-id (##structure-type _%e129981%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e129985%_)
                        (_%lp129979%_
                         (##unchecked-structure-ref _%e129981%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e129981%_ '3 '#f '#f)
                          _%marks129982%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e129985%_)
                                (eq? 'gx#identifier-wrap::t _%$e129985%_))
                            (##unchecked-structure-ref _%e129981%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e129985%_)
                                (_%lp129979%_
                                 (##unchecked-structure-ref
                                  _%e129981%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks129982%_)
                                _%e129981%_))))
                  (if (null? _%marks129982%_)
                      _%e129981%_
                      (if (pair? _%e129981%_)
                          (cons (gx#stx-wrap
                                 (##car _%e129981%_)
                                 _%marks129982%_)
                                (gx#stx-wrap
                                 (##cdr _%e129981%_)
                                 _%marks129982%_))
                          (if (vector? _%e129981%_)
                              (vector-map
                               (lambda (_%g129993129995%_)
                                 (gx#stx-wrap
                                  _%g129993129995%_
                                  _%marks129982%_))
                               _%e129981%_)
                              (if (box? _%e129981%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e129981%_)
                                        _%marks129982%_))
                                  _%e129981%_))))))
            (if (##structure-instance-of? _%stx129976%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx129976%_ '1 '#f '#f)
                _%stx129976%_))))
    (define gx#syntax->datum
      (lambda (_%stx129969%_)
        (if (##structure-instance-of? _%stx129969%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx129969%_ '1 '#f '#f))
            (if (pair? _%stx129969%_)
                (cons (gx#syntax->datum (##car _%stx129969%_))
                      (gx#syntax->datum (##cdr _%stx129969%_)))
                (if (vector? _%stx129969%_)
                    (vector-map gx#syntax->datum _%stx129969%_)
                    (if (box? _%stx129969%_)
                        (box (gx#syntax->datum (unbox _%stx129969%_)))
                        _%stx129969%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx129903%_ _%datum129904%_ _%src129905%_ _%quote?129906%_)
        (letrec ((_%wrap-datum129908%_
                  (lambda (_%e129941%_ _%marks129942%_)
                    (_%wrap-inner129910%_
                     _%e129941%_
                     (lambda (_%g129943129945%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g129943129945%_
                        _%src129905%_
                        _%marks129942%_)))))
                 (_%wrap-quote129909%_
                  (lambda (_%e129933%_ _%ctx129934%_ _%marks129935%_)
                    (_%wrap-inner129910%_
                     _%e129933%_
                     (lambda (_%g129936129938%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g129936129938%_
                        _%src129905%_
                        _%ctx129934%_
                        _%marks129935%_)))))
                 (_%wrap-inner129910%_
                  (lambda (_%e129921%_ _%wrap-e129922%_)
                    (let _%recur129924%_ ((_%e129926%_ _%e129921%_))
                      (if (symbol? _%e129926%_)
                          (_%wrap-e129922%_ _%e129926%_)
                          (if (pair? _%e129926%_)
                              (cons (_%recur129924%_ (##car _%e129926%_))
                                    (_%recur129924%_ (##cdr _%e129926%_)))
                              (if (vector? _%e129926%_)
                                  (vector-map _%recur129924%_ _%e129926%_)
                                  (if (box? _%e129926%_)
                                      (box (_%recur129924%_
                                            (unbox _%e129926%_)))
                                      _%e129926%_)))))))
                 (_%wrap-outer129911%_
                  (lambda (_%e129919%_)
                    (if (##structure-instance-of? _%e129919%_ 'gerbil#AST::t)
                        _%e129919%_
                        (##structure gx#AST::t _%e129919%_ _%src129905%_)))))
          (if (##structure-instance-of? _%datum129904%_ 'gerbil#AST::t)
              _%datum129904%_
              (if (not _%stx129903%_)
                  (##structure gx#AST::t _%datum129904%_ _%src129905%_)
                  (if (gx#identifier? _%stx129903%_)
                      (let ((_%stx129916%_ (gx#stx-unwrap__0 _%stx129903%_)))
                        (_%wrap-outer129911%_
                         (if (##structure-direct-instance-of?
                              _%stx129916%_
                              'gx#syntax-quote::t)
                             (if _%quote?129906%_
                                 (_%wrap-quote129909%_
                                  _%datum129904%_
                                  (##unchecked-structure-ref
                                   _%stx129916%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx129916%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum129908%_
                                  _%datum129904%_
                                  (##unchecked-structure-ref
                                   _%stx129916%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum129908%_
                              _%datum129904%_
                              (##unchecked-structure-ref
                               _%stx129916%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx129903%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx129951%_ _%datum129952%_)
        (let* ((_%src129954%_ '#f) (_%quote?129956%_ '#t))
          (gx#datum->syntax__%
           _%stx129951%_
           _%datum129952%_
           _%src129954%_
           _%quote?129956%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx129958%_ _%datum129959%_ _%src129960%_)
        (let ((_%quote?129962%_ '#t))
          (gx#datum->syntax__%
           _%stx129958%_
           _%datum129959%_
           _%src129960%_
           _%quote?129962%_))))
    (define gx#datum->syntax
      (lambda _g130102_
        (let ((_g130103_ (##length _g130102_)))
          (cond ((##fx= _g130103_ 2) (apply gx#datum->syntax__0 _g130102_))
                ((##fx= _g130103_ 3) (apply gx#datum->syntax__1 _g130102_))
                ((##fx= _g130103_ 4) (apply gx#datum->syntax__% _g130102_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g130102_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx129869%_ _%marks129870%_)
        (let _%lp129872%_ ((_%e129874%_ _%stx129869%_)
                           (_%marks129875%_ _%marks129870%_)
                           (_%src129876%_ (gx#stx-source _%stx129869%_)))
          (if (##structure-direct-instance-of? _%e129874%_ 'gx#syntax-wrap::t)
              (_%lp129872%_
               (##unchecked-structure-ref _%e129874%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e129874%_ '3 '#f '#f)
                _%marks129875%_)
               (##unchecked-structure-ref _%e129874%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e129874%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks129875%_)
                      _%e129874%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e129874%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e129874%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e129874%_ '3 '#f '#f)
                        _%marks129875%_)))
                  (if (##structure-direct-instance-of?
                       _%e129874%_
                       'gx#syntax-quote::t)
                      _%e129874%_
                      (if (##structure-instance-of? _%e129874%_ 'gerbil#AST::t)
                          (_%lp129872%_
                           (##unchecked-structure-ref _%e129874%_ '1 '#f '#f)
                           _%marks129875%_
                           (##unchecked-structure-ref _%e129874%_ '2 '#f '#f))
                          (if (symbol? _%e129874%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e129874%_
                               _%src129876%_
                               (reverse _%marks129875%_))
                              (if (null? _%marks129875%_)
                                  _%e129874%_
                                  (if (pair? _%e129874%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e129874%_)
                                             _%marks129875%_)
                                            (gx#stx-wrap
                                             (##cdr _%e129874%_)
                                             _%marks129875%_))
                                      (if (vector? _%e129874%_)
                                          (vector-map
                                           (lambda (_%g129885129887%_)
                                             (gx#stx-wrap
                                              _%g129885129887%_
                                              _%marks129875%_))
                                           _%e129874%_)
                                          (if (box? _%e129874%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e129874%_)
                                                    _%marks129875%_))
                                              _%e129874%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx129895%_)
        (let ((_%marks129897%_ '()))
          (gx#stx-unwrap__% _%stx129895%_ _%marks129897%_))))
    (define gx#stx-unwrap
      (lambda _g130104_
        (let ((_g130105_ (##length _g130104_)))
          (cond ((##fx= _g130105_ 1) (apply gx#stx-unwrap__0 _g130104_))
                ((##fx= _g130105_ 2) (apply gx#stx-unwrap__% _g130104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g130104_))))))
    (define gx#stx-wrap
      (lambda (_%stx129862%_ _%marks129863%_)
        (__foldl1
         (lambda (_%mark129865%_ _%stx129866%_)
           (gx#stx-apply-mark _%stx129866%_ _%mark129865%_))
         _%stx129862%_
         _%marks129863%_)))
    (define gx#stx-rewrap
      (lambda (_%stx129856%_ _%marks129857%_)
        (__foldr1
         (lambda (_%mark129859%_ _%stx129860%_)
           (gx#stx-apply-mark _%stx129860%_ _%mark129859%_))
         _%stx129856%_
         _%marks129857%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx129850%_ _%mark129851%_)
        (if (##structure-direct-instance-of? _%stx129850%_ 'gx#syntax-quote::t)
            _%stx129850%_
            (if (and (##structure-direct-instance-of?
                      _%stx129850%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark129851%_
                          (##unchecked-structure-ref
                           _%stx129850%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx129850%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx129850%_
                 (gx#stx-source _%stx129850%_)
                 _%mark129851%_)))))
    (define gx#apply-mark
      (lambda (_%mark129814%_ _%marks129815%_)
        (let* ((_%marks129816129824%_ _%marks129815%_)
               (_%else129818129832%_
                (lambda () (cons _%mark129814%_ _%marks129815%_)))
               (_%K129820129838%_
                (lambda (_%rest129835%_ _%hd129836%_)
                  (if (eq? _%mark129814%_ _%hd129836%_)
                      _%rest129835%_
                      (cons _%mark129814%_ _%marks129815%_)))))
          (if (pair? _%marks129816129824%_)
              (let ((_%hd129821129841%_ (##car _%marks129816129824%_))
                    (_%tl129822129843%_ (##cdr _%marks129816129824%_)))
                (let* ((_%hd129846%_ _%hd129821129841%_)
                       (_%rest129848%_ _%tl129822129843%_))
                  (_%K129820129838%_ _%rest129848%_ _%hd129846%_)))
              (_%else129818129832%_)))))
    (define gx#stx-e
      (lambda (_%stx129809%_)
        (if (##structure-direct-instance-of? _%stx129809%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx129809%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx129809%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx129809%_ '1 '#f '#f)
                _%stx129809%_))))
    (define gx#stx-source
      (lambda (_%stx129807%_)
        (if (##structure-instance-of? _%stx129807%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx129807%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx129801%_ _%src129802%_)
        (if (or (##structure-instance-of? _%stx129801%_ 'gerbil#AST::t)
                (not _%src129802%_))
            _%stx129801%_
            (##structure gx#AST::t _%stx129801%_ _%src129802%_))))
    (define gx#stx-datum?
      (lambda (_%stx129799%_) (gx#self-quoting? (gx#stx-e _%stx129799%_))))
    (define gx#self-quoting?
      (lambda (_%x129782%_)
        (let ((_%$e129784%_ (immediate? _%x129782%_)))
          (if _%$e129784%_
              _%$e129784%_
              (let ((_%$e129787%_ (number? _%x129782%_)))
                (if _%$e129787%_
                    _%$e129787%_
                    (let ((_%$e129790%_ (keyword? _%x129782%_)))
                      (if _%$e129790%_
                          _%$e129790%_
                          (let ((_%$e129793%_ (string? _%x129782%_)))
                            (if _%$e129793%_
                                _%$e129793%_
                                (let ((_%$e129796%_ (vector? _%x129782%_)))
                                  (if _%$e129796%_
                                      _%$e129796%_
                                      (u8vector? _%x129782%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e129780%_) (boolean? (gx#stx-e _%e129780%_))))
    (define gx#stx-keyword?
      (lambda (_%e129778%_) (keyword? (gx#stx-e _%e129778%_))))
    (define gx#stx-char? (lambda (_%e129776%_) (char? (gx#stx-e _%e129776%_))))
    (define gx#stx-number?
      (lambda (_%e129774%_) (number? (gx#stx-e _%e129774%_))))
    (define gx#stx-fixnum?
      (lambda (_%e129772%_) (fixnum? (gx#stx-e _%e129772%_))))
    (define gx#stx-string?
      (lambda (_%e129770%_) (string? (gx#stx-e _%e129770%_))))
    (define gx#stx-null? (lambda (_%e129768%_) (null? (gx#stx-e _%e129768%_))))
    (define gx#stx-pair? (lambda (_%e129766%_) (pair? (gx#stx-e _%e129766%_))))
    (define gx#stx-list?
      (lambda (_%e129728%_)
        (let* ((_%g129729129738%_ (gx#stx-e _%e129728%_))
               (_%E129732129742%_
                (lambda ()
                  (error '"No clause matching"
                         _%g129729129738%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K129734129758%_
                 (lambda (_%rest129756%_) (gx#stx-list? _%rest129756%_)))
                (_%K129733129748%_
                 (lambda (_%tail129746%_) (null? _%tail129746%_))))
            (if (pair? _%g129729129738%_)
                (let* ((_%tl129736129761%_ (##cdr _%g129729129738%_))
                       (_%rest129764%_ _%tl129736129761%_))
                  (gx#stx-list? _%rest129764%_))
                (let ((_%tail129751%_ _%g129729129738%_))
                  (null? _%tail129751%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e129721%_)
        (let* ((_%e129723%_ (gx#stx-e _%e129721%_))
               (_%$e129725%_ (pair? _%e129723%_)))
          (if _%$e129725%_ _%$e129725%_ (null? _%e129723%_)))))
    (define gx#stx-vector?
      (lambda (_%e129719%_) (vector? (gx#stx-e _%e129719%_))))
    (define gx#stx-box? (lambda (_%e129717%_) (box? (gx#stx-e _%e129717%_))))
    (define gx#stx-eq?
      (lambda (_%x129714%_ _%y129715%_)
        (eq? (gx#stx-e _%x129714%_) (gx#stx-e _%y129715%_))))
    (define gx#stx-eqv?
      (lambda (_%x129711%_ _%y129712%_)
        (eqv? (gx#stx-e _%x129711%_) (gx#stx-e _%y129712%_))))
    (define gx#stx-equal?
      (lambda (_%x129708%_ _%y129709%_)
        (equal? (gx#stx-e _%x129708%_) (gx#stx-e _%y129709%_))))
    (define gx#stx-false? (lambda (_%x129706%_) (not (gx#stx-e _%x129706%_))))
    (define gx#stx-identifier
      (lambda (_%template129703%_ . _%args129704%_)
        (gx#datum->syntax__1
         _%template129703%_
         (apply make-symbol (gx#syntax->datum _%args129704%_))
         (gx#stx-source _%template129703%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx129701%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx129701%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx129696%_)
        (if (##structure-direct-instance-of?
             _%stx129696%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx129696%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx129696%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx129696%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx129696%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx129692%_)
        (let ((_%stx129694%_ (gx#stx-unwrap__0 _%stx129692%_)))
          (if (gx#identifier-quote? _%stx129694%_)
              (##unchecked-structure-ref _%stx129694%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx129647%_)
        (let* ((_%g129648129658%_ (gx#stx-e _%stx129647%_))
               (_%else129651129666%_ (lambda () '#f)))
          (let ((_%K129654129680%_
                 (lambda (_%rest129677%_ _%hd129678%_)
                   (if (gx#identifier? _%hd129678%_)
                       (gx#identifier-list? _%rest129677%_)
                       '#f)))
                (_%K129653129671%_ (lambda () '#t)))
            (let ((_%try-match129650129674%_
                   (lambda ()
                     (if (null? _%g129648129658%_)
                         (_%K129653129671%_)
                         (_%else129651129666%_)))))
              (if (pair? _%g129648129658%_)
                  (let ((_%tl129656129685%_ (##cdr _%g129648129658%_))
                        (_%hd129655129683%_ (##car _%g129648129658%_)))
                    (let ((_%hd129688%_ _%hd129655129683%_)
                          (_%rest129690%_ _%tl129656129685%_))
                      (_%K129654129680%_ _%rest129690%_ _%hd129688%_)))
                  (_%try-match129650129674%_)))))))
    (define gx#genident__%
      (lambda (_%e129624%_ _%src129625%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e129627%_ (gx#stx-e _%e129624%_)))
                   (if (interned-symbol? _%e129627%_) _%e129627%_ 'g)))
         (let ((_%$e129629%_ (gx#stx-source _%e129624%_)))
           (if _%$e129629%_ _%$e129629%_ _%src129625%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e129636%_ 'g) (_%src129638%_ '#f))
          (gx#genident__% _%e129636%_ _%src129638%_))))
    (define gx#genident__1
      (lambda (_%e129640%_)
        (let ((_%src129642%_ '#f))
          (gx#genident__% _%e129640%_ _%src129642%_))))
    (define gx#genident
      (lambda _g130106_
        (let ((_g130107_ (##length _g130106_)))
          (cond ((##fx= _g130107_ 0) (apply gx#genident__0 _g130106_))
                ((##fx= _g130107_ 1) (apply gx#genident__1 _g130106_))
                ((##fx= _g130107_ 2) (apply gx#genident__% _g130106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g130106_))))))
    (define gx#gentemps
      (lambda (_%stx-lst129621%_) (gx#stx-map1 gx#genident _%stx-lst129621%_)))
    (define gx#syntax->list
      (lambda (_%stx129619%_) (gx#stx-map1 values _%stx129619%_)))
    (define gx#stx-car
      (lambda (_%stx129616%_)
        (declare (safe))
        (car (gx#syntax-e _%stx129616%_))))
    (define gx#stx-cdr
      (lambda (_%stx129613%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx129613%_))))
    (define gx#stx-length
      (lambda (_%stx129578%_)
        (let _%lp129580%_ ((_%rest129582%_ _%stx129578%_) (_%n129583%_ '0))
          (let* ((_%g129584129592%_ (gx#stx-e _%rest129582%_))
                 (_%else129586129600%_ (lambda () _%n129583%_))
                 (_%K129588129605%_
                  (lambda (_%rest129603%_)
                    (_%lp129580%_ _%rest129603%_ (##fx+ _%n129583%_ '1)))))
            (if (pair? _%g129584129592%_)
                (let* ((_%tl129590129608%_ (##cdr _%g129584129592%_))
                       (_%rest129611%_ _%tl129590129608%_))
                  (_%K129588129605%_ _%rest129611%_))
                (_%else129586129600%_))))))
    (define gx#stx-for-each
      (lambda _g130108_
        (let ((_g130109_ (##length _g130108_)))
          (cond ((##fx= _g130109_ 2) (apply gx#stx-for-each1 _g130108_))
                ((##fx= _g130109_ 3) (apply gx#stx-for-each2 _g130108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g130108_))))))
    (define gx#stx-for-each1
      (lambda (_%f129521%_ _%stx129522%_)
        (if (procedure? _%f129521%_)
            '#!void
            (error '"expected procedure" _%f129521%_))
        (let _%lp129524%_ ((_%rest129526%_ _%stx129522%_))
          (let* ((_%g129527129537%_ (gx#syntax-e _%rest129526%_))
                 (_%else129530129545%_
                  (lambda () (_%f129521%_ _%rest129526%_))))
            (let ((_%K129533129559%_
                   (lambda (_%rest129556%_ _%hd129557%_)
                     (_%f129521%_ _%hd129557%_)
                     (_%lp129524%_ _%rest129556%_)))
                  (_%K129532129550%_ (lambda () '#!void)))
              (let ((_%try-match129529129553%_
                     (lambda ()
                       (if (null? _%g129527129537%_)
                           (_%K129532129550%_)
                           (_%else129530129545%_)))))
                (if (pair? _%g129527129537%_)
                    (let ((_%tl129535129564%_ (##cdr _%g129527129537%_))
                          (_%hd129534129562%_ (##car _%g129527129537%_)))
                      (let ((_%hd129567%_ _%hd129534129562%_)
                            (_%rest129569%_ _%tl129535129564%_))
                        (_%K129533129559%_ _%rest129569%_ _%hd129567%_)))
                    (_%try-match129529129553%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f129426%_ _%xstx129427%_ _%ystx129428%_)
        (if (procedure? _%f129426%_)
            '#!void
            (error '"expected procedure" _%f129426%_))
        (let _%lp129430%_ ((_%xrest129432%_ _%xstx129427%_)
                           (_%yrest129433%_ _%ystx129428%_))
          (let* ((_%g129434129444%_ (gx#syntax-e _%xrest129432%_))
                 (_%else129437129452%_ (lambda () '#!void)))
            (let ((_%K129440129509%_
                   (lambda (_%xrest129478%_ _%xhd129479%_)
                     (let* ((_%g129480129487%_ (gx#syntax-e _%yrest129433%_))
                            (_%E129482129491%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g129480129487%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K129483129497%_
                             (lambda (_%yrest129494%_ _%yhd129495%_)
                               (_%f129426%_ _%xhd129479%_ _%yhd129495%_)
                               (_%lp129430%_
                                _%xrest129478%_
                                _%yrest129494%_))))
                       (if (pair? _%g129480129487%_)
                           (let ((_%hd129484129500%_ (##car _%g129480129487%_))
                                 (_%tl129485129502%_
                                  (##cdr _%g129480129487%_)))
                             (let* ((_%yhd129505%_ _%hd129484129500%_)
                                    (_%yrest129507%_ _%tl129485129502%_))
                               (_%K129483129497%_
                                _%yrest129507%_
                                _%yhd129505%_)))
                           (_%E129482129491%_)))))
                  (_%K129439129472%_
                   (lambda ()
                     (let* ((_%yrest129456129461%_ _%yrest129433%_)
                            (_%E129458129465%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest129456129461%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K129459129469%_
                             (lambda ()
                               (_%f129426%_ _%xrest129432%_ _%yrest129433%_))))
                       (if (gx#stx-null? _%yrest129456129461%_)
                           (_%E129458129465%_)
                           (_%K129459129469%_))))))
              (let ((_%try-match129436129475%_
                     (lambda ()
                       (if (null? _%g129434129444%_)
                           (_%else129437129452%_)
                           (_%K129439129472%_)))))
                (if (pair? _%g129434129444%_)
                    (let ((_%tl129442129514%_ (##cdr _%g129434129444%_))
                          (_%hd129441129512%_ (##car _%g129434129444%_)))
                      (let ((_%xhd129517%_ _%hd129441129512%_)
                            (_%xrest129519%_ _%tl129442129514%_))
                        (_%K129440129509%_ _%xrest129519%_ _%xhd129517%_)))
                    (_%try-match129436129475%_))))))))
    (define gx#stx-map
      (lambda _g130110_
        (let ((_g130111_ (##length _g130110_)))
          (cond ((##fx= _g130111_ 2) (apply gx#stx-map1 _g130110_))
                ((##fx= _g130111_ 3) (apply gx#stx-map2 _g130110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g130110_))))))
    (define gx#stx-map1
      (lambda (_%f129369%_ _%stx129370%_)
        (if (procedure? _%f129369%_)
            '#!void
            (error '"expected procedure" _%f129369%_))
        (let _%recur129372%_ ((_%rest129374%_ _%stx129370%_))
          (let* ((_%g129375129385%_ (gx#syntax-e _%rest129374%_))
                 (_%else129378129393%_
                  (lambda () (_%f129369%_ _%rest129374%_))))
            (let ((_%K129381129407%_
                   (lambda (_%rest129404%_ _%hd129405%_)
                     (cons (_%f129369%_ _%hd129405%_)
                           (_%recur129372%_ _%rest129404%_))))
                  (_%K129380129398%_ (lambda () '())))
              (let ((_%try-match129377129401%_
                     (lambda ()
                       (if (null? _%g129375129385%_)
                           (_%K129380129398%_)
                           (_%else129378129393%_)))))
                (if (pair? _%g129375129385%_)
                    (let ((_%tl129383129412%_ (##cdr _%g129375129385%_))
                          (_%hd129382129410%_ (##car _%g129375129385%_)))
                      (let ((_%hd129415%_ _%hd129382129410%_)
                            (_%rest129417%_ _%tl129383129412%_))
                        (_%K129381129407%_ _%rest129417%_ _%hd129415%_)))
                    (_%try-match129377129401%_))))))))
    (define gx#stx-map2
      (lambda (_%f129274%_ _%xstx129275%_ _%ystx129276%_)
        (if (procedure? _%f129274%_)
            '#!void
            (error '"expected procedure" _%f129274%_))
        (let _%recur129278%_ ((_%xrest129280%_ _%xstx129275%_)
                              (_%yrest129281%_ _%ystx129276%_))
          (let* ((_%g129282129292%_ (gx#syntax-e _%xrest129280%_))
                 (_%else129285129300%_ (lambda () '())))
            (let ((_%K129288129357%_
                   (lambda (_%xrest129326%_ _%xhd129327%_)
                     (let* ((_%g129328129335%_ (gx#syntax-e _%yrest129281%_))
                            (_%E129330129339%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g129328129335%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K129331129345%_
                             (lambda (_%yrest129342%_ _%yhd129343%_)
                               (cons (_%f129274%_ _%xhd129327%_ _%yhd129343%_)
                                     (_%recur129278%_
                                      _%xrest129326%_
                                      _%yrest129342%_)))))
                       (if (pair? _%g129328129335%_)
                           (let ((_%hd129332129348%_ (##car _%g129328129335%_))
                                 (_%tl129333129350%_
                                  (##cdr _%g129328129335%_)))
                             (let* ((_%yhd129353%_ _%hd129332129348%_)
                                    (_%yrest129355%_ _%tl129333129350%_))
                               (_%K129331129345%_
                                _%yrest129355%_
                                _%yhd129353%_)))
                           (_%E129330129339%_)))))
                  (_%K129287129320%_
                   (lambda ()
                     (let* ((_%yrest129304129309%_ _%yrest129281%_)
                            (_%E129306129313%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest129304129309%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K129307129317%_
                             (lambda ()
                               (_%f129274%_ _%xrest129280%_ _%yrest129281%_))))
                       (if (gx#stx-null? _%yrest129304129309%_)
                           (_%E129306129313%_)
                           (_%K129307129317%_))))))
              (let ((_%try-match129284129323%_
                     (lambda ()
                       (if (null? _%g129282129292%_)
                           (_%else129285129300%_)
                           (_%K129287129320%_)))))
                (if (pair? _%g129282129292%_)
                    (let ((_%tl129290129362%_ (##cdr _%g129282129292%_))
                          (_%hd129289129360%_ (##car _%g129282129292%_)))
                      (let ((_%xhd129365%_ _%hd129289129360%_)
                            (_%xrest129367%_ _%tl129290129362%_))
                        (_%K129288129357%_ _%xrest129367%_ _%xhd129365%_)))
                    (_%try-match129284129323%_))))))))
    (define gx#stx-andmap
      (lambda (_%f129224%_ _%stx129225%_)
        (if (procedure? _%f129224%_)
            '#!void
            (error '"expected procedure" _%f129224%_))
        (let _%lp129227%_ ((_%rest129229%_ _%stx129225%_))
          (let* ((_%g129230129240%_ (gx#syntax-e _%rest129229%_))
                 (_%else129233129248%_
                  (lambda () (_%f129224%_ _%rest129229%_))))
            (let ((_%K129236129262%_
                   (lambda (_%rest129259%_ _%hd129260%_)
                     (if (_%f129224%_ _%hd129260%_)
                         (_%lp129227%_ _%rest129259%_)
                         '#f)))
                  (_%K129235129253%_ (lambda () '#t)))
              (let ((_%try-match129232129256%_
                     (lambda ()
                       (if (null? _%g129230129240%_)
                           (_%K129235129253%_)
                           (_%else129233129248%_)))))
                (if (pair? _%g129230129240%_)
                    (let ((_%tl129238129267%_ (##cdr _%g129230129240%_))
                          (_%hd129237129265%_ (##car _%g129230129240%_)))
                      (let ((_%hd129270%_ _%hd129237129265%_)
                            (_%rest129272%_ _%tl129238129267%_))
                        (_%K129236129262%_ _%rest129272%_ _%hd129270%_)))
                    (_%try-match129232129256%_))))))))
    (define gx#stx-ormap
      (lambda (_%f129171%_ _%stx129172%_)
        (if (procedure? _%f129171%_)
            '#!void
            (error '"expected procedure" _%f129171%_))
        (let _%lp129174%_ ((_%rest129176%_ _%stx129172%_))
          (let* ((_%g129177129187%_ (gx#syntax-e _%rest129176%_))
                 (_%else129180129195%_
                  (lambda () (_%f129171%_ _%rest129176%_))))
            (let ((_%K129183129212%_
                   (lambda (_%rest129206%_ _%hd129207%_)
                     (let ((_%$e129209%_ (_%f129171%_ _%hd129207%_)))
                       (if _%$e129209%_
                           _%$e129209%_
                           (_%lp129174%_ _%rest129206%_)))))
                  (_%K129182129200%_ (lambda () '#f)))
              (let ((_%try-match129179129203%_
                     (lambda ()
                       (if (null? _%g129177129187%_)
                           (_%K129182129200%_)
                           (_%else129180129195%_)))))
                (if (pair? _%g129177129187%_)
                    (let ((_%tl129185129217%_ (##cdr _%g129177129187%_))
                          (_%hd129184129215%_ (##car _%g129177129187%_)))
                      (let ((_%hd129220%_ _%hd129184129215%_)
                            (_%rest129222%_ _%tl129185129217%_))
                        (_%K129183129212%_ _%rest129222%_ _%hd129220%_)))
                    (_%try-match129179129203%_))))))))
    (define gx#stx-foldl
      (lambda (_%f129119%_ _%iv129120%_ _%stx129121%_)
        (if (procedure? _%f129119%_)
            '#!void
            (error '"expected procedure" _%f129119%_))
        (let _%lp129123%_ ((_%r129125%_ _%iv129120%_)
                           (_%rest129126%_ _%stx129121%_))
          (let* ((_%g129127129137%_ (gx#syntax-e _%rest129126%_))
                 (_%else129130129145%_
                  (lambda () (_%f129119%_ _%rest129126%_ _%r129125%_))))
            (let ((_%K129133129159%_
                   (lambda (_%rest129156%_ _%hd129157%_)
                     (_%lp129123%_
                      (_%f129119%_ _%hd129157%_ _%r129125%_)
                      _%rest129156%_)))
                  (_%K129132129150%_ (lambda () _%r129125%_)))
              (let ((_%try-match129129129153%_
                     (lambda ()
                       (if (null? _%g129127129137%_)
                           (_%K129132129150%_)
                           (_%else129130129145%_)))))
                (if (pair? _%g129127129137%_)
                    (let ((_%tl129135129164%_ (##cdr _%g129127129137%_))
                          (_%hd129134129162%_ (##car _%g129127129137%_)))
                      (let ((_%hd129167%_ _%hd129134129162%_)
                            (_%rest129169%_ _%tl129135129164%_))
                        (_%K129133129159%_ _%rest129169%_ _%hd129167%_)))
                    (_%try-match129129129153%_))))))))
    (define gx#stx-foldr
      (lambda (_%f129068%_ _%iv129069%_ _%stx129070%_)
        (if (procedure? _%f129068%_)
            '#!void
            (error '"expected procedure" _%f129068%_))
        (let _%recur129072%_ ((_%rest129074%_ _%stx129070%_))
          (let* ((_%g129075129085%_ (gx#syntax-e _%rest129074%_))
                 (_%else129078129093%_
                  (lambda () (_%f129068%_ _%rest129074%_ _%iv129069%_))))
            (let ((_%K129081129107%_
                   (lambda (_%rest129104%_ _%hd129105%_)
                     (_%f129068%_
                      _%hd129105%_
                      (_%recur129072%_ _%rest129104%_))))
                  (_%K129080129098%_ (lambda () _%iv129069%_)))
              (let ((_%try-match129077129101%_
                     (lambda ()
                       (if (null? _%g129075129085%_)
                           (_%K129080129098%_)
                           (_%else129078129093%_)))))
                (if (pair? _%g129075129085%_)
                    (let ((_%tl129083129112%_ (##cdr _%g129075129085%_))
                          (_%hd129082129110%_ (##car _%g129075129085%_)))
                      (let ((_%hd129115%_ _%hd129082129110%_)
                            (_%rest129117%_ _%tl129083129112%_))
                        (_%K129081129107%_ _%rest129117%_ _%hd129115%_)))
                    (_%try-match129077129101%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx129066%_) (gx#stx-foldl cons '() _%stx129066%_)))
    (define gx#stx-last
      (lambda (_%stx129027%_)
        (let _%lp129029%_ ((_%rest129031%_ _%stx129027%_))
          (let* ((_%g129032129040%_ (gx#syntax-e _%rest129031%_))
                 (_%else129034129048%_ (lambda () _%rest129031%_))
                 (_%K129036129054%_
                  (lambda (_%rest129051%_ _%hd129052%_)
                    (if (gx#stx-null? _%rest129051%_)
                        _%hd129052%_
                        (_%lp129029%_ _%rest129051%_)))))
            (if (pair? _%g129032129040%_)
                (let ((_%hd129037129057%_ (##car _%g129032129040%_))
                      (_%tl129038129059%_ (##cdr _%g129032129040%_)))
                  (let* ((_%hd129062%_ _%hd129037129057%_)
                         (_%rest129064%_ _%tl129038129059%_))
                    (_%K129036129054%_ _%rest129064%_ _%hd129062%_)))
                (_%else129034129048%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx128998%_)
        (let _%lp129000%_ ((_%hd129002%_ _%stx128998%_))
          (let* ((_%g129003129010%_ (gx#syntax-e _%hd129002%_))
                 (_%E129005129014%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g129003129010%_
                           '([_ . rest]))
                    '#!void))
                 (_%K129006129019%_
                  (lambda (_%rest129017%_)
                    (if (gx#stx-pair? _%rest129017%_)
                        (_%lp129000%_ _%rest129017%_)
                        _%hd129002%_))))
            (if (pair? _%g129003129010%_)
                (let* ((_%tl129008129022%_ (##cdr _%g129003129010%_))
                       (_%rest129025%_ _%tl129008129022%_))
                  (_%K129006129019%_ _%rest129025%_))
                (_%E129005129014%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx128967%_ _%k128968%_)
        (let _%lp128970%_ ((_%rest128972%_ _%stx128967%_)
                           (_%k128973%_ _%k128968%_))
          (if (fxpositive? _%k128973%_)
              (let* ((_%g128974128981%_ (gx#syntax-e _%rest128972%_))
                     (_%E128976128985%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g128974128981%_
                               '([_ . rest]))
                        '#!void))
                     (_%K128977128990%_
                      (lambda (_%rest128988%_)
                        (_%lp128970%_ _%rest128988%_ (##fx- _%k128973%_ '1)))))
                (if (pair? _%g128974128981%_)
                    (let* ((_%tl128979128993%_ (##cdr _%g128974128981%_))
                           (_%rest128996%_ _%tl128979128993%_))
                      (_%K128977128990%_ _%rest128996%_))
                    (_%E128976128985%_)))
              _%rest128972%_))))
    (define gx#stx-list-ref
      (lambda (_%stx128964%_ _%k128965%_)
        (gx#stx-car (gx#stx-list-tail _%stx128964%_ _%k128965%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx128876%_ _%key?128877%_)
        (if (procedure? _%key?128877%_)
            '#!void
            (error '"expected procedure" _%key?128877%_))
        (let _%lp128879%_ ((_%rest128881%_ _%stx128876%_))
          (let* ((_%g128882128892%_ (gx#stx-e _%rest128881%_))
                 (_%else128885128900%_ (lambda () '#f)))
            (let ((_%K128888128942%_
                   (lambda (_%rest128911%_ _%hd128912%_)
                     (if (_%key?128877%_ _%hd128912%_)
                         (let* ((_%g128913128921%_ (gx#stx-e _%rest128911%_))
                                (_%else128915128929%_ (lambda () '#f))
                                (_%K128917128934%_
                                 (lambda (_%rest128932%_)
                                   (_%lp128879%_ _%rest128932%_))))
                           (if (pair? _%g128913128921%_)
                               (let* ((_%tl128919128937%_
                                       (##cdr _%g128913128921%_))
                                      (_%rest128940%_ _%tl128919128937%_))
                                 (_%lp128879%_ _%rest128940%_))
                               (_%else128915128929%_)))
                         '#f)))
                  (_%K128887128905%_ (lambda () '#t)))
              (let ((_%try-match128884128908%_
                     (lambda ()
                       (if (null? _%g128882128892%_)
                           (_%K128887128905%_)
                           (_%else128885128900%_)))))
                (if (pair? _%g128882128892%_)
                    (let ((_%tl128890128947%_ (##cdr _%g128882128892%_))
                          (_%hd128889128945%_ (##car _%g128882128892%_)))
                      (let ((_%hd128950%_ _%hd128889128945%_)
                            (_%rest128952%_ _%tl128890128947%_))
                        (_%K128888128942%_ _%rest128952%_ _%hd128950%_)))
                    (_%try-match128884128908%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx128957%_)
        (let ((_%key?128959%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx128957%_ _%key?128959%_))))
    (define gx#stx-plist?
      (lambda _g130112_
        (let ((_g130113_ (##length _g130112_)))
          (cond ((##fx= _g130113_ 1) (apply gx#stx-plist?__0 _g130112_))
                ((##fx= _g130113_ 2) (apply gx#stx-plist?__% _g130112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g130112_))))))
    (define gx#stx-getq__%
      (lambda (_%key128794%_ _%stx128795%_ _%key=?128796%_)
        (if (procedure? _%key=?128796%_)
            '#!void
            (error '"expected procedure" _%key=?128796%_))
        (let _%lp128798%_ ((_%rest128800%_ _%stx128795%_))
          (let* ((_%g128801128809%_ (gx#syntax-e _%rest128800%_))
                 (_%else128803128817%_ (lambda () '#f))
                 (_%K128805128851%_
                  (lambda (_%rest128820%_ _%hd128821%_)
                    (let* ((_%g128822128829%_ (gx#syntax-e _%rest128820%_))
                           (_%E128824128833%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g128822128829%_
                                     '([val . rest]))
                              '#!void))
                           (_%K128825128839%_
                            (lambda (_%rest128836%_ _%val128837%_)
                              (if (_%key=?128796%_ _%hd128821%_ _%key128794%_)
                                  _%val128837%_
                                  (_%lp128798%_ _%rest128836%_)))))
                      (if (pair? _%g128822128829%_)
                          (let ((_%hd128826128842%_ (##car _%g128822128829%_))
                                (_%tl128827128844%_ (##cdr _%g128822128829%_)))
                            (let* ((_%val128847%_ _%hd128826128842%_)
                                   (_%rest128849%_ _%tl128827128844%_))
                              (_%K128825128839%_
                               _%rest128849%_
                               _%val128847%_)))
                          (_%E128824128833%_))))))
            (if (pair? _%g128801128809%_)
                (let ((_%hd128806128854%_ (##car _%g128801128809%_))
                      (_%tl128807128856%_ (##cdr _%g128801128809%_)))
                  (let* ((_%hd128859%_ _%hd128806128854%_)
                         (_%rest128861%_ _%tl128807128856%_))
                    (_%K128805128851%_ _%rest128861%_ _%hd128859%_)))
                (_%else128803128817%_))))))
    (define gx#stx-getq__0
      (lambda (_%key128866%_ _%stx128867%_)
        (let ((_%key=?128869%_ gx#stx-eq?))
          (gx#stx-getq__% _%key128866%_ _%stx128867%_ _%key=?128869%_))))
    (define gx#stx-getq
      (lambda _g130114_
        (let ((_g130115_ (##length _g130114_)))
          (cond ((##fx= _g130115_ 2) (apply gx#stx-getq__0 _g130114_))
                ((##fx= _g130115_ 3) (apply gx#stx-getq__% _g130114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g130114_))))))))
