(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1713001407)
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
      (lambda _%$args116544%_
        (apply make-instance gx#identifier-wrap::t _%$args116544%_)))
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
      (lambda _%$args116541%_
        (apply make-instance gx#syntax-wrap::t _%$args116541%_)))
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
      (lambda _%$args116538%_
        (apply make-instance gx#syntax-quote::t _%$args116538%_)))
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
      (lambda (_%stx116536%_) (symbol? (gx#stx-e _%stx116536%_))))
    (define gx#identifier-quote?
      (lambda (_%stx116534%_)
        (if (##structure-direct-instance-of? _%stx116534%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx116534%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx116529%_)
        (if (##structure-direct-instance-of? _%stx116529%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx116529%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx116529%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx116524%_)
        (if (##structure-direct-instance-of? _%stx116524%_ 'gx#syntax-quote::t)
            _%stx116524%_
            (if (##structure-direct-instance-of?
                 _%stx116524%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx116524%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx116498%_)
        (if (##structure-direct-instance-of? _%stx116498%_ 'gx#syntax-wrap::t)
            (let _%lp116501%_ ((_%e116503%_
                                (##unchecked-structure-ref
                                 _%stx116498%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks116504%_
                                (cons (##unchecked-structure-ref
                                       _%stx116498%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e116503%_)
                  (let ((_%$e116507%_
                         (##type-id (##structure-type _%e116503%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e116507%_)
                        (_%lp116501%_
                         (##unchecked-structure-ref _%e116503%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e116503%_ '3 '#f '#f)
                          _%marks116504%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e116507%_)
                                (eq? 'gx#identifier-wrap::t _%$e116507%_))
                            (##unchecked-structure-ref _%e116503%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e116507%_)
                                (_%lp116501%_
                                 (##unchecked-structure-ref
                                  _%e116503%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks116504%_)
                                _%e116503%_))))
                  (if (null? _%marks116504%_)
                      _%e116503%_
                      (if (pair? _%e116503%_)
                          (cons (gx#stx-wrap
                                 (##car _%e116503%_)
                                 _%marks116504%_)
                                (gx#stx-wrap
                                 (##cdr _%e116503%_)
                                 _%marks116504%_))
                          (if (vector? _%e116503%_)
                              (vector-map
                               (lambda (_%g116515116517%_)
                                 (gx#stx-wrap
                                  _%g116515116517%_
                                  _%marks116504%_))
                               _%e116503%_)
                              (if (box? _%e116503%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e116503%_)
                                        _%marks116504%_))
                                  _%e116503%_))))))
            (if (##structure-instance-of? _%stx116498%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116498%_ '1 '#f '#f)
                _%stx116498%_))))
    (define gx#syntax->datum
      (lambda (_%stx116491%_)
        (if (##structure-instance-of? _%stx116491%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx116491%_ '1 '#f '#f))
            (if (pair? _%stx116491%_)
                (cons (gx#syntax->datum (##car _%stx116491%_))
                      (gx#syntax->datum (##cdr _%stx116491%_)))
                (if (vector? _%stx116491%_)
                    (vector-map gx#syntax->datum _%stx116491%_)
                    (if (box? _%stx116491%_)
                        (box (gx#syntax->datum (unbox _%stx116491%_)))
                        _%stx116491%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx116425%_ _%datum116426%_ _%src116427%_ _%quote?116428%_)
        (letrec ((_%wrap-datum116430%_
                  (lambda (_%e116463%_ _%marks116464%_)
                    (_%wrap-inner116432%_
                     _%e116463%_
                     (lambda (_%g116465116467%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g116465116467%_
                        _%src116427%_
                        _%marks116464%_)))))
                 (_%wrap-quote116431%_
                  (lambda (_%e116455%_ _%ctx116456%_ _%marks116457%_)
                    (_%wrap-inner116432%_
                     _%e116455%_
                     (lambda (_%g116458116460%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g116458116460%_
                        _%src116427%_
                        _%ctx116456%_
                        _%marks116457%_)))))
                 (_%wrap-inner116432%_
                  (lambda (_%e116443%_ _%wrap-e116444%_)
                    (let _%recur116446%_ ((_%e116448%_ _%e116443%_))
                      (if (symbol? _%e116448%_)
                          (_%wrap-e116444%_ _%e116448%_)
                          (if (pair? _%e116448%_)
                              (cons (_%recur116446%_ (##car _%e116448%_))
                                    (_%recur116446%_ (##cdr _%e116448%_)))
                              (if (vector? _%e116448%_)
                                  (vector-map _%recur116446%_ _%e116448%_)
                                  (if (box? _%e116448%_)
                                      (box (_%recur116446%_
                                            (unbox _%e116448%_)))
                                      _%e116448%_)))))))
                 (_%wrap-outer116433%_
                  (lambda (_%e116441%_)
                    (if (##structure-instance-of? _%e116441%_ 'gerbil#AST::t)
                        _%e116441%_
                        (##structure gx#AST::t _%e116441%_ _%src116427%_)))))
          (if (##structure-instance-of? _%datum116426%_ 'gerbil#AST::t)
              _%datum116426%_
              (if (not _%stx116425%_)
                  (##structure gx#AST::t _%datum116426%_ _%src116427%_)
                  (if (gx#identifier? _%stx116425%_)
                      (let ((_%stx116438%_ (gx#stx-unwrap__0 _%stx116425%_)))
                        (_%wrap-outer116433%_
                         (if (##structure-direct-instance-of?
                              _%stx116438%_
                              'gx#syntax-quote::t)
                             (if _%quote?116428%_
                                 (_%wrap-quote116431%_
                                  _%datum116426%_
                                  (##unchecked-structure-ref
                                   _%stx116438%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx116438%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum116430%_
                                  _%datum116426%_
                                  (##unchecked-structure-ref
                                   _%stx116438%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum116430%_
                              _%datum116426%_
                              (##unchecked-structure-ref
                               _%stx116438%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx116425%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx116473%_ _%datum116474%_)
        (let* ((_%src116476%_ '#f) (_%quote?116478%_ '#t))
          (gx#datum->syntax__%
           _%stx116473%_
           _%datum116474%_
           _%src116476%_
           _%quote?116478%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx116480%_ _%datum116481%_ _%src116482%_)
        (let ((_%quote?116484%_ '#t))
          (gx#datum->syntax__%
           _%stx116480%_
           _%datum116481%_
           _%src116482%_
           _%quote?116484%_))))
    (define gx#datum->syntax
      (lambda _g116625_
        (let ((_g116624_ (##length _g116625_)))
          (cond ((##fx= _g116624_ 2) (apply gx#datum->syntax__0 _g116625_))
                ((##fx= _g116624_ 3) (apply gx#datum->syntax__1 _g116625_))
                ((##fx= _g116624_ 4) (apply gx#datum->syntax__% _g116625_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g116625_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx116391%_ _%marks116392%_)
        (let _%lp116394%_ ((_%e116396%_ _%stx116391%_)
                           (_%marks116397%_ _%marks116392%_)
                           (_%src116398%_ (gx#stx-source _%stx116391%_)))
          (if (##structure-direct-instance-of? _%e116396%_ 'gx#syntax-wrap::t)
              (_%lp116394%_
               (##unchecked-structure-ref _%e116396%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e116396%_ '3 '#f '#f)
                _%marks116397%_)
               (##unchecked-structure-ref _%e116396%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e116396%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks116397%_)
                      _%e116396%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e116396%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e116396%_ '2 '#f '#f)
                       (__foldl1
                        gx#apply-mark
                        (##unchecked-structure-ref _%e116396%_ '3 '#f '#f)
                        _%marks116397%_)))
                  (if (##structure-direct-instance-of?
                       _%e116396%_
                       'gx#syntax-quote::t)
                      _%e116396%_
                      (if (##structure-instance-of? _%e116396%_ 'gerbil#AST::t)
                          (_%lp116394%_
                           (##unchecked-structure-ref _%e116396%_ '1 '#f '#f)
                           _%marks116397%_
                           (##unchecked-structure-ref _%e116396%_ '2 '#f '#f))
                          (if (symbol? _%e116396%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e116396%_
                               _%src116398%_
                               (reverse _%marks116397%_))
                              (if (null? _%marks116397%_)
                                  _%e116396%_
                                  (if (pair? _%e116396%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e116396%_)
                                             _%marks116397%_)
                                            (gx#stx-wrap
                                             (##cdr _%e116396%_)
                                             _%marks116397%_))
                                      (if (vector? _%e116396%_)
                                          (vector-map
                                           (lambda (_%g116407116409%_)
                                             (gx#stx-wrap
                                              _%g116407116409%_
                                              _%marks116397%_))
                                           _%e116396%_)
                                          (if (box? _%e116396%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e116396%_)
                                                    _%marks116397%_))
                                              _%e116396%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx116417%_)
        (let ((_%marks116419%_ '()))
          (gx#stx-unwrap__% _%stx116417%_ _%marks116419%_))))
    (define gx#stx-unwrap
      (lambda _g116627_
        (let ((_g116626_ (##length _g116627_)))
          (cond ((##fx= _g116626_ 1) (apply gx#stx-unwrap__0 _g116627_))
                ((##fx= _g116626_ 2) (apply gx#stx-unwrap__% _g116627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g116627_))))))
    (define gx#stx-wrap
      (lambda (_%stx116384%_ _%marks116385%_)
        (__foldl1
         (lambda (_%mark116387%_ _%stx116388%_)
           (gx#stx-apply-mark _%stx116388%_ _%mark116387%_))
         _%stx116384%_
         _%marks116385%_)))
    (define gx#stx-rewrap
      (lambda (_%stx116378%_ _%marks116379%_)
        (__foldr1
         (lambda (_%mark116381%_ _%stx116382%_)
           (gx#stx-apply-mark _%stx116382%_ _%mark116381%_))
         _%stx116378%_
         _%marks116379%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx116372%_ _%mark116373%_)
        (if (##structure-direct-instance-of? _%stx116372%_ 'gx#syntax-quote::t)
            _%stx116372%_
            (if (and (##structure-direct-instance-of?
                      _%stx116372%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark116373%_
                          (##unchecked-structure-ref
                           _%stx116372%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx116372%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx116372%_
                 (gx#stx-source _%stx116372%_)
                 _%mark116373%_)))))
    (define gx#apply-mark
      (lambda (_%mark116336%_ _%marks116337%_)
        (let* ((_%marks116338116346%_ _%marks116337%_)
               (_%else116340116354%_
                (lambda () (cons _%mark116336%_ _%marks116337%_)))
               (_%K116342116360%_
                (lambda (_%rest116357%_ _%hd116358%_)
                  (if (eq? _%mark116336%_ _%hd116358%_)
                      _%rest116357%_
                      (cons _%mark116336%_ _%marks116337%_)))))
          (if (##pair? _%marks116338116346%_)
              (let ((_%hd116343116363%_ (##car _%marks116338116346%_))
                    (_%tl116344116365%_ (##cdr _%marks116338116346%_)))
                (let* ((_%hd116368%_ _%hd116343116363%_)
                       (_%rest116370%_ _%tl116344116365%_))
                  (_%K116342116360%_ _%rest116370%_ _%hd116368%_)))
              (_%else116340116354%_)))))
    (define gx#stx-e
      (lambda (_%stx116331%_)
        (if (##structure-direct-instance-of? _%stx116331%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx116331%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx116331%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx116331%_ '1 '#f '#f)
                _%stx116331%_))))
    (define gx#stx-source
      (lambda (_%stx116329%_)
        (if (##structure-instance-of? _%stx116329%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx116329%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx116323%_ _%src116324%_)
        (if (or (##structure-instance-of? _%stx116323%_ 'gerbil#AST::t)
                (not _%src116324%_))
            _%stx116323%_
            (##structure gx#AST::t _%stx116323%_ _%src116324%_))))
    (define gx#stx-datum?
      (lambda (_%stx116321%_) (gx#self-quoting? (gx#stx-e _%stx116321%_))))
    (define gx#self-quoting?
      (lambda (_%x116304%_)
        (let ((_%$e116306%_ (immediate? _%x116304%_)))
          (if _%$e116306%_
              _%$e116306%_
              (let ((_%$e116309%_ (number? _%x116304%_)))
                (if _%$e116309%_
                    _%$e116309%_
                    (let ((_%$e116312%_ (keyword? _%x116304%_)))
                      (if _%$e116312%_
                          _%$e116312%_
                          (let ((_%$e116315%_ (string? _%x116304%_)))
                            (if _%$e116315%_
                                _%$e116315%_
                                (let ((_%$e116318%_ (vector? _%x116304%_)))
                                  (if _%$e116318%_
                                      _%$e116318%_
                                      (u8vector? _%x116304%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e116302%_) (boolean? (gx#stx-e _%e116302%_))))
    (define gx#stx-keyword?
      (lambda (_%e116300%_) (keyword? (gx#stx-e _%e116300%_))))
    (define gx#stx-char? (lambda (_%e116298%_) (char? (gx#stx-e _%e116298%_))))
    (define gx#stx-number?
      (lambda (_%e116296%_) (number? (gx#stx-e _%e116296%_))))
    (define gx#stx-fixnum?
      (lambda (_%e116294%_) (fixnum? (gx#stx-e _%e116294%_))))
    (define gx#stx-string?
      (lambda (_%e116292%_) (string? (gx#stx-e _%e116292%_))))
    (define gx#stx-null? (lambda (_%e116290%_) (null? (gx#stx-e _%e116290%_))))
    (define gx#stx-pair? (lambda (_%e116288%_) (pair? (gx#stx-e _%e116288%_))))
    (define gx#stx-list?
      (lambda (_%e116250%_)
        (let* ((_%g116251116260%_ (gx#stx-e _%e116250%_))
               (_%E116254116264%_
                (lambda ()
                  (error '"No clause matching"
                         _%g116251116260%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K116256116280%_
                 (lambda (_%rest116278%_) (gx#stx-list? _%rest116278%_)))
                (_%K116255116270%_
                 (lambda (_%tail116268%_) (null? _%tail116268%_))))
            (if (##pair? _%g116251116260%_)
                (let* ((_%tl116258116283%_ (##cdr _%g116251116260%_))
                       (_%rest116286%_ _%tl116258116283%_))
                  (gx#stx-list? _%rest116286%_))
                (let ((_%tail116273%_ _%g116251116260%_))
                  (null? _%tail116273%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e116243%_)
        (let* ((_%e116245%_ (gx#stx-e _%e116243%_))
               (_%$e116247%_ (pair? _%e116245%_)))
          (if _%$e116247%_ _%$e116247%_ (null? _%e116245%_)))))
    (define gx#stx-vector?
      (lambda (_%e116241%_) (vector? (gx#stx-e _%e116241%_))))
    (define gx#stx-box? (lambda (_%e116239%_) (box? (gx#stx-e _%e116239%_))))
    (define gx#stx-eq?
      (lambda (_%x116236%_ _%y116237%_)
        (eq? (gx#stx-e _%x116236%_) (gx#stx-e _%y116237%_))))
    (define gx#stx-eqv?
      (lambda (_%x116233%_ _%y116234%_)
        (eqv? (gx#stx-e _%x116233%_) (gx#stx-e _%y116234%_))))
    (define gx#stx-equal?
      (lambda (_%x116230%_ _%y116231%_)
        (equal? (gx#stx-e _%x116230%_) (gx#stx-e _%y116231%_))))
    (define gx#stx-false? (lambda (_%x116228%_) (not (gx#stx-e _%x116228%_))))
    (define gx#stx-identifier
      (lambda (_%template116225%_ . _%args116226%_)
        (gx#datum->syntax__1
         _%template116225%_
         (apply make-symbol (gx#syntax->datum _%args116226%_))
         (gx#stx-source _%template116225%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx116223%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx116223%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx116218%_)
        (if (##structure-direct-instance-of?
             _%stx116218%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx116218%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx116218%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx116218%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx116218%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx116214%_)
        (let ((_%stx116216%_ (gx#stx-unwrap__0 _%stx116214%_)))
          (if (gx#identifier-quote? _%stx116216%_)
              (##unchecked-structure-ref _%stx116216%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx116169%_)
        (let* ((_%g116170116180%_ (gx#stx-e _%stx116169%_))
               (_%else116173116188%_ (lambda () '#f)))
          (let ((_%K116176116202%_
                 (lambda (_%rest116199%_ _%hd116200%_)
                   (if (gx#identifier? _%hd116200%_)
                       (gx#identifier-list? _%rest116199%_)
                       '#f)))
                (_%K116175116193%_ (lambda () '#t)))
            (let ((_%try-match116172116196%_
                   (lambda ()
                     (if (##null? _%g116170116180%_)
                         (_%K116175116193%_)
                         (_%else116173116188%_)))))
              (if (##pair? _%g116170116180%_)
                  (let ((_%tl116178116207%_ (##cdr _%g116170116180%_))
                        (_%hd116177116205%_ (##car _%g116170116180%_)))
                    (let ((_%hd116210%_ _%hd116177116205%_)
                          (_%rest116212%_ _%tl116178116207%_))
                      (_%K116176116202%_ _%rest116212%_ _%hd116210%_)))
                  (_%try-match116172116196%_)))))))
    (define gx#genident__%
      (lambda (_%e116146%_ _%src116147%_)
        (gx#stx-wrap-source
         (gensym (let ((_%e116149%_ (gx#stx-e _%e116146%_)))
                   (if (interned-symbol? _%e116149%_) _%e116149%_ 'g)))
         (let ((_%$e116151%_ (gx#stx-source _%e116146%_)))
           (if _%$e116151%_ _%$e116151%_ _%src116147%_)))))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e116158%_ 'g) (_%src116160%_ '#f))
          (gx#genident__% _%e116158%_ _%src116160%_))))
    (define gx#genident__1
      (lambda (_%e116162%_)
        (let ((_%src116164%_ '#f))
          (gx#genident__% _%e116162%_ _%src116164%_))))
    (define gx#genident
      (lambda _g116629_
        (let ((_g116628_ (##length _g116629_)))
          (cond ((##fx= _g116628_ 0) (apply gx#genident__0 _g116629_))
                ((##fx= _g116628_ 1) (apply gx#genident__1 _g116629_))
                ((##fx= _g116628_ 2) (apply gx#genident__% _g116629_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g116629_))))))
    (define gx#gentemps
      (lambda (_%stx-lst116143%_) (gx#stx-map1 gx#genident _%stx-lst116143%_)))
    (define gx#syntax->list
      (lambda (_%stx116141%_) (gx#stx-map1 values _%stx116141%_)))
    (define gx#stx-car
      (lambda (_%stx116138%_)
        (declare (safe))
        (car (gx#syntax-e _%stx116138%_))))
    (define gx#stx-cdr
      (lambda (_%stx116135%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx116135%_))))
    (define gx#stx-length
      (lambda (_%stx116100%_)
        (let _%lp116102%_ ((_%rest116104%_ _%stx116100%_) (_%n116105%_ '0))
          (let* ((_%g116106116114%_ (gx#stx-e _%rest116104%_))
                 (_%else116108116122%_ (lambda () _%n116105%_))
                 (_%K116110116127%_
                  (lambda (_%rest116125%_)
                    (_%lp116102%_ _%rest116125%_ (##fx+ _%n116105%_ '1)))))
            (if (##pair? _%g116106116114%_)
                (let* ((_%tl116112116130%_ (##cdr _%g116106116114%_))
                       (_%rest116133%_ _%tl116112116130%_))
                  (_%K116110116127%_ _%rest116133%_))
                (_%else116108116122%_))))))
    (define gx#stx-for-each
      (lambda _g116631_
        (let ((_g116630_ (##length _g116631_)))
          (cond ((##fx= _g116630_ 2) (apply gx#stx-for-each1 _g116631_))
                ((##fx= _g116630_ 3) (apply gx#stx-for-each2 _g116631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g116631_))))))
    (define gx#stx-for-each1
      (lambda (_%f116043%_ _%stx116044%_)
        (if (procedure? _%f116043%_)
            '#!void
            (error '"expected procedure" _%f116043%_))
        (let _%lp116046%_ ((_%rest116048%_ _%stx116044%_))
          (let* ((_%g116049116059%_ (gx#syntax-e _%rest116048%_))
                 (_%else116052116067%_
                  (lambda () (_%f116043%_ _%rest116048%_))))
            (let ((_%K116055116081%_
                   (lambda (_%rest116078%_ _%hd116079%_)
                     (_%f116043%_ _%hd116079%_)
                     (_%lp116046%_ _%rest116078%_)))
                  (_%K116054116072%_ (lambda () '#!void)))
              (let ((_%try-match116051116075%_
                     (lambda ()
                       (if (##null? _%g116049116059%_)
                           (_%K116054116072%_)
                           (_%else116052116067%_)))))
                (if (##pair? _%g116049116059%_)
                    (let ((_%tl116057116086%_ (##cdr _%g116049116059%_))
                          (_%hd116056116084%_ (##car _%g116049116059%_)))
                      (let ((_%hd116089%_ _%hd116056116084%_)
                            (_%rest116091%_ _%tl116057116086%_))
                        (_%K116055116081%_ _%rest116091%_ _%hd116089%_)))
                    (_%try-match116051116075%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f115948%_ _%xstx115949%_ _%ystx115950%_)
        (if (procedure? _%f115948%_)
            '#!void
            (error '"expected procedure" _%f115948%_))
        (let _%lp115952%_ ((_%xrest115954%_ _%xstx115949%_)
                           (_%yrest115955%_ _%ystx115950%_))
          (let* ((_%g115956115966%_ (gx#syntax-e _%xrest115954%_))
                 (_%else115959115974%_ (lambda () '#!void)))
            (let ((_%K115962116031%_
                   (lambda (_%xrest116000%_ _%xhd116001%_)
                     (let* ((_%g116002116009%_ (gx#syntax-e _%yrest115955%_))
                            (_%E116004116013%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g116002116009%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K116005116019%_
                             (lambda (_%yrest116016%_ _%yhd116017%_)
                               (_%f115948%_ _%xhd116001%_ _%yhd116017%_)
                               (_%lp115952%_
                                _%xrest116000%_
                                _%yrest116016%_))))
                       (if (##pair? _%g116002116009%_)
                           (let ((_%hd116006116022%_ (##car _%g116002116009%_))
                                 (_%tl116007116024%_
                                  (##cdr _%g116002116009%_)))
                             (let* ((_%yhd116027%_ _%hd116006116022%_)
                                    (_%yrest116029%_ _%tl116007116024%_))
                               (_%K116005116019%_
                                _%yrest116029%_
                                _%yhd116027%_)))
                           (_%E116004116013%_)))))
                  (_%K115961115994%_
                   (lambda ()
                     (let* ((_%yrest115978115983%_ _%yrest115955%_)
                            (_%E115980115987%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest115978115983%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K115981115991%_
                             (lambda ()
                               (_%f115948%_ _%xrest115954%_ _%yrest115955%_))))
                       (if (gx#stx-null? _%yrest115978115983%_)
                           (_%E115980115987%_)
                           (_%K115981115991%_))))))
              (let ((_%try-match115958115997%_
                     (lambda ()
                       (if (null? _%g115956115966%_)
                           (_%else115959115974%_)
                           (_%K115961115994%_)))))
                (if (##pair? _%g115956115966%_)
                    (let ((_%tl115964116036%_ (##cdr _%g115956115966%_))
                          (_%hd115963116034%_ (##car _%g115956115966%_)))
                      (let ((_%xhd116039%_ _%hd115963116034%_)
                            (_%xrest116041%_ _%tl115964116036%_))
                        (_%K115962116031%_ _%xrest116041%_ _%xhd116039%_)))
                    (_%try-match115958115997%_))))))))
    (define gx#stx-map
      (lambda _g116633_
        (let ((_g116632_ (##length _g116633_)))
          (cond ((##fx= _g116632_ 2) (apply gx#stx-map1 _g116633_))
                ((##fx= _g116632_ 3) (apply gx#stx-map2 _g116633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g116633_))))))
    (define gx#stx-map1
      (lambda (_%f115891%_ _%stx115892%_)
        (if (procedure? _%f115891%_)
            '#!void
            (error '"expected procedure" _%f115891%_))
        (let _%recur115894%_ ((_%rest115896%_ _%stx115892%_))
          (let* ((_%g115897115907%_ (gx#syntax-e _%rest115896%_))
                 (_%else115900115915%_
                  (lambda () (_%f115891%_ _%rest115896%_))))
            (let ((_%K115903115929%_
                   (lambda (_%rest115926%_ _%hd115927%_)
                     (cons (_%f115891%_ _%hd115927%_)
                           (_%recur115894%_ _%rest115926%_))))
                  (_%K115902115920%_ (lambda () '())))
              (let ((_%try-match115899115923%_
                     (lambda ()
                       (if (##null? _%g115897115907%_)
                           (_%K115902115920%_)
                           (_%else115900115915%_)))))
                (if (##pair? _%g115897115907%_)
                    (let ((_%tl115905115934%_ (##cdr _%g115897115907%_))
                          (_%hd115904115932%_ (##car _%g115897115907%_)))
                      (let ((_%hd115937%_ _%hd115904115932%_)
                            (_%rest115939%_ _%tl115905115934%_))
                        (_%K115903115929%_ _%rest115939%_ _%hd115937%_)))
                    (_%try-match115899115923%_))))))))
    (define gx#stx-map2
      (lambda (_%f115796%_ _%xstx115797%_ _%ystx115798%_)
        (if (procedure? _%f115796%_)
            '#!void
            (error '"expected procedure" _%f115796%_))
        (let _%recur115800%_ ((_%xrest115802%_ _%xstx115797%_)
                              (_%yrest115803%_ _%ystx115798%_))
          (let* ((_%g115804115814%_ (gx#syntax-e _%xrest115802%_))
                 (_%else115807115822%_ (lambda () '())))
            (let ((_%K115810115879%_
                   (lambda (_%xrest115848%_ _%xhd115849%_)
                     (let* ((_%g115850115857%_ (gx#syntax-e _%yrest115803%_))
                            (_%E115852115861%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g115850115857%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K115853115867%_
                             (lambda (_%yrest115864%_ _%yhd115865%_)
                               (cons (_%f115796%_ _%xhd115849%_ _%yhd115865%_)
                                     (_%recur115800%_
                                      _%xrest115848%_
                                      _%yrest115864%_)))))
                       (if (##pair? _%g115850115857%_)
                           (let ((_%hd115854115870%_ (##car _%g115850115857%_))
                                 (_%tl115855115872%_
                                  (##cdr _%g115850115857%_)))
                             (let* ((_%yhd115875%_ _%hd115854115870%_)
                                    (_%yrest115877%_ _%tl115855115872%_))
                               (_%K115853115867%_
                                _%yrest115877%_
                                _%yhd115875%_)))
                           (_%E115852115861%_)))))
                  (_%K115809115842%_
                   (lambda ()
                     (let* ((_%yrest115826115831%_ _%yrest115803%_)
                            (_%E115828115835%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest115826115831%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K115829115839%_
                             (lambda ()
                               (_%f115796%_ _%xrest115802%_ _%yrest115803%_))))
                       (if (gx#stx-null? _%yrest115826115831%_)
                           (_%E115828115835%_)
                           (_%K115829115839%_))))))
              (let ((_%try-match115806115845%_
                     (lambda ()
                       (if (null? _%g115804115814%_)
                           (_%else115807115822%_)
                           (_%K115809115842%_)))))
                (if (##pair? _%g115804115814%_)
                    (let ((_%tl115812115884%_ (##cdr _%g115804115814%_))
                          (_%hd115811115882%_ (##car _%g115804115814%_)))
                      (let ((_%xhd115887%_ _%hd115811115882%_)
                            (_%xrest115889%_ _%tl115812115884%_))
                        (_%K115810115879%_ _%xrest115889%_ _%xhd115887%_)))
                    (_%try-match115806115845%_))))))))
    (define gx#stx-andmap
      (lambda (_%f115746%_ _%stx115747%_)
        (if (procedure? _%f115746%_)
            '#!void
            (error '"expected procedure" _%f115746%_))
        (let _%lp115749%_ ((_%rest115751%_ _%stx115747%_))
          (let* ((_%g115752115762%_ (gx#syntax-e _%rest115751%_))
                 (_%else115755115770%_
                  (lambda () (_%f115746%_ _%rest115751%_))))
            (let ((_%K115758115784%_
                   (lambda (_%rest115781%_ _%hd115782%_)
                     (if (_%f115746%_ _%hd115782%_)
                         (_%lp115749%_ _%rest115781%_)
                         '#f)))
                  (_%K115757115775%_ (lambda () '#t)))
              (let ((_%try-match115754115778%_
                     (lambda ()
                       (if (##null? _%g115752115762%_)
                           (_%K115757115775%_)
                           (_%else115755115770%_)))))
                (if (##pair? _%g115752115762%_)
                    (let ((_%tl115760115789%_ (##cdr _%g115752115762%_))
                          (_%hd115759115787%_ (##car _%g115752115762%_)))
                      (let ((_%hd115792%_ _%hd115759115787%_)
                            (_%rest115794%_ _%tl115760115789%_))
                        (_%K115758115784%_ _%rest115794%_ _%hd115792%_)))
                    (_%try-match115754115778%_))))))))
    (define gx#stx-ormap
      (lambda (_%f115693%_ _%stx115694%_)
        (if (procedure? _%f115693%_)
            '#!void
            (error '"expected procedure" _%f115693%_))
        (let _%lp115696%_ ((_%rest115698%_ _%stx115694%_))
          (let* ((_%g115699115709%_ (gx#syntax-e _%rest115698%_))
                 (_%else115702115717%_
                  (lambda () (_%f115693%_ _%rest115698%_))))
            (let ((_%K115705115734%_
                   (lambda (_%rest115728%_ _%hd115729%_)
                     (let ((_%$e115731%_ (_%f115693%_ _%hd115729%_)))
                       (if _%$e115731%_
                           _%$e115731%_
                           (_%lp115696%_ _%rest115728%_)))))
                  (_%K115704115722%_ (lambda () '#f)))
              (let ((_%try-match115701115725%_
                     (lambda ()
                       (if (##null? _%g115699115709%_)
                           (_%K115704115722%_)
                           (_%else115702115717%_)))))
                (if (##pair? _%g115699115709%_)
                    (let ((_%tl115707115739%_ (##cdr _%g115699115709%_))
                          (_%hd115706115737%_ (##car _%g115699115709%_)))
                      (let ((_%hd115742%_ _%hd115706115737%_)
                            (_%rest115744%_ _%tl115707115739%_))
                        (_%K115705115734%_ _%rest115744%_ _%hd115742%_)))
                    (_%try-match115701115725%_))))))))
    (define gx#stx-foldl
      (lambda (_%f115641%_ _%iv115642%_ _%stx115643%_)
        (if (procedure? _%f115641%_)
            '#!void
            (error '"expected procedure" _%f115641%_))
        (let _%lp115645%_ ((_%r115647%_ _%iv115642%_)
                           (_%rest115648%_ _%stx115643%_))
          (let* ((_%g115649115659%_ (gx#syntax-e _%rest115648%_))
                 (_%else115652115667%_
                  (lambda () (_%f115641%_ _%rest115648%_ _%r115647%_))))
            (let ((_%K115655115681%_
                   (lambda (_%rest115678%_ _%hd115679%_)
                     (_%lp115645%_
                      (_%f115641%_ _%hd115679%_ _%r115647%_)
                      _%rest115678%_)))
                  (_%K115654115672%_ (lambda () _%r115647%_)))
              (let ((_%try-match115651115675%_
                     (lambda ()
                       (if (##null? _%g115649115659%_)
                           (_%K115654115672%_)
                           (_%else115652115667%_)))))
                (if (##pair? _%g115649115659%_)
                    (let ((_%tl115657115686%_ (##cdr _%g115649115659%_))
                          (_%hd115656115684%_ (##car _%g115649115659%_)))
                      (let ((_%hd115689%_ _%hd115656115684%_)
                            (_%rest115691%_ _%tl115657115686%_))
                        (_%K115655115681%_ _%rest115691%_ _%hd115689%_)))
                    (_%try-match115651115675%_))))))))
    (define gx#stx-foldr
      (lambda (_%f115590%_ _%iv115591%_ _%stx115592%_)
        (if (procedure? _%f115590%_)
            '#!void
            (error '"expected procedure" _%f115590%_))
        (let _%recur115594%_ ((_%rest115596%_ _%stx115592%_))
          (let* ((_%g115597115607%_ (gx#syntax-e _%rest115596%_))
                 (_%else115600115615%_
                  (lambda () (_%f115590%_ _%rest115596%_ _%iv115591%_))))
            (let ((_%K115603115629%_
                   (lambda (_%rest115626%_ _%hd115627%_)
                     (_%f115590%_
                      _%hd115627%_
                      (_%recur115594%_ _%rest115626%_))))
                  (_%K115602115620%_ (lambda () _%iv115591%_)))
              (let ((_%try-match115599115623%_
                     (lambda ()
                       (if (##null? _%g115597115607%_)
                           (_%K115602115620%_)
                           (_%else115600115615%_)))))
                (if (##pair? _%g115597115607%_)
                    (let ((_%tl115605115634%_ (##cdr _%g115597115607%_))
                          (_%hd115604115632%_ (##car _%g115597115607%_)))
                      (let ((_%hd115637%_ _%hd115604115632%_)
                            (_%rest115639%_ _%tl115605115634%_))
                        (_%K115603115629%_ _%rest115639%_ _%hd115637%_)))
                    (_%try-match115599115623%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx115588%_) (gx#stx-foldl cons '() _%stx115588%_)))
    (define gx#stx-last
      (lambda (_%stx115549%_)
        (let _%lp115551%_ ((_%rest115553%_ _%stx115549%_))
          (let* ((_%g115554115562%_ (gx#syntax-e _%rest115553%_))
                 (_%else115556115570%_ (lambda () _%rest115553%_))
                 (_%K115558115576%_
                  (lambda (_%rest115573%_ _%hd115574%_)
                    (if (gx#stx-null? _%rest115573%_)
                        _%hd115574%_
                        (_%lp115551%_ _%rest115573%_)))))
            (if (##pair? _%g115554115562%_)
                (let ((_%hd115559115579%_ (##car _%g115554115562%_))
                      (_%tl115560115581%_ (##cdr _%g115554115562%_)))
                  (let* ((_%hd115584%_ _%hd115559115579%_)
                         (_%rest115586%_ _%tl115560115581%_))
                    (_%K115558115576%_ _%rest115586%_ _%hd115584%_)))
                (_%else115556115570%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx115520%_)
        (let _%lp115522%_ ((_%hd115524%_ _%stx115520%_))
          (let* ((_%g115525115532%_ (gx#syntax-e _%hd115524%_))
                 (_%E115527115536%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g115525115532%_
                           '([_ . rest]))
                    '#!void))
                 (_%K115528115541%_
                  (lambda (_%rest115539%_)
                    (if (gx#stx-pair? _%rest115539%_)
                        (_%lp115522%_ _%rest115539%_)
                        _%hd115524%_))))
            (if (##pair? _%g115525115532%_)
                (let* ((_%tl115530115544%_ (##cdr _%g115525115532%_))
                       (_%rest115547%_ _%tl115530115544%_))
                  (_%K115528115541%_ _%rest115547%_))
                (_%E115527115536%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx115489%_ _%k115490%_)
        (let _%lp115492%_ ((_%rest115494%_ _%stx115489%_)
                           (_%k115495%_ _%k115490%_))
          (if (fxpositive? _%k115495%_)
              (let* ((_%g115496115503%_ (gx#syntax-e _%rest115494%_))
                     (_%E115498115507%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g115496115503%_
                               '([_ . rest]))
                        '#!void))
                     (_%K115499115512%_
                      (lambda (_%rest115510%_)
                        (_%lp115492%_ _%rest115510%_ (##fx- _%k115495%_ '1)))))
                (if (##pair? _%g115496115503%_)
                    (let* ((_%tl115501115515%_ (##cdr _%g115496115503%_))
                           (_%rest115518%_ _%tl115501115515%_))
                      (_%K115499115512%_ _%rest115518%_))
                    (_%E115498115507%_)))
              _%rest115494%_))))
    (define gx#stx-list-ref
      (lambda (_%stx115486%_ _%k115487%_)
        (gx#stx-car (gx#stx-list-tail _%stx115486%_ _%k115487%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx115398%_ _%key?115399%_)
        (if (procedure? _%key?115399%_)
            '#!void
            (error '"expected procedure" _%key?115399%_))
        (let _%lp115401%_ ((_%rest115403%_ _%stx115398%_))
          (let* ((_%g115404115414%_ (gx#stx-e _%rest115403%_))
                 (_%else115407115422%_ (lambda () '#f)))
            (let ((_%K115410115464%_
                   (lambda (_%rest115433%_ _%hd115434%_)
                     (if (_%key?115399%_ _%hd115434%_)
                         (let* ((_%g115435115443%_ (gx#stx-e _%rest115433%_))
                                (_%else115437115451%_ (lambda () '#f))
                                (_%K115439115456%_
                                 (lambda (_%rest115454%_)
                                   (_%lp115401%_ _%rest115454%_))))
                           (if (##pair? _%g115435115443%_)
                               (let* ((_%tl115441115459%_
                                       (##cdr _%g115435115443%_))
                                      (_%rest115462%_ _%tl115441115459%_))
                                 (_%lp115401%_ _%rest115462%_))
                               (_%else115437115451%_)))
                         '#f)))
                  (_%K115409115427%_ (lambda () '#t)))
              (let ((_%try-match115406115430%_
                     (lambda ()
                       (if (##null? _%g115404115414%_)
                           (_%K115409115427%_)
                           (_%else115407115422%_)))))
                (if (##pair? _%g115404115414%_)
                    (let ((_%tl115412115469%_ (##cdr _%g115404115414%_))
                          (_%hd115411115467%_ (##car _%g115404115414%_)))
                      (let ((_%hd115472%_ _%hd115411115467%_)
                            (_%rest115474%_ _%tl115412115469%_))
                        (_%K115410115464%_ _%rest115474%_ _%hd115472%_)))
                    (_%try-match115406115430%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx115479%_)
        (let ((_%key?115481%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx115479%_ _%key?115481%_))))
    (define gx#stx-plist?
      (lambda _g116635_
        (let ((_g116634_ (##length _g116635_)))
          (cond ((##fx= _g116634_ 1) (apply gx#stx-plist?__0 _g116635_))
                ((##fx= _g116634_ 2) (apply gx#stx-plist?__% _g116635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g116635_))))))
    (define gx#stx-getq__%
      (lambda (_%key115316%_ _%stx115317%_ _%key=?115318%_)
        (if (procedure? _%key=?115318%_)
            '#!void
            (error '"expected procedure" _%key=?115318%_))
        (let _%lp115320%_ ((_%rest115322%_ _%stx115317%_))
          (let* ((_%g115323115331%_ (gx#syntax-e _%rest115322%_))
                 (_%else115325115339%_ (lambda () '#f))
                 (_%K115327115373%_
                  (lambda (_%rest115342%_ _%hd115343%_)
                    (let* ((_%g115344115351%_ (gx#syntax-e _%rest115342%_))
                           (_%E115346115355%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g115344115351%_
                                     '([val . rest]))
                              '#!void))
                           (_%K115347115361%_
                            (lambda (_%rest115358%_ _%val115359%_)
                              (if (_%key=?115318%_ _%hd115343%_ _%key115316%_)
                                  _%val115359%_
                                  (_%lp115320%_ _%rest115358%_)))))
                      (if (##pair? _%g115344115351%_)
                          (let ((_%hd115348115364%_ (##car _%g115344115351%_))
                                (_%tl115349115366%_ (##cdr _%g115344115351%_)))
                            (let* ((_%val115369%_ _%hd115348115364%_)
                                   (_%rest115371%_ _%tl115349115366%_))
                              (_%K115347115361%_
                               _%rest115371%_
                               _%val115369%_)))
                          (_%E115346115355%_))))))
            (if (##pair? _%g115323115331%_)
                (let ((_%hd115328115376%_ (##car _%g115323115331%_))
                      (_%tl115329115378%_ (##cdr _%g115323115331%_)))
                  (let* ((_%hd115381%_ _%hd115328115376%_)
                         (_%rest115383%_ _%tl115329115378%_))
                    (_%K115327115373%_ _%rest115383%_ _%hd115381%_)))
                (_%else115325115339%_))))))
    (define gx#stx-getq__0
      (lambda (_%key115388%_ _%stx115389%_)
        (let ((_%key=?115391%_ gx#stx-eq?))
          (gx#stx-getq__% _%key115388%_ _%stx115389%_ _%key=?115391%_))))
    (define gx#stx-getq
      (lambda _g116637_
        (let ((_g116636_ (##length _g116637_)))
          (cond ((##fx= _g116636_ 2) (apply gx#stx-getq__0 _g116637_))
                ((##fx= _g116636_ 3) (apply gx#stx-getq__% _g116637_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g116637_))))))))
