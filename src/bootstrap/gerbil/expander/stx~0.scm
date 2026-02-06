(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1770405373)
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
      (lambda _%$args170202%_
        (apply make-instance gx#identifier-wrap::t _%$args170202%_)))
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
      (lambda _%$args170199%_
        (apply make-instance gx#syntax-wrap::t _%$args170199%_)))
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
      (lambda _%$args170196%_
        (apply make-instance gx#syntax-quote::t _%$args170196%_)))
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
      (lambda (_%stx170194%_) (symbol? (gx#stx-e _%stx170194%_))))
    (define gx#identifier-quote?
      (lambda (_%stx170192%_)
        (if (##structure-direct-instance-of? _%stx170192%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx170192%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx170187%_)
        (if (##structure-direct-instance-of? _%stx170187%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx170187%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx170187%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx170182%_)
        (if (##structure-direct-instance-of? _%stx170182%_ 'gx#syntax-quote::t)
            _%stx170182%_
            (if (##structure-direct-instance-of?
                 _%stx170182%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx170182%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx170156%_)
        (if (##structure-direct-instance-of? _%stx170156%_ 'gx#syntax-wrap::t)
            (let _%lp170159%_ ((_%e170161%_
                                (##unchecked-structure-ref
                                 _%stx170156%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks170162%_
                                (cons (##unchecked-structure-ref
                                       _%stx170156%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e170161%_)
                  (let ((_%$e170165%_
                         (##type-id (##structure-type _%e170161%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e170165%_)
                        (_%lp170159%_
                         (##unchecked-structure-ref _%e170161%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e170161%_ '3 '#f '#f)
                          _%marks170162%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e170165%_)
                                (eq? 'gx#identifier-wrap::t _%$e170165%_))
                            (##unchecked-structure-ref _%e170161%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e170165%_)
                                (_%lp170159%_
                                 (##unchecked-structure-ref
                                  _%e170161%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks170162%_)
                                _%e170161%_))))
                  (if (null? _%marks170162%_)
                      _%e170161%_
                      (if (pair? _%e170161%_)
                          (cons (gx#stx-wrap
                                 (##car _%e170161%_)
                                 _%marks170162%_)
                                (gx#stx-wrap
                                 (##cdr _%e170161%_)
                                 _%marks170162%_))
                          (if (vector? _%e170161%_)
                              (vector-map
                               (lambda (_%g170173170175%_)
                                 (gx#stx-wrap
                                  _%g170173170175%_
                                  _%marks170162%_))
                               _%e170161%_)
                              (if (box? _%e170161%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e170161%_)
                                        _%marks170162%_))
                                  _%e170161%_))))))
            (if (##structure-instance-of? _%stx170156%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx170156%_ '1 '#f '#f)
                _%stx170156%_))))
    (define gx#syntax->datum
      (lambda (_%stx170149%_)
        (if (##structure-instance-of? _%stx170149%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx170149%_ '1 '#f '#f))
            (if (pair? _%stx170149%_)
                (cons (gx#syntax->datum (##car _%stx170149%_))
                      (gx#syntax->datum (##cdr _%stx170149%_)))
                (if (vector? _%stx170149%_)
                    (vector-map gx#syntax->datum _%stx170149%_)
                    (if (box? _%stx170149%_)
                        (box (gx#syntax->datum (unbox _%stx170149%_)))
                        _%stx170149%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx170083%_ _%datum170084%_ _%src170085%_ _%quote?170086%_)
        (letrec ((_%wrap-datum170088%_
                  (lambda (_%e170121%_ _%marks170122%_)
                    (_%wrap-inner170090%_
                     _%e170121%_
                     (lambda (_%g170123170125%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%g170123170125%_
                        _%src170085%_
                        _%marks170122%_)))))
                 (_%wrap-quote170089%_
                  (lambda (_%e170113%_ _%ctx170114%_ _%marks170115%_)
                    (_%wrap-inner170090%_
                     _%e170113%_
                     (lambda (_%g170116170118%_)
                       (##structure
                        gx#syntax-quote::t
                        _%g170116170118%_
                        _%src170085%_
                        _%ctx170114%_
                        _%marks170115%_)))))
                 (_%wrap-inner170090%_
                  (lambda (_%e170101%_ _%wrap-e170102%_)
                    (let _%recur170104%_ ((_%e170106%_ _%e170101%_))
                      (if (symbol? _%e170106%_)
                          (_%wrap-e170102%_ _%e170106%_)
                          (if (pair? _%e170106%_)
                              (cons (_%recur170104%_ (##car _%e170106%_))
                                    (_%recur170104%_ (##cdr _%e170106%_)))
                              (if (vector? _%e170106%_)
                                  (vector-map _%recur170104%_ _%e170106%_)
                                  (if (box? _%e170106%_)
                                      (box (_%recur170104%_
                                            (unbox _%e170106%_)))
                                      _%e170106%_)))))))
                 (_%wrap-outer170091%_
                  (lambda (_%e170099%_)
                    (if (##structure-instance-of? _%e170099%_ 'gerbil#AST::t)
                        _%e170099%_
                        (##structure gx#AST::t _%e170099%_ _%src170085%_)))))
          (if (##structure-instance-of? _%datum170084%_ 'gerbil#AST::t)
              _%datum170084%_
              (if (not _%stx170083%_)
                  (##structure gx#AST::t _%datum170084%_ _%src170085%_)
                  (if (gx#identifier? _%stx170083%_)
                      (let ((_%stx170096%_ (gx#stx-unwrap__0 _%stx170083%_)))
                        (_%wrap-outer170091%_
                         (if (##structure-direct-instance-of?
                              _%stx170096%_
                              'gx#syntax-quote::t)
                             (if _%quote?170086%_
                                 (_%wrap-quote170089%_
                                  _%datum170084%_
                                  (##unchecked-structure-ref
                                   _%stx170096%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx170096%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum170088%_
                                  _%datum170084%_
                                  (##unchecked-structure-ref
                                   _%stx170096%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum170088%_
                              _%datum170084%_
                              (##unchecked-structure-ref
                               _%stx170096%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx170083%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx170131%_ _%datum170132%_)
        (let* ((_%src170134%_ '#f) (_%quote?170136%_ '#t))
          (gx#datum->syntax__%
           _%stx170131%_
           _%datum170132%_
           _%src170134%_
           _%quote?170136%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx170138%_ _%datum170139%_ _%src170140%_)
        (let ((_%quote?170142%_ '#t))
          (gx#datum->syntax__%
           _%stx170138%_
           _%datum170139%_
           _%src170140%_
           _%quote?170142%_))))
    (define gx#datum->syntax
      (lambda _g170282_
        (let ((_g170283_ (##length _g170282_)))
          (cond ((##fx= _g170283_ 2) (apply gx#datum->syntax__0 _g170282_))
                ((##fx= _g170283_ 3) (apply gx#datum->syntax__1 _g170282_))
                ((##fx= _g170283_ 4) (apply gx#datum->syntax__% _g170282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g170282_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx170049%_ _%marks170050%_)
        (let _%lp170052%_ ((_%e170054%_ _%stx170049%_)
                           (_%marks170055%_ _%marks170050%_)
                           (_%src170056%_ (gx#stx-source _%stx170049%_)))
          (if (##structure-direct-instance-of? _%e170054%_ 'gx#syntax-wrap::t)
              (_%lp170052%_
               (##unchecked-structure-ref _%e170054%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e170054%_ '3 '#f '#f)
                _%marks170055%_)
               (##unchecked-structure-ref _%e170054%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e170054%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks170055%_)
                      _%e170054%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e170054%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e170054%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e170054%_ '3 '#f '#f)
                        _%marks170055%_)))
                  (if (##structure-direct-instance-of?
                       _%e170054%_
                       'gx#syntax-quote::t)
                      _%e170054%_
                      (if (##structure-instance-of? _%e170054%_ 'gerbil#AST::t)
                          (_%lp170052%_
                           (##unchecked-structure-ref _%e170054%_ '1 '#f '#f)
                           _%marks170055%_
                           (##unchecked-structure-ref _%e170054%_ '2 '#f '#f))
                          (if (symbol? _%e170054%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e170054%_
                               _%src170056%_
                               (reverse _%marks170055%_))
                              (if (null? _%marks170055%_)
                                  _%e170054%_
                                  (if (pair? _%e170054%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e170054%_)
                                             _%marks170055%_)
                                            (gx#stx-wrap
                                             (##cdr _%e170054%_)
                                             _%marks170055%_))
                                      (if (vector? _%e170054%_)
                                          (vector-map
                                           (lambda (_%g170065170067%_)
                                             (gx#stx-wrap
                                              _%g170065170067%_
                                              _%marks170055%_))
                                           _%e170054%_)
                                          (if (box? _%e170054%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e170054%_)
                                                    _%marks170055%_))
                                              _%e170054%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx170075%_)
        (let ((_%marks170077%_ '()))
          (gx#stx-unwrap__% _%stx170075%_ _%marks170077%_))))
    (define gx#stx-unwrap
      (lambda _g170284_
        (let ((_g170285_ (##length _g170284_)))
          (cond ((##fx= _g170285_ 1) (apply gx#stx-unwrap__0 _g170284_))
                ((##fx= _g170285_ 2) (apply gx#stx-unwrap__% _g170284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g170284_))))))
    (define gx#stx-wrap
      (lambda (_%stx170042%_ _%marks170043%_)
        (foldl__0
         (lambda (_%mark170045%_ _%stx170046%_)
           (gx#stx-apply-mark _%stx170046%_ _%mark170045%_))
         _%stx170042%_
         _%marks170043%_)))
    (define gx#stx-rewrap
      (lambda (_%stx170036%_ _%marks170037%_)
        (foldr__0
         (lambda (_%mark170039%_ _%stx170040%_)
           (gx#stx-apply-mark _%stx170040%_ _%mark170039%_))
         _%stx170036%_
         _%marks170037%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx170030%_ _%mark170031%_)
        (if (##structure-direct-instance-of? _%stx170030%_ 'gx#syntax-quote::t)
            _%stx170030%_
            (if (and (##structure-direct-instance-of?
                      _%stx170030%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark170031%_
                          (##unchecked-structure-ref
                           _%stx170030%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx170030%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx170030%_
                 (gx#stx-source _%stx170030%_)
                 _%mark170031%_)))))
    (define gx#apply-mark
      (lambda (_%mark169994%_ _%marks169995%_)
        (let* ((_%marks169996170004%_ _%marks169995%_)
               (_%else169998170012%_
                (lambda () (cons _%mark169994%_ _%marks169995%_)))
               (_%K170000170018%_
                (lambda (_%rest170015%_ _%hd170016%_)
                  (if (eq? _%mark169994%_ _%hd170016%_)
                      _%rest170015%_
                      (cons _%mark169994%_ _%marks169995%_)))))
          (if (pair? _%marks169996170004%_)
              (let ((_%hd170001170021%_ (##car _%marks169996170004%_))
                    (_%tl170002170023%_ (##cdr _%marks169996170004%_)))
                (let* ((_%hd170026%_ _%hd170001170021%_)
                       (_%rest170028%_ _%tl170002170023%_))
                  (_%K170000170018%_ _%rest170028%_ _%hd170026%_)))
              (_%else169998170012%_)))))
    (define gx#stx-e
      (lambda (_%stx169989%_)
        (if (##structure-direct-instance-of? _%stx169989%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx169989%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx169989%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx169989%_ '1 '#f '#f)
                _%stx169989%_))))
    (define gx#stx-source
      (lambda (_%stx169987%_)
        (if (##structure-instance-of? _%stx169987%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx169987%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx169981%_ _%src169982%_)
        (if (or (##structure-instance-of? _%stx169981%_ 'gerbil#AST::t)
                (not _%src169982%_))
            _%stx169981%_
            (##structure gx#AST::t _%stx169981%_ _%src169982%_))))
    (define gx#stx-datum?
      (lambda (_%stx169979%_) (gx#self-quoting? (gx#stx-e _%stx169979%_))))
    (define gx#self-quoting?
      (lambda (_%x169962%_)
        (let ((_%$e169964%_ (immediate? _%x169962%_)))
          (if _%$e169964%_
              _%$e169964%_
              (let ((_%$e169967%_ (number? _%x169962%_)))
                (if _%$e169967%_
                    _%$e169967%_
                    (let ((_%$e169970%_ (keyword? _%x169962%_)))
                      (if _%$e169970%_
                          _%$e169970%_
                          (let ((_%$e169973%_ (string? _%x169962%_)))
                            (if _%$e169973%_
                                _%$e169973%_
                                (let ((_%$e169976%_ (vector? _%x169962%_)))
                                  (if _%$e169976%_
                                      _%$e169976%_
                                      (u8vector? _%x169962%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e169960%_) (boolean? (gx#stx-e _%e169960%_))))
    (define gx#stx-keyword?
      (lambda (_%e169958%_) (keyword? (gx#stx-e _%e169958%_))))
    (define gx#stx-char? (lambda (_%e169956%_) (char? (gx#stx-e _%e169956%_))))
    (define gx#stx-number?
      (lambda (_%e169954%_) (number? (gx#stx-e _%e169954%_))))
    (define gx#stx-fixnum?
      (lambda (_%e169952%_) (fixnum? (gx#stx-e _%e169952%_))))
    (define gx#stx-string?
      (lambda (_%e169950%_) (string? (gx#stx-e _%e169950%_))))
    (define gx#stx-null? (lambda (_%e169948%_) (null? (gx#stx-e _%e169948%_))))
    (define gx#stx-pair? (lambda (_%e169946%_) (pair? (gx#stx-e _%e169946%_))))
    (define gx#stx-list?
      (lambda (_%e169908%_)
        (let* ((_%g169909169918%_ (gx#stx-e _%e169908%_))
               (_%E169912169922%_
                (lambda ()
                  (error '"No clause matching"
                         _%g169909169918%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%K169914169938%_
                 (lambda (_%rest169936%_) (gx#stx-list? _%rest169936%_)))
                (_%K169913169928%_
                 (lambda (_%tail169926%_) (null? _%tail169926%_))))
            (if (pair? _%g169909169918%_)
                (let* ((_%tl169916169941%_ (##cdr _%g169909169918%_))
                       (_%rest169944%_ _%tl169916169941%_))
                  (gx#stx-list? _%rest169944%_))
                (let ((_%tail169931%_ _%g169909169918%_))
                  (null? _%tail169931%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e169901%_)
        (let* ((_%e169903%_ (gx#stx-e _%e169901%_))
               (_%$e169905%_ (pair? _%e169903%_)))
          (if _%$e169905%_ _%$e169905%_ (null? _%e169903%_)))))
    (define gx#stx-vector?
      (lambda (_%e169899%_) (vector? (gx#stx-e _%e169899%_))))
    (define gx#stx-box? (lambda (_%e169897%_) (box? (gx#stx-e _%e169897%_))))
    (define gx#stx-eq?
      (lambda (_%x169894%_ _%y169895%_)
        (eq? (gx#stx-e _%x169894%_) (gx#stx-e _%y169895%_))))
    (define gx#stx-eqv?
      (lambda (_%x169891%_ _%y169892%_)
        (eqv? (gx#stx-e _%x169891%_) (gx#stx-e _%y169892%_))))
    (define gx#stx-equal?
      (lambda (_%x169888%_ _%y169889%_)
        (equal? (gx#stx-e _%x169888%_) (gx#stx-e _%y169889%_))))
    (define gx#stx-false? (lambda (_%x169886%_) (not (gx#stx-e _%x169886%_))))
    (define gx#stx-identifier
      (lambda (_%template169883%_ . _%args169884%_)
        (gx#datum->syntax__1
         _%template169883%_
         (apply make-symbol (gx#syntax->datum _%args169884%_))
         (gx#stx-source _%template169883%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx169881%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx169881%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx169876%_)
        (if (##structure-direct-instance-of?
             _%stx169876%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx169876%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx169876%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx169876%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx169876%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx169872%_)
        (let ((_%stx169874%_ (gx#stx-unwrap__0 _%stx169872%_)))
          (if (gx#identifier-quote? _%stx169874%_)
              (##unchecked-structure-ref _%stx169874%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx169827%_)
        (let* ((_%g169828169838%_ (gx#stx-e _%stx169827%_))
               (_%else169831169846%_ (lambda () '#f)))
          (let ((_%K169834169860%_
                 (lambda (_%rest169857%_ _%hd169858%_)
                   (if (gx#identifier? _%hd169858%_)
                       (gx#identifier-list? _%rest169857%_)
                       '#f)))
                (_%K169833169851%_ (lambda () '#t)))
            (let ((_%try-match169830169854%_
                   (lambda ()
                     (if (null? _%g169828169838%_)
                         (_%K169833169851%_)
                         (_%else169831169846%_)))))
              (if (pair? _%g169828169838%_)
                  (let ((_%tl169836169865%_ (##cdr _%g169828169838%_))
                        (_%hd169835169863%_ (##car _%g169828169838%_)))
                    (let ((_%hd169868%_ _%hd169835169863%_)
                          (_%rest169870%_ _%tl169836169865%_))
                      (_%K169834169860%_ _%rest169870%_ _%hd169868%_)))
                  (_%try-match169830169854%_)))))))
    (define gx#genident__%
      (lambda (_%e169807%_ _%src169808%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src169808%_) _%src169808%_ '#f)
         (##string->symbol
          (##symbol->string
           (##gensym
            (let ((_%e169810%_ (gx#stx-e _%e169807%_)))
              (if (symbol? _%e169810%_) _%e169810%_ 'g)))))
         _%src169808%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e169816%_ 'g) (_%src169818%_ '#f))
          (gx#genident__% _%e169816%_ _%src169818%_))))
    (define gx#genident__1
      (lambda (_%e169820%_)
        (let ((_%src169822%_ '#f))
          (gx#genident__% _%e169820%_ _%src169822%_))))
    (define gx#genident
      (lambda _g170286_
        (let ((_g170287_ (##length _g170286_)))
          (cond ((##fx= _g170287_ 0) (apply gx#genident__0 _g170286_))
                ((##fx= _g170287_ 1) (apply gx#genident__1 _g170286_))
                ((##fx= _g170287_ 2) (apply gx#genident__% _g170286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g170286_))))))
    (define gx#gentemps
      (lambda (_%stx-lst169802%_)
        (gx#stx-map1
         (lambda (_%x169804%_) (gx#genident__% _%x169804%_ _%x169804%_))
         _%stx-lst169802%_)))
    (define gx#syntax->list
      (lambda (_%stx169800%_) (gx#stx-map1 values _%stx169800%_)))
    (define gx#stx-car
      (lambda (_%stx169797%_)
        (declare (safe))
        (car (gx#syntax-e _%stx169797%_))))
    (define gx#stx-cdr
      (lambda (_%stx169794%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx169794%_))))
    (define gx#stx-length
      (lambda (_%stx169759%_)
        (let _%lp169761%_ ((_%rest169763%_ _%stx169759%_) (_%n169764%_ '0))
          (let* ((_%g169765169773%_ (gx#stx-e _%rest169763%_))
                 (_%else169767169781%_ (lambda () _%n169764%_))
                 (_%K169769169786%_
                  (lambda (_%rest169784%_)
                    (_%lp169761%_ _%rest169784%_ (##fx+ _%n169764%_ '1)))))
            (if (pair? _%g169765169773%_)
                (let* ((_%tl169771169789%_ (##cdr _%g169765169773%_))
                       (_%rest169792%_ _%tl169771169789%_))
                  (_%K169769169786%_ _%rest169792%_))
                (_%else169767169781%_))))))
    (define gx#stx-for-each
      (lambda _g170288_
        (let ((_g170289_ (##length _g170288_)))
          (cond ((##fx= _g170289_ 2) (apply gx#stx-for-each1 _g170288_))
                ((##fx= _g170289_ 3) (apply gx#stx-for-each2 _g170288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g170288_))))))
    (define gx#stx-for-each1
      (lambda (_%f169702%_ _%stx169703%_)
        (if (procedure? _%f169702%_)
            '#!void
            (error '"expected procedure" _%f169702%_))
        (let _%lp169705%_ ((_%rest169707%_ _%stx169703%_))
          (let* ((_%g169708169718%_ (gx#syntax-e _%rest169707%_))
                 (_%else169711169726%_
                  (lambda () (_%f169702%_ _%rest169707%_))))
            (let ((_%K169714169740%_
                   (lambda (_%rest169737%_ _%hd169738%_)
                     (_%f169702%_ _%hd169738%_)
                     (_%lp169705%_ _%rest169737%_)))
                  (_%K169713169731%_ (lambda () '#!void)))
              (let ((_%try-match169710169734%_
                     (lambda ()
                       (if (null? _%g169708169718%_)
                           (_%K169713169731%_)
                           (_%else169711169726%_)))))
                (if (pair? _%g169708169718%_)
                    (let ((_%tl169716169745%_ (##cdr _%g169708169718%_))
                          (_%hd169715169743%_ (##car _%g169708169718%_)))
                      (let ((_%hd169748%_ _%hd169715169743%_)
                            (_%rest169750%_ _%tl169716169745%_))
                        (_%K169714169740%_ _%rest169750%_ _%hd169748%_)))
                    (_%try-match169710169734%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f169607%_ _%xstx169608%_ _%ystx169609%_)
        (if (procedure? _%f169607%_)
            '#!void
            (error '"expected procedure" _%f169607%_))
        (let _%lp169611%_ ((_%xrest169613%_ _%xstx169608%_)
                           (_%yrest169614%_ _%ystx169609%_))
          (let* ((_%g169615169625%_ (gx#syntax-e _%xrest169613%_))
                 (_%else169618169633%_ (lambda () '#!void)))
            (let ((_%K169621169690%_
                   (lambda (_%xrest169659%_ _%xhd169660%_)
                     (let* ((_%g169661169668%_ (gx#syntax-e _%yrest169614%_))
                            (_%E169663169672%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g169661169668%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K169664169678%_
                             (lambda (_%yrest169675%_ _%yhd169676%_)
                               (_%f169607%_ _%xhd169660%_ _%yhd169676%_)
                               (_%lp169611%_
                                _%xrest169659%_
                                _%yrest169675%_))))
                       (if (pair? _%g169661169668%_)
                           (let ((_%hd169665169681%_ (##car _%g169661169668%_))
                                 (_%tl169666169683%_
                                  (##cdr _%g169661169668%_)))
                             (let* ((_%yhd169686%_ _%hd169665169681%_)
                                    (_%yrest169688%_ _%tl169666169683%_))
                               (_%K169664169678%_
                                _%yrest169688%_
                                _%yhd169686%_)))
                           (_%E169663169672%_)))))
                  (_%K169620169653%_
                   (lambda ()
                     (let* ((_%yrest169637169642%_ _%yrest169614%_)
                            (_%E169639169646%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest169637169642%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K169640169650%_
                             (lambda ()
                               (_%f169607%_ _%xrest169613%_ _%yrest169614%_))))
                       (if (gx#stx-null? _%yrest169637169642%_)
                           (_%E169639169646%_)
                           (_%K169640169650%_))))))
              (let ((_%try-match169617169656%_
                     (lambda ()
                       (if (null? _%g169615169625%_)
                           (_%else169618169633%_)
                           (_%K169620169653%_)))))
                (if (pair? _%g169615169625%_)
                    (let ((_%tl169623169695%_ (##cdr _%g169615169625%_))
                          (_%hd169622169693%_ (##car _%g169615169625%_)))
                      (let ((_%xhd169698%_ _%hd169622169693%_)
                            (_%xrest169700%_ _%tl169623169695%_))
                        (_%K169621169690%_ _%xrest169700%_ _%xhd169698%_)))
                    (_%try-match169617169656%_))))))))
    (define gx#stx-map
      (lambda _g170290_
        (let ((_g170291_ (##length _g170290_)))
          (cond ((##fx= _g170291_ 2) (apply gx#stx-map1 _g170290_))
                ((##fx= _g170291_ 3) (apply gx#stx-map2 _g170290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g170290_))))))
    (define gx#stx-map1
      (lambda (_%f169550%_ _%stx169551%_)
        (if (procedure? _%f169550%_)
            '#!void
            (error '"expected procedure" _%f169550%_))
        (let _%recur169553%_ ((_%rest169555%_ _%stx169551%_))
          (let* ((_%g169556169566%_ (gx#syntax-e _%rest169555%_))
                 (_%else169559169574%_
                  (lambda () (_%f169550%_ _%rest169555%_))))
            (let ((_%K169562169588%_
                   (lambda (_%rest169585%_ _%hd169586%_)
                     (cons (_%f169550%_ _%hd169586%_)
                           (_%recur169553%_ _%rest169585%_))))
                  (_%K169561169579%_ (lambda () '())))
              (let ((_%try-match169558169582%_
                     (lambda ()
                       (if (null? _%g169556169566%_)
                           (_%K169561169579%_)
                           (_%else169559169574%_)))))
                (if (pair? _%g169556169566%_)
                    (let ((_%tl169564169593%_ (##cdr _%g169556169566%_))
                          (_%hd169563169591%_ (##car _%g169556169566%_)))
                      (let ((_%hd169596%_ _%hd169563169591%_)
                            (_%rest169598%_ _%tl169564169593%_))
                        (_%K169562169588%_ _%rest169598%_ _%hd169596%_)))
                    (_%try-match169558169582%_))))))))
    (define gx#stx-map2
      (lambda (_%f169455%_ _%xstx169456%_ _%ystx169457%_)
        (if (procedure? _%f169455%_)
            '#!void
            (error '"expected procedure" _%f169455%_))
        (let _%recur169459%_ ((_%xrest169461%_ _%xstx169456%_)
                              (_%yrest169462%_ _%ystx169457%_))
          (let* ((_%g169463169473%_ (gx#syntax-e _%xrest169461%_))
                 (_%else169466169481%_ (lambda () '())))
            (let ((_%K169469169538%_
                   (lambda (_%xrest169507%_ _%xhd169508%_)
                     (let* ((_%g169509169516%_ (gx#syntax-e _%yrest169462%_))
                            (_%E169511169520%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%g169509169516%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%K169512169526%_
                             (lambda (_%yrest169523%_ _%yhd169524%_)
                               (cons (_%f169455%_ _%xhd169508%_ _%yhd169524%_)
                                     (_%recur169459%_
                                      _%xrest169507%_
                                      _%yrest169523%_)))))
                       (if (pair? _%g169509169516%_)
                           (let ((_%hd169513169529%_ (##car _%g169509169516%_))
                                 (_%tl169514169531%_
                                  (##cdr _%g169509169516%_)))
                             (let* ((_%yhd169534%_ _%hd169513169529%_)
                                    (_%yrest169536%_ _%tl169514169531%_))
                               (_%K169512169526%_
                                _%yrest169536%_
                                _%yhd169534%_)))
                           (_%E169511169520%_)))))
                  (_%K169468169501%_
                   (lambda ()
                     (let* ((_%yrest169485169490%_ _%yrest169462%_)
                            (_%E169487169494%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%yrest169485169490%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%K169488169498%_
                             (lambda ()
                               (_%f169455%_ _%xrest169461%_ _%yrest169462%_))))
                       (if (gx#stx-null? _%yrest169485169490%_)
                           (_%E169487169494%_)
                           (_%K169488169498%_))))))
              (let ((_%try-match169465169504%_
                     (lambda ()
                       (if (null? _%g169463169473%_)
                           (_%else169466169481%_)
                           (_%K169468169501%_)))))
                (if (pair? _%g169463169473%_)
                    (let ((_%tl169471169543%_ (##cdr _%g169463169473%_))
                          (_%hd169470169541%_ (##car _%g169463169473%_)))
                      (let ((_%xhd169546%_ _%hd169470169541%_)
                            (_%xrest169548%_ _%tl169471169543%_))
                        (_%K169469169538%_ _%xrest169548%_ _%xhd169546%_)))
                    (_%try-match169465169504%_))))))))
    (define gx#stx-andmap
      (lambda (_%f169405%_ _%stx169406%_)
        (if (procedure? _%f169405%_)
            '#!void
            (error '"expected procedure" _%f169405%_))
        (let _%lp169408%_ ((_%rest169410%_ _%stx169406%_))
          (let* ((_%g169411169421%_ (gx#syntax-e _%rest169410%_))
                 (_%else169414169429%_
                  (lambda () (_%f169405%_ _%rest169410%_))))
            (let ((_%K169417169443%_
                   (lambda (_%rest169440%_ _%hd169441%_)
                     (if (_%f169405%_ _%hd169441%_)
                         (_%lp169408%_ _%rest169440%_)
                         '#f)))
                  (_%K169416169434%_ (lambda () '#t)))
              (let ((_%try-match169413169437%_
                     (lambda ()
                       (if (null? _%g169411169421%_)
                           (_%K169416169434%_)
                           (_%else169414169429%_)))))
                (if (pair? _%g169411169421%_)
                    (let ((_%tl169419169448%_ (##cdr _%g169411169421%_))
                          (_%hd169418169446%_ (##car _%g169411169421%_)))
                      (let ((_%hd169451%_ _%hd169418169446%_)
                            (_%rest169453%_ _%tl169419169448%_))
                        (_%K169417169443%_ _%rest169453%_ _%hd169451%_)))
                    (_%try-match169413169437%_))))))))
    (define gx#stx-ormap
      (lambda (_%f169352%_ _%stx169353%_)
        (if (procedure? _%f169352%_)
            '#!void
            (error '"expected procedure" _%f169352%_))
        (let _%lp169355%_ ((_%rest169357%_ _%stx169353%_))
          (let* ((_%g169358169368%_ (gx#syntax-e _%rest169357%_))
                 (_%else169361169376%_
                  (lambda () (_%f169352%_ _%rest169357%_))))
            (let ((_%K169364169393%_
                   (lambda (_%rest169387%_ _%hd169388%_)
                     (let ((_%$e169390%_ (_%f169352%_ _%hd169388%_)))
                       (if _%$e169390%_
                           _%$e169390%_
                           (_%lp169355%_ _%rest169387%_)))))
                  (_%K169363169381%_ (lambda () '#f)))
              (let ((_%try-match169360169384%_
                     (lambda ()
                       (if (null? _%g169358169368%_)
                           (_%K169363169381%_)
                           (_%else169361169376%_)))))
                (if (pair? _%g169358169368%_)
                    (let ((_%tl169366169398%_ (##cdr _%g169358169368%_))
                          (_%hd169365169396%_ (##car _%g169358169368%_)))
                      (let ((_%hd169401%_ _%hd169365169396%_)
                            (_%rest169403%_ _%tl169366169398%_))
                        (_%K169364169393%_ _%rest169403%_ _%hd169401%_)))
                    (_%try-match169360169384%_))))))))
    (define gx#stx-foldl
      (lambda (_%f169300%_ _%iv169301%_ _%stx169302%_)
        (if (procedure? _%f169300%_)
            '#!void
            (error '"expected procedure" _%f169300%_))
        (let _%lp169304%_ ((_%r169306%_ _%iv169301%_)
                           (_%rest169307%_ _%stx169302%_))
          (let* ((_%g169308169318%_ (gx#syntax-e _%rest169307%_))
                 (_%else169311169326%_
                  (lambda () (_%f169300%_ _%rest169307%_ _%r169306%_))))
            (let ((_%K169314169340%_
                   (lambda (_%rest169337%_ _%hd169338%_)
                     (_%lp169304%_
                      (_%f169300%_ _%hd169338%_ _%r169306%_)
                      _%rest169337%_)))
                  (_%K169313169331%_ (lambda () _%r169306%_)))
              (let ((_%try-match169310169334%_
                     (lambda ()
                       (if (null? _%g169308169318%_)
                           (_%K169313169331%_)
                           (_%else169311169326%_)))))
                (if (pair? _%g169308169318%_)
                    (let ((_%tl169316169345%_ (##cdr _%g169308169318%_))
                          (_%hd169315169343%_ (##car _%g169308169318%_)))
                      (let ((_%hd169348%_ _%hd169315169343%_)
                            (_%rest169350%_ _%tl169316169345%_))
                        (_%K169314169340%_ _%rest169350%_ _%hd169348%_)))
                    (_%try-match169310169334%_))))))))
    (define gx#stx-foldr
      (lambda (_%f169249%_ _%iv169250%_ _%stx169251%_)
        (if (procedure? _%f169249%_)
            '#!void
            (error '"expected procedure" _%f169249%_))
        (let _%recur169253%_ ((_%rest169255%_ _%stx169251%_))
          (let* ((_%g169256169266%_ (gx#syntax-e _%rest169255%_))
                 (_%else169259169274%_
                  (lambda () (_%f169249%_ _%rest169255%_ _%iv169250%_))))
            (let ((_%K169262169288%_
                   (lambda (_%rest169285%_ _%hd169286%_)
                     (_%f169249%_
                      _%hd169286%_
                      (_%recur169253%_ _%rest169285%_))))
                  (_%K169261169279%_ (lambda () _%iv169250%_)))
              (let ((_%try-match169258169282%_
                     (lambda ()
                       (if (null? _%g169256169266%_)
                           (_%K169261169279%_)
                           (_%else169259169274%_)))))
                (if (pair? _%g169256169266%_)
                    (let ((_%tl169264169293%_ (##cdr _%g169256169266%_))
                          (_%hd169263169291%_ (##car _%g169256169266%_)))
                      (let ((_%hd169296%_ _%hd169263169291%_)
                            (_%rest169298%_ _%tl169264169293%_))
                        (_%K169262169288%_ _%rest169298%_ _%hd169296%_)))
                    (_%try-match169258169282%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx169247%_) (gx#stx-foldl cons '() _%stx169247%_)))
    (define gx#stx-last
      (lambda (_%stx169208%_)
        (let _%lp169210%_ ((_%rest169212%_ _%stx169208%_))
          (let* ((_%g169213169221%_ (gx#syntax-e _%rest169212%_))
                 (_%else169215169229%_ (lambda () _%rest169212%_))
                 (_%K169217169235%_
                  (lambda (_%rest169232%_ _%hd169233%_)
                    (if (gx#stx-null? _%rest169232%_)
                        _%hd169233%_
                        (_%lp169210%_ _%rest169232%_)))))
            (if (pair? _%g169213169221%_)
                (let ((_%hd169218169238%_ (##car _%g169213169221%_))
                      (_%tl169219169240%_ (##cdr _%g169213169221%_)))
                  (let* ((_%hd169243%_ _%hd169218169238%_)
                         (_%rest169245%_ _%tl169219169240%_))
                    (_%K169217169235%_ _%rest169245%_ _%hd169243%_)))
                (_%else169215169229%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx169179%_)
        (let _%lp169181%_ ((_%hd169183%_ _%stx169179%_))
          (let* ((_%g169184169191%_ (gx#syntax-e _%hd169183%_))
                 (_%E169186169195%_
                  (lambda ()
                    (error '"No clause matching"
                           _%g169184169191%_
                           '([_ . rest]))
                    '#!void))
                 (_%K169187169200%_
                  (lambda (_%rest169198%_)
                    (if (gx#stx-pair? _%rest169198%_)
                        (_%lp169181%_ _%rest169198%_)
                        _%hd169183%_))))
            (if (pair? _%g169184169191%_)
                (let* ((_%tl169189169203%_ (##cdr _%g169184169191%_))
                       (_%rest169206%_ _%tl169189169203%_))
                  (_%K169187169200%_ _%rest169206%_))
                (_%E169186169195%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx169148%_ _%k169149%_)
        (let _%lp169151%_ ((_%rest169153%_ _%stx169148%_)
                           (_%k169154%_ _%k169149%_))
          (if (fxpositive? _%k169154%_)
              (let* ((_%g169155169162%_ (gx#syntax-e _%rest169153%_))
                     (_%E169157169166%_
                      (lambda ()
                        (error '"No clause matching"
                               _%g169155169162%_
                               '([_ . rest]))
                        '#!void))
                     (_%K169158169171%_
                      (lambda (_%rest169169%_)
                        (_%lp169151%_ _%rest169169%_ (##fx- _%k169154%_ '1)))))
                (if (pair? _%g169155169162%_)
                    (let* ((_%tl169160169174%_ (##cdr _%g169155169162%_))
                           (_%rest169177%_ _%tl169160169174%_))
                      (_%K169158169171%_ _%rest169177%_))
                    (_%E169157169166%_)))
              _%rest169153%_))))
    (define gx#stx-list-ref
      (lambda (_%stx169145%_ _%k169146%_)
        (gx#stx-car (gx#stx-list-tail _%stx169145%_ _%k169146%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx169057%_ _%key?169058%_)
        (if (procedure? _%key?169058%_)
            '#!void
            (error '"expected procedure" _%key?169058%_))
        (let _%lp169060%_ ((_%rest169062%_ _%stx169057%_))
          (let* ((_%g169063169073%_ (gx#stx-e _%rest169062%_))
                 (_%else169066169081%_ (lambda () '#f)))
            (let ((_%K169069169123%_
                   (lambda (_%rest169092%_ _%hd169093%_)
                     (if (_%key?169058%_ _%hd169093%_)
                         (let* ((_%g169094169102%_ (gx#stx-e _%rest169092%_))
                                (_%else169096169110%_ (lambda () '#f))
                                (_%K169098169115%_
                                 (lambda (_%rest169113%_)
                                   (_%lp169060%_ _%rest169113%_))))
                           (if (pair? _%g169094169102%_)
                               (let* ((_%tl169100169118%_
                                       (##cdr _%g169094169102%_))
                                      (_%rest169121%_ _%tl169100169118%_))
                                 (_%lp169060%_ _%rest169121%_))
                               (_%else169096169110%_)))
                         '#f)))
                  (_%K169068169086%_ (lambda () '#t)))
              (let ((_%try-match169065169089%_
                     (lambda ()
                       (if (null? _%g169063169073%_)
                           (_%K169068169086%_)
                           (_%else169066169081%_)))))
                (if (pair? _%g169063169073%_)
                    (let ((_%tl169071169128%_ (##cdr _%g169063169073%_))
                          (_%hd169070169126%_ (##car _%g169063169073%_)))
                      (let ((_%hd169131%_ _%hd169070169126%_)
                            (_%rest169133%_ _%tl169071169128%_))
                        (_%K169069169123%_ _%rest169133%_ _%hd169131%_)))
                    (_%try-match169065169089%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx169138%_)
        (let ((_%key?169140%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx169138%_ _%key?169140%_))))
    (define gx#stx-plist?
      (lambda _g170292_
        (let ((_g170293_ (##length _g170292_)))
          (cond ((##fx= _g170293_ 1) (apply gx#stx-plist?__0 _g170292_))
                ((##fx= _g170293_ 2) (apply gx#stx-plist?__% _g170292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g170292_))))))
    (define gx#stx-getq__%
      (lambda (_%key168975%_ _%stx168976%_ _%key=?168977%_)
        (if (procedure? _%key=?168977%_)
            '#!void
            (error '"expected procedure" _%key=?168977%_))
        (let _%lp168979%_ ((_%rest168981%_ _%stx168976%_))
          (let* ((_%g168982168990%_ (gx#syntax-e _%rest168981%_))
                 (_%else168984168998%_ (lambda () '#f))
                 (_%K168986169032%_
                  (lambda (_%rest169001%_ _%hd169002%_)
                    (let* ((_%g169003169010%_ (gx#syntax-e _%rest169001%_))
                           (_%E169005169014%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%g169003169010%_
                                     '([val . rest]))
                              '#!void))
                           (_%K169006169020%_
                            (lambda (_%rest169017%_ _%val169018%_)
                              (if (_%key=?168977%_ _%hd169002%_ _%key168975%_)
                                  _%val169018%_
                                  (_%lp168979%_ _%rest169017%_)))))
                      (if (pair? _%g169003169010%_)
                          (let ((_%hd169007169023%_ (##car _%g169003169010%_))
                                (_%tl169008169025%_ (##cdr _%g169003169010%_)))
                            (let* ((_%val169028%_ _%hd169007169023%_)
                                   (_%rest169030%_ _%tl169008169025%_))
                              (_%K169006169020%_
                               _%rest169030%_
                               _%val169028%_)))
                          (_%E169005169014%_))))))
            (if (pair? _%g168982168990%_)
                (let ((_%hd168987169035%_ (##car _%g168982168990%_))
                      (_%tl168988169037%_ (##cdr _%g168982168990%_)))
                  (let* ((_%hd169040%_ _%hd168987169035%_)
                         (_%rest169042%_ _%tl168988169037%_))
                    (_%K168986169032%_ _%rest169042%_ _%hd169040%_)))
                (_%else168984168998%_))))))
    (define gx#stx-getq__0
      (lambda (_%key169047%_ _%stx169048%_)
        (let ((_%key=?169050%_ gx#stx-eq?))
          (gx#stx-getq__% _%key169047%_ _%stx169048%_ _%key=?169050%_))))
    (define gx#stx-getq
      (lambda _g170294_
        (let ((_g170295_ (##length _g170294_)))
          (cond ((##fx= _g170295_ 2) (apply gx#stx-getq__0 _g170294_))
                ((##fx= _g170295_ 3) (apply gx#stx-getq__% _g170294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g170294_))))))))
