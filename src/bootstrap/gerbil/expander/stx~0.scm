(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1712161240)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args114415%_
        (apply make-instance gx#identifier-wrap::t _%$args114415%_)))
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
      (make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args114412%_
        (apply make-instance gx#syntax-wrap::t _%$args114412%_)))
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
      (make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args114409%_
        (apply make-instance gx#syntax-quote::t _%$args114409%_)))
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
      (lambda (_%stx114407%_) (symbol? (gx#stx-e _%stx114407%_))))
    (define gx#identifier-quote?
      (lambda (_%stx114405%_)
        (if (##structure-direct-instance-of? _%stx114405%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx114405%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx114400%_)
        (if (##structure-direct-instance-of? _%stx114400%_ 'gx#syntax-quote::t)
            (let () '#t)
            (if (##structure-direct-instance-of?
                 _%stx114400%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax?
                   (##unchecked-structure-ref _%stx114400%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx114395%_)
        (if (##structure-direct-instance-of? _%stx114395%_ 'gx#syntax-quote::t)
            (let () _%stx114395%_)
            (if (##structure-direct-instance-of?
                 _%stx114395%_
                 'gx#syntax-wrap::t)
                (let ()
                  (gx#sealed-syntax-unwrap
                   (##unchecked-structure-ref _%stx114395%_ '1 '#f '#f)))
                (let () '#f)))))
    (define gx#syntax-e
      (lambda (_%stx114369%_)
        (if (##structure-direct-instance-of? _%stx114369%_ 'gx#syntax-wrap::t)
            (let _%lp114372%_ ((_%e114374%_
                                (##unchecked-structure-ref
                                 _%stx114369%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks114375%_
                                (cons (##unchecked-structure-ref
                                       _%stx114369%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e114374%_)
                  (let ((_%$e114378%_
                         (##type-id (##structure-type _%e114374%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e114378%_)
                        (_%lp114372%_
                         (##unchecked-structure-ref _%e114374%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e114374%_ '3 '#f '#f)
                          _%marks114375%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e114378%_)
                                (eq? 'gx#identifier-wrap::t _%$e114378%_))
                            (##unchecked-structure-ref _%e114374%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e114378%_)
                                (_%lp114372%_
                                 (##unchecked-structure-ref
                                  _%e114374%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks114375%_)
                                _%e114374%_))))
                  (if (null? _%marks114375%_)
                      (let () _%e114374%_)
                      (if (pair? _%e114374%_)
                          (let ()
                            (cons (gx#stx-wrap
                                   (car _%e114374%_)
                                   _%marks114375%_)
                                  (gx#stx-wrap
                                   (cdr _%e114374%_)
                                   _%marks114375%_)))
                          (if (vector? _%e114374%_)
                              (let ()
                                (vector-map
                                 (lambda (_%g114386114388%_)
                                   (gx#stx-wrap
                                    _%g114386114388%_
                                    _%marks114375%_))
                                 _%e114374%_))
                              (if (box? _%e114374%_)
                                  (let ()
                                    (box (gx#stx-wrap
                                          (unbox _%e114374%_)
                                          _%marks114375%_)))
                                  (let () _%e114374%_)))))))
            (if (##structure-instance-of? _%stx114369%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114369%_ '1 '#f '#f))
                (let () _%stx114369%_)))))
    (define gx#syntax->datum
      (lambda (_%stx114362%_)
        (if (##structure-instance-of? _%stx114362%_ 'gerbil#AST::t)
            (let ()
              (gx#syntax->datum
               (##unchecked-structure-ref _%stx114362%_ '1 '#f '#f)))
            (if (pair? _%stx114362%_)
                (let ()
                  (cons (gx#syntax->datum (car _%stx114362%_))
                        (gx#syntax->datum (cdr _%stx114362%_))))
                (if (vector? _%stx114362%_)
                    (let () (vector-map gx#syntax->datum _%stx114362%_))
                    (if (box? _%stx114362%_)
                        (let () (box (gx#syntax->datum (unbox _%stx114362%_))))
                        (let () _%stx114362%_)))))))
    (define gx#datum->syntax__%
      (lambda (_%stx114296%_ _%datum114297%_ _%src114298%_ _%quote?114299%_)
        (letrec ((_%wrap-datum114301%_
                  (lambda (_%e114334%_ _%marks114335%_)
                    (_%wrap-inner114303%_
                     _%e114334%_
                     (lambda (_%g114336114338%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g114336114338%_
                        _%src114298%_
                        _%marks114335%_)))))
                 (_%wrap-quote114302%_
                  (lambda (_%e114326%_ _%ctx114327%_ _%marks114328%_)
                    (_%wrap-inner114303%_
                     _%e114326%_
                     (lambda (_%g114329114331%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g114329114331%_
                        _%src114298%_
                        _%ctx114327%_
                        _%marks114328%_)))))
                 (_%wrap-inner114303%_
                  (lambda (_%e114314%_ _%wrap-e114315%_)
                    (let _%recur114317%_ ((_%e114319%_ _%e114314%_))
                      (if (symbol? _%e114319%_)
                          (let () (_%wrap-e114315%_ _%e114319%_))
                          (if (pair? _%e114319%_)
                              (let ()
                                (cons (_%recur114317%_ (car _%e114319%_))
                                      (_%recur114317%_ (cdr _%e114319%_))))
                              (if (vector? _%e114319%_)
                                  (let ()
                                    (vector-map _%recur114317%_ _%e114319%_))
                                  (if (box? _%e114319%_)
                                      (let ()
                                        (box (_%recur114317%_
                                              (unbox _%e114319%_))))
                                      (let () _%e114319%_))))))))
                 (_%wrap-outer114304%_
                  (lambda (_%e114312%_)
                    (if (##structure-instance-of? _%e114312%_ 'gerbil#AST::t)
                        _%e114312%_
                        (##structure gx#AST::t _%e114312%_ _%src114298%_)))))
          (if (##structure-instance-of? _%datum114297%_ 'gerbil#AST::t)
              (let () _%datum114297%_)
              (if (not _%stx114296%_)
                  (let ()
                    (##structure gx#AST::t _%datum114297%_ _%src114298%_))
                  (if (gx#identifier? _%stx114296%_)
                      (let ((_%stx114309%_ (gx#stx-unwrap__0 _%stx114296%_)))
                        (_%wrap-outer114304%_
                         (if (##structure-direct-instance-of?
                              _%stx114309%_
                              'gx#syntax-quote::t)
                             (if _%quote?114299%_
                                 (_%wrap-quote114302%_
                                  _%datum114297%_
                                  (##unchecked-structure-ref
                                   _%stx114309%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx114309%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum114301%_
                                  _%datum114297%_
                                  (##unchecked-structure-ref
                                   _%stx114309%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum114301%_
                              _%datum114297%_
                              (##unchecked-structure-ref
                               _%stx114309%_
                               '3
                               '#f
                               '#f)))))
                      (let ()
                        (error '"Bad template syntax; expected identifier"
                               _%stx114296%_))))))))
    (define gx#datum->syntax__0
      (lambda (_%stx114344%_ _%datum114345%_)
        (let* ((_%src114347%_ '#f) (_%quote?114349%_ '#t))
          (gx#datum->syntax__%
           _%stx114344%_
           _%datum114345%_
           _%src114347%_
           _%quote?114349%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx114351%_ _%datum114352%_ _%src114353%_)
        (let ((_%quote?114355%_ '#t))
          (gx#datum->syntax__%
           _%stx114351%_
           _%datum114352%_
           _%src114353%_
           _%quote?114355%_))))
    (define gx#datum->syntax
      (lambda _g114496_
        (let ((_g114495_ (##length _g114496_)))
          (cond ((##fx= _g114495_ 2)
                 (apply (lambda (_%stx114344%_ _%datum114345%_)
                          (gx#datum->syntax__0 _%stx114344%_ _%datum114345%_))
                        _g114496_))
                ((##fx= _g114495_ 3)
                 (apply (lambda (_%stx114351%_ _%datum114352%_ _%src114353%_)
                          (gx#datum->syntax__1
                           _%stx114351%_
                           _%datum114352%_
                           _%src114353%_))
                        _g114496_))
                ((##fx= _g114495_ 4)
                 (apply (lambda (_%stx114357%_
                                 _%datum114358%_
                                 _%src114359%_
                                 _%quote?114360%_)
                          (gx#datum->syntax__%
                           _%stx114357%_
                           _%datum114358%_
                           _%src114359%_
                           _%quote?114360%_))
                        _g114496_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g114496_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx114262%_ _%marks114263%_)
        (let _%lp114265%_ ((_%e114267%_ _%stx114262%_)
                           (_%marks114268%_ _%marks114263%_)
                           (_%src114269%_ (gx#stx-source _%stx114262%_)))
          (if (##structure-direct-instance-of? _%e114267%_ 'gx#syntax-wrap::t)
              (let ()
                (_%lp114265%_
                 (##unchecked-structure-ref _%e114267%_ '1 '#f '#f)
                 (gx#apply-mark
                  (##unchecked-structure-ref _%e114267%_ '3 '#f '#f)
                  _%marks114268%_)
                 (##unchecked-structure-ref _%e114267%_ '2 '#f '#f)))
              (if (##structure-direct-instance-of?
                   _%e114267%_
                   'gx#identifier-wrap::t)
                  (let ()
                    (if (null? _%marks114268%_)
                        _%e114267%_
                        (##structure
                         gx#identifier-wrap::t
                         (##unchecked-structure-ref _%e114267%_ '1 '#f '#f)
                         (##unchecked-structure-ref _%e114267%_ '2 '#f '#f)
                         (__foldl1
                          gx#apply-mark
                          (##unchecked-structure-ref _%e114267%_ '3 '#f '#f)
                          _%marks114268%_))))
                  (if (##structure-direct-instance-of?
                       _%e114267%_
                       'gx#syntax-quote::t)
                      (let () _%e114267%_)
                      (if (##structure-instance-of? _%e114267%_ 'gerbil#AST::t)
                          (let ()
                            (_%lp114265%_
                             (##unchecked-structure-ref _%e114267%_ '1 '#f '#f)
                             _%marks114268%_
                             (##unchecked-structure-ref
                              _%e114267%_
                              '2
                              '#f
                              '#f)))
                          (if (symbol? _%e114267%_)
                              (let ()
                                (##structure
                                 gx#identifier-wrap::t
                                 _%e114267%_
                                 _%src114269%_
                                 (reverse _%marks114268%_)))
                              (if (null? _%marks114268%_)
                                  (let () _%e114267%_)
                                  (if (pair? _%e114267%_)
                                      (let ()
                                        (cons (gx#stx-wrap
                                               (car _%e114267%_)
                                               _%marks114268%_)
                                              (gx#stx-wrap
                                               (cdr _%e114267%_)
                                               _%marks114268%_)))
                                      (if (vector? _%e114267%_)
                                          (let ()
                                            (vector-map
                                             (lambda (_%g114278114280%_)
                                               (gx#stx-wrap
                                                _%g114278114280%_
                                                _%marks114268%_))
                                             _%e114267%_))
                                          (if (box? _%e114267%_)
                                              (let ()
                                                (box (gx#stx-wrap
                                                      (unbox _%e114267%_)
                                                      _%marks114268%_)))
                                              (let () _%e114267%_)))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx114288%_)
        (let ((_%marks114290%_ '()))
          (gx#stx-unwrap__% _%stx114288%_ _%marks114290%_))))
    (define gx#stx-unwrap
      (lambda _g114498_
        (let ((_g114497_ (##length _g114498_)))
          (cond ((##fx= _g114497_ 1)
                 (apply (lambda (_%stx114288%_)
                          (gx#stx-unwrap__0 _%stx114288%_))
                        _g114498_))
                ((##fx= _g114497_ 2)
                 (apply (lambda (_%stx114292%_ _%marks114293%_)
                          (gx#stx-unwrap__% _%stx114292%_ _%marks114293%_))
                        _g114498_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g114498_))))))
    (define gx#stx-wrap
      (lambda (_%stx114255%_ _%marks114256%_)
        (__foldl1
         (lambda (_%mark114258%_ _%stx114259%_)
           (gx#stx-apply-mark _%stx114259%_ _%mark114258%_))
         _%stx114255%_
         _%marks114256%_)))
    (define gx#stx-rewrap
      (lambda (_%stx114249%_ _%marks114250%_)
        (__foldr1
         (lambda (_%mark114252%_ _%stx114253%_)
           (gx#stx-apply-mark _%stx114253%_ _%mark114252%_))
         _%stx114249%_
         _%marks114250%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx114243%_ _%mark114244%_)
        (if (##structure-direct-instance-of? _%stx114243%_ 'gx#syntax-quote::t)
            (let () _%stx114243%_)
            (if (and (##structure-direct-instance-of?
                      _%stx114243%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark114244%_
                          (##unchecked-structure-ref
                           _%stx114243%_
                           '3
                           '#f
                           '#f)))
                (let () (##unchecked-structure-ref _%stx114243%_ '1 '#f '#f))
                (let ()
                  (##structure
                   gx#syntax-wrap::t
                   _%stx114243%_
                   (gx#stx-source _%stx114243%_)
                   _%mark114244%_))))))
    (define gx#apply-mark
      (lambda (_%mark114207%_ _%marks114208%_)
        (let* ((_%marks114209114217%_ _%marks114208%_)
               (_%else114211114225%_
                (lambda () (cons _%mark114207%_ _%marks114208%_)))
               (_%K114213114231%_
                (lambda (_%rest114228%_ _%hd114229%_)
                  (if (eq? _%mark114207%_ _%hd114229%_)
                      _%rest114228%_
                      (cons _%mark114207%_ _%marks114208%_)))))
          (if (##pair? _%marks114209114217%_)
              (let ((_%hd114214114234%_ (##car _%marks114209114217%_))
                    (_%tl114215114236%_ (##cdr _%marks114209114217%_)))
                (let* ((_%hd114239%_ _%hd114214114234%_)
                       (_%rest114241%_ _%tl114215114236%_))
                  (_%K114213114231%_ _%rest114241%_ _%hd114239%_)))
              (_%else114211114225%_)))))
    (define gx#stx-e
      (lambda (_%stx114202%_)
        (if (##structure-direct-instance-of? _%stx114202%_ 'gx#syntax-wrap::t)
            (let ()
              (gx#stx-e (##unchecked-structure-ref _%stx114202%_ '1 '#f '#f)))
            (if (##structure-instance-of? _%stx114202%_ 'gerbil#AST::t)
                (let () (##unchecked-structure-ref _%stx114202%_ '1 '#f '#f))
                (let () _%stx114202%_)))))
    (define gx#stx-source
      (lambda (_%stx114200%_)
        (if (##structure-instance-of? _%stx114200%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx114200%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx114194%_ _%src114195%_)
        (if (or (##structure-instance-of? _%stx114194%_ 'gerbil#AST::t)
                (not _%src114195%_))
            _%stx114194%_
            (##structure gx#AST::t _%stx114194%_ _%src114195%_))))
    (define gx#stx-datum?
      (lambda (_%stx114192%_) (gx#self-quoting? (gx#stx-e _%stx114192%_))))
    (define gx#self-quoting?
      (lambda (_%x114175%_)
        (let ((_%$e114177%_ (immediate? _%x114175%_)))
          (if _%$e114177%_
              _%$e114177%_
              (let ((_%$e114180%_ (number? _%x114175%_)))
                (if _%$e114180%_
                    _%$e114180%_
                    (let ((_%$e114183%_ (keyword? _%x114175%_)))
                      (if _%$e114183%_
                          _%$e114183%_
                          (let ((_%$e114186%_ (string? _%x114175%_)))
                            (if _%$e114186%_
                                _%$e114186%_
                                (let ((_%$e114189%_ (vector? _%x114175%_)))
                                  (if _%$e114189%_
                                      _%$e114189%_
                                      (u8vector? _%x114175%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e114173%_) (boolean? (gx#stx-e _%e114173%_))))
    (define gx#stx-keyword?
      (lambda (_%e114171%_) (keyword? (gx#stx-e _%e114171%_))))
    (define gx#stx-char? (lambda (_%e114169%_) (char? (gx#stx-e _%e114169%_))))
    (define gx#stx-number?
      (lambda (_%e114167%_) (number? (gx#stx-e _%e114167%_))))
    (define gx#stx-fixnum?
      (lambda (_%e114165%_) (fixnum? (gx#stx-e _%e114165%_))))
    (define gx#stx-string?
      (lambda (_%e114163%_) (string? (gx#stx-e _%e114163%_))))
    (define gx#stx-null? (lambda (_%e114161%_) (null? (gx#stx-e _%e114161%_))))
    (define gx#stx-pair? (lambda (_%e114159%_) (pair? (gx#stx-e _%e114159%_))))
    (define gx#stx-list?
      (lambda (_%e114121%_)
        (let* ((_%g114122114131%_ (gx#stx-e _%e114121%_))
               (_%E114125114135%_
                (lambda ()
                  (error '"No clause matching"
                         _%g114122114131%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K114127114151%_
                 (lambda (_%rest114149%_) (gx#stx-list? _%rest114149%_)))
                (_%K114126114141%_
                 (lambda (_%tail114139%_) (null? _%tail114139%_))))
            (if (##pair? _%g114122114131%_)
                (let* ((_%tl114129114154%_ (##cdr _%g114122114131%_))
                       (_%rest114157%_ _%tl114129114154%_))
                  (gx#stx-list? _%rest114157%_))
                (let ((_%tail114144%_ _%g114122114131%_))
                  (null? _%tail114144%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e114114%_)
        (let* ((_%e114116%_ (gx#stx-e _%e114114%_))
               (_%$e114118%_ (pair? _%e114116%_)))
          (if _%$e114118%_ _%$e114118%_ (null? _%e114116%_)))))
    (define gx#stx-vector?
      (lambda (_%e114112%_) (vector? (gx#stx-e _%e114112%_))))
    (define gx#stx-box? (lambda (_%e114110%_) (box? (gx#stx-e _%e114110%_))))
    (define gx#stx-eq?
      (lambda (_%x114107%_ _%y114108%_)
        (eq? (gx#stx-e _%x114107%_) (gx#stx-e _%y114108%_))))
    (define gx#stx-eqv?
      (lambda (_%x114104%_ _%y114105%_)
        (eqv? (gx#stx-e _%x114104%_) (gx#stx-e _%y114105%_))))
    (define gx#stx-equal?
      (lambda (_%x114101%_ _%y114102%_)
        (equal? (gx#stx-e _%x114101%_) (gx#stx-e _%y114102%_))))
    (define gx#stx-false? (lambda (_%x114099%_) (not (gx#stx-e _%x114099%_))))
    (define gx#stx-identifier
      (lambda (_%template114096%_ . _%args114097%_)
        (gx#datum->syntax__1
         _%template114096%_
         (apply make-symbol (gx#syntax->datum _%args114097%_))
         (gx#stx-source _%template114096%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx114094%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx114094%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx114089%_)
        (if (##structure-direct-instance-of?
             _%stx114089%_
             'gx#identifier-wrap::t)
            (let () (##unchecked-structure-ref _%stx114089%_ '3 '#f '#f))
            (if (##structure-direct-instance-of?
                 _%stx114089%_
                 'gx#syntax-quote::t)
                (let () (##unchecked-structure-ref _%stx114089%_ '4 '#f '#f))
                (let ()
                  (error '"Bad wrap; expected unwrapped identifier"
                         _%stx114089%_))))))
    (define gx#stx-identifier-context
      (lambda (_%stx114085%_)
        (let ((_%stx114087%_ (gx#stx-unwrap__0 _%stx114085%_)))
          (if (gx#identifier-quote? _%stx114087%_)
              (##unchecked-structure-ref _%stx114087%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx114040%_)
        (let* ((_%g114041114051%_ (gx#stx-e _%stx114040%_))
               (_%else114044114059%_ (lambda () '#f)))
          (let ((_%K114047114073%_
                 (lambda (_%rest114070%_ _%hd114071%_)
                   (if (gx#identifier? _%hd114071%_)
                       (gx#identifier-list? _%rest114070%_)
                       '#f)))
                (_%K114046114064%_ (lambda () '#t)))
            (let ((_%try-match114043114067%_
                   (lambda ()
                     (if (##null? _%g114041114051%_)
                         (_%K114046114064%_)
                         (_%else114044114059%_)))))
              (if (##pair? _%g114041114051%_)
                  (let ((_%tl114049114078%_ (##cdr _%g114041114051%_))
                        (_%hd114048114076%_ (##car _%g114041114051%_)))
                    (let ((_%hd114081%_ _%hd114048114076%_)
                          (_%rest114083%_ _%tl114049114078%_))
                      (_%K114047114073%_ _%rest114083%_ _%hd114081%_)))
                  (_%try-match114043114067%_)))))))
    (define gx#genident__%
      (lambda (_%e114017%_ _%src114018%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e114020%_ (gx#stx-e _%e114017%_)))
                   (if (interned-symbol? _%e114020%_) _%e114020%_ 'g)))
         (let ((_%$e114022%_ (gx#stx-source _%e114017%_)))
           (if _%$e114022%_ _%$e114022%_ _%src114018%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e114029%_ 'g) (_%src114031%_ '#f))
          (gx#genident__% _%e114029%_ _%src114031%_))))
    (define gx#genident__1
      (lambda (_%e114033%_)
        (let ((_%src114035%_ '#f))
          (gx#genident__% _%e114033%_ _%src114035%_))))
    (define gx#genident
      (lambda _g114500_
        (let ((_g114499_ (##length _g114500_)))
          (cond ((##fx= _g114499_ 0)
                 (apply (lambda () (gx#genident__0)) _g114500_))
                ((##fx= _g114499_ 1)
                 (apply (lambda (_%e114033%_) (gx#genident__1 _%e114033%_))
                        _g114500_))
                ((##fx= _g114499_ 2)
                 (apply (lambda (_%e114037%_ _%src114038%_)
                          (gx#genident__% _%e114037%_ _%src114038%_))
                        _g114500_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g114500_))))))
    (define gx#gentemps
      (lambda (_%stx-lst114014%_) (gx#stx-map1 gx#genident _%stx-lst114014%_)))
    (define gx#syntax->list
      (lambda (_%stx114012%_) (gx#stx-map1 values _%stx114012%_)))
    (define gx#stx-car
      (lambda (_%stx114009%_)
        (declare (safe))
        (car (let () (declare (not safe)) (gx#syntax-e _%stx114009%_)))))
    (define gx#stx-cdr
      (lambda (_%stx114006%_)
        (declare (safe))
        (cdr (let () (declare (not safe)) (gx#syntax-e _%stx114006%_)))))
    (define gx#stx-length
      (lambda (_%stx113971%_)
        (let _%lp113973%_ ((_%rest113975%_ _%stx113971%_) (_%n113976%_ '0))
          (let* ((_%g113977113985%_ (gx#stx-e _%rest113975%_))
                 (_%else113979113993%_ (lambda () _%n113976%_))
                 (_%K113981113998%_
                  (lambda (_%rest113996%_)
                    (_%lp113973%_ _%rest113996%_ (##fx+ _%n113976%_ '1)))))
            (if (##pair? _%g113977113985%_)
                (let* ((_%tl113983114001%_ (##cdr _%g113977113985%_))
                       (_%rest114004%_ _%tl113983114001%_))
                  (_%K113981113998%_ _%rest114004%_))
                (_%else113979113993%_))))))
    (define gx#stx-for-each
      (lambda _g114502_
        (let ((_g114501_ (##length _g114502_)))
          (cond ((##fx= _g114501_ 2)
                 (apply (lambda (_%f113964%_ _%stx113965%_)
                          (gx#stx-for-each1 _%f113964%_ _%stx113965%_))
                        _g114502_))
                ((##fx= _g114501_ 3)
                 (apply (lambda (_%f113967%_ _%xstx113968%_ _%ystx113969%_)
                          (gx#stx-for-each2
                           _%f113967%_
                           _%xstx113968%_
                           _%ystx113969%_))
                        _g114502_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g114502_))))))
    (define gx#stx-for-each1
      (lambda (_%f113914%_ _%stx113915%_)
        (if (procedure? _%f113914%_)
            '#!void
            (error '"expected procedure" _%f113914%_))
        (let _%lp113917%_ ((_%rest113919%_ _%stx113915%_))
          (let* ((_%g113920113930%_ (gx#syntax-e _%rest113919%_))
                 (_%else113923113938%_
                  (lambda () (_%f113914%_ _%rest113919%_))))
            (let ((_%K113926113952%_
                   (lambda (_%rest113949%_ _%hd113950%_)
                     (_%f113914%_ _%hd113950%_)
                     (_%lp113917%_ _%rest113949%_)))
                  (_%K113925113943%_ (lambda () '#!void)))
              (let ((_%try-match113922113946%_
                     (lambda ()
                       (if (##null? _%g113920113930%_)
                           (_%K113925113943%_)
                           (_%else113923113938%_)))))
                (if (##pair? _%g113920113930%_)
                    (let ((_%tl113928113957%_ (##cdr _%g113920113930%_))
                          (_%hd113927113955%_ (##car _%g113920113930%_)))
                      (let ((_%hd113960%_ _%hd113927113955%_)
                            (_%rest113962%_ _%tl113928113957%_))
                        (_%K113926113952%_ _%rest113962%_ _%hd113960%_)))
                    (_%try-match113922113946%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f113819%_ _%xstx113820%_ _%ystx113821%_)
        (if (procedure? _%f113819%_)
            '#!void
            (error '"expected procedure" _%f113819%_))
        (let _%lp113823%_ ((_%xrest113825%_ _%xstx113820%_)
                           (_%yrest113826%_ _%ystx113821%_))
          (let* ((_%g113827113837%_ (gx#syntax-e _%xrest113825%_))
                 (_%else113830113845%_ (lambda () '#!void)))
            (let ((_%K113833113902%_
                   (lambda (_%xrest113871%_ _%xhd113872%_)
                     (let* ((_%g113873113880%_ (gx#syntax-e _%yrest113826%_))
                            (_%E113875113884%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113873113880%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113876113890%_
                             (lambda (_%yrest113887%_ _%yhd113888%_)
                               (_%f113819%_ _%xhd113872%_ _%yhd113888%_)
                               (_%lp113823%_
                                _%xrest113871%_
                                _%yrest113887%_))))
                       (if (##pair? _%g113873113880%_)
                           (let ((_%hd113877113893%_ (##car _%g113873113880%_))
                                 (_%tl113878113895%_
                                  (##cdr _%g113873113880%_)))
                             (let* ((_%yhd113898%_ _%hd113877113893%_)
                                    (_%yrest113900%_ _%tl113878113895%_))
                               (_%K113876113890%_
                                _%yrest113900%_
                                _%yhd113898%_)))
                           (_%E113875113884%_)))))
                  (_%K113832113865%_
                   (lambda ()
                     (let* ((_%yrest113849113854%_ _%yrest113826%_)
                            (_%E113851113858%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113849113854%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113852113862%_
                             (lambda ()
                               (_%f113819%_ _%xrest113825%_ _%yrest113826%_))))
                       (if (not (gx#stx-null? _%yrest113849113854%_))
                           (_%K113852113862%_)
                           (_%E113851113858%_))))))
              (let ((_%try-match113829113868%_
                     (lambda ()
                       (if (not (null? _%g113827113837%_))
                           (_%K113832113865%_)
                           (_%else113830113845%_)))))
                (if (##pair? _%g113827113837%_)
                    (let ((_%tl113835113907%_ (##cdr _%g113827113837%_))
                          (_%hd113834113905%_ (##car _%g113827113837%_)))
                      (let ((_%xhd113910%_ _%hd113834113905%_)
                            (_%xrest113912%_ _%tl113835113907%_))
                        (_%K113833113902%_ _%xrest113912%_ _%xhd113910%_)))
                    (_%try-match113829113868%_))))))))
    (define gx#stx-map
      (lambda _g114504_
        (let ((_g114503_ (##length _g114504_)))
          (cond ((##fx= _g114503_ 2)
                 (apply (lambda (_%f113812%_ _%stx113813%_)
                          (gx#stx-map1 _%f113812%_ _%stx113813%_))
                        _g114504_))
                ((##fx= _g114503_ 3)
                 (apply (lambda (_%f113815%_ _%xstx113816%_ _%ystx113817%_)
                          (gx#stx-map2
                           _%f113815%_
                           _%xstx113816%_
                           _%ystx113817%_))
                        _g114504_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g114504_))))))
    (define gx#stx-map1
      (lambda (_%f113762%_ _%stx113763%_)
        (if (procedure? _%f113762%_)
            '#!void
            (error '"expected procedure" _%f113762%_))
        (let _%recur113765%_ ((_%rest113767%_ _%stx113763%_))
          (let* ((_%g113768113778%_ (gx#syntax-e _%rest113767%_))
                 (_%else113771113786%_
                  (lambda () (_%f113762%_ _%rest113767%_))))
            (let ((_%K113774113800%_
                   (lambda (_%rest113797%_ _%hd113798%_)
                     (cons (_%f113762%_ _%hd113798%_)
                           (_%recur113765%_ _%rest113797%_))))
                  (_%K113773113791%_ (lambda () '())))
              (let ((_%try-match113770113794%_
                     (lambda ()
                       (if (##null? _%g113768113778%_)
                           (_%K113773113791%_)
                           (_%else113771113786%_)))))
                (if (##pair? _%g113768113778%_)
                    (let ((_%tl113776113805%_ (##cdr _%g113768113778%_))
                          (_%hd113775113803%_ (##car _%g113768113778%_)))
                      (let ((_%hd113808%_ _%hd113775113803%_)
                            (_%rest113810%_ _%tl113776113805%_))
                        (_%K113774113800%_ _%rest113810%_ _%hd113808%_)))
                    (_%try-match113770113794%_))))))))
    (define gx#stx-map2
      (lambda (_%f113667%_ _%xstx113668%_ _%ystx113669%_)
        (if (procedure? _%f113667%_)
            '#!void
            (error '"expected procedure" _%f113667%_))
        (let _%recur113671%_ ((_%xrest113673%_ _%xstx113668%_)
                              (_%yrest113674%_ _%ystx113669%_))
          (let* ((_%g113675113685%_ (gx#syntax-e _%xrest113673%_))
                 (_%else113678113693%_ (lambda () '())))
            (let ((_%K113681113750%_
                   (lambda (_%xrest113719%_ _%xhd113720%_)
                     (let* ((_%g113721113728%_ (gx#syntax-e _%yrest113674%_))
                            (_%E113723113732%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g113721113728%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K113724113738%_
                             (lambda (_%yrest113735%_ _%yhd113736%_)
                               (cons (_%f113667%_ _%xhd113720%_ _%yhd113736%_)
                                     (_%recur113671%_
                                      _%xrest113719%_
                                      _%yrest113735%_)))))
                       (if (##pair? _%g113721113728%_)
                           (let ((_%hd113725113741%_ (##car _%g113721113728%_))
                                 (_%tl113726113743%_
                                  (##cdr _%g113721113728%_)))
                             (let* ((_%yhd113746%_ _%hd113725113741%_)
                                    (_%yrest113748%_ _%tl113726113743%_))
                               (_%K113724113738%_
                                _%yrest113748%_
                                _%yhd113746%_)))
                           (_%E113723113732%_)))))
                  (_%K113680113713%_
                   (lambda ()
                     (let* ((_%yrest113697113702%_ _%yrest113674%_)
                            (_%E113699113706%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest113697113702%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K113700113710%_
                             (lambda ()
                               (_%f113667%_ _%xrest113673%_ _%yrest113674%_))))
                       (if (not (gx#stx-null? _%yrest113697113702%_))
                           (_%K113700113710%_)
                           (_%E113699113706%_))))))
              (let ((_%try-match113677113716%_
                     (lambda ()
                       (if (not (null? _%g113675113685%_))
                           (_%K113680113713%_)
                           (_%else113678113693%_)))))
                (if (##pair? _%g113675113685%_)
                    (let ((_%tl113683113755%_ (##cdr _%g113675113685%_))
                          (_%hd113682113753%_ (##car _%g113675113685%_)))
                      (let ((_%xhd113758%_ _%hd113682113753%_)
                            (_%xrest113760%_ _%tl113683113755%_))
                        (_%K113681113750%_ _%xrest113760%_ _%xhd113758%_)))
                    (_%try-match113677113716%_))))))))
    (define gx#stx-andmap
      (lambda (_%f113617%_ _%stx113618%_)
        (if (procedure? _%f113617%_)
            '#!void
            (error '"expected procedure" _%f113617%_))
        (let _%lp113620%_ ((_%rest113622%_ _%stx113618%_))
          (let* ((_%g113623113633%_ (gx#syntax-e _%rest113622%_))
                 (_%else113626113641%_
                  (lambda () (_%f113617%_ _%rest113622%_))))
            (let ((_%K113629113655%_
                   (lambda (_%rest113652%_ _%hd113653%_)
                     (if (_%f113617%_ _%hd113653%_)
                         (_%lp113620%_ _%rest113652%_)
                         '#f)))
                  (_%K113628113646%_ (lambda () '#t)))
              (let ((_%try-match113625113649%_
                     (lambda ()
                       (if (##null? _%g113623113633%_)
                           (_%K113628113646%_)
                           (_%else113626113641%_)))))
                (if (##pair? _%g113623113633%_)
                    (let ((_%tl113631113660%_ (##cdr _%g113623113633%_))
                          (_%hd113630113658%_ (##car _%g113623113633%_)))
                      (let ((_%hd113663%_ _%hd113630113658%_)
                            (_%rest113665%_ _%tl113631113660%_))
                        (_%K113629113655%_ _%rest113665%_ _%hd113663%_)))
                    (_%try-match113625113649%_))))))))
    (define gx#stx-ormap
      (lambda (_%f113564%_ _%stx113565%_)
        (if (procedure? _%f113564%_)
            '#!void
            (error '"expected procedure" _%f113564%_))
        (let _%lp113567%_ ((_%rest113569%_ _%stx113565%_))
          (let* ((_%g113570113580%_ (gx#syntax-e _%rest113569%_))
                 (_%else113573113588%_
                  (lambda () (_%f113564%_ _%rest113569%_))))
            (let ((_%K113576113605%_
                   (lambda (_%rest113599%_ _%hd113600%_)
                     (let ((_%$e113602%_ (_%f113564%_ _%hd113600%_)))
                       (if _%$e113602%_
                           _%$e113602%_
                           (_%lp113567%_ _%rest113599%_)))))
                  (_%K113575113593%_ (lambda () '#f)))
              (let ((_%try-match113572113596%_
                     (lambda ()
                       (if (##null? _%g113570113580%_)
                           (_%K113575113593%_)
                           (_%else113573113588%_)))))
                (if (##pair? _%g113570113580%_)
                    (let ((_%tl113578113610%_ (##cdr _%g113570113580%_))
                          (_%hd113577113608%_ (##car _%g113570113580%_)))
                      (let ((_%hd113613%_ _%hd113577113608%_)
                            (_%rest113615%_ _%tl113578113610%_))
                        (_%K113576113605%_ _%rest113615%_ _%hd113613%_)))
                    (_%try-match113572113596%_))))))))
    (define gx#stx-foldl
      (lambda (_%f113512%_ _%iv113513%_ _%stx113514%_)
        (if (procedure? _%f113512%_)
            '#!void
            (error '"expected procedure" _%f113512%_))
        (let _%lp113516%_ ((_%r113518%_ _%iv113513%_)
                           (_%rest113519%_ _%stx113514%_))
          (let* ((_%g113520113530%_ (gx#syntax-e _%rest113519%_))
                 (_%else113523113538%_
                  (lambda () (_%f113512%_ _%rest113519%_ _%r113518%_))))
            (let ((_%K113526113552%_
                   (lambda (_%rest113549%_ _%hd113550%_)
                     (_%lp113516%_
                      (_%f113512%_ _%hd113550%_ _%r113518%_)
                      _%rest113549%_)))
                  (_%K113525113543%_ (lambda () _%r113518%_)))
              (let ((_%try-match113522113546%_
                     (lambda ()
                       (if (##null? _%g113520113530%_)
                           (_%K113525113543%_)
                           (_%else113523113538%_)))))
                (if (##pair? _%g113520113530%_)
                    (let ((_%tl113528113557%_ (##cdr _%g113520113530%_))
                          (_%hd113527113555%_ (##car _%g113520113530%_)))
                      (let ((_%hd113560%_ _%hd113527113555%_)
                            (_%rest113562%_ _%tl113528113557%_))
                        (_%K113526113552%_ _%rest113562%_ _%hd113560%_)))
                    (_%try-match113522113546%_))))))))
    (define gx#stx-foldr
      (lambda (_%f113461%_ _%iv113462%_ _%stx113463%_)
        (if (procedure? _%f113461%_)
            '#!void
            (error '"expected procedure" _%f113461%_))
        (let _%recur113465%_ ((_%rest113467%_ _%stx113463%_))
          (let* ((_%g113468113478%_ (gx#syntax-e _%rest113467%_))
                 (_%else113471113486%_
                  (lambda () (_%f113461%_ _%rest113467%_ _%iv113462%_))))
            (let ((_%K113474113500%_
                   (lambda (_%rest113497%_ _%hd113498%_)
                     (_%f113461%_
                      _%hd113498%_
                      (_%recur113465%_ _%rest113497%_))))
                  (_%K113473113491%_ (lambda () _%iv113462%_)))
              (let ((_%try-match113470113494%_
                     (lambda ()
                       (if (##null? _%g113468113478%_)
                           (_%K113473113491%_)
                           (_%else113471113486%_)))))
                (if (##pair? _%g113468113478%_)
                    (let ((_%tl113476113505%_ (##cdr _%g113468113478%_))
                          (_%hd113475113503%_ (##car _%g113468113478%_)))
                      (let ((_%hd113508%_ _%hd113475113503%_)
                            (_%rest113510%_ _%tl113476113505%_))
                        (_%K113474113500%_ _%rest113510%_ _%hd113508%_)))
                    (_%try-match113470113494%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx113459%_) (gx#stx-foldl cons '() _%stx113459%_)))
    (define gx#stx-last
      (lambda (_%stx113420%_)
        (let _%lp113422%_ ((_%rest113424%_ _%stx113420%_))
          (let* ((_%g113425113433%_ (gx#syntax-e _%rest113424%_))
                 (_%else113427113441%_ (lambda () _%rest113424%_))
                 (_%K113429113447%_
                  (lambda (_%rest113444%_ _%hd113445%_)
                    (if (gx#stx-null? _%rest113444%_)
                        _%hd113445%_
                        (_%lp113422%_ _%rest113444%_)))))
            (if (##pair? _%g113425113433%_)
                (let ((_%hd113430113450%_ (##car _%g113425113433%_))
                      (_%tl113431113452%_ (##cdr _%g113425113433%_)))
                  (let* ((_%hd113455%_ _%hd113430113450%_)
                         (_%rest113457%_ _%tl113431113452%_))
                    (_%K113429113447%_ _%rest113457%_ _%hd113455%_)))
                (_%else113427113441%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx113391%_)
        (let _%lp113393%_ ((_%hd113395%_ _%stx113391%_))
          (let* ((_%g113396113403%_ (gx#syntax-e _%hd113395%_))
                 (_%E113398113407%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g113396113403%_
                           '([_ . rest]))
                    '#!void))
                 (_%K113399113412%_
                  (lambda (_%rest113410%_)
                    (if (gx#stx-pair? _%rest113410%_)
                        (_%lp113393%_ _%rest113410%_)
                        _%hd113395%_))))
            (if (##pair? _%g113396113403%_)
                (let* ((_%tl113401113415%_ (##cdr _%g113396113403%_))
                       (_%rest113418%_ _%tl113401113415%_))
                  (_%K113399113412%_ _%rest113418%_))
                (_%E113398113407%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx113360%_ _%k113361%_)
        (let _%lp113363%_ ((_%rest113365%_ _%stx113360%_)
                           (_%k113366%_ _%k113361%_))
          (if (fxpositive? _%k113366%_)
              (let* ((_%g113367113374%_ (gx#syntax-e _%rest113365%_))
                     (_%E113369113378%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g113367113374%_
                               '([_ . rest]))
                        '#!void))
                     (_%K113370113383%_
                      (lambda (_%rest113381%_)
                        (_%lp113363%_ _%rest113381%_ (##fx- _%k113366%_ '1)))))
                (if (##pair? _%g113367113374%_)
                    (let* ((_%tl113372113386%_ (##cdr _%g113367113374%_))
                           (_%rest113389%_ _%tl113372113386%_))
                      (_%K113370113383%_ _%rest113389%_))
                    (_%E113369113378%_)))
              _%rest113365%_))))
    (define gx#stx-list-ref
      (lambda (_%stx113357%_ _%k113358%_)
        (gx#stx-car (gx#stx-list-tail _%stx113357%_ _%k113358%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx113269%_ _%key?113270%_)
        (if (procedure? _%key?113270%_)
            '#!void
            (error '"expected procedure" _%key?113270%_))
        (let _%lp113272%_ ((_%rest113274%_ _%stx113269%_))
          (let* ((_%g113275113285%_ (gx#stx-e _%rest113274%_))
                 (_%else113278113293%_ (lambda () '#f)))
            (let ((_%K113281113335%_
                   (lambda (_%rest113304%_ _%hd113305%_)
                     (if (_%key?113270%_ _%hd113305%_)
                         (let* ((_%g113306113314%_ (gx#stx-e _%rest113304%_))
                                (_%else113308113322%_ (lambda () '#f))
                                (_%K113310113327%_
                                 (lambda (_%rest113325%_)
                                   (_%lp113272%_ _%rest113325%_))))
                           (if (##pair? _%g113306113314%_)
                               (let* ((_%tl113312113330%_
                                       (##cdr _%g113306113314%_))
                                      (_%rest113333%_ _%tl113312113330%_))
                                 (_%lp113272%_ _%rest113333%_))
                               (_%else113308113322%_)))
                         '#f)))
                  (_%K113280113298%_ (lambda () '#t)))
              (let ((_%try-match113277113301%_
                     (lambda ()
                       (if (##null? _%g113275113285%_)
                           (_%K113280113298%_)
                           (_%else113278113293%_)))))
                (if (##pair? _%g113275113285%_)
                    (let ((_%tl113283113340%_ (##cdr _%g113275113285%_))
                          (_%hd113282113338%_ (##car _%g113275113285%_)))
                      (let ((_%hd113343%_ _%hd113282113338%_)
                            (_%rest113345%_ _%tl113283113340%_))
                        (_%K113281113335%_ _%rest113345%_ _%hd113343%_)))
                    (_%try-match113277113301%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx113350%_)
        (let ((_%key?113352%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx113350%_ _%key?113352%_))))
    (define gx#stx-plist?
      (lambda _g114506_
        (let ((_g114505_ (##length _g114506_)))
          (cond ((##fx= _g114505_ 1)
                 (apply (lambda (_%stx113350%_)
                          (gx#stx-plist?__0 _%stx113350%_))
                        _g114506_))
                ((##fx= _g114505_ 2)
                 (apply (lambda (_%stx113354%_ _%key?113355%_)
                          (gx#stx-plist?__% _%stx113354%_ _%key?113355%_))
                        _g114506_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g114506_))))))
    (define gx#stx-getq__%
      (lambda (_%key113187%_ _%stx113188%_ _%key=?113189%_)
        (if (procedure? _%key=?113189%_)
            '#!void
            (error '"expected procedure" _%key=?113189%_))
        (let _%lp113191%_ ((_%rest113193%_ _%stx113188%_))
          (let* ((_%g113194113202%_ (gx#syntax-e _%rest113193%_))
                 (_%else113196113210%_ (lambda () '#f))
                 (_%K113198113244%_
                  (lambda (_%rest113213%_ _%hd113214%_)
                    (let* ((_%g113215113222%_ (gx#syntax-e _%rest113213%_))
                           (_%E113217113226%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g113215113222%_
                                     '([val . rest]))
                              '#!void))
                           (_%K113218113232%_
                            (lambda (_%rest113229%_ _%val113230%_)
                              (if (_%key=?113189%_ _%hd113214%_ _%key113187%_)
                                  _%val113230%_
                                  (_%lp113191%_ _%rest113229%_)))))
                      (if (##pair? _%g113215113222%_)
                          (let ((_%hd113219113235%_ (##car _%g113215113222%_))
                                (_%tl113220113237%_ (##cdr _%g113215113222%_)))
                            (let* ((_%val113240%_ _%hd113219113235%_)
                                   (_%rest113242%_ _%tl113220113237%_))
                              (_%K113218113232%_
                               _%rest113242%_
                               _%val113240%_)))
                          (_%E113217113226%_))))))
            (if (##pair? _%g113194113202%_)
                (let ((_%hd113199113247%_ (##car _%g113194113202%_))
                      (_%tl113200113249%_ (##cdr _%g113194113202%_)))
                  (let* ((_%hd113252%_ _%hd113199113247%_)
                         (_%rest113254%_ _%tl113200113249%_))
                    (_%K113198113244%_ _%rest113254%_ _%hd113252%_)))
                (_%else113196113210%_))))))
    (define gx#stx-getq__0
      (lambda (_%key113259%_ _%stx113260%_)
        (let ((_%key=?113262%_ gx#stx-eq?))
          (gx#stx-getq__% _%key113259%_ _%stx113260%_ _%key=?113262%_))))
    (define gx#stx-getq
      (lambda _g114508_
        (let ((_g114507_ (##length _g114508_)))
          (cond ((##fx= _g114507_ 2)
                 (apply (lambda (_%key113259%_ _%stx113260%_)
                          (gx#stx-getq__0 _%key113259%_ _%stx113260%_))
                        _g114508_))
                ((##fx= _g114507_ 3)
                 (apply (lambda (_%key113264%_ _%stx113265%_ _%key=?113266%_)
                          (gx#stx-getq__%
                           _%key113264%_
                           _%stx113265%_
                           _%key=?113266%_))
                        _g114508_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g114508_))))))))
