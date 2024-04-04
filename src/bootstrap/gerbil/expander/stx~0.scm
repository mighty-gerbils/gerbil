(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712246555)
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
      (lambda _%$args115020%_
        (apply make-instance gx#identifier-wrap::t _%$args115020%_)))
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
      (lambda _%$args115017%_
        (apply make-instance gx#syntax-wrap::t _%$args115017%_)))
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
      (lambda _%$args115014%_
        (apply make-instance gx#syntax-quote::t _%$args115014%_)))
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
      (lambda (_%stx115012%_) (symbol? (gx#stx-e _%stx115012%_))))
    (define gx#identifier-quote?
      (lambda (_%stx115010%_)
        (if (##structure-direct-instance-of? _%stx115010%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx115010%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx115005%_)
        (if (##structure-direct-instance-of? _%stx115005%_ 'gx#syntax-quote::t)
            (let () '#t)
            (if (##structure-direct-instance-of?
                 _%stx115005%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax?
                   (##unchecked-structure-ref _%stx115005%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx115000%_)
        (if (##structure-direct-instance-of? _%stx115000%_ 'gx#syntax-quote::t)
            (let () _%stx115000%_)
            (if (##structure-direct-instance-of?
                 _%stx115000%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax-unwrap
                   (##unchecked-structure-ref _%stx115000%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#syntax-e
      (lambda (_%stx114974%_)
        (if (##structure-direct-instance-of? _%stx114974%_ 'gx#syntax-wrap::t)
            (let _%lp114977%_ ((_%e114979%_
                                (##unchecked-structure-ref
                                 _%stx114974%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks114980%_
                                (cons (##unchecked-structure-ref
                                       _%stx114974%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e114979%_)
                  (let ((_%$e114983%_
                         (##type-id (##structure-type _%e114979%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e114983%_)
                        (_%lp114977%_
                         (##unchecked-structure-ref _%e114979%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e114979%_ '3 '#f '#f)
                          _%marks114980%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e114983%_)
                                (eq? 'gx#identifier-wrap::t _%$e114983%_))
                            (##unchecked-structure-ref _%e114979%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e114983%_)
                                (_%lp114977%_
                                 (##unchecked-structure-ref
                                  _%e114979%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks114980%_)
                                _%e114979%_))))
                  (if (null? _%marks114980%_)
                      (let () _%e114979%_)
                      (if (pair? _%e114979%_)
                          (let ()
                            (cons (gx#stx-wrap
                                   (car _%e114979%_)
                                   _%marks114980%_)
                                  (gx#stx-wrap
                                   (cdr _%e114979%_)
                                   _%marks114980%_)))
                          (if (vector? _%e114979%_)
                              (let ()
                                (vector-map
                                 (lambda (_%g114991114993%_)
                                   (gx#stx-wrap
                                    _%g114991114993%_
                                    _%marks114980%_))
                                 _%e114979%_))
                              (if (box? _%e114979%_)
                                  (let ()
                                    (box (gx#stx-wrap
                                          (unbox _%e114979%_)
                                          _%marks114980%_)))
                                  (let () _%e114979%_)))))))
            (if (##structure-instance-of? _%stx114974%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114974%_ '1 '#f '#f))
                (let () _%stx114974%_)))))
    (define gx#syntax->datum
      (lambda (_%stx114967%_)
        (if (##structure-instance-of? _%stx114967%_ 'gerbil#AST::t)
            (let ()
              (gx#syntax->datum
               (##unchecked-structure-ref _%stx114967%_ '1 '#f '#f)))
            (if (pair? _%stx114967%_)
                (let ()
                  (cons (gx#syntax->datum (car _%stx114967%_))
                        (gx#syntax->datum (cdr _%stx114967%_))))
                (if (vector? _%stx114967%_)
                    (let () (vector-map gx#syntax->datum _%stx114967%_))
                    (if (box? _%stx114967%_)
                        (let () (box (gx#syntax->datum (unbox _%stx114967%_))))
                        (let () _%stx114967%_)))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114901%_ _%datum114902%_ _%src114903%_ _%quote?114904%_)
        (letrec ((_%wrap-datum114906%_
                  (lambda (_%e114939%_ _%marks114940%_)
                    (_%wrap-inner114908%_
                     _%e114939%_
                     (lambda (_%g114941114943%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114941114943%_
                        _%src114903%_
                        _%marks114940%_)))))
                 (_%wrap-quote114907%_
                  (lambda (_%e114931%_ _%ctx114932%_ _%marks114933%_)
                    (_%wrap-inner114908%_
                     _%e114931%_
                     (lambda (_%g114934114936%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114934114936%_
                        _%src114903%_
                        _%ctx114932%_
                        _%marks114933%_)))))
                 (_%wrap-inner114908%_
                  (lambda (_%e114919%_ _%wrap-e114920%_)
                    (let _%recur114922%_ ((_%e114924%_ _%e114919%_))
                      (if (symbol? _%e114924%_)
                          (let () (_%wrap-e114920%_ _%e114924%_))
                          (if (pair? _%e114924%_)
                              (let ()
                                (cons (_%recur114922%_ (car _%e114924%_))
                                      (_%recur114922%_ (cdr _%e114924%_))))
                              (if (vector? _%e114924%_)
                                  (let ()
                                    (vector-map _%recur114922%_ _%e114924%_))
                                  (if (box? _%e114924%_)
                                      (let ()
                                        (box (_%recur114922%_
                                              (unbox _%e114924%_))))
                                      (let () _%e114924%_))))))))
                 (_%wrap-outer114909%_
                  (lambda (_%e114917%_)
                    (if (##structure-instance-of? _%e114917%_ 'gerbil#AST::t)
                        _%e114917%_
                        (##structure gx#AST::t _%e114917%_ _%src114903%_)))))
          (if (##structure-instance-of? _%datum114902%_ 'gerbil#AST::t)
              (let () _%datum114902%_)
              (if (not _%stx114901%_)
                  (let ()
                    (##structure gx#AST::t _%datum114902%_ _%src114903%_))
                  (if (gx#identifier? _%stx114901%_)
                      (let ((_%stx114914%_ (gx#stx-unwrap__0 _%stx114901%_)))
                        (_%wrap-outer114909%_
                         (if (##structure-direct-instance-of?
                              _%stx114914%_
                              'gx#syntax-quote::t)
                             (if _%quote?114904%_
                                 (_%wrap-quote114907%_
                                  _%datum114902%_
                                  (##unchecked-structure-ref
                                   _%stx114914%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx114914%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum114906%_
                                  _%datum114902%_
                                  (##unchecked-structure-ref
                                   _%stx114914%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum114906%_
                              _%datum114902%_
                              (##unchecked-structure-ref
                               _%stx114914%_
                               '3
                               '#f
                               '#f)))))
                      (let ()
                        (error '"Bad template syntax; expected identifier"
                               _%stx114901%_))))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114949%_ _%datum114950%_)
        (let* ((_%src114952%_ '#f) (_%quote?114954%_ '#t))
          (gx#datum->syntax__%
           _%stx114949%_
           _%datum114950%_
           _%src114952%_
           _%quote?114954%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114956%_ _%datum114957%_ _%src114958%_)
        (let ((_%quote?114960%_ '#t))
          (gx#datum->syntax__%
           _%stx114956%_
           _%datum114957%_
           _%src114958%_
           _%quote?114960%_))))
    (define gx#datum->syntax
      (lambda _g115101_
        (let ((_g115100_ (##length _g115101_)))
          (cond ((##fx= _g115100_ 2)
                 (apply (lambda (_%stx114949%_ _%datum114950%_)
                          (gx#datum->syntax__0 _%stx114949%_ _%datum114950%_))
                        _g115101_))
                ((##fx= _g115100_ 3)
                 (apply (lambda (_%stx114956%_ _%datum114957%_ _%src114958%_)
                          (gx#datum->syntax__1
                           _%stx114956%_
                           _%datum114957%_
                           _%src114958%_))
                        _g115101_))
                ((##fx= _g115100_ 4)
                 (apply (lambda (_%stx114962%_
                                 _%datum114963%_
                                 _%src114964%_
                                 _%quote?114965%_)
                          (gx#datum->syntax__%
                           _%stx114962%_
                           _%datum114963%_
                           _%src114964%_
                           _%quote?114965%_))
                        _g115101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g115101_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114867%_ _%marks114868%_)
        (let _%lp114870%_ ((_%e114872%_ _%stx114867%_)
                           (_%marks114873%_ _%marks114868%_)
                           (_%src114874%_ (gx#stx-source _%stx114867%_)))
          (if (##structure-direct-instance-of? _%e114872%_ 'gx#syntax-wrap::t)
              (let ()
                (_%lp114870%_
                 (##unchecked-structure-ref _%e114872%_ '1 '#f '#f)
                 (gx#apply-mark
                  (##unchecked-structure-ref _%e114872%_ '3 '#f '#f)
                  _%marks114873%_)
                 (##unchecked-structure-ref _%e114872%_ '2 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%e114872%_
                   'gx#identifier-wrap::t)
                  (let ()
                    (if (null? _%marks114873%_)
                        _%e114872%_
                        (##structure
                         gx#identifier-wrap::t
                         (##unchecked-structure-ref _%e114872%_ '1 '#f '#f)
                         (##unchecked-structure-ref _%e114872%_ '2 '#f '#f)
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e114872%_ '3 '#f '#f)
                          _%marks114873%_))))
                  (if (##structure-direct-instance-of?
                       _%e114872%_
                       'gx#syntax-quote::t)
                      (let () _%e114872%_)
                      (if (##structure-instance-of? _%e114872%_ 'gerbil#AST::t)
                          (let ()
                            (_%lp114870%_
                             (##unchecked-structure-ref _%e114872%_ '1 '#f '#f)
                             _%marks114873%_
                             (##unchecked-structure-ref
                              _%e114872%_
                              '2
                              '#f
                              '#f)))
                          (if (symbol? _%e114872%_)
                              (let ()
                                (##structure
                                 gx#identifier-wrap::t
                                 _%e114872%_
                                 _%src114874%_
                                 (reverse _%marks114873%_)))
                              (if (null? _%marks114873%_)
                                  (let () _%e114872%_)
                                  (if (pair? _%e114872%_)
                                      (let ()
                                        (cons (gx#stx-wrap
                                               (car _%e114872%_)
                                               _%marks114873%_)
                                              (gx#stx-wrap
                                               (cdr _%e114872%_)
                                               _%marks114873%_)))
                                      (if (vector? _%e114872%_)
                                          (let ()
                                            (vector-map
                                             (lambda (_%g114883114885%_)
                                               (gx#stx-wrap
                                                _%g114883114885%_
                                                _%marks114873%_))
                                             _%e114872%_))
                                          (if (box? _%e114872%_)
                                              (let ()
                                                (box (gx#stx-wrap
                                                      (unbox _%e114872%_)
                                                      _%marks114873%_)))
                                              (let () _%e114872%_)))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114893%_)
        (let ((_%marks114895%_ '()))
          (gx#stx-unwrap__% _%stx114893%_ _%marks114895%_))))
    (define gx#stx-unwrap
      (lambda _g115103_
        (let ((_g115102_ (##length _g115103_)))
          (cond ((##fx= _g115102_ 1)
                 (apply (lambda (_%stx114893%_)
                          (gx#stx-unwrap__0 _%stx114893%_))
                        _g115103_))
                ((##fx= _g115102_ 2)
                 (apply (lambda (_%stx114897%_ _%marks114898%_)
                          (gx#stx-unwrap__% _%stx114897%_ _%marks114898%_))
                        _g115103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g115103_))))))
    (define gx#stx-wrap
      (lambda (_%stx114860%_ _%marks114861%_)
        (__foldl1
         (lambda (_%mark114863%_ _%stx114864%_)
           (gx#stx-apply-mark _%stx114864%_ _%mark114863%_))
         _%stx114860%_
         _%marks114861%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114854%_ _%marks114855%_)
        (__foldr1
         (lambda (_%mark114857%_ _%stx114858%_)
           (gx#stx-apply-mark _%stx114858%_ _%mark114857%_))
         _%stx114854%_
         _%marks114855%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114848%_ _%mark114849%_)
        (if (##structure-direct-instance-of? _%stx114848%_ 'gx#syntax-quote::t)
            (let () _%stx114848%_)
            (if (and (##structure-direct-instance-of?
                      _%stx114848%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114849%_
                          (##unchecked-structure-ref
                           _%stx114848%_
                           '3
                           '#f
                           '#f)))
                (let () (##unchecked-structure-ref _%stx114848%_ '1 '#f '#f))
                (let ()
                  (##structure
                   gx#syntax-wrap::t
                   _%stx114848%_
                   (gx#stx-source _%stx114848%_)
                   _%mark114849%_))))))
    (define gx#apply-mark
      (lambda (_%mark114812%_ _%marks114813%_)
        (let* ((_%marks114814114822%_ _%marks114813%_)
               (_%else114816114830%_
                (lambda () (cons _%mark114812%_ _%marks114813%_)))
               (_%K114818114836%_
                (lambda (_%rest114833%_ _%hd114834%_)
                  (if (eq? _%mark114812%_ _%hd114834%_)
                      _%rest114833%_
                      (cons _%mark114812%_ _%marks114813%_)))))
          (if (##pair? _%marks114814114822%_)
              (let ((_%hd114819114839%_ (##car _%marks114814114822%_))
                    (_%tl114820114841%_ (##cdr _%marks114814114822%_)))
                (let* ((_%hd114844%_ _%hd114819114839%_)
                       (_%rest114846%_ _%tl114820114841%_))
                  (_%K114818114836%_ _%rest114846%_ _%hd114844%_)))
              (_%else114816114830%_)))))
    (define gx#stx-e
      (lambda (_%stx114807%_)
        (if (##structure-direct-instance-of? _%stx114807%_ 'gx#syntax-wrap::t)
            (let ()
              (gx#stx-e (##unchecked-structure-ref _%stx114807%_ '1 '#f '#f)))
            (if (##structure-instance-of? _%stx114807%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114807%_ '1 '#f '#f))
                (let () _%stx114807%_)))))
    (define gx#stx-source
      (lambda (_%stx114805%_)
        (if (##structure-instance-of? _%stx114805%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114805%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114799%_ _%src114800%_)
        (if (or (##structure-instance-of? _%stx114799%_ 'gerbil#AST::t)
                (not _%src114800%_))
            _%stx114799%_
            (##structure gx#AST::t _%stx114799%_ _%src114800%_))))
    (define gx#stx-datum?
      (lambda (_%stx114797%_) (gx#self-quoting? (gx#stx-e _%stx114797%_))))
    (define gx#self-quoting?
      (lambda (_%x114780%_)
        (let ((_%$e114782%_ (immediate? _%x114780%_)))
          (if _%$e114782%_
              _%$e114782%_
              (let ((_%$e114785%_ (number? _%x114780%_)))
                (if _%$e114785%_
                    _%$e114785%_
                    (let ((_%$e114788%_ (keyword? _%x114780%_)))
                      (if _%$e114788%_
                          _%$e114788%_
                          (let ((_%$e114791%_ (string? _%x114780%_)))
                            (if _%$e114791%_
                                _%$e114791%_
                                (let ((_%$e114794%_ (vector? _%x114780%_)))
                                  (if _%$e114794%_
                                      _%$e114794%_
                                      (u8vector? _%x114780%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114778%_) (boolean? (gx#stx-e _%e114778%_))))
    (define gx#stx-keyword?
      (lambda (_%e114776%_) (keyword? (gx#stx-e _%e114776%_))))
    (define gx#stx-char? (lambda (_%e114774%_) (char? (gx#stx-e _%e114774%_))))
    (define gx#stx-number?
      (lambda (_%e114772%_) (number? (gx#stx-e _%e114772%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114770%_) (fixnum? (gx#stx-e _%e114770%_))))
    (define gx#stx-string?
      (lambda (_%e114768%_) (string? (gx#stx-e _%e114768%_))))
    (define gx#stx-null? (lambda (_%e114766%_) (null? (gx#stx-e _%e114766%_))))
    (define gx#stx-pair? (lambda (_%e114764%_) (pair? (gx#stx-e _%e114764%_))))
    (define gx#stx-list?
      (lambda (_%e114726%_)
        (let* ((_%g114727114736%_ (gx#stx-e _%e114726%_))
               (_%E114730114740%_
                (lambda ()
                  (error '"No clause matching"
                         _%g114727114736%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K114732114756%_
                 (lambda (_%rest114754%_) (gx#stx-list? _%rest114754%_)))
                (_%K114731114746%_
                 (lambda (_%tail114744%_) (null? _%tail114744%_))))
            (if (##pair? _%g114727114736%_)
                (let* ((_%tl114734114759%_ (##cdr _%g114727114736%_))
                       (_%rest114762%_ _%tl114734114759%_))
                  (gx#stx-list? _%rest114762%_))
                (let ((_%tail114749%_ _%g114727114736%_))
                  (null? _%tail114749%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e114719%_)
        (let* ((_%e114721%_ (gx#stx-e _%e114719%_))
               (_%$e114723%_ (pair? _%e114721%_)))
          (if _%$e114723%_ _%$e114723%_ (null? _%e114721%_)))))
    (define gx#stx-vector?
      (lambda (_%e114717%_) (vector? (gx#stx-e _%e114717%_))))
    (define gx#stx-box? (lambda (_%e114715%_) (box? (gx#stx-e _%e114715%_))))
    (define gx#stx-eq?
      (lambda (_%x114712%_ _%y114713%_)
        (eq? (gx#stx-e _%x114712%_) (gx#stx-e _%y114713%_))))
    (define gx#stx-eqv?
      (lambda (_%x114709%_ _%y114710%_)
        (eqv? (gx#stx-e _%x114709%_) (gx#stx-e _%y114710%_))))
    (define gx#stx-equal?
      (lambda (_%x114706%_ _%y114707%_)
        (equal? (gx#stx-e _%x114706%_) (gx#stx-e _%y114707%_))))
    (define gx#stx-false? (lambda (_%x114704%_) (not (gx#stx-e _%x114704%_))))
    (define gx#stx-identifier
      (lambda (_%template114701%_ . _%args114702%_)
        (gx#datum->syntax__1
         _%template114701%_
         (apply make-symbol (gx#syntax->datum _%args114702%_))
         (gx#stx-source _%template114701%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx114699%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx114699%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx114694%_)
        (if (##structure-direct-instance-of?
             _%stx114694%_
             'gx#identifier-wrap::t)
            (let () (##unchecked-structure-ref _%stx114694%_ '3 '#f '#f))
            (if (##structure-direct-instance-of?
                 _%stx114694%_
                 'gx#syntax-quote::t)
                (let () (##unchecked-structure-ref _%stx114694%_ '4 '#f '#f))
                (let ()
                  (error '"Bad wrap; expected unwrapped identifier"
                         _%stx114694%_))))))
    (define gx#stx-identifier-context
      (lambda (_%stx114690%_)
        (let ((_%stx114692%_ (gx#stx-unwrap__0 _%stx114690%_)))
          (if (gx#identifier-quote? _%stx114692%_)
              (##unchecked-structure-ref _%stx114692%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx114645%_)
        (let* ((_%g114646114656%_ (gx#stx-e _%stx114645%_))
               (_%else114649114664%_ (lambda () '#f)))
          (let ((_%K114652114678%_
                 (lambda (_%rest114675%_ _%hd114676%_)
                   (if (gx#identifier? _%hd114676%_)
                       (gx#identifier-list? _%rest114675%_)
                       '#f)))
                (_%K114651114669%_ (lambda () '#t)))
            (let ((_%try-match114648114672%_
                   (lambda ()
                     (if (##null? _%g114646114656%_)
                         (_%K114651114669%_)
                         (_%else114649114664%_)))))
              (if (##pair? _%g114646114656%_)
                  (let ((_%tl114654114683%_ (##cdr _%g114646114656%_))
                        (_%hd114653114681%_ (##car _%g114646114656%_)))
                    (let ((_%hd114686%_ _%hd114653114681%_)
                          (_%rest114688%_ _%tl114654114683%_))
                      (_%K114652114678%_ _%rest114688%_ _%hd114686%_)))
                  (_%try-match114648114672%_)))))))
    (define gx#genident__%
      (lambda (_%e114622%_ _%src114623%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e114625%_ (gx#stx-e _%e114622%_)))
                   (if (interned-symbol? _%e114625%_) _%e114625%_ 'g)))
         (let ((_%$e114627%_ (gx#stx-source _%e114622%_)))
           (if _%$e114627%_ _%$e114627%_ _%src114623%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e114634%_ 'g) (_%src114636%_ '#f))
          (gx#genident__% _%e114634%_ _%src114636%_))))
    (define gx#genident__1
      (lambda (_%e114638%_)
        (let ((_%src114640%_ '#f))
          (gx#genident__% _%e114638%_ _%src114640%_))))
    (define gx#genident
      (lambda _g115105_
        (let ((_g115104_ (##length _g115105_)))
          (cond ((##fx= _g115104_ 0)
                 (apply (lambda () (gx#genident__0)) _g115105_))
                ((##fx= _g115104_ 1)
                 (apply (lambda (_%e114638%_) (gx#genident__1 _%e114638%_))
                        _g115105_))
                ((##fx= _g115104_ 2)
                 (apply (lambda (_%e114642%_ _%src114643%_)
                          (gx#genident__% _%e114642%_ _%src114643%_))
                        _g115105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g115105_))))))
    (define gx#gentemps
      (lambda (_%stx-lst114619%_) (gx#stx-map1 gx#genident _%stx-lst114619%_)))
    (define gx#syntax->list
      (lambda (_%stx114617%_) (gx#stx-map1 values _%stx114617%_)))
    (define gx#stx-car
      (lambda (_%stx114614%_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _%stx114614%_)))))
    (define gx#stx-cdr
      (lambda (_%stx114611%_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _%stx114611%_)))))
    (define gx#stx-length
      (lambda (_%stx114576%_)
        (let _%lp114578%_ ((_%rest114580%_ _%stx114576%_) (_%n114581%_ '0))
          (let* ((_%g114582114590%_ (gx#stx-e _%rest114580%_))
                 (_%else114584114598%_ (lambda () _%n114581%_))
                 (_%K114586114603%_
                  (lambda (_%rest114601%_)
                    (_%lp114578%_ _%rest114601%_ (##fx+ _%n114581%_ '1)))))
            (if (##pair? _%g114582114590%_)
                (let* ((_%tl114588114606%_ (##cdr _%g114582114590%_))
                       (_%rest114609%_ _%tl114588114606%_))
                  (_%K114586114603%_ _%rest114609%_))
                (_%else114584114598%_))))))
    (define gx#stx-for-each
      (lambda _g115107_
        (let ((_g115106_ (##length _g115107_)))
          (cond ((##fx= _g115106_ 2)
                 (apply (lambda (_%f114569%_ _%stx114570%_)
                          (gx#stx-for-each1 _%f114569%_ _%stx114570%_))
                        _g115107_))
                ((##fx= _g115106_ 3)
                 (apply (lambda (_%f114572%_ _%xstx114573%_ _%ystx114574%_)
                          (gx#stx-for-each2
                           _%f114572%_
                           _%xstx114573%_
                           _%ystx114574%_))
                        _g115107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g115107_))))))
    (define gx#stx-for-each1
      (lambda (_%f114519%_ _%stx114520%_)
        (if (procedure? _%f114519%_)
            '#!void
            (error '"expected procedure" _%f114519%_))
        (let _%lp114522%_ ((_%rest114524%_ _%stx114520%_))
          (let* ((_%g114525114535%_ (gx#syntax-e _%rest114524%_))
                 (_%else114528114543%_
                  (lambda () (_%f114519%_ _%rest114524%_))))
            (let ((_%K114531114557%_
                   (lambda (_%rest114554%_ _%hd114555%_)
                     (_%f114519%_ _%hd114555%_)
                     (_%lp114522%_ _%rest114554%_)))
                  (_%K114530114548%_ (lambda () '#!void)))
              (let ((_%try-match114527114551%_
                     (lambda ()
                       (if (##null? _%g114525114535%_)
                           (_%K114530114548%_)
                           (_%else114528114543%_)))))
                (if (##pair? _%g114525114535%_)
                    (let ((_%tl114533114562%_ (##cdr _%g114525114535%_))
                          (_%hd114532114560%_ (##car _%g114525114535%_)))
                      (let ((_%hd114565%_ _%hd114532114560%_)
                            (_%rest114567%_ _%tl114533114562%_))
                        (_%K114531114557%_ _%rest114567%_ _%hd114565%_)))
                    (_%try-match114527114551%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f114424%_ _%xstx114425%_ _%ystx114426%_)
        (if (procedure? _%f114424%_)
            '#!void
            (error '"expected procedure" _%f114424%_))
        (let _%lp114428%_ ((_%xrest114430%_ _%xstx114425%_)
                           (_%yrest114431%_ _%ystx114426%_))
          (let* ((_%g114432114442%_ (gx#syntax-e _%xrest114430%_))
                 (_%else114435114450%_ (lambda () '#!void)))
            (let ((_%K114438114507%_
                   (lambda (_%xrest114476%_ _%xhd114477%_)
                     (let* ((_%g114478114485%_ (gx#syntax-e _%yrest114431%_))
                            (_%E114480114489%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114478114485%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114481114495%_
                             (lambda (_%yrest114492%_ _%yhd114493%_)
                               (_%f114424%_ _%xhd114477%_ _%yhd114493%_)
                               (_%lp114428%_
                                _%xrest114476%_
                                _%yrest114492%_))))
                       (if (##pair? _%g114478114485%_)
                           (let ((_%hd114482114498%_ (##car _%g114478114485%_))
                                 (_%tl114483114500%_
                                  (##cdr _%g114478114485%_)))
                             (let* ((_%yhd114503%_ _%hd114482114498%_)
                                    (_%yrest114505%_ _%tl114483114500%_))
                               (_%K114481114495%_
                                _%yrest114505%_
                                _%yhd114503%_)))
                           (_%E114480114489%_)))))
                  (_%K114437114470%_
                   (lambda ()
                     (let* ((_%yrest114454114459%_ _%yrest114431%_)
                            (_%E114456114463%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114454114459%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114457114467%_
                             (lambda ()
                               (_%f114424%_ _%xrest114430%_ _%yrest114431%_))))
                       (if (not (gx#stx-null? _%yrest114454114459%_))
                           (_%K114457114467%_)
                           (_%E114456114463%_))))))
              (let ((_%try-match114434114473%_
                     (lambda ()
                       (if (not (null? _%g114432114442%_))
                           (_%K114437114470%_)
                           (_%else114435114450%_)))))
                (if (##pair? _%g114432114442%_)
                    (let ((_%tl114440114512%_ (##cdr _%g114432114442%_))
                          (_%hd114439114510%_ (##car _%g114432114442%_)))
                      (let ((_%xhd114515%_ _%hd114439114510%_)
                            (_%xrest114517%_ _%tl114440114512%_))
                        (_%K114438114507%_ _%xrest114517%_ _%xhd114515%_)))
                    (_%try-match114434114473%_))))))))
    (define gx#stx-map
      (lambda _g115109_
        (let ((_g115108_ (##length _g115109_)))
          (cond ((##fx= _g115108_ 2)
                 (apply (lambda (_%f114417%_ _%stx114418%_)
                          (gx#stx-map1 _%f114417%_ _%stx114418%_))
                        _g115109_))
                ((##fx= _g115108_ 3)
                 (apply (lambda (_%f114420%_ _%xstx114421%_ _%ystx114422%_)
                          (gx#stx-map2
                           _%f114420%_
                           _%xstx114421%_
                           _%ystx114422%_))
                        _g115109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g115109_))))))
    (define gx#stx-map1
      (lambda (_%f114367%_ _%stx114368%_)
        (if (procedure? _%f114367%_)
            '#!void
            (error '"expected procedure" _%f114367%_))
        (let _%recur114370%_ ((_%rest114372%_ _%stx114368%_))
          (let* ((_%g114373114383%_ (gx#syntax-e _%rest114372%_))
                 (_%else114376114391%_
                  (lambda () (_%f114367%_ _%rest114372%_))))
            (let ((_%K114379114405%_
                   (lambda (_%rest114402%_ _%hd114403%_)
                     (cons (_%f114367%_ _%hd114403%_)
                           (_%recur114370%_ _%rest114402%_))))
                  (_%K114378114396%_ (lambda () '())))
              (let ((_%try-match114375114399%_
                     (lambda ()
                       (if (##null? _%g114373114383%_)
                           (_%K114378114396%_)
                           (_%else114376114391%_)))))
                (if (##pair? _%g114373114383%_)
                    (let ((_%tl114381114410%_ (##cdr _%g114373114383%_))
                          (_%hd114380114408%_ (##car _%g114373114383%_)))
                      (let ((_%hd114413%_ _%hd114380114408%_)
                            (_%rest114415%_ _%tl114381114410%_))
                        (_%K114379114405%_ _%rest114415%_ _%hd114413%_)))
                    (_%try-match114375114399%_))))))))
    (define gx#stx-map2
      (lambda (_%f114272%_ _%xstx114273%_ _%ystx114274%_)
        (if (procedure? _%f114272%_)
            '#!void
            (error '"expected procedure" _%f114272%_))
        (let _%recur114276%_ ((_%xrest114278%_ _%xstx114273%_)
                              (_%yrest114279%_ _%ystx114274%_))
          (let* ((_%g114280114290%_ (gx#syntax-e _%xrest114278%_))
                 (_%else114283114298%_ (lambda () '())))
            (let ((_%K114286114355%_
                   (lambda (_%xrest114324%_ _%xhd114325%_)
                     (let* ((_%g114326114333%_ (gx#syntax-e _%yrest114279%_))
                            (_%E114328114337%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g114326114333%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K114329114343%_
                             (lambda (_%yrest114340%_ _%yhd114341%_)
                               (cons (_%f114272%_ _%xhd114325%_ _%yhd114341%_)
                                     (_%recur114276%_
                                      _%xrest114324%_
                                      _%yrest114340%_)))))
                       (if (##pair? _%g114326114333%_)
                           (let ((_%hd114330114346%_ (##car _%g114326114333%_))
                                 (_%tl114331114348%_
                                  (##cdr _%g114326114333%_)))
                             (let* ((_%yhd114351%_ _%hd114330114346%_)
                                    (_%yrest114353%_ _%tl114331114348%_))
                               (_%K114329114343%_
                                _%yrest114353%_
                                _%yhd114351%_)))
                           (_%E114328114337%_)))))
                  (_%K114285114318%_
                   (lambda ()
                     (let* ((_%yrest114302114307%_ _%yrest114279%_)
                            (_%E114304114311%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest114302114307%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K114305114315%_
                             (lambda ()
                               (_%f114272%_ _%xrest114278%_ _%yrest114279%_))))
                       (if (not (gx#stx-null? _%yrest114302114307%_))
                           (_%K114305114315%_)
                           (_%E114304114311%_))))))
              (let ((_%try-match114282114321%_
                     (lambda ()
                       (if (not (null? _%g114280114290%_))
                           (_%K114285114318%_)
                           (_%else114283114298%_)))))
                (if (##pair? _%g114280114290%_)
                    (let ((_%tl114288114360%_ (##cdr _%g114280114290%_))
                          (_%hd114287114358%_ (##car _%g114280114290%_)))
                      (let ((_%xhd114363%_ _%hd114287114358%_)
                            (_%xrest114365%_ _%tl114288114360%_))
                        (_%K114286114355%_ _%xrest114365%_ _%xhd114363%_)))
                    (_%try-match114282114321%_))))))))
    (define gx#stx-andmap
      (lambda (_%f114222%_ _%stx114223%_)
        (if (procedure? _%f114222%_)
            '#!void
            (error '"expected procedure" _%f114222%_))
        (let _%lp114225%_ ((_%rest114227%_ _%stx114223%_))
          (let* ((_%g114228114238%_ (gx#syntax-e _%rest114227%_))
                 (_%else114231114246%_
                  (lambda () (_%f114222%_ _%rest114227%_))))
            (let ((_%K114234114260%_
                   (lambda (_%rest114257%_ _%hd114258%_)
                     (if (_%f114222%_ _%hd114258%_)
                         (_%lp114225%_ _%rest114257%_)
                         '#f)))
                  (_%K114233114251%_ (lambda () '#t)))
              (let ((_%try-match114230114254%_
                     (lambda ()
                       (if (##null? _%g114228114238%_)
                           (_%K114233114251%_)
                           (_%else114231114246%_)))))
                (if (##pair? _%g114228114238%_)
                    (let ((_%tl114236114265%_ (##cdr _%g114228114238%_))
                          (_%hd114235114263%_ (##car _%g114228114238%_)))
                      (let ((_%hd114268%_ _%hd114235114263%_)
                            (_%rest114270%_ _%tl114236114265%_))
                        (_%K114234114260%_ _%rest114270%_ _%hd114268%_)))
                    (_%try-match114230114254%_))))))))
    (define gx#stx-ormap
      (lambda (_%f114169%_ _%stx114170%_)
        (if (procedure? _%f114169%_)
            '#!void
            (error '"expected procedure" _%f114169%_))
        (let _%lp114172%_ ((_%rest114174%_ _%stx114170%_))
          (let* ((_%g114175114185%_ (gx#syntax-e _%rest114174%_))
                 (_%else114178114193%_
                  (lambda () (_%f114169%_ _%rest114174%_))))
            (let ((_%K114181114210%_
                   (lambda (_%rest114204%_ _%hd114205%_)
                     (let ((_%$e114207%_ (_%f114169%_ _%hd114205%_)))
                       (if _%$e114207%_
                           _%$e114207%_
                           (_%lp114172%_ _%rest114204%_)))))
                  (_%K114180114198%_ (lambda () '#f)))
              (let ((_%try-match114177114201%_
                     (lambda ()
                       (if (##null? _%g114175114185%_)
                           (_%K114180114198%_)
                           (_%else114178114193%_)))))
                (if (##pair? _%g114175114185%_)
                    (let ((_%tl114183114215%_ (##cdr _%g114175114185%_))
                          (_%hd114182114213%_ (##car _%g114175114185%_)))
                      (let ((_%hd114218%_ _%hd114182114213%_)
                            (_%rest114220%_ _%tl114183114215%_))
                        (_%K114181114210%_ _%rest114220%_ _%hd114218%_)))
                    (_%try-match114177114201%_))))))))
    (define gx#stx-foldl
      (lambda (_%f114117%_ _%iv114118%_ _%stx114119%_)
        (if (procedure? _%f114117%_)
            '#!void
            (error '"expected procedure" _%f114117%_))
        (let _%lp114121%_ ((_%r114123%_ _%iv114118%_)
                           (_%rest114124%_ _%stx114119%_))
          (let* ((_%g114125114135%_ (gx#syntax-e _%rest114124%_))
                 (_%else114128114143%_
                  (lambda () (_%f114117%_ _%rest114124%_ _%r114123%_))))
            (let ((_%K114131114157%_
                   (lambda (_%rest114154%_ _%hd114155%_)
                     (_%lp114121%_
                      (_%f114117%_ _%hd114155%_ _%r114123%_)
                      _%rest114154%_)))
                  (_%K114130114148%_ (lambda () _%r114123%_)))
              (let ((_%try-match114127114151%_
                     (lambda ()
                       (if (##null? _%g114125114135%_)
                           (_%K114130114148%_)
                           (_%else114128114143%_)))))
                (if (##pair? _%g114125114135%_)
                    (let ((_%tl114133114162%_ (##cdr _%g114125114135%_))
                          (_%hd114132114160%_ (##car _%g114125114135%_)))
                      (let ((_%hd114165%_ _%hd114132114160%_)
                            (_%rest114167%_ _%tl114133114162%_))
                        (_%K114131114157%_ _%rest114167%_ _%hd114165%_)))
                    (_%try-match114127114151%_))))))))
    (define gx#stx-foldr
      (lambda (_%f114066%_ _%iv114067%_ _%stx114068%_)
        (if (procedure? _%f114066%_)
            '#!void
            (error '"expected procedure" _%f114066%_))
        (let _%recur114070%_ ((_%rest114072%_ _%stx114068%_))
          (let* ((_%g114073114083%_ (gx#syntax-e _%rest114072%_))
                 (_%else114076114091%_
                  (lambda () (_%f114066%_ _%rest114072%_ _%iv114067%_))))
            (let ((_%K114079114105%_
                   (lambda (_%rest114102%_ _%hd114103%_)
                     (_%f114066%_
                      _%hd114103%_
                      (_%recur114070%_ _%rest114102%_))))
                  (_%K114078114096%_ (lambda () _%iv114067%_)))
              (let ((_%try-match114075114099%_
                     (lambda ()
                       (if (##null? _%g114073114083%_)
                           (_%K114078114096%_)
                           (_%else114076114091%_)))))
                (if (##pair? _%g114073114083%_)
                    (let ((_%tl114081114110%_ (##cdr _%g114073114083%_))
                          (_%hd114080114108%_ (##car _%g114073114083%_)))
                      (let ((_%hd114113%_ _%hd114080114108%_)
                            (_%rest114115%_ _%tl114081114110%_))
                        (_%K114079114105%_ _%rest114115%_ _%hd114113%_)))
                    (_%try-match114075114099%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx114064%_) (gx#stx-foldl cons '() _%stx114064%_)))
    (define gx#stx-last
      (lambda (_%stx114025%_)
        (let _%lp114027%_ ((_%rest114029%_ _%stx114025%_))
          (let* ((_%g114030114038%_ (gx#syntax-e _%rest114029%_))
                 (_%else114032114046%_ (lambda () _%rest114029%_))
                 (_%K114034114052%_
                  (lambda (_%rest114049%_ _%hd114050%_)
                    (if (gx#stx-null? _%rest114049%_)
                        _%hd114050%_
                        (_%lp114027%_ _%rest114049%_)))))
            (if (##pair? _%g114030114038%_)
                (let ((_%hd114035114055%_ (##car _%g114030114038%_))
                      (_%tl114036114057%_ (##cdr _%g114030114038%_)))
                  (let* ((_%hd114060%_ _%hd114035114055%_)
                         (_%rest114062%_ _%tl114036114057%_))
                    (_%K114034114052%_ _%rest114062%_ _%hd114060%_)))
                (_%else114032114046%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113996%_)
        (let _%lp113998%_ ((_%hd114000%_ _%stx113996%_))
          (let* ((_%g114001114008%_ (gx#syntax-e _%hd114000%_))
                 (_%E114003114012%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g114001114008%_
                           '([_ . rest]))
                    '#!void))
                 (_%K114004114017%_
                  (lambda (_%rest114015%_)
                    (if (gx#stx-pair? _%rest114015%_)
                        (_%lp113998%_ _%rest114015%_)
                        _%hd114000%_))))
            (if (##pair? _%g114001114008%_)
                (let* ((_%tl114006114020%_ (##cdr _%g114001114008%_))
                       (_%rest114023%_ _%tl114006114020%_))
                  (_%K114004114017%_ _%rest114023%_))
                (_%E114003114012%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113965%_ _%k113966%_)
        (let _%lp113968%_ ((_%rest113970%_ _%stx113965%_)
                           (_%k113971%_ _%k113966%_))
          (if (fxpositive? _%k113971%_)
              (let* ((_%g113972113979%_ (gx#syntax-e _%rest113970%_))
                     (_%E113974113983%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113972113979%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113975113988%_
                      (lambda (_%rest113986%_)
                        (_%lp113968%_ _%rest113986%_ (##fx- _%k113971%_ '1)))))
                (if (##pair? _%g113972113979%_)
                    (let* ((_%tl113977113991%_ (##cdr _%g113972113979%_))
                           (_%rest113994%_ _%tl113977113991%_))
                      (_%K113975113988%_ _%rest113994%_))
                    (_%E113974113983%_)))
              _%rest113970%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113962%_ _%k113963%_)
        (gx#stx-car (gx#stx-list-tail _%stx113962%_ _%k113963%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113874%_ _%key?113875%_)
        (if (procedure? _%key?113875%_)
            '#!void
            (error '"expected procedure" _%key?113875%_))
        (let _%lp113877%_ ((_%rest113879%_ _%stx113874%_))
          (let* ((_%g113880113890%_ (gx#stx-e _%rest113879%_))
                 (_%else113883113898%_ (lambda () '#f)))
            (let ((_%K113886113940%_
                   (lambda (_%rest113909%_ _%hd113910%_)
                     (if (_%key?113875%_ _%hd113910%_)
                         (let* ((_%g113911113919%_ (gx#stx-e _%rest113909%_))
                                (_%else113913113927%_ (lambda () '#f))
                                (_%K113915113932%_
                                 (lambda (_%rest113930%_)
                                   (_%lp113877%_ _%rest113930%_))))
                           (if (##pair? _%g113911113919%_)
                               (let* ((_%tl113917113935%_
                                       (##cdr _%g113911113919%_))
                                      (_%rest113938%_ _%tl113917113935%_))
                                 (_%lp113877%_ _%rest113938%_))
                               (_%else113913113927%_)))
                         '#f)))
                  (_%K113885113903%_ (lambda () '#t)))
              (let ((_%try-match113882113906%_
                     (lambda ()
                       (if (##null? _%g113880113890%_)
                           (_%K113885113903%_)
                           (_%else113883113898%_)))))
                (if (##pair? _%g113880113890%_)
                    (let ((_%tl113888113945%_ (##cdr _%g113880113890%_))
                          (_%hd113887113943%_ (##car _%g113880113890%_)))
                      (let ((_%hd113948%_ _%hd113887113943%_)
                            (_%rest113950%_ _%tl113888113945%_))
                        (_%K113886113940%_ _%rest113950%_ _%hd113948%_)))
                    (_%try-match113882113906%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113955%_)
        (let ((_%key?113957%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113955%_ _%key?113957%_))))
    (define gx#stx-plist?
      (lambda _g115111_
        (let ((_g115110_ (##length _g115111_)))
          (cond ((##fx= _g115110_ 1)
                 (apply (lambda (_%stx113955%_)
                          (gx#stx-plist?__0 _%stx113955%_))
                        _g115111_))
                ((##fx= _g115110_ 2)
                 (apply (lambda (_%stx113959%_ _%key?113960%_)
                          (gx#stx-plist?__% _%stx113959%_ _%key?113960%_))
                        _g115111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g115111_))))))
    (define gx#stx-getq__%
      (lambda (_%key113792%_ _%stx113793%_ _%key=?113794%_)
        (if (procedure? _%key=?113794%_)
            '#!void
            (error '"expected procedure" _%key=?113794%_))
        (let _%lp113796%_ ((_%rest113798%_ _%stx113793%_))
          (let* ((_%g113799113807%_ (gx#syntax-e _%rest113798%_))
                 (_%else113801113815%_ (lambda () '#f))
                 (_%K113803113849%_
                  (lambda (_%rest113818%_ _%hd113819%_)
                    (let* ((_%g113820113827%_ (gx#syntax-e _%rest113818%_))
                           (_%E113822113831%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113820113827%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113823113837%_
                            (lambda (_%rest113834%_ _%val113835%_)
                              (if (_%key=?113794%_ _%hd113819%_ _%key113792%_)
                                  _%val113835%_
                                  (_%lp113796%_ _%rest113834%_)))))
                      (if (##pair? _%g113820113827%_)
                          (let ((_%hd113824113840%_ (##car _%g113820113827%_))
                                (_%tl113825113842%_ (##cdr _%g113820113827%_)))
                            (let* ((_%val113845%_ _%hd113824113840%_)
                                   (_%rest113847%_ _%tl113825113842%_))
                              (_%K113823113837%_
                               _%rest113847%_
                               _%val113845%_)))
                          (_%E113822113831%_))))))
            (if (##pair? _%g113799113807%_)
                (let ((_%hd113804113852%_ (##car _%g113799113807%_))
                      (_%tl113805113854%_ (##cdr _%g113799113807%_)))
                  (let* ((_%hd113857%_ _%hd113804113852%_)
                         (_%rest113859%_ _%tl113805113854%_))
                    (_%K113803113849%_ _%rest113859%_ _%hd113857%_)))
                (_%else113801113815%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113864%_ _%stx113865%_)
        (let ((_%key=?113867%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113864%_ _%stx113865%_ _%key=?113867%_))))
    (define gx#stx-getq
      (lambda _g115113_
        (let ((_g115112_ (##length _g115113_)))
          (cond ((##fx= _g115112_ 2)
                 (apply (lambda (_%key113864%_ _%stx113865%_)
                          (gx#stx-getq__0 _%key113864%_ _%stx113865%_))
                        _g115113_))
                ((##fx= _g115112_ 3)
                 (apply (lambda (_%key113869%_ _%stx113870%_ _%key=?113871%_)
                          (gx#stx-getq__%
                           _%key113869%_
                           _%stx113870%_
                           _%key=?113871%_))
                        _g115113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g115113_))))))))
