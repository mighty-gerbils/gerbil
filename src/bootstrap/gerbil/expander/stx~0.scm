(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1781697561)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (__make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args178176%_
        (apply make-instance gx#identifier-wrap::t _%$args178176%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args178173%_
        (apply make-instance gx#syntax-wrap::t _%$args178173%_)))
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
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args178170%_
        (apply make-instance gx#syntax-quote::t _%$args178170%_)))
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
      (lambda (_%stx178168%_) (symbol? (gx#stx-e _%stx178168%_))))
    (define gx#identifier-quote?
      (lambda (_%stx178166%_)
        (if (##structure-direct-instance-of? _%stx178166%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx178166%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx178161%_)
        (if (##structure-direct-instance-of? _%stx178161%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx178161%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx178161%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx178156%_)
        (if (##structure-direct-instance-of? _%stx178156%_ 'gx#syntax-quote::t)
            _%stx178156%_
            (if (##structure-direct-instance-of?
                 _%stx178156%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx178156%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx178130%_)
        (if (##structure-direct-instance-of? _%stx178130%_ 'gx#syntax-wrap::t)
            (let _%lp178133%_ ((_%e178135%_
                                (##unchecked-structure-ref
                                 _%stx178130%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks178136%_
                                (cons (##unchecked-structure-ref
                                       _%stx178130%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e178135%_)
                  (let ((_%$e178139%_
                         (##type-id (##structure-type _%e178135%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e178139%_)
                        (_%lp178133%_
                         (##unchecked-structure-ref _%e178135%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e178135%_ '3 '#f '#f)
                          _%marks178136%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e178139%_)
                                (eq? 'gx#identifier-wrap::t _%$e178139%_))
                            (##unchecked-structure-ref _%e178135%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e178139%_)
                                (_%lp178133%_
                                 (##unchecked-structure-ref
                                  _%e178135%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks178136%_)
                                _%e178135%_))))
                  (if (null? _%marks178136%_)
                      _%e178135%_
                      (if (pair? _%e178135%_)
                          (cons (gx#stx-wrap
                                 (##car _%e178135%_)
                                 _%marks178136%_)
                                (gx#stx-wrap
                                 (##cdr _%e178135%_)
                                 _%marks178136%_))
                          (if (vector? _%e178135%_)
                              (vector-map
                               (lambda (_%$%g178147178149%_)
                                 (gx#stx-wrap
                                  _%$%g178147178149%_
                                  _%marks178136%_))
                               _%e178135%_)
                              (if (box? _%e178135%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e178135%_)
                                        _%marks178136%_))
                                  _%e178135%_))))))
            (if (##structure-instance-of? _%stx178130%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx178130%_ '1 '#f '#f)
                _%stx178130%_))))
    (define gx#syntax->datum
      (lambda (_%stx178123%_)
        (if (##structure-instance-of? _%stx178123%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx178123%_ '1 '#f '#f))
            (if (pair? _%stx178123%_)
                (cons (gx#syntax->datum (##car _%stx178123%_))
                      (gx#syntax->datum (##cdr _%stx178123%_)))
                (if (vector? _%stx178123%_)
                    (vector-map gx#syntax->datum _%stx178123%_)
                    (if (box? _%stx178123%_)
                        (box (gx#syntax->datum (unbox _%stx178123%_)))
                        _%stx178123%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx178057%_ _%datum178058%_ _%src178059%_ _%quote?178060%_)
        (letrec ((_%wrap-datum178062%_
                  (lambda (_%e178095%_ _%marks178096%_)
                    (_%wrap-inner178064%_
                     _%e178095%_
                     (lambda (_%$%g178097178099%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%$%g178097178099%_
                        _%src178059%_
                        _%marks178096%_)))))
                 (_%wrap-quote178063%_
                  (lambda (_%e178087%_ _%ctx178088%_ _%marks178089%_)
                    (_%wrap-inner178064%_
                     _%e178087%_
                     (lambda (_%$%g178090178092%_)
                       (##structure
                        gx#syntax-quote::t
                        _%$%g178090178092%_
                        _%src178059%_
                        _%ctx178088%_
                        _%marks178089%_)))))
                 (_%wrap-inner178064%_
                  (lambda (_%e178075%_ _%wrap-e178076%_)
                    (let _%recur178078%_ ((_%e178080%_ _%e178075%_))
                      (if (symbol? _%e178080%_)
                          (_%wrap-e178076%_ _%e178080%_)
                          (if (pair? _%e178080%_)
                              (cons (_%recur178078%_ (##car _%e178080%_))
                                    (_%recur178078%_ (##cdr _%e178080%_)))
                              (if (vector? _%e178080%_)
                                  (vector-map _%recur178078%_ _%e178080%_)
                                  (if (box? _%e178080%_)
                                      (box (_%recur178078%_
                                            (unbox _%e178080%_)))
                                      _%e178080%_)))))))
                 (_%wrap-outer178065%_
                  (lambda (_%e178073%_)
                    (if (##structure-instance-of? _%e178073%_ 'gerbil#AST::t)
                        _%e178073%_
                        (##structure gx#AST::t _%e178073%_ _%src178059%_)))))
          (if (##structure-instance-of? _%datum178058%_ 'gerbil#AST::t)
              _%datum178058%_
              (if (not _%stx178057%_)
                  (##structure gx#AST::t _%datum178058%_ _%src178059%_)
                  (if (gx#identifier? _%stx178057%_)
                      (let ((_%stx178070%_ (gx#stx-unwrap__0 _%stx178057%_)))
                        (_%wrap-outer178065%_
                         (if (##structure-direct-instance-of?
                              _%stx178070%_
                              'gx#syntax-quote::t)
                             (if _%quote?178060%_
                                 (_%wrap-quote178063%_
                                  _%datum178058%_
                                  (##unchecked-structure-ref
                                   _%stx178070%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx178070%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum178062%_
                                  _%datum178058%_
                                  (##unchecked-structure-ref
                                   _%stx178070%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum178062%_
                              _%datum178058%_
                              (##unchecked-structure-ref
                               _%stx178070%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx178057%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx178105%_ _%datum178106%_)
        (let* ((_%src178108%_ '#f) (_%quote?178110%_ '#t))
          (gx#datum->syntax__%
           _%stx178105%_
           _%datum178106%_
           _%src178108%_
           _%quote?178110%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx178112%_ _%datum178113%_ _%src178114%_)
        (let ((_%quote?178116%_ '#t))
          (gx#datum->syntax__%
           _%stx178112%_
           _%datum178113%_
           _%src178114%_
           _%quote?178116%_))))
    (define gx#datum->syntax
      (lambda _g178256_
        (let ((_g178257_ (##length _g178256_)))
          (cond ((##fx= _g178257_ 2) (apply gx#datum->syntax__0 _g178256_))
                ((##fx= _g178257_ 3) (apply gx#datum->syntax__1 _g178256_))
                ((##fx= _g178257_ 4) (apply gx#datum->syntax__% _g178256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g178256_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx178023%_ _%marks178024%_)
        (let _%lp178026%_ ((_%e178028%_ _%stx178023%_)
                           (_%marks178029%_ _%marks178024%_)
                           (_%src178030%_ (gx#stx-source _%stx178023%_)))
          (if (##structure-direct-instance-of? _%e178028%_ 'gx#syntax-wrap::t)
              (_%lp178026%_
               (##unchecked-structure-ref _%e178028%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e178028%_ '3 '#f '#f)
                _%marks178029%_)
               (##unchecked-structure-ref _%e178028%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e178028%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks178029%_)
                      _%e178028%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e178028%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e178028%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e178028%_ '3 '#f '#f)
                        _%marks178029%_)))
                  (if (##structure-direct-instance-of?
                       _%e178028%_
                       'gx#syntax-quote::t)
                      _%e178028%_
                      (if (##structure-instance-of? _%e178028%_ 'gerbil#AST::t)
                          (_%lp178026%_
                           (##unchecked-structure-ref _%e178028%_ '1 '#f '#f)
                           _%marks178029%_
                           (##unchecked-structure-ref _%e178028%_ '2 '#f '#f))
                          (if (symbol? _%e178028%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e178028%_
                               _%src178030%_
                               (reverse _%marks178029%_))
                              (if (null? _%marks178029%_)
                                  _%e178028%_
                                  (if (pair? _%e178028%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e178028%_)
                                             _%marks178029%_)
                                            (gx#stx-wrap
                                             (##cdr _%e178028%_)
                                             _%marks178029%_))
                                      (if (vector? _%e178028%_)
                                          (vector-map
                                           (lambda (_%$%g178039178041%_)
                                             (gx#stx-wrap
                                              _%$%g178039178041%_
                                              _%marks178029%_))
                                           _%e178028%_)
                                          (if (box? _%e178028%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e178028%_)
                                                    _%marks178029%_))
                                              _%e178028%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx178049%_)
        (let ((_%marks178051%_ '()))
          (gx#stx-unwrap__% _%stx178049%_ _%marks178051%_))))
    (define gx#stx-unwrap
      (lambda _g178258_
        (let ((_g178259_ (##length _g178258_)))
          (cond ((##fx= _g178259_ 1) (apply gx#stx-unwrap__0 _g178258_))
                ((##fx= _g178259_ 2) (apply gx#stx-unwrap__% _g178258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g178258_))))))
    (define gx#stx-wrap
      (lambda (_%stx178016%_ _%marks178017%_)
        (foldl__0
         (lambda (_%mark178019%_ _%stx178020%_)
           (gx#stx-apply-mark _%stx178020%_ _%mark178019%_))
         _%stx178016%_
         _%marks178017%_)))
    (define gx#stx-rewrap
      (lambda (_%stx178010%_ _%marks178011%_)
        (foldr__0
         (lambda (_%mark178013%_ _%stx178014%_)
           (gx#stx-apply-mark _%stx178014%_ _%mark178013%_))
         _%stx178010%_
         _%marks178011%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx178004%_ _%mark178005%_)
        (if (##structure-direct-instance-of? _%stx178004%_ 'gx#syntax-quote::t)
            _%stx178004%_
            (if (and (##structure-direct-instance-of?
                      _%stx178004%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark178005%_
                          (##unchecked-structure-ref
                           _%stx178004%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx178004%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx178004%_
                 (gx#stx-source _%stx178004%_)
                 _%mark178005%_)))))
    (define gx#apply-mark
      (lambda (_%mark177968%_ _%marks177969%_)
        (let* ((_%$%marks177970177978%_ _%marks177969%_)
               (_%$%else177972177986%_
                (lambda () (cons _%mark177968%_ _%marks177969%_)))
               (_%$%K177974177992%_
                (lambda (_%rest177989%_ _%hd177990%_)
                  (if (eq? _%mark177968%_ _%hd177990%_)
                      _%rest177989%_
                      (cons _%mark177968%_ _%marks177969%_)))))
          (if (pair? _%$%marks177970177978%_)
              (let ((_%$%hd177975177995%_ (##car _%$%marks177970177978%_))
                    (_%$%tl177976177997%_ (##cdr _%$%marks177970177978%_)))
                (let* ((_%hd178000%_ _%$%hd177975177995%_)
                       (_%rest178002%_ _%$%tl177976177997%_))
                  (_%$%K177974177992%_ _%rest178002%_ _%hd178000%_)))
              (_%$%else177972177986%_)))))
    (define gx#stx-e
      (lambda (_%stx177963%_)
        (if (##structure-direct-instance-of? _%stx177963%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx177963%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx177963%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx177963%_ '1 '#f '#f)
                _%stx177963%_))))
    (define gx#stx-source
      (lambda (_%stx177961%_)
        (if (##structure-instance-of? _%stx177961%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx177961%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx177955%_ _%src177956%_)
        (if (or (##structure-instance-of? _%stx177955%_ 'gerbil#AST::t)
                (not _%src177956%_))
            _%stx177955%_
            (##structure gx#AST::t _%stx177955%_ _%src177956%_))))
    (define gx#stx-datum?
      (lambda (_%stx177953%_) (gx#self-quoting? (gx#stx-e _%stx177953%_))))
    (define gx#self-quoting?
      (lambda (_%x177936%_)
        (let ((_%$e177938%_ (immediate? _%x177936%_)))
          (if _%$e177938%_
              _%$e177938%_
              (let ((_%$e177941%_ (number? _%x177936%_)))
                (if _%$e177941%_
                    _%$e177941%_
                    (let ((_%$e177944%_ (keyword? _%x177936%_)))
                      (if _%$e177944%_
                          _%$e177944%_
                          (let ((_%$e177947%_ (string? _%x177936%_)))
                            (if _%$e177947%_
                                _%$e177947%_
                                (let ((_%$e177950%_ (vector? _%x177936%_)))
                                  (if _%$e177950%_
                                      _%$e177950%_
                                      (u8vector? _%x177936%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e177934%_) (boolean? (gx#stx-e _%e177934%_))))
    (define gx#stx-keyword?
      (lambda (_%e177932%_) (keyword? (gx#stx-e _%e177932%_))))
    (define gx#stx-char? (lambda (_%e177930%_) (char? (gx#stx-e _%e177930%_))))
    (define gx#stx-number?
      (lambda (_%e177928%_) (number? (gx#stx-e _%e177928%_))))
    (define gx#stx-fixnum?
      (lambda (_%e177926%_) (fixnum? (gx#stx-e _%e177926%_))))
    (define gx#stx-string?
      (lambda (_%e177924%_) (string? (gx#stx-e _%e177924%_))))
    (define gx#stx-null? (lambda (_%e177922%_) (null? (gx#stx-e _%e177922%_))))
    (define gx#stx-pair? (lambda (_%e177920%_) (pair? (gx#stx-e _%e177920%_))))
    (define gx#stx-list?
      (lambda (_%e177882%_)
        (let* ((_%$%g177883177892%_ (gx#stx-e _%e177882%_))
               (_%$%E177886177896%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g177883177892%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%$%K177888177912%_
                 (lambda (_%rest177910%_) (gx#stx-list? _%rest177910%_)))
                (_%$%K177887177902%_
                 (lambda (_%tail177900%_) (null? _%tail177900%_))))
            (if (pair? _%$%g177883177892%_)
                (let* ((_%$%tl177890177915%_ (##cdr _%$%g177883177892%_))
                       (_%rest177918%_ _%$%tl177890177915%_))
                  (gx#stx-list? _%rest177918%_))
                (let ((_%tail177905%_ _%$%g177883177892%_))
                  (null? _%tail177905%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e177875%_)
        (let* ((_%e177877%_ (gx#stx-e _%e177875%_))
               (_%$e177879%_ (pair? _%e177877%_)))
          (if _%$e177879%_ _%$e177879%_ (null? _%e177877%_)))))
    (define gx#stx-vector?
      (lambda (_%e177873%_) (vector? (gx#stx-e _%e177873%_))))
    (define gx#stx-box? (lambda (_%e177871%_) (box? (gx#stx-e _%e177871%_))))
    (define gx#stx-eq?
      (lambda (_%x177868%_ _%y177869%_)
        (eq? (gx#stx-e _%x177868%_) (gx#stx-e _%y177869%_))))
    (define gx#stx-eqv?
      (lambda (_%x177865%_ _%y177866%_)
        (eqv? (gx#stx-e _%x177865%_) (gx#stx-e _%y177866%_))))
    (define gx#stx-equal?
      (lambda (_%x177862%_ _%y177863%_)
        (equal? (gx#stx-e _%x177862%_) (gx#stx-e _%y177863%_))))
    (define gx#stx-false? (lambda (_%x177860%_) (not (gx#stx-e _%x177860%_))))
    (define gx#stx-identifier
      (lambda (_%template177857%_ . _%args177858%_)
        (gx#datum->syntax__1
         _%template177857%_
         (apply make-symbol (gx#syntax->datum _%args177858%_))
         (gx#stx-source _%template177857%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx177855%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx177855%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx177850%_)
        (if (##structure-direct-instance-of?
             _%stx177850%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx177850%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx177850%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx177850%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx177850%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx177846%_)
        (let ((_%stx177848%_ (gx#stx-unwrap__0 _%stx177846%_)))
          (if (gx#identifier-quote? _%stx177848%_)
              (##unchecked-structure-ref _%stx177848%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx177801%_)
        (let* ((_%$%g177802177812%_ (gx#stx-e _%stx177801%_))
               (_%$%else177805177820%_ (lambda () '#f)))
          (let ((_%$%K177808177834%_
                 (lambda (_%rest177831%_ _%hd177832%_)
                   (if (gx#identifier? _%hd177832%_)
                       (gx#identifier-list? _%rest177831%_)
                       '#f)))
                (_%$%K177807177825%_ (lambda () '#t)))
            (let ((_%$%try-match177804177828%_
                   (lambda ()
                     (if (null? _%$%g177802177812%_)
                         (_%$%K177807177825%_)
                         (_%$%else177805177820%_)))))
              (if (pair? _%$%g177802177812%_)
                  (let ((_%$%tl177810177839%_ (##cdr _%$%g177802177812%_))
                        (_%$%hd177809177837%_ (##car _%$%g177802177812%_)))
                    (let ((_%hd177842%_ _%$%hd177809177837%_)
                          (_%rest177844%_ _%$%tl177810177839%_))
                      (_%$%K177808177834%_ _%rest177844%_ _%hd177842%_)))
                  (_%$%try-match177804177828%_)))))))
    (define gx#genident__%
      (lambda (_%e177781%_ _%src177782%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src177782%_) _%src177782%_ '#f)
         (make-symbol__1
          '"$%"
          (##gensym
           (let ((_%e177784%_ (gx#stx-e _%e177781%_)))
             (if (symbol? _%e177784%_) _%e177784%_ 'g))))
         _%src177782%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e177790%_ 'g) (_%src177792%_ '#f))
          (gx#genident__% _%e177790%_ _%src177792%_))))
    (define gx#genident__1
      (lambda (_%e177794%_)
        (let ((_%src177796%_ '#f))
          (gx#genident__% _%e177794%_ _%src177796%_))))
    (define gx#genident
      (lambda _g178260_
        (let ((_g178261_ (##length _g178260_)))
          (cond ((##fx= _g178261_ 0) (apply gx#genident__0 _g178260_))
                ((##fx= _g178261_ 1) (apply gx#genident__1 _g178260_))
                ((##fx= _g178261_ 2) (apply gx#genident__% _g178260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g178260_))))))
    (define gx#gentemps
      (lambda (_%stx-lst177776%_)
        (gx#stx-map1
         (lambda (_%x177778%_) (gx#genident__% _%x177778%_ _%x177778%_))
         _%stx-lst177776%_)))
    (define gx#syntax->list
      (lambda (_%stx177774%_) (gx#stx-map1 values _%stx177774%_)))
    (define gx#stx-car
      (lambda (_%stx177771%_)
        (declare (safe))
        (car (gx#syntax-e _%stx177771%_))))
    (define gx#stx-cdr
      (lambda (_%stx177768%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx177768%_))))
    (define gx#stx-length
      (lambda (_%stx177733%_)
        (let _%lp177735%_ ((_%rest177737%_ _%stx177733%_) (_%n177738%_ '0))
          (let* ((_%$%g177739177747%_ (gx#stx-e _%rest177737%_))
                 (_%$%else177741177755%_ (lambda () _%n177738%_))
                 (_%$%K177743177760%_
                  (lambda (_%rest177758%_)
                    (_%lp177735%_ _%rest177758%_ (##fx+ _%n177738%_ '1)))))
            (if (pair? _%$%g177739177747%_)
                (let* ((_%$%tl177745177763%_ (##cdr _%$%g177739177747%_))
                       (_%rest177766%_ _%$%tl177745177763%_))
                  (_%$%K177743177760%_ _%rest177766%_))
                (_%$%else177741177755%_))))))
    (define gx#stx-for-each
      (lambda _g178262_
        (let ((_g178263_ (##length _g178262_)))
          (cond ((##fx= _g178263_ 2) (apply gx#stx-for-each1 _g178262_))
                ((##fx= _g178263_ 3) (apply gx#stx-for-each2 _g178262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g178262_))))))
    (define gx#stx-for-each1
      (lambda (_%f177676%_ _%stx177677%_)
        (if (procedure? _%f177676%_)
            '#!void
            (error '"expected procedure" _%f177676%_))
        (let _%lp177679%_ ((_%rest177681%_ _%stx177677%_))
          (let* ((_%$%g177682177692%_ (gx#syntax-e _%rest177681%_))
                 (_%$%else177685177700%_
                  (lambda () (_%f177676%_ _%rest177681%_))))
            (let ((_%$%K177688177714%_
                   (lambda (_%rest177711%_ _%hd177712%_)
                     (_%f177676%_ _%hd177712%_)
                     (_%lp177679%_ _%rest177711%_)))
                  (_%$%K177687177705%_ (lambda () '#!void)))
              (let ((_%$%try-match177684177708%_
                     (lambda ()
                       (if (null? _%$%g177682177692%_)
                           (_%$%K177687177705%_)
                           (_%$%else177685177700%_)))))
                (if (pair? _%$%g177682177692%_)
                    (let ((_%$%tl177690177719%_ (##cdr _%$%g177682177692%_))
                          (_%$%hd177689177717%_ (##car _%$%g177682177692%_)))
                      (let ((_%hd177722%_ _%$%hd177689177717%_)
                            (_%rest177724%_ _%$%tl177690177719%_))
                        (_%$%K177688177714%_ _%rest177724%_ _%hd177722%_)))
                    (_%$%try-match177684177708%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f177581%_ _%xstx177582%_ _%ystx177583%_)
        (if (procedure? _%f177581%_)
            '#!void
            (error '"expected procedure" _%f177581%_))
        (let _%lp177585%_ ((_%xrest177587%_ _%xstx177582%_)
                           (_%yrest177588%_ _%ystx177583%_))
          (let* ((_%$%g177589177599%_ (gx#syntax-e _%xrest177587%_))
                 (_%$%else177592177607%_ (lambda () '#!void)))
            (let ((_%$%K177595177664%_
                   (lambda (_%xrest177633%_ _%xhd177634%_)
                     (let* ((_%$%g177635177642%_ (gx#syntax-e _%yrest177588%_))
                            (_%$%E177637177646%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g177635177642%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K177638177652%_
                             (lambda (_%yrest177649%_ _%yhd177650%_)
                               (_%f177581%_ _%xhd177634%_ _%yhd177650%_)
                               (_%lp177585%_
                                _%xrest177633%_
                                _%yrest177649%_))))
                       (if (pair? _%$%g177635177642%_)
                           (let ((_%$%hd177639177655%_
                                  (##car _%$%g177635177642%_))
                                 (_%$%tl177640177657%_
                                  (##cdr _%$%g177635177642%_)))
                             (let* ((_%yhd177660%_ _%$%hd177639177655%_)
                                    (_%yrest177662%_ _%$%tl177640177657%_))
                               (_%$%K177638177652%_
                                _%yrest177662%_
                                _%yhd177660%_)))
                           (_%$%E177637177646%_)))))
                  (_%$%K177594177627%_
                   (lambda ()
                     (let* ((_%$%yrest177611177616%_ _%yrest177588%_)
                            (_%$%E177613177620%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest177611177616%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K177614177624%_
                             (lambda ()
                               (_%f177581%_ _%xrest177587%_ _%yrest177588%_))))
                       (if (gx#stx-null? _%$%yrest177611177616%_)
                           (_%$%E177613177620%_)
                           (_%$%K177614177624%_))))))
              (let ((_%$%try-match177591177630%_
                     (lambda ()
                       (if (null? _%$%g177589177599%_)
                           (_%$%else177592177607%_)
                           (_%$%K177594177627%_)))))
                (if (pair? _%$%g177589177599%_)
                    (let ((_%$%tl177597177669%_ (##cdr _%$%g177589177599%_))
                          (_%$%hd177596177667%_ (##car _%$%g177589177599%_)))
                      (let ((_%xhd177672%_ _%$%hd177596177667%_)
                            (_%xrest177674%_ _%$%tl177597177669%_))
                        (_%$%K177595177664%_ _%xrest177674%_ _%xhd177672%_)))
                    (_%$%try-match177591177630%_))))))))
    (define gx#stx-map
      (lambda _g178264_
        (let ((_g178265_ (##length _g178264_)))
          (cond ((##fx= _g178265_ 2) (apply gx#stx-map1 _g178264_))
                ((##fx= _g178265_ 3) (apply gx#stx-map2 _g178264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g178264_))))))
    (define gx#stx-map1
      (lambda (_%f177524%_ _%stx177525%_)
        (if (procedure? _%f177524%_)
            '#!void
            (error '"expected procedure" _%f177524%_))
        (let _%recur177527%_ ((_%rest177529%_ _%stx177525%_))
          (let* ((_%$%g177530177540%_ (gx#syntax-e _%rest177529%_))
                 (_%$%else177533177548%_
                  (lambda () (_%f177524%_ _%rest177529%_))))
            (let ((_%$%K177536177562%_
                   (lambda (_%rest177559%_ _%hd177560%_)
                     (cons (_%f177524%_ _%hd177560%_)
                           (_%recur177527%_ _%rest177559%_))))
                  (_%$%K177535177553%_ (lambda () '())))
              (let ((_%$%try-match177532177556%_
                     (lambda ()
                       (if (null? _%$%g177530177540%_)
                           (_%$%K177535177553%_)
                           (_%$%else177533177548%_)))))
                (if (pair? _%$%g177530177540%_)
                    (let ((_%$%tl177538177567%_ (##cdr _%$%g177530177540%_))
                          (_%$%hd177537177565%_ (##car _%$%g177530177540%_)))
                      (let ((_%hd177570%_ _%$%hd177537177565%_)
                            (_%rest177572%_ _%$%tl177538177567%_))
                        (_%$%K177536177562%_ _%rest177572%_ _%hd177570%_)))
                    (_%$%try-match177532177556%_))))))))
    (define gx#stx-map2
      (lambda (_%f177429%_ _%xstx177430%_ _%ystx177431%_)
        (if (procedure? _%f177429%_)
            '#!void
            (error '"expected procedure" _%f177429%_))
        (let _%recur177433%_ ((_%xrest177435%_ _%xstx177430%_)
                              (_%yrest177436%_ _%ystx177431%_))
          (let* ((_%$%g177437177447%_ (gx#syntax-e _%xrest177435%_))
                 (_%$%else177440177455%_ (lambda () '())))
            (let ((_%$%K177443177512%_
                   (lambda (_%xrest177481%_ _%xhd177482%_)
                     (let* ((_%$%g177483177490%_ (gx#syntax-e _%yrest177436%_))
                            (_%$%E177485177494%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g177483177490%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K177486177500%_
                             (lambda (_%yrest177497%_ _%yhd177498%_)
                               (cons (_%f177429%_ _%xhd177482%_ _%yhd177498%_)
                                     (_%recur177433%_
                                      _%xrest177481%_
                                      _%yrest177497%_)))))
                       (if (pair? _%$%g177483177490%_)
                           (let ((_%$%hd177487177503%_
                                  (##car _%$%g177483177490%_))
                                 (_%$%tl177488177505%_
                                  (##cdr _%$%g177483177490%_)))
                             (let* ((_%yhd177508%_ _%$%hd177487177503%_)
                                    (_%yrest177510%_ _%$%tl177488177505%_))
                               (_%$%K177486177500%_
                                _%yrest177510%_
                                _%yhd177508%_)))
                           (_%$%E177485177494%_)))))
                  (_%$%K177442177475%_
                   (lambda ()
                     (let* ((_%$%yrest177459177464%_ _%yrest177436%_)
                            (_%$%E177461177468%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest177459177464%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K177462177472%_
                             (lambda ()
                               (_%f177429%_ _%xrest177435%_ _%yrest177436%_))))
                       (if (gx#stx-null? _%$%yrest177459177464%_)
                           (_%$%E177461177468%_)
                           (_%$%K177462177472%_))))))
              (let ((_%$%try-match177439177478%_
                     (lambda ()
                       (if (null? _%$%g177437177447%_)
                           (_%$%else177440177455%_)
                           (_%$%K177442177475%_)))))
                (if (pair? _%$%g177437177447%_)
                    (let ((_%$%tl177445177517%_ (##cdr _%$%g177437177447%_))
                          (_%$%hd177444177515%_ (##car _%$%g177437177447%_)))
                      (let ((_%xhd177520%_ _%$%hd177444177515%_)
                            (_%xrest177522%_ _%$%tl177445177517%_))
                        (_%$%K177443177512%_ _%xrest177522%_ _%xhd177520%_)))
                    (_%$%try-match177439177478%_))))))))
    (define gx#stx-andmap
      (lambda (_%f177379%_ _%stx177380%_)
        (if (procedure? _%f177379%_)
            '#!void
            (error '"expected procedure" _%f177379%_))
        (let _%lp177382%_ ((_%rest177384%_ _%stx177380%_))
          (let* ((_%$%g177385177395%_ (gx#syntax-e _%rest177384%_))
                 (_%$%else177388177403%_
                  (lambda () (_%f177379%_ _%rest177384%_))))
            (let ((_%$%K177391177417%_
                   (lambda (_%rest177414%_ _%hd177415%_)
                     (if (_%f177379%_ _%hd177415%_)
                         (_%lp177382%_ _%rest177414%_)
                         '#f)))
                  (_%$%K177390177408%_ (lambda () '#t)))
              (let ((_%$%try-match177387177411%_
                     (lambda ()
                       (if (null? _%$%g177385177395%_)
                           (_%$%K177390177408%_)
                           (_%$%else177388177403%_)))))
                (if (pair? _%$%g177385177395%_)
                    (let ((_%$%tl177393177422%_ (##cdr _%$%g177385177395%_))
                          (_%$%hd177392177420%_ (##car _%$%g177385177395%_)))
                      (let ((_%hd177425%_ _%$%hd177392177420%_)
                            (_%rest177427%_ _%$%tl177393177422%_))
                        (_%$%K177391177417%_ _%rest177427%_ _%hd177425%_)))
                    (_%$%try-match177387177411%_))))))))
    (define gx#stx-ormap
      (lambda (_%f177326%_ _%stx177327%_)
        (if (procedure? _%f177326%_)
            '#!void
            (error '"expected procedure" _%f177326%_))
        (let _%lp177329%_ ((_%rest177331%_ _%stx177327%_))
          (let* ((_%$%g177332177342%_ (gx#syntax-e _%rest177331%_))
                 (_%$%else177335177350%_
                  (lambda () (_%f177326%_ _%rest177331%_))))
            (let ((_%$%K177338177367%_
                   (lambda (_%rest177361%_ _%hd177362%_)
                     (let ((_%$e177364%_ (_%f177326%_ _%hd177362%_)))
                       (if _%$e177364%_
                           _%$e177364%_
                           (_%lp177329%_ _%rest177361%_)))))
                  (_%$%K177337177355%_ (lambda () '#f)))
              (let ((_%$%try-match177334177358%_
                     (lambda ()
                       (if (null? _%$%g177332177342%_)
                           (_%$%K177337177355%_)
                           (_%$%else177335177350%_)))))
                (if (pair? _%$%g177332177342%_)
                    (let ((_%$%tl177340177372%_ (##cdr _%$%g177332177342%_))
                          (_%$%hd177339177370%_ (##car _%$%g177332177342%_)))
                      (let ((_%hd177375%_ _%$%hd177339177370%_)
                            (_%rest177377%_ _%$%tl177340177372%_))
                        (_%$%K177338177367%_ _%rest177377%_ _%hd177375%_)))
                    (_%$%try-match177334177358%_))))))))
    (define gx#stx-foldl
      (lambda (_%f177274%_ _%iv177275%_ _%stx177276%_)
        (if (procedure? _%f177274%_)
            '#!void
            (error '"expected procedure" _%f177274%_))
        (let _%lp177278%_ ((_%r177280%_ _%iv177275%_)
                           (_%rest177281%_ _%stx177276%_))
          (let* ((_%$%g177282177292%_ (gx#syntax-e _%rest177281%_))
                 (_%$%else177285177300%_
                  (lambda () (_%f177274%_ _%rest177281%_ _%r177280%_))))
            (let ((_%$%K177288177314%_
                   (lambda (_%rest177311%_ _%hd177312%_)
                     (_%lp177278%_
                      (_%f177274%_ _%hd177312%_ _%r177280%_)
                      _%rest177311%_)))
                  (_%$%K177287177305%_ (lambda () _%r177280%_)))
              (let ((_%$%try-match177284177308%_
                     (lambda ()
                       (if (null? _%$%g177282177292%_)
                           (_%$%K177287177305%_)
                           (_%$%else177285177300%_)))))
                (if (pair? _%$%g177282177292%_)
                    (let ((_%$%tl177290177319%_ (##cdr _%$%g177282177292%_))
                          (_%$%hd177289177317%_ (##car _%$%g177282177292%_)))
                      (let ((_%hd177322%_ _%$%hd177289177317%_)
                            (_%rest177324%_ _%$%tl177290177319%_))
                        (_%$%K177288177314%_ _%rest177324%_ _%hd177322%_)))
                    (_%$%try-match177284177308%_))))))))
    (define gx#stx-foldr
      (lambda (_%f177223%_ _%iv177224%_ _%stx177225%_)
        (if (procedure? _%f177223%_)
            '#!void
            (error '"expected procedure" _%f177223%_))
        (let _%recur177227%_ ((_%rest177229%_ _%stx177225%_))
          (let* ((_%$%g177230177240%_ (gx#syntax-e _%rest177229%_))
                 (_%$%else177233177248%_
                  (lambda () (_%f177223%_ _%rest177229%_ _%iv177224%_))))
            (let ((_%$%K177236177262%_
                   (lambda (_%rest177259%_ _%hd177260%_)
                     (_%f177223%_
                      _%hd177260%_
                      (_%recur177227%_ _%rest177259%_))))
                  (_%$%K177235177253%_ (lambda () _%iv177224%_)))
              (let ((_%$%try-match177232177256%_
                     (lambda ()
                       (if (null? _%$%g177230177240%_)
                           (_%$%K177235177253%_)
                           (_%$%else177233177248%_)))))
                (if (pair? _%$%g177230177240%_)
                    (let ((_%$%tl177238177267%_ (##cdr _%$%g177230177240%_))
                          (_%$%hd177237177265%_ (##car _%$%g177230177240%_)))
                      (let ((_%hd177270%_ _%$%hd177237177265%_)
                            (_%rest177272%_ _%$%tl177238177267%_))
                        (_%$%K177236177262%_ _%rest177272%_ _%hd177270%_)))
                    (_%$%try-match177232177256%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx177221%_) (gx#stx-foldl cons '() _%stx177221%_)))
    (define gx#stx-last
      (lambda (_%stx177182%_)
        (let _%lp177184%_ ((_%rest177186%_ _%stx177182%_))
          (let* ((_%$%g177187177195%_ (gx#syntax-e _%rest177186%_))
                 (_%$%else177189177203%_ (lambda () _%rest177186%_))
                 (_%$%K177191177209%_
                  (lambda (_%rest177206%_ _%hd177207%_)
                    (if (gx#stx-null? _%rest177206%_)
                        _%hd177207%_
                        (_%lp177184%_ _%rest177206%_)))))
            (if (pair? _%$%g177187177195%_)
                (let ((_%$%hd177192177212%_ (##car _%$%g177187177195%_))
                      (_%$%tl177193177214%_ (##cdr _%$%g177187177195%_)))
                  (let* ((_%hd177217%_ _%$%hd177192177212%_)
                         (_%rest177219%_ _%$%tl177193177214%_))
                    (_%$%K177191177209%_ _%rest177219%_ _%hd177217%_)))
                (_%$%else177189177203%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx177153%_)
        (let _%lp177155%_ ((_%hd177157%_ _%stx177153%_))
          (let* ((_%$%g177158177165%_ (gx#syntax-e _%hd177157%_))
                 (_%$%E177160177169%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g177158177165%_
                           '([_ . rest]))
                    '#!void))
                 (_%$%K177161177174%_
                  (lambda (_%rest177172%_)
                    (if (gx#stx-pair? _%rest177172%_)
                        (_%lp177155%_ _%rest177172%_)
                        _%hd177157%_))))
            (if (pair? _%$%g177158177165%_)
                (let* ((_%$%tl177163177177%_ (##cdr _%$%g177158177165%_))
                       (_%rest177180%_ _%$%tl177163177177%_))
                  (_%$%K177161177174%_ _%rest177180%_))
                (_%$%E177160177169%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx177122%_ _%k177123%_)
        (let _%lp177125%_ ((_%rest177127%_ _%stx177122%_)
                           (_%k177128%_ _%k177123%_))
          (if (fxpositive? _%k177128%_)
              (let* ((_%$%g177129177136%_ (gx#syntax-e _%rest177127%_))
                     (_%$%E177131177140%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g177129177136%_
                               '([_ . rest]))
                        '#!void))
                     (_%$%K177132177145%_
                      (lambda (_%rest177143%_)
                        (_%lp177125%_ _%rest177143%_ (##fx- _%k177128%_ '1)))))
                (if (pair? _%$%g177129177136%_)
                    (let* ((_%$%tl177134177148%_ (##cdr _%$%g177129177136%_))
                           (_%rest177151%_ _%$%tl177134177148%_))
                      (_%$%K177132177145%_ _%rest177151%_))
                    (_%$%E177131177140%_)))
              _%rest177127%_))))
    (define gx#stx-list-ref
      (lambda (_%stx177119%_ _%k177120%_)
        (gx#stx-car (gx#stx-list-tail _%stx177119%_ _%k177120%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx177031%_ _%key?177032%_)
        (if (procedure? _%key?177032%_)
            '#!void
            (error '"expected procedure" _%key?177032%_))
        (let _%lp177034%_ ((_%rest177036%_ _%stx177031%_))
          (let* ((_%$%g177037177047%_ (gx#stx-e _%rest177036%_))
                 (_%$%else177040177055%_ (lambda () '#f)))
            (let ((_%$%K177043177097%_
                   (lambda (_%rest177066%_ _%hd177067%_)
                     (if (_%key?177032%_ _%hd177067%_)
                         (let* ((_%$%g177068177076%_ (gx#stx-e _%rest177066%_))
                                (_%$%else177070177084%_ (lambda () '#f))
                                (_%$%K177072177089%_
                                 (lambda (_%rest177087%_)
                                   (_%lp177034%_ _%rest177087%_))))
                           (if (pair? _%$%g177068177076%_)
                               (let* ((_%$%tl177074177092%_
                                       (##cdr _%$%g177068177076%_))
                                      (_%rest177095%_ _%$%tl177074177092%_))
                                 (_%lp177034%_ _%rest177095%_))
                               (_%$%else177070177084%_)))
                         '#f)))
                  (_%$%K177042177060%_ (lambda () '#t)))
              (let ((_%$%try-match177039177063%_
                     (lambda ()
                       (if (null? _%$%g177037177047%_)
                           (_%$%K177042177060%_)
                           (_%$%else177040177055%_)))))
                (if (pair? _%$%g177037177047%_)
                    (let ((_%$%tl177045177102%_ (##cdr _%$%g177037177047%_))
                          (_%$%hd177044177100%_ (##car _%$%g177037177047%_)))
                      (let ((_%hd177105%_ _%$%hd177044177100%_)
                            (_%rest177107%_ _%$%tl177045177102%_))
                        (_%$%K177043177097%_ _%rest177107%_ _%hd177105%_)))
                    (_%$%try-match177039177063%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx177112%_)
        (let ((_%key?177114%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx177112%_ _%key?177114%_))))
    (define gx#stx-plist?
      (lambda _g178266_
        (let ((_g178267_ (##length _g178266_)))
          (cond ((##fx= _g178267_ 1) (apply gx#stx-plist?__0 _g178266_))
                ((##fx= _g178267_ 2) (apply gx#stx-plist?__% _g178266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g178266_))))))
    (define gx#stx-getq__%
      (lambda (_%key176949%_ _%stx176950%_ _%key=?176951%_)
        (if (procedure? _%key=?176951%_)
            '#!void
            (error '"expected procedure" _%key=?176951%_))
        (let _%lp176953%_ ((_%rest176955%_ _%stx176950%_))
          (let* ((_%$%g176956176964%_ (gx#syntax-e _%rest176955%_))
                 (_%$%else176958176972%_ (lambda () '#f))
                 (_%$%K176960177006%_
                  (lambda (_%rest176975%_ _%hd176976%_)
                    (let* ((_%$%g176977176984%_ (gx#syntax-e _%rest176975%_))
                           (_%$%E176979176988%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g176977176984%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K176980176994%_
                            (lambda (_%rest176991%_ _%val176992%_)
                              (if (_%key=?176951%_ _%hd176976%_ _%key176949%_)
                                  _%val176992%_
                                  (_%lp176953%_ _%rest176991%_)))))
                      (if (pair? _%$%g176977176984%_)
                          (let ((_%$%hd176981176997%_
                                 (##car _%$%g176977176984%_))
                                (_%$%tl176982176999%_
                                 (##cdr _%$%g176977176984%_)))
                            (let* ((_%val177002%_ _%$%hd176981176997%_)
                                   (_%rest177004%_ _%$%tl176982176999%_))
                              (_%$%K176980176994%_
                               _%rest177004%_
                               _%val177002%_)))
                          (_%$%E176979176988%_))))))
            (if (pair? _%$%g176956176964%_)
                (let ((_%$%hd176961177009%_ (##car _%$%g176956176964%_))
                      (_%$%tl176962177011%_ (##cdr _%$%g176956176964%_)))
                  (let* ((_%hd177014%_ _%$%hd176961177009%_)
                         (_%rest177016%_ _%$%tl176962177011%_))
                    (_%$%K176960177006%_ _%rest177016%_ _%hd177014%_)))
                (_%$%else176958176972%_))))))
    (define gx#stx-getq__0
      (lambda (_%key177021%_ _%stx177022%_)
        (let ((_%key=?177024%_ gx#stx-eq?))
          (gx#stx-getq__% _%key177021%_ _%stx177022%_ _%key=?177024%_))))
    (define gx#stx-getq
      (lambda _g178268_
        (let ((_g178269_ (##length _g178268_)))
          (cond ((##fx= _g178269_ 2) (apply gx#stx-getq__0 _g178268_))
                ((##fx= _g178269_ 3) (apply gx#stx-getq__% _g178268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g178268_))))))))
