(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1768864948)
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
      (lambda _%$args130007%_
        (apply make-instance gx#identifier-wrap::t _%$args130007%_)))
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
      (lambda _%$args130004%_
        (apply make-instance gx#syntax-wrap::t _%$args130004%_)))
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
      (lambda _%$args130001%_
        (apply make-instance gx#syntax-quote::t _%$args130001%_)))
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
      (lambda (_%stx129999%_) (symbol? (gx#stx-e _%stx129999%_))))
    (define gx#identifier-quote?
      (lambda (_%stx129997%_)
        (if (##structure-direct-instance-of? _%stx129997%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx129997%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx129992%_)
        (if (##structure-direct-instance-of? _%stx129992%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx129992%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx129992%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx129987%_)
        (if (##structure-direct-instance-of? _%stx129987%_ 'gx#syntax-quote::t)
            _%stx129987%_
            (if (##structure-direct-instance-of?
                 _%stx129987%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx129987%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx129961%_)
        (if (##structure-direct-instance-of? _%stx129961%_ 'gx#syntax-wrap::t)
            (let _%lp129964%_ ((_%e129966%_
                                (##unchecked-structure-ref
                                 _%stx129961%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks129967%_
                                (cons (##unchecked-structure-ref
                                       _%stx129961%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e129966%_)
                  (let ((_%$e129970%_
                         (##type-id (##structure-type _%e129966%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e129970%_)
                        (_%lp129964%_
                         (##unchecked-structure-ref _%e129966%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e129966%_ '3 '#f '#f)
                          _%marks129967%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e129970%_)
                                (eq? 'gx#identifier-wrap::t _%$e129970%_))
                            (##unchecked-structure-ref _%e129966%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e129970%_)
                                (_%lp129964%_
                                 (##unchecked-structure-ref
                                  _%e129966%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks129967%_)
                                _%e129966%_))))
                  (if (null? _%marks129967%_)
                      _%e129966%_
                      (if (pair? _%e129966%_)
                          (cons (gx#stx-wrap
                                 (##car _%e129966%_)
                                 _%marks129967%_)
                                (gx#stx-wrap
                                 (##cdr _%e129966%_)
                                 _%marks129967%_))
                          (if (vector? _%e129966%_)
                              (vector-map
                               (lambda (_%g129978129980%_)
                                 (gx#stx-wrap
                                  _%g129978129980%_
                                  _%marks129967%_))
                               _%e129966%_)
                              (if (box? _%e129966%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e129966%_)
                                        _%marks129967%_))
                                  _%e129966%_))))))
            (if (##structure-instance-of? _%stx129961%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx129961%_ '1 '#f '#f)
                _%stx129961%_))))
    (define gx#syntax->datum
      (lambda (_%stx129954%_)
        (if (##structure-instance-of? _%stx129954%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx129954%_ '1 '#f '#f))
            (if (pair? _%stx129954%_)
                (cons (gx#syntax->datum (##car _%stx129954%_))
                      (gx#syntax->datum (##cdr _%stx129954%_)))
                (if (vector? _%stx129954%_)
                    (vector-map gx#syntax->datum _%stx129954%_)
                    (if (box? _%stx129954%_)
                        (box (gx#syntax->datum (unbox _%stx129954%_)))
                        _%stx129954%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx129888%_ _%datum129889%_ _%src129890%_ _%quote?129891%_)
        (letrec ((_%wrap-datum129893%_
                  (lambda (_%e129926%_ _%marks129927%_)
                    (_%wrap-inner129895%_
                     _%e129926%_
                     (lambda (_%g129928129930%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g129928129930%_
                        _%src129890%_
                        _%marks129927%_)))))
                 (_%wrap-quote129894%_
                  (lambda (_%e129918%_ _%ctx129919%_ _%marks129920%_)
                    (_%wrap-inner129895%_
                     _%e129918%_
                     (lambda (_%g129921129923%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g129921129923%_
                        _%src129890%_
                        _%ctx129919%_
                        _%marks129920%_)))))
                 (_%wrap-inner129895%_
                  (lambda (_%e129906%_ _%wrap-e129907%_)
                    (let _%recur129909%_ ((_%e129911%_ _%e129906%_))
                      (if (symbol? _%e129911%_)
                          (_%wrap-e129907%_ _%e129911%_)
                          (if (pair? _%e129911%_)
                              (cons (_%recur129909%_ (##car _%e129911%_))
                                    (_%recur129909%_ (##cdr _%e129911%_)))
                              (if (vector? _%e129911%_)
                                  (vector-map _%recur129909%_ _%e129911%_)
                                  (if (box? _%e129911%_)
                                      (box (_%recur129909%_
                                            (unbox _%e129911%_)))
                                      _%e129911%_)))))))
                 (_%wrap-outer129896%_
                  (lambda (_%e129904%_)
                    (if (##structure-instance-of? _%e129904%_ 'gerbil#AST::t)
                        _%e129904%_
                        (##structure gx#AST::t _%e129904%_ _%src129890%_)))))
          (if (##structure-instance-of? _%datum129889%_ 'gerbil#AST::t)
              _%datum129889%_
              (if (not _%stx129888%_)
                  (##structure gx#AST::t _%datum129889%_ _%src129890%_)
                  (if (gx#identifier? _%stx129888%_)
                      (let ((_%stx129901%_ (gx#stx-unwrap__0 _%stx129888%_)))
                        (_%wrap-outer129896%_
                         (if (##structure-direct-instance-of?
                              _%stx129901%_
                              'gx#syntax-quote::t)
                             (if _%quote?129891%_
                                 (_%wrap-quote129894%_
                                  _%datum129889%_
                                  (##unchecked-structure-ref
                                   _%stx129901%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx129901%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum129893%_
                                  _%datum129889%_
                                  (##unchecked-structure-ref
                                   _%stx129901%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum129893%_
                              _%datum129889%_
                              (##unchecked-structure-ref
                               _%stx129901%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx129888%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx129936%_ _%datum129937%_)
        (let* ((_%src129939%_ '#f) (_%quote?129941%_ '#t))
          (gx#datum->syntax__%
           _%stx129936%_
           _%datum129937%_
           _%src129939%_
           _%quote?129941%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx129943%_ _%datum129944%_ _%src129945%_)
        (let ((_%quote?129947%_ '#t))
          (gx#datum->syntax__%
           _%stx129943%_
           _%datum129944%_
           _%src129945%_
           _%quote?129947%_))))
    (define gx#datum->syntax
      (lambda _g130087_
        (let ((_g130088_ (##length _g130087_)))
          (cond ((##fx= _g130088_ 2) (apply gx#datum->syntax__0 _g130087_))
                ((##fx= _g130088_ 3) (apply gx#datum->syntax__1 _g130087_))
                ((##fx= _g130088_ 4) (apply gx#datum->syntax__% _g130087_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g130087_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx129854%_ _%marks129855%_)
        (let _%lp129857%_ ((_%e129859%_ _%stx129854%_)
                           (_%marks129860%_ _%marks129855%_)
                           (_%src129861%_ (gx#stx-source _%stx129854%_)))
          (if (##structure-direct-instance-of? _%e129859%_ 'gx#syntax-wrap::t)
              (_%lp129857%_
               (##unchecked-structure-ref _%e129859%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e129859%_ '3 '#f '#f)
                _%marks129860%_)
               (##unchecked-structure-ref _%e129859%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e129859%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks129860%_)
                      _%e129859%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e129859%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e129859%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e129859%_ '3 '#f '#f)
                        _%marks129860%_)))
                  (if (##structure-direct-instance-of?
                       _%e129859%_
                       'gx#syntax-quote::t)
                      _%e129859%_
                      (if (##structure-instance-of? _%e129859%_ 'gerbil#AST::t)
                          (_%lp129857%_
                           (##unchecked-structure-ref _%e129859%_ '1 '#f '#f)
                           _%marks129860%_
                           (##unchecked-structure-ref _%e129859%_ '2 '#f '#f))
                          (if (symbol? _%e129859%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e129859%_
                               _%src129861%_
                               (reverse _%marks129860%_))
                              (if (null? _%marks129860%_)
                                  _%e129859%_
                                  (if (pair? _%e129859%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e129859%_)
                                             _%marks129860%_)
                                            (gx#stx-wrap
                                             (##cdr _%e129859%_)
                                             _%marks129860%_))
                                      (if (vector? _%e129859%_)
                                          (vector-map
                                           (lambda (_%g129870129872%_)
                                             (gx#stx-wrap
                                              _%g129870129872%_
                                              _%marks129860%_))
                                           _%e129859%_)
                                          (if (box? _%e129859%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e129859%_)
                                                    _%marks129860%_))
                                              _%e129859%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx129880%_)
        (let ((_%marks129882%_ '()))
          (gx#stx-unwrap__% _%stx129880%_ _%marks129882%_))))
    (define gx#stx-unwrap
      (lambda _g130089_
        (let ((_g130090_ (##length _g130089_)))
          (cond ((##fx= _g130090_ 1) (apply gx#stx-unwrap__0 _g130089_))
                ((##fx= _g130090_ 2) (apply gx#stx-unwrap__% _g130089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g130089_))))))
    (define gx#stx-wrap
      (lambda (_%stx129847%_ _%marks129848%_)
        (__foldl1
         (lambda (_%mark129850%_ _%stx129851%_)
           (gx#stx-apply-mark _%stx129851%_ _%mark129850%_))
         _%stx129847%_
         _%marks129848%_)))
    (define gx#stx-rewrap
      (lambda (_%stx129841%_ _%marks129842%_)
        (__foldr1
         (lambda (_%mark129844%_ _%stx129845%_)
           (gx#stx-apply-mark _%stx129845%_ _%mark129844%_))
         _%stx129841%_
         _%marks129842%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx129835%_ _%mark129836%_)
        (if (##structure-direct-instance-of? _%stx129835%_ 'gx#syntax-quote::t)
            _%stx129835%_
            (if (and (##structure-direct-instance-of?
                      _%stx129835%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark129836%_
                          (##unchecked-structure-ref
                           _%stx129835%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx129835%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx129835%_
                 (gx#stx-source _%stx129835%_)
                 _%mark129836%_)))))
    (define gx#apply-mark
      (lambda (_%mark129799%_ _%marks129800%_)
        (let* ((_%marks129801129809%_ _%marks129800%_)
               (_%else129803129817%_
                (lambda () (cons _%mark129799%_ _%marks129800%_)))
               (_%K129805129823%_
                (lambda (_%rest129820%_ _%hd129821%_)
                  (if (eq? _%mark129799%_ _%hd129821%_)
                      _%rest129820%_
                      (cons _%mark129799%_ _%marks129800%_)))))
          (if (pair? _%marks129801129809%_)
              (let ((_%hd129806129826%_ (##car _%marks129801129809%_))
                    (_%tl129807129828%_ (##cdr _%marks129801129809%_)))
                (let* ((_%hd129831%_ _%hd129806129826%_)
                       (_%rest129833%_ _%tl129807129828%_))
                  (_%K129805129823%_ _%rest129833%_ _%hd129831%_)))
              (_%else129803129817%_)))))
    (define gx#stx-e
      (lambda (_%stx129794%_)
        (if (##structure-direct-instance-of? _%stx129794%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx129794%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx129794%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx129794%_ '1 '#f '#f)
                _%stx129794%_))))
    (define gx#stx-source
      (lambda (_%stx129792%_)
        (if (##structure-instance-of? _%stx129792%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx129792%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx129786%_ _%src129787%_)
        (if (or (##structure-instance-of? _%stx129786%_ 'gerbil#AST::t)
                (not _%src129787%_))
            _%stx129786%_
            (##structure gx#AST::t _%stx129786%_ _%src129787%_))))
    (define gx#stx-datum?
      (lambda (_%stx129784%_) (gx#self-quoting? (gx#stx-e _%stx129784%_))))
    (define gx#self-quoting?
      (lambda (_%x129767%_)
        (let ((_%$e129769%_ (immediate? _%x129767%_)))
          (if _%$e129769%_
              _%$e129769%_
              (let ((_%$e129772%_ (number? _%x129767%_)))
                (if _%$e129772%_
                    _%$e129772%_
                    (let ((_%$e129775%_ (keyword? _%x129767%_)))
                      (if _%$e129775%_
                          _%$e129775%_
                          (let ((_%$e129778%_ (string? _%x129767%_)))
                            (if _%$e129778%_
                                _%$e129778%_
                                (let ((_%$e129781%_ (vector? _%x129767%_)))
                                  (if _%$e129781%_
                                      _%$e129781%_
                                      (u8vector? _%x129767%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e129765%_) (boolean? (gx#stx-e _%e129765%_))))
    (define gx#stx-keyword?
      (lambda (_%e129763%_) (keyword? (gx#stx-e _%e129763%_))))
    (define gx#stx-char? (lambda (_%e129761%_) (char? (gx#stx-e _%e129761%_))))
    (define gx#stx-number?
      (lambda (_%e129759%_) (number? (gx#stx-e _%e129759%_))))
    (define gx#stx-fixnum?
      (lambda (_%e129757%_) (fixnum? (gx#stx-e _%e129757%_))))
    (define gx#stx-string?
      (lambda (_%e129755%_) (string? (gx#stx-e _%e129755%_))))
    (define gx#stx-null? (lambda (_%e129753%_) (null? (gx#stx-e _%e129753%_))))
    (define gx#stx-pair? (lambda (_%e129751%_) (pair? (gx#stx-e _%e129751%_))))
    (define gx#stx-list?
      (lambda (_%e129713%_)
        (let* ((_%g129714129723%_ (gx#stx-e _%e129713%_))
               (_%E129717129727%_
                (lambda ()
                  (error '"No clause matching"
                         _%g129714129723%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K129719129743%_
                 (lambda (_%rest129741%_) (gx#stx-list? _%rest129741%_)))
                (_%K129718129733%_
                 (lambda (_%tail129731%_) (null? _%tail129731%_))))
            (if (pair? _%g129714129723%_)
                (let* ((_%tl129721129746%_ (##cdr _%g129714129723%_))
                       (_%rest129749%_ _%tl129721129746%_))
                  (gx#stx-list? _%rest129749%_))
                (let ((_%tail129736%_ _%g129714129723%_))
                  (null? _%tail129736%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e129706%_)
        (let* ((_%e129708%_ (gx#stx-e _%e129706%_))
               (_%$e129710%_ (pair? _%e129708%_)))
          (if _%$e129710%_ _%$e129710%_ (null? _%e129708%_)))))
    (define gx#stx-vector?
      (lambda (_%e129704%_) (vector? (gx#stx-e _%e129704%_))))
    (define gx#stx-box? (lambda (_%e129702%_) (box? (gx#stx-e _%e129702%_))))
    (define gx#stx-eq?
      (lambda (_%x129699%_ _%y129700%_)
        (eq? (gx#stx-e _%x129699%_) (gx#stx-e _%y129700%_))))
    (define gx#stx-eqv?
      (lambda (_%x129696%_ _%y129697%_)
        (eqv? (gx#stx-e _%x129696%_) (gx#stx-e _%y129697%_))))
    (define gx#stx-equal?
      (lambda (_%x129693%_ _%y129694%_)
        (equal? (gx#stx-e _%x129693%_) (gx#stx-e _%y129694%_))))
    (define gx#stx-false? (lambda (_%x129691%_) (not (gx#stx-e _%x129691%_))))
    (define gx#stx-identifier
      (lambda (_%template129688%_ . _%args129689%_)
        (gx#datum->syntax__1
         _%template129688%_
         (apply make-symbol (gx#syntax->datum _%args129689%_))
         (gx#stx-source _%template129688%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx129686%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx129686%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx129681%_)
        (if (##structure-direct-instance-of?
             _%stx129681%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx129681%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx129681%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx129681%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx129681%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx129677%_)
        (let ((_%stx129679%_ (gx#stx-unwrap__0 _%stx129677%_)))
          (if (gx#identifier-quote? _%stx129679%_)
              (##unchecked-structure-ref _%stx129679%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx129632%_)
        (let* ((_%g129633129643%_ (gx#stx-e _%stx129632%_))
               (_%else129636129651%_ (lambda () '#f)))
          (let ((_%K129639129665%_
                 (lambda (_%rest129662%_ _%hd129663%_)
                   (if (gx#identifier? _%hd129663%_)
                       (gx#identifier-list? _%rest129662%_)
                       '#f)))
                (_%K129638129656%_ (lambda () '#t)))
            (let ((_%try-match129635129659%_
                   (lambda ()
                     (if (null? _%g129633129643%_)
                         (_%K129638129656%_)
                         (_%else129636129651%_)))))
              (if (pair? _%g129633129643%_)
                  (let ((_%tl129641129670%_ (##cdr _%g129633129643%_))
                        (_%hd129640129668%_ (##car _%g129633129643%_)))
                    (let ((_%hd129673%_ _%hd129640129668%_)
                          (_%rest129675%_ _%tl129641129670%_))
                      (_%K129639129665%_ _%rest129675%_ _%hd129673%_)))
                  (_%try-match129635129659%_)))))))
    (define gx#genident__%
      (lambda (_%e129609%_ _%src129610%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e129612%_ (gx#stx-e _%e129609%_)))
                   (if (interned-symbol? _%e129612%_) _%e129612%_ 'g)))
         (let ((_%$e129614%_ (gx#stx-source _%e129609%_)))
           (if _%$e129614%_ _%$e129614%_ _%src129610%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e129621%_ 'g) (_%src129623%_ '#f))
          (gx#genident__% _%e129621%_ _%src129623%_))))
    (define gx#genident__1
      (lambda (_%e129625%_)
        (let ((_%src129627%_ '#f))
          (gx#genident__% _%e129625%_ _%src129627%_))))
    (define gx#genident
      (lambda _g130091_
        (let ((_g130092_ (##length _g130091_)))
          (cond ((##fx= _g130092_ 0) (apply gx#genident__0 _g130091_))
                ((##fx= _g130092_ 1) (apply gx#genident__1 _g130091_))
                ((##fx= _g130092_ 2) (apply gx#genident__% _g130091_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g130091_))))))
    (define gx#gentemps
      (lambda (_%stx-lst129606%_) (gx#stx-map1 gx#genident _%stx-lst129606%_)))
    (define gx#syntax->list
      (lambda (_%stx129604%_) (gx#stx-map1 values _%stx129604%_)))
    (define gx#stx-car
      (lambda (_%stx129601%_)
        (declare (safe))
        (car (gx#syntax-e _%stx129601%_))))
    (define gx#stx-cdr
      (lambda (_%stx129598%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx129598%_))))
    (define gx#stx-length
      (lambda (_%stx129563%_)
        (let _%lp129565%_ ((_%rest129567%_ _%stx129563%_) (_%n129568%_ '0))
          (let* ((_%g129569129577%_ (gx#stx-e _%rest129567%_))
                 (_%else129571129585%_ (lambda () _%n129568%_))
                 (_%K129573129590%_
                  (lambda (_%rest129588%_)
                    (_%lp129565%_ _%rest129588%_ (##fx+ _%n129568%_ '1)))))
            (if (pair? _%g129569129577%_)
                (let* ((_%tl129575129593%_ (##cdr _%g129569129577%_))
                       (_%rest129596%_ _%tl129575129593%_))
                  (_%K129573129590%_ _%rest129596%_))
                (_%else129571129585%_))))))
    (define gx#stx-for-each
      (lambda _g130093_
        (let ((_g130094_ (##length _g130093_)))
          (cond ((##fx= _g130094_ 2) (apply gx#stx-for-each1 _g130093_))
                ((##fx= _g130094_ 3) (apply gx#stx-for-each2 _g130093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g130093_))))))
    (define gx#stx-for-each1
      (lambda (_%f129506%_ _%stx129507%_)
        (if (procedure? _%f129506%_)
            '#!void
            (error '"expected procedure" _%f129506%_))
        (let _%lp129509%_ ((_%rest129511%_ _%stx129507%_))
          (let* ((_%g129512129522%_ (gx#syntax-e _%rest129511%_))
                 (_%else129515129530%_
                  (lambda () (_%f129506%_ _%rest129511%_))))
            (let ((_%K129518129544%_
                   (lambda (_%rest129541%_ _%hd129542%_)
                     (_%f129506%_ _%hd129542%_)
                     (_%lp129509%_ _%rest129541%_)))
                  (_%K129517129535%_ (lambda () '#!void)))
              (let ((_%try-match129514129538%_
                     (lambda ()
                       (if (null? _%g129512129522%_)
                           (_%K129517129535%_)
                           (_%else129515129530%_)))))
                (if (pair? _%g129512129522%_)
                    (let ((_%tl129520129549%_ (##cdr _%g129512129522%_))
                          (_%hd129519129547%_ (##car _%g129512129522%_)))
                      (let ((_%hd129552%_ _%hd129519129547%_)
                            (_%rest129554%_ _%tl129520129549%_))
                        (_%K129518129544%_ _%rest129554%_ _%hd129552%_)))
                    (_%try-match129514129538%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f129411%_ _%xstx129412%_ _%ystx129413%_)
        (if (procedure? _%f129411%_)
            '#!void
            (error '"expected procedure" _%f129411%_))
        (let _%lp129415%_ ((_%xrest129417%_ _%xstx129412%_)
                           (_%yrest129418%_ _%ystx129413%_))
          (let* ((_%g129419129429%_ (gx#syntax-e _%xrest129417%_))
                 (_%else129422129437%_ (lambda () '#!void)))
            (let ((_%K129425129494%_
                   (lambda (_%xrest129463%_ _%xhd129464%_)
                     (let* ((_%g129465129472%_ (gx#syntax-e _%yrest129418%_))
                            (_%E129467129476%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g129465129472%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K129468129482%_
                             (lambda (_%yrest129479%_ _%yhd129480%_)
                               (_%f129411%_ _%xhd129464%_ _%yhd129480%_)
                               (_%lp129415%_
                                _%xrest129463%_
                                _%yrest129479%_))))
                       (if (pair? _%g129465129472%_)
                           (let ((_%hd129469129485%_ (##car _%g129465129472%_))
                                 (_%tl129470129487%_
                                  (##cdr _%g129465129472%_)))
                             (let* ((_%yhd129490%_ _%hd129469129485%_)
                                    (_%yrest129492%_ _%tl129470129487%_))
                               (_%K129468129482%_
                                _%yrest129492%_
                                _%yhd129490%_)))
                           (_%E129467129476%_)))))
                  (_%K129424129457%_
                   (lambda ()
                     (let* ((_%yrest129441129446%_ _%yrest129418%_)
                            (_%E129443129450%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest129441129446%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K129444129454%_
                             (lambda ()
                               (_%f129411%_ _%xrest129417%_ _%yrest129418%_))))
                       (if (gx#stx-null? _%yrest129441129446%_)
                           (_%E129443129450%_)
                           (_%K129444129454%_))))))
              (let ((_%try-match129421129460%_
                     (lambda ()
                       (if (null? _%g129419129429%_)
                           (_%else129422129437%_)
                           (_%K129424129457%_)))))
                (if (pair? _%g129419129429%_)
                    (let ((_%tl129427129499%_ (##cdr _%g129419129429%_))
                          (_%hd129426129497%_ (##car _%g129419129429%_)))
                      (let ((_%xhd129502%_ _%hd129426129497%_)
                            (_%xrest129504%_ _%tl129427129499%_))
                        (_%K129425129494%_ _%xrest129504%_ _%xhd129502%_)))
                    (_%try-match129421129460%_))))))))
    (define gx#stx-map
      (lambda _g130095_
        (let ((_g130096_ (##length _g130095_)))
          (cond ((##fx= _g130096_ 2) (apply gx#stx-map1 _g130095_))
                ((##fx= _g130096_ 3) (apply gx#stx-map2 _g130095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g130095_))))))
    (define gx#stx-map1
      (lambda (_%f129354%_ _%stx129355%_)
        (if (procedure? _%f129354%_)
            '#!void
            (error '"expected procedure" _%f129354%_))
        (let _%recur129357%_ ((_%rest129359%_ _%stx129355%_))
          (let* ((_%g129360129370%_ (gx#syntax-e _%rest129359%_))
                 (_%else129363129378%_
                  (lambda () (_%f129354%_ _%rest129359%_))))
            (let ((_%K129366129392%_
                   (lambda (_%rest129389%_ _%hd129390%_)
                     (cons (_%f129354%_ _%hd129390%_)
                           (_%recur129357%_ _%rest129389%_))))
                  (_%K129365129383%_ (lambda () '())))
              (let ((_%try-match129362129386%_
                     (lambda ()
                       (if (null? _%g129360129370%_)
                           (_%K129365129383%_)
                           (_%else129363129378%_)))))
                (if (pair? _%g129360129370%_)
                    (let ((_%tl129368129397%_ (##cdr _%g129360129370%_))
                          (_%hd129367129395%_ (##car _%g129360129370%_)))
                      (let ((_%hd129400%_ _%hd129367129395%_)
                            (_%rest129402%_ _%tl129368129397%_))
                        (_%K129366129392%_ _%rest129402%_ _%hd129400%_)))
                    (_%try-match129362129386%_))))))))
    (define gx#stx-map2
      (lambda (_%f129259%_ _%xstx129260%_ _%ystx129261%_)
        (if (procedure? _%f129259%_)
            '#!void
            (error '"expected procedure" _%f129259%_))
        (let _%recur129263%_ ((_%xrest129265%_ _%xstx129260%_)
                              (_%yrest129266%_ _%ystx129261%_))
          (let* ((_%g129267129277%_ (gx#syntax-e _%xrest129265%_))
                 (_%else129270129285%_ (lambda () '())))
            (let ((_%K129273129342%_
                   (lambda (_%xrest129311%_ _%xhd129312%_)
                     (let* ((_%g129313129320%_ (gx#syntax-e _%yrest129266%_))
                            (_%E129315129324%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g129313129320%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K129316129330%_
                             (lambda (_%yrest129327%_ _%yhd129328%_)
                               (cons (_%f129259%_ _%xhd129312%_ _%yhd129328%_)
                                     (_%recur129263%_
                                      _%xrest129311%_
                                      _%yrest129327%_)))))
                       (if (pair? _%g129313129320%_)
                           (let ((_%hd129317129333%_ (##car _%g129313129320%_))
                                 (_%tl129318129335%_
                                  (##cdr _%g129313129320%_)))
                             (let* ((_%yhd129338%_ _%hd129317129333%_)
                                    (_%yrest129340%_ _%tl129318129335%_))
                               (_%K129316129330%_
                                _%yrest129340%_
                                _%yhd129338%_)))
                           (_%E129315129324%_)))))
                  (_%K129272129305%_
                   (lambda ()
                     (let* ((_%yrest129289129294%_ _%yrest129266%_)
                            (_%E129291129298%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest129289129294%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K129292129302%_
                             (lambda ()
                               (_%f129259%_ _%xrest129265%_ _%yrest129266%_))))
                       (if (gx#stx-null? _%yrest129289129294%_)
                           (_%E129291129298%_)
                           (_%K129292129302%_))))))
              (let ((_%try-match129269129308%_
                     (lambda ()
                       (if (null? _%g129267129277%_)
                           (_%else129270129285%_)
                           (_%K129272129305%_)))))
                (if (pair? _%g129267129277%_)
                    (let ((_%tl129275129347%_ (##cdr _%g129267129277%_))
                          (_%hd129274129345%_ (##car _%g129267129277%_)))
                      (let ((_%xhd129350%_ _%hd129274129345%_)
                            (_%xrest129352%_ _%tl129275129347%_))
                        (_%K129273129342%_ _%xrest129352%_ _%xhd129350%_)))
                    (_%try-match129269129308%_))))))))
    (define gx#stx-andmap
      (lambda (_%f129209%_ _%stx129210%_)
        (if (procedure? _%f129209%_)
            '#!void
            (error '"expected procedure" _%f129209%_))
        (let _%lp129212%_ ((_%rest129214%_ _%stx129210%_))
          (let* ((_%g129215129225%_ (gx#syntax-e _%rest129214%_))
                 (_%else129218129233%_
                  (lambda () (_%f129209%_ _%rest129214%_))))
            (let ((_%K129221129247%_
                   (lambda (_%rest129244%_ _%hd129245%_)
                     (if (_%f129209%_ _%hd129245%_)
                         (_%lp129212%_ _%rest129244%_)
                         '#f)))
                  (_%K129220129238%_ (lambda () '#t)))
              (let ((_%try-match129217129241%_
                     (lambda ()
                       (if (null? _%g129215129225%_)
                           (_%K129220129238%_)
                           (_%else129218129233%_)))))
                (if (pair? _%g129215129225%_)
                    (let ((_%tl129223129252%_ (##cdr _%g129215129225%_))
                          (_%hd129222129250%_ (##car _%g129215129225%_)))
                      (let ((_%hd129255%_ _%hd129222129250%_)
                            (_%rest129257%_ _%tl129223129252%_))
                        (_%K129221129247%_ _%rest129257%_ _%hd129255%_)))
                    (_%try-match129217129241%_))))))))
    (define gx#stx-ormap
      (lambda (_%f129156%_ _%stx129157%_)
        (if (procedure? _%f129156%_)
            '#!void
            (error '"expected procedure" _%f129156%_))
        (let _%lp129159%_ ((_%rest129161%_ _%stx129157%_))
          (let* ((_%g129162129172%_ (gx#syntax-e _%rest129161%_))
                 (_%else129165129180%_
                  (lambda () (_%f129156%_ _%rest129161%_))))
            (let ((_%K129168129197%_
                   (lambda (_%rest129191%_ _%hd129192%_)
                     (let ((_%$e129194%_ (_%f129156%_ _%hd129192%_)))
                       (if _%$e129194%_
                           _%$e129194%_
                           (_%lp129159%_ _%rest129191%_)))))
                  (_%K129167129185%_ (lambda () '#f)))
              (let ((_%try-match129164129188%_
                     (lambda ()
                       (if (null? _%g129162129172%_)
                           (_%K129167129185%_)
                           (_%else129165129180%_)))))
                (if (pair? _%g129162129172%_)
                    (let ((_%tl129170129202%_ (##cdr _%g129162129172%_))
                          (_%hd129169129200%_ (##car _%g129162129172%_)))
                      (let ((_%hd129205%_ _%hd129169129200%_)
                            (_%rest129207%_ _%tl129170129202%_))
                        (_%K129168129197%_ _%rest129207%_ _%hd129205%_)))
                    (_%try-match129164129188%_))))))))
    (define gx#stx-foldl
      (lambda (_%f129104%_ _%iv129105%_ _%stx129106%_)
        (if (procedure? _%f129104%_)
            '#!void
            (error '"expected procedure" _%f129104%_))
        (let _%lp129108%_ ((_%r129110%_ _%iv129105%_)
                           (_%rest129111%_ _%stx129106%_))
          (let* ((_%g129112129122%_ (gx#syntax-e _%rest129111%_))
                 (_%else129115129130%_
                  (lambda () (_%f129104%_ _%rest129111%_ _%r129110%_))))
            (let ((_%K129118129144%_
                   (lambda (_%rest129141%_ _%hd129142%_)
                     (_%lp129108%_
                      (_%f129104%_ _%hd129142%_ _%r129110%_)
                      _%rest129141%_)))
                  (_%K129117129135%_ (lambda () _%r129110%_)))
              (let ((_%try-match129114129138%_
                     (lambda ()
                       (if (null? _%g129112129122%_)
                           (_%K129117129135%_)
                           (_%else129115129130%_)))))
                (if (pair? _%g129112129122%_)
                    (let ((_%tl129120129149%_ (##cdr _%g129112129122%_))
                          (_%hd129119129147%_ (##car _%g129112129122%_)))
                      (let ((_%hd129152%_ _%hd129119129147%_)
                            (_%rest129154%_ _%tl129120129149%_))
                        (_%K129118129144%_ _%rest129154%_ _%hd129152%_)))
                    (_%try-match129114129138%_))))))))
    (define gx#stx-foldr
      (lambda (_%f129053%_ _%iv129054%_ _%stx129055%_)
        (if (procedure? _%f129053%_)
            '#!void
            (error '"expected procedure" _%f129053%_))
        (let _%recur129057%_ ((_%rest129059%_ _%stx129055%_))
          (let* ((_%g129060129070%_ (gx#syntax-e _%rest129059%_))
                 (_%else129063129078%_
                  (lambda () (_%f129053%_ _%rest129059%_ _%iv129054%_))))
            (let ((_%K129066129092%_
                   (lambda (_%rest129089%_ _%hd129090%_)
                     (_%f129053%_
                      _%hd129090%_
                      (_%recur129057%_ _%rest129089%_))))
                  (_%K129065129083%_ (lambda () _%iv129054%_)))
              (let ((_%try-match129062129086%_
                     (lambda ()
                       (if (null? _%g129060129070%_)
                           (_%K129065129083%_)
                           (_%else129063129078%_)))))
                (if (pair? _%g129060129070%_)
                    (let ((_%tl129068129097%_ (##cdr _%g129060129070%_))
                          (_%hd129067129095%_ (##car _%g129060129070%_)))
                      (let ((_%hd129100%_ _%hd129067129095%_)
                            (_%rest129102%_ _%tl129068129097%_))
                        (_%K129066129092%_ _%rest129102%_ _%hd129100%_)))
                    (_%try-match129062129086%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx129051%_) (gx#stx-foldl cons '() _%stx129051%_)))
    (define gx#stx-last
      (lambda (_%stx129012%_)
        (let _%lp129014%_ ((_%rest129016%_ _%stx129012%_))
          (let* ((_%g129017129025%_ (gx#syntax-e _%rest129016%_))
                 (_%else129019129033%_ (lambda () _%rest129016%_))
                 (_%K129021129039%_
                  (lambda (_%rest129036%_ _%hd129037%_)
                    (if (gx#stx-null? _%rest129036%_)
                        _%hd129037%_
                        (_%lp129014%_ _%rest129036%_)))))
            (if (pair? _%g129017129025%_)
                (let ((_%hd129022129042%_ (##car _%g129017129025%_))
                      (_%tl129023129044%_ (##cdr _%g129017129025%_)))
                  (let* ((_%hd129047%_ _%hd129022129042%_)
                         (_%rest129049%_ _%tl129023129044%_))
                    (_%K129021129039%_ _%rest129049%_ _%hd129047%_)))
                (_%else129019129033%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx128983%_)
        (let _%lp128985%_ ((_%hd128987%_ _%stx128983%_))
          (let* ((_%g128988128995%_ (gx#syntax-e _%hd128987%_))
                 (_%E128990128999%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g128988128995%_
                           '([_ . rest]))
                    '#!void))
                 (_%K128991129004%_
                  (lambda (_%rest129002%_)
                    (if (gx#stx-pair? _%rest129002%_)
                        (_%lp128985%_ _%rest129002%_)
                        _%hd128987%_))))
            (if (pair? _%g128988128995%_)
                (let* ((_%tl128993129007%_ (##cdr _%g128988128995%_))
                       (_%rest129010%_ _%tl128993129007%_))
                  (_%K128991129004%_ _%rest129010%_))
                (_%E128990128999%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx128952%_ _%k128953%_)
        (let _%lp128955%_ ((_%rest128957%_ _%stx128952%_)
                           (_%k128958%_ _%k128953%_))
          (if (fxpositive? _%k128958%_)
              (let* ((_%g128959128966%_ (gx#syntax-e _%rest128957%_))
                     (_%E128961128970%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g128959128966%_
                               '([_ . rest]))
                        '#!void))
                     (_%K128962128975%_
                      (lambda (_%rest128973%_)
                        (_%lp128955%_ _%rest128973%_ (##fx- _%k128958%_ '1)))))
                (if (pair? _%g128959128966%_)
                    (let* ((_%tl128964128978%_ (##cdr _%g128959128966%_))
                           (_%rest128981%_ _%tl128964128978%_))
                      (_%K128962128975%_ _%rest128981%_))
                    (_%E128961128970%_)))
              _%rest128957%_))))
    (define gx#stx-list-ref
      (lambda (_%stx128949%_ _%k128950%_)
        (gx#stx-car (gx#stx-list-tail _%stx128949%_ _%k128950%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx128861%_ _%key?128862%_)
        (if (procedure? _%key?128862%_)
            '#!void
            (error '"expected procedure" _%key?128862%_))
        (let _%lp128864%_ ((_%rest128866%_ _%stx128861%_))
          (let* ((_%g128867128877%_ (gx#stx-e _%rest128866%_))
                 (_%else128870128885%_ (lambda () '#f)))
            (let ((_%K128873128927%_
                   (lambda (_%rest128896%_ _%hd128897%_)
                     (if (_%key?128862%_ _%hd128897%_)
                         (let* ((_%g128898128906%_ (gx#stx-e _%rest128896%_))
                                (_%else128900128914%_ (lambda () '#f))
                                (_%K128902128919%_
                                 (lambda (_%rest128917%_)
                                   (_%lp128864%_ _%rest128917%_))))
                           (if (pair? _%g128898128906%_)
                               (let* ((_%tl128904128922%_
                                       (##cdr _%g128898128906%_))
                                      (_%rest128925%_ _%tl128904128922%_))
                                 (_%lp128864%_ _%rest128925%_))
                               (_%else128900128914%_)))
                         '#f)))
                  (_%K128872128890%_ (lambda () '#t)))
              (let ((_%try-match128869128893%_
                     (lambda ()
                       (if (null? _%g128867128877%_)
                           (_%K128872128890%_)
                           (_%else128870128885%_)))))
                (if (pair? _%g128867128877%_)
                    (let ((_%tl128875128932%_ (##cdr _%g128867128877%_))
                          (_%hd128874128930%_ (##car _%g128867128877%_)))
                      (let ((_%hd128935%_ _%hd128874128930%_)
                            (_%rest128937%_ _%tl128875128932%_))
                        (_%K128873128927%_ _%rest128937%_ _%hd128935%_)))
                    (_%try-match128869128893%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx128942%_)
        (let ((_%key?128944%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx128942%_ _%key?128944%_))))
    (define gx#stx-plist?
      (lambda _g130097_
        (let ((_g130098_ (##length _g130097_)))
          (cond ((##fx= _g130098_ 1) (apply gx#stx-plist?__0 _g130097_))
                ((##fx= _g130098_ 2) (apply gx#stx-plist?__% _g130097_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g130097_))))))
    (define gx#stx-getq__%
      (lambda (_%key128779%_ _%stx128780%_ _%key=?128781%_)
        (if (procedure? _%key=?128781%_)
            '#!void
            (error '"expected procedure" _%key=?128781%_))
        (let _%lp128783%_ ((_%rest128785%_ _%stx128780%_))
          (let* ((_%g128786128794%_ (gx#syntax-e _%rest128785%_))
                 (_%else128788128802%_ (lambda () '#f))
                 (_%K128790128836%_
                  (lambda (_%rest128805%_ _%hd128806%_)
                    (let* ((_%g128807128814%_ (gx#syntax-e _%rest128805%_))
                           (_%E128809128818%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g128807128814%_
                                     '([val . rest]))
                              '#!void))
                           (_%K128810128824%_
                            (lambda (_%rest128821%_ _%val128822%_)
                              (if (_%key=?128781%_ _%hd128806%_ _%key128779%_)
                                  _%val128822%_
                                  (_%lp128783%_ _%rest128821%_)))))
                      (if (pair? _%g128807128814%_)
                          (let ((_%hd128811128827%_ (##car _%g128807128814%_))
                                (_%tl128812128829%_ (##cdr _%g128807128814%_)))
                            (let* ((_%val128832%_ _%hd128811128827%_)
                                   (_%rest128834%_ _%tl128812128829%_))
                              (_%K128810128824%_
                               _%rest128834%_
                               _%val128832%_)))
                          (_%E128809128818%_))))))
            (if (pair? _%g128786128794%_)
                (let ((_%hd128791128839%_ (##car _%g128786128794%_))
                      (_%tl128792128841%_ (##cdr _%g128786128794%_)))
                  (let* ((_%hd128844%_ _%hd128791128839%_)
                         (_%rest128846%_ _%tl128792128841%_))
                    (_%K128790128836%_ _%rest128846%_ _%hd128844%_)))
                (_%else128788128802%_))))))
    (define gx#stx-getq__0
      (lambda (_%key128851%_ _%stx128852%_)
        (let ((_%key=?128854%_ gx#stx-eq?))
          (gx#stx-getq__% _%key128851%_ _%stx128852%_ _%key=?128854%_))))
    (define gx#stx-getq
      (lambda _g130099_
        (let ((_g130100_ (##length _g130099_)))
          (cond ((##fx= _g130100_ 2) (apply gx#stx-getq__0 _g130099_))
                ((##fx= _g130100_ 3) (apply gx#stx-getq__% _g130099_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g130099_))))))))
