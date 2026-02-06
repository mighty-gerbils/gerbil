(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1770405373)
  (begin
    (define __syntax::t
      (let ((__tmp165721 (list)) (__tmp165720 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp165721
         '(e id)
         __tmp165720
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args165525%_
        (apply make-instance __syntax::t _%$args165525%_)))
    (define __syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (__make-class-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'id)))
    (define __core-form::t
      (let ((__tmp165723 (list __syntax::t))
            (__tmp165722 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp165723
         '()
         __tmp165722
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args165522%_
        (apply make-instance __core-form::t _%$args165522%_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp165725 (list __core-form::t))
            (__tmp165724 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp165725
         '()
         __tmp165724
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args165519%_
        (apply make-instance __core-expression::t _%$args165519%_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp165727 (list __core-form::t))
            (__tmp165726 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp165727
         '()
         __tmp165726
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args165516%_
        (apply make-instance __core-special-form::t _%$args165516%_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __core (let () (declare (not safe)) (make-hash-table-eq)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (lambda (_%id165490%_)
        (let* ((_%h165492%_ __core)
               (_%key165495%_
                (let () (declare (not safe)) (__AST-e _%id165490%_)))
               (_%h165502%_
                (let ((_%$obj165499%_ _%h165492%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165499%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165499%_)))
                           '#t)
                      _%$obj165499%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165499%_)))))
               (_%h165504%_ _%h165502%_))
          (declare (not safe))
          (__hash-get _%h165504%_ _%key165495%_))))
    (define __core-bound-id?__%
      (lambda (_%id165473%_ _%is?165474%_)
        (let ((_%$e165476%_ (__core-resolve _%id165473%_)))
          (if _%$e165476%_ (_%is?165474%_ _%$e165476%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id165483%_)
        (let ((_%is?165485%_ true))
          (__core-bound-id?__% _%id165483%_ _%is?165485%_))))
    (define __core-bound-id?
      (lambda _g165728_
        (let ((_g165729_ (let () (declare (not safe)) (##length _g165728_))))
          (cond ((let () (declare (not safe)) (##fx= _g165729_ 1))
                 (apply __core-bound-id?__0 _g165728_))
                ((let () (declare (not safe)) (##fx= _g165729_ 2))
                 (apply __core-bound-id?__% _g165728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g165728_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id165428%_ _%e165429%_ _%make165430%_)
        (let* ((_%h165432%_ __core)
               (_%key165435%_ _%id165428%_)
               (_%value165438%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e165429%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e165429%_
                    (_%make165430%_ _%e165429%_ _%id165428%_)))
               (_%h165445%_
                (let ((_%$obj165442%_ _%h165432%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165442%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165442%_)))
                           '#t)
                      _%$obj165442%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165442%_)))))
               (_%h165447%_ _%h165445%_))
          (declare (not safe))
          (__hash-put! _%h165447%_ _%key165435%_ _%value165438%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id165463%_ _%e165464%_)
        (let ((_%make165466%_ make-__syntax))
          (__core-bind-syntax!__% _%id165463%_ _%e165464%_ _%make165466%_))))
    (define __core-bind-syntax!
      (lambda _g165730_
        (let ((_g165731_ (let () (declare (not safe)) (##length _g165730_))))
          (cond ((let () (declare (not safe)) (##fx= _g165731_ 2))
                 (apply __core-bind-syntax!__0 _g165730_))
                ((let () (declare (not safe)) (##fx= _g165731_ 3))
                 (apply __core-bind-syntax!__% _g165730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g165730_))))))
    (define __SRC__%
      (lambda (_%e165408%_ _%src-stx165409%_)
        (if (or (pair? _%e165408%_) (symbol? _%e165408%_))
            (let ((__tmp165732
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx165409%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx165409%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e165408%_ __tmp165732))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e165408%_ 'gerbil#AST::t))
                (let ((__tmp165734
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e165408%_ '1 '#f '#f)))
                      (__tmp165733
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e165408%_)))))
                  (declare (not safe))
                  (##make-source __tmp165734 __tmp165733))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e165408%_))))))
    (define __SRC__0
      (lambda (_%e165420%_)
        (let ((_%src-stx165422%_ '#f))
          (__SRC__% _%e165420%_ _%src-stx165422%_))))
    (define __SRC
      (lambda _g165735_
        (let ((_g165736_ (let () (declare (not safe)) (##length _g165735_))))
          (cond ((let () (declare (not safe)) (##fx= _g165736_ 1))
                 (apply __SRC__0 _g165735_))
                ((let () (declare (not safe)) (##fx= _g165736_ 2))
                 (apply __SRC__% _g165735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g165735_))))))
    (define __locat
      (lambda (_%loc165405%_)
        (if (let () (declare (not safe)) (##locat? _%loc165405%_))
            _%loc165405%_
            '#f)))
    (define __check-values
      (lambda (_%obj165400%_ _%k165401%_)
        (let ((_%count165403%_
               (if (let () (declare (not safe)) (##values? _%obj165400%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj165400%_))
                   '1)))
          (if (fx= _%count165403%_ _%k165401%_)
              '#!void
              (let ((__tmp165738
                     (if (fx< _%count165403%_ _%k165401%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp165737
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj165400%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj165400%_))
                         _%obj165400%_)))
                (declare (not safe))
                (error __tmp165738 __tmp165737 _%k165401%_))))))
    (define __compile
      (lambda (_%stx165369%_)
        (let* ((_%$e165371%_ _%stx165369%_)
               (_%$E165373165379%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165371%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165371%_))
              (let* ((_%$tgt165374165382%_
                      (let () (declare (not safe)) (__AST-e _%$e165371%_)))
                     (_%$hd165375165385%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165374165382%_)))
                     (_%$tl165376165388%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165374165382%_)))
                     (_%form165392%_ _%$hd165375165385%_)
                     (_%$e165394%_ (__core-resolve _%form165392%_)))
                (if _%$e165394%_
                    ((lambda (_%bind165397%_)
                       ((##structure-ref _%bind165397%_ '1 __syntax::t '#f)
                        _%stx165369%_))
                     _%$e165394%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx165369%_
                       _%form165392%_))))
              (_%$E165373165379%_)))))
    (define __compile-error__%
      (lambda (_%stx165356%_ _%detail165357%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx165356%_
           _%detail165357%_))))
    (define __compile-error__0
      (lambda (_%stx165362%_)
        (let ((_%detail165364%_ '#f))
          (__compile-error__% _%stx165362%_ _%detail165364%_))))
    (define __compile-error
      (lambda _g165739_
        (let ((_g165740_ (let () (declare (not safe)) (##length _g165739_))))
          (cond ((let () (declare (not safe)) (##fx= _g165740_ 1))
                 (apply __compile-error__0 _g165739_))
                ((let () (declare (not safe)) (##fx= _g165740_ 2))
                 (apply __compile-error__% _g165739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g165739_))))))
    (define __compile-ignore%
      (lambda (_%stx165353%_) (__SRC__% ''#!void _%stx165353%_)))
    (define __compile-begin%
      (lambda (_%stx165328%_)
        (let* ((_%$e165330%_ _%stx165328%_)
               (_%$E165332165338%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165330%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165330%_))
              (let* ((_%$tgt165333165341%_
                      (let () (declare (not safe)) (__AST-e _%$e165330%_)))
                     (_%$hd165334165344%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165333165341%_)))
                     (_%$tl165335165347%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165333165341%_)))
                     (_%body165351%_ _%$tl165335165347%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body165351%_))
                 _%stx165328%_))
              (_%$E165332165338%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx165303%_)
        (let* ((_%$e165305%_ _%stx165303%_)
               (_%$E165307165313%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165305%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165305%_))
              (let* ((_%$tgt165308165316%_
                      (let () (declare (not safe)) (__AST-e _%$e165305%_)))
                     (_%$hd165309165319%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165308165316%_)))
                     (_%$tl165310165322%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165308165316%_)))
                     (_%body165326%_ _%$tl165310165322%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body165326%_)))
                 _%stx165303%_))
              (_%$E165307165313%_)))))
    (define __compile-import%
      (lambda (_%stx165278%_)
        (let* ((_%$e165280%_ _%stx165278%_)
               (_%$E165282165288%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165280%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165280%_))
              (let* ((_%$tgt165283165291%_
                      (let () (declare (not safe)) (__AST-e _%$e165280%_)))
                     (_%$hd165284165294%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165283165291%_)))
                     (_%$tl165285165297%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165283165291%_)))
                     (_%body165301%_ _%$tl165285165297%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body165301%_ '())) '()))
                 _%stx165278%_))
              (_%$E165282165288%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx165225%_)
        (let* ((_%$e165227%_ _%stx165225%_)
               (_%$E165229165241%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165227%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165227%_))
              (let* ((_%$tgt165230165244%_
                      (let () (declare (not safe)) (__AST-e _%$e165227%_)))
                     (_%$hd165231165247%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165230165244%_)))
                     (_%$tl165232165250%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165230165244%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl165232165250%_))
                    (let* ((_%$tgt165233165254%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl165232165250%_)))
                           (_%$hd165234165257%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt165233165254%_)))
                           (_%$tl165235165260%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt165233165254%_)))
                           (_%ann165264%_ _%$hd165234165257%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl165235165260%_))
                          (let* ((_%$tgt165236165266%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl165235165260%_)))
                                 (_%$hd165237165269%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt165236165266%_)))
                                 (_%$tl165238165272%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt165236165266%_)))
                                 (_%expr165276%_ _%$hd165237165269%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl165238165272%_))
                                        '())
                                (__compile _%expr165276%_)
                                (_%$E165229165241%_)))
                          (_%$E165229165241%_)))
                    (_%$E165229165241%_)))
              (_%$E165229165241%_)))))
    (define __compile-define-values%
      (lambda (_%stx165116%_)
        (let* ((_%$e165118%_ _%stx165116%_)
               (_%$E165120165132%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165118%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165118%_))
              (let* ((_%$tgt165121165135%_
                      (let () (declare (not safe)) (__AST-e _%$e165118%_)))
                     (_%$hd165122165138%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165121165135%_)))
                     (_%$tl165123165141%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165121165135%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl165123165141%_))
                    (let* ((_%$tgt165124165145%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl165123165141%_)))
                           (_%$hd165125165148%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt165124165145%_)))
                           (_%$tl165126165151%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt165124165145%_)))
                           (_%hd165155%_ _%$hd165125165148%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl165126165151%_))
                          (let* ((_%$tgt165127165157%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl165126165151%_)))
                                 (_%$hd165128165160%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt165127165157%_)))
                                 (_%$tl165129165163%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt165127165157%_)))
                                 (_%expr165167%_ _%$hd165128165160%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl165129165163%_))
                                        '())
                                (let* ((_%$e165169%_ _%hd165155%_)
                                       (_%$E165171165212%_
                                        (lambda ()
                                          (let ((_%$E165172165197%_
                                                 (lambda ()
                                                   (let* ((_%$E165173165184%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e165169%_))))
                  (_%ids165187%_ _%hd165155%_)
                  (_%len165189%_ (length _%ids165187%_))
                  (_%tmp165191%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp165191%_
                                       (cons (__compile _%expr165167%_) '())))
                           _%stx165116%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp165191%_
                                             (cons _%len165189%_ '())))
                                 _%stx165116%_)
                                (let ((__tmp165741
                                       (let ((__tmp165743
                                              (lambda (_%id165194%_
                                                       _%k165195%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id165194%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id165194%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp165191%_
                                           (cons _%k165195%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx165116%_)
                                                    '#f)))
                                             (__tmp165742
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len165189%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp165743
                                          _%ids165187%_
                                          __tmp165742))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp165741)))))
              _%stx165116%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e165169%_))
                                                (let* ((_%$tgt165174165200%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e165169%_)))
                                                       (_%$hd165175165203%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt165174165200%_)))
                                                       (_%$tl165176165206%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt165174165200%_)))
                                                       (_%id165210%_
                                                        _%$hd165175165203%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl165176165206%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id165210%_)
                           (cons (__compile _%expr165167%_) '())))
               _%stx165116%_)
              (_%$E165172165197%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E165172165197%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e165169%_))
                                      (let* ((_%$tgt165177165215%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e165169%_)))
                                             (_%$hd165178165218%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt165177165215%_)))
                                             (_%$tl165179165221%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt165177165215%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd165178165218%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl165179165221%_))
                                                        '())
                                                (__compile _%expr165167%_)
                                                (_%$E165171165212%_))
                                            (_%$E165171165212%_)))
                                      (_%$E165171165212%_)))
                                (_%$E165120165132%_)))
                          (_%$E165120165132%_)))
                    (_%$E165120165132%_)))
              (_%$E165120165132%_)))))
    (define __compile-head-id
      (lambda (_%e165114%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e165114%_))
             _%e165114%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd165071%_)
        (let _%recur165073%_ ((_%rest165075%_ _%hd165071%_))
          (let* ((_%$e165077%_ _%rest165075%_)
                 (_%$E165079165097%_
                  (lambda ()
                    (let ((_%$E165080165094%_
                           (lambda ()
                             (let* ((_%$E165081165089%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e165077%_))))
                                    (_%tail165092%_ _%$e165077%_))
                               (__compile-head-id _%tail165092%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e165077%_))
                                  '())
                          '()
                          (_%$E165080165094%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e165077%_))
                (let* ((_%$tgt165082165100%_
                        (let () (declare (not safe)) (__AST-e _%$e165077%_)))
                       (_%$hd165083165103%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt165082165100%_)))
                       (_%$tl165084165106%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt165082165100%_)))
                       (_%hd165110%_ _%$hd165083165103%_)
                       (_%rest165112%_ _%$tl165084165106%_))
                  (cons (__compile-head-id _%hd165110%_)
                        (_%recur165073%_ _%rest165112%_)))
                (_%$E165079165097%_))))))
    (define __compile-lambda%
      (lambda (_%stx165018%_)
        (let* ((_%$e165020%_ _%stx165018%_)
               (_%$E165022165034%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165020%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165020%_))
              (let* ((_%$tgt165023165037%_
                      (let () (declare (not safe)) (__AST-e _%$e165020%_)))
                     (_%$hd165024165040%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165023165037%_)))
                     (_%$tl165025165043%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165023165037%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl165025165043%_))
                    (let* ((_%$tgt165026165047%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl165025165043%_)))
                           (_%$hd165027165050%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt165026165047%_)))
                           (_%$tl165028165053%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt165026165047%_)))
                           (_%hd165057%_ _%$hd165027165050%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl165028165053%_))
                          (let* ((_%$tgt165029165059%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl165028165053%_)))
                                 (_%$hd165030165062%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt165029165059%_)))
                                 (_%$tl165031165065%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt165029165059%_)))
                                 (_%body165069%_ _%$hd165030165062%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl165031165065%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd165057%_)
                                             (cons (__compile _%body165069%_)
                                                   '())))
                                 _%stx165018%_)
                                (_%$E165022165034%_)))
                          (_%$E165022165034%_)))
                    (_%$E165022165034%_)))
              (_%$E165022165034%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx164783%_)
        (letrec ((_%variadic?164785%_
                  (lambda (_%hd164983%_)
                    (let* ((_%$e164985%_ _%hd164983%_)
                           (_%$E164987165003%_
                            (lambda ()
                              (let ((_%$E164988165000%_
                                     (lambda ()
                                       (let ((_%$E164989164997%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e164985%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e164985%_))
                                            '())
                                    '#f
                                    (_%$E164988165000%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e164985%_))
                          (let* ((_%$tgt164990165006%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e164985%_)))
                                 (_%$hd164991165009%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164990165006%_)))
                                 (_%$tl164992165012%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164990165006%_)))
                                 (_%rest165016%_ _%$tl164992165012%_))
                            (_%variadic?164785%_ _%rest165016%_))
                          (_%$E164987165003%_)))))
                 (_%arity164786%_
                  (lambda (_%hd164921%_)
                    (let _%lp164923%_ ((_%rest164925%_ _%hd164921%_)
                                       (_%k164926%_ '0))
                      (let* ((_%$e164928%_ _%rest164925%_)
                             (_%$E164930164941%_
                              (lambda ()
                                (let ((_%$E164931164938%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e164928%_)))))
                                  _%k164926%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e164928%_))
                            (let* ((_%$tgt164932164944%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e164928%_)))
                                   (_%$hd164933164947%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt164932164944%_)))
                                   (_%$tl164934164950%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt164932164944%_)))
                                   (_%rest164954%_ _%$tl164934164950%_))
                              (_%lp164923%_
                               _%rest164954%_
                               (let ((_%x164956%_ _%k164926%_))
                                 (if (fixnum? _%x164956%_)
                                     (let ((_%x164961%_ _%x164956%_))
                                       (declare (not safe))
                                       (__fx1+ _%x164961%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x164956%_)
                                       '#!void)))))
                            (_%$E164930164941%_))))))
                 (_%generate164787%_
                  (lambda (_%rest164848%_ _%args164849%_ _%len164850%_)
                    (let* ((_%$e164852%_ _%rest164848%_)
                           (_%$E164854164865%_
                            (lambda ()
                              (let ((_%$E164855164862%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e164852%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args164849%_ '())))
                                 _%stx164783%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e164852%_))
                          (let* ((_%$tgt164856164868%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e164852%_)))
                                 (_%$hd164857164871%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164856164868%_)))
                                 (_%$tl164858164874%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164856164868%_)))
                                 (_%clause164878%_ _%$hd164857164871%_)
                                 (_%rest164880%_ _%$tl164858164874%_)
                                 (_%$e164882%_ _%clause164878%_)
                                 (_%$E164884164893%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e164882%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e164882%_))
                                (let* ((_%$tgt164885164896%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e164882%_)))
                                       (_%$hd164886164899%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt164885164896%_)))
                                       (_%$tl164887164902%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt164885164896%_)))
                                       (_%hd164906%_ _%$hd164886164899%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl164887164902%_))
                                      (let* ((_%$tgt164888164908%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl164887164902%_)))
                                             (_%$hd164889164911%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt164888164908%_)))
                                             (_%$tl164890164914%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt164888164908%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl164890164914%_))
                                                    '())
                                            (let ((_%clen164918%_
                                                   (_%arity164786%_
                                                    _%hd164906%_))
                                                  (_%cmp164919%_
                                                   (if (_%variadic?164785%_
                                                        _%hd164906%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp164919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len164850%_ (cons _%clen164918%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause164878%_))
                                      (cons _%args164849%_ '())))
                          _%stx164783%_)
                         (cons (_%generate164787%_
                                _%rest164880%_
                                _%args164849%_
                                _%len164850%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx164783%_))
                                            (_%$E164884164893%_)))
                                      (_%$E164884164893%_)))
                                (_%$E164884164893%_)))
                          (_%$E164854164865%_))))))
          (let* ((_%$e164789%_ _%stx164783%_)
                 (_%$E164791164823%_
                  (lambda ()
                    (let ((_%$E164792164805%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e164789%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e164789%_))
                          (let* ((_%$tgt164793164808%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e164789%_)))
                                 (_%$hd164794164811%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164793164808%_)))
                                 (_%$tl164795164814%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164793164808%_)))
                                 (_%clauses164818%_ _%$tl164795164814%_))
                            (let ((_%args164820%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx164783%_))
                                  (_%len164821%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx164783%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args164820%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len164821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args164820%_ '()))
                                         _%stx164783%_)
                                        '()))
                            '())
                      (cons (_%generate164787%_
                             _%clauses164818%_
                             _%args164820%_
                             _%len164821%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx164783%_)
                                                 '())))
                               _%stx164783%_)))
                          (_%$E164792164805%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e164789%_))
                (let* ((_%$tgt164796164826%_
                        (let () (declare (not safe)) (__AST-e _%$e164789%_)))
                       (_%$hd164797164829%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt164796164826%_)))
                       (_%$tl164798164832%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt164796164826%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl164798164832%_))
                      (let* ((_%$tgt164799164836%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl164798164832%_)))
                             (_%$hd164800164839%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt164799164836%_)))
                             (_%$tl164801164842%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt164799164836%_)))
                             (_%clause164846%_ _%$hd164800164839%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl164801164842%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause164846%_))
                            (_%$E164791164823%_)))
                      (_%$E164791164823%_)))
                (_%$E164791164823%_))))))
    (define __compile-let-form
      (lambda (_%stx164552%_ _%compile-simple164553%_ _%compile-values164554%_)
        (letrec ((_%simple-bind?164556%_
                  (lambda (_%hd164741%_)
                    (let* ((_%hd164742164752%_ _%hd164741%_)
                           (_%else164745164760%_ (lambda () '#f)))
                      (let ((_%K164748164773%_ (lambda (_%id164771%_) '#t))
                            (_%K164747164765%_ (lambda () '#t)))
                        (let ((_%try-match164744164768%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd164742164752%_ '#f))
                                     (_%K164747164765%_)
                                     (_%else164745164760%_)))))
                          (if (pair? _%hd164742164752%_)
                              (let ((_%tl164750164778%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd164742164752%_)))
                                    (_%hd164749164776%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd164742164752%_))))
                                (if (null? _%tl164750164778%_)
                                    (let ((_%id164781%_ _%hd164749164776%_))
                                      (_%K164748164773%_ _%id164781%_))
                                    (_%try-match164744164768%_)))
                              (_%try-match164744164768%_)))))))
                 (_%car-e164557%_
                  (lambda (_%hd164739%_)
                    (if (pair? _%hd164739%_)
                        (let () (declare (not safe)) (##car _%hd164739%_))
                        _%hd164739%_))))
          (let* ((_%$e164559%_ _%stx164552%_)
                 (_%$E164561164704%_
                  (lambda ()
                    (let ((_%$E164562164584%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e164559%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e164559%_))
                          (let* ((_%$tgt164563164587%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e164559%_)))
                                 (_%$hd164564164590%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164563164587%_)))
                                 (_%$tl164565164593%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164563164587%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl164565164593%_))
                                (let* ((_%$tgt164566164597%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl164565164593%_)))
                                       (_%$hd164567164600%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt164566164597%_)))
                                       (_%$tl164568164603%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt164566164597%_)))
                                       (_%hd164607%_ _%$hd164567164600%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl164568164603%_))
                                      (let* ((_%$tgt164569164609%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl164568164603%_)))
                                             (_%$hd164570164612%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt164569164609%_)))
                                             (_%$tl164571164615%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt164569164609%_)))
                                             (_%body164619%_
                                              _%$hd164570164612%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl164571164615%_))
                                                    '())
                                            (let* ((_%hd-ids164659%_
                                                    (map (lambda (_%bind164621%_)
                                                           (let* ((_%$e164623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind164621%_)
                          (_%$E164625164634%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e164623%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e164623%_))
                         (let* ((_%$tgt164626164637%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e164623%_)))
                                (_%$hd164627164640%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt164626164637%_)))
                                (_%$tl164628164643%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt164626164637%_)))
                                (_%ids164647%_ _%$hd164627164640%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl164628164643%_))
                               (let* ((_%$tgt164629164649%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl164628164643%_)))
                                      (_%$hd164630164652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt164629164649%_)))
                                      (_%$tl164631164655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt164629164649%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl164631164655%_))
                                             '())
                                     _%ids164647%_
                                     (_%$E164625164634%_)))
                               (_%$E164625164634%_)))
                         (_%$E164625164634%_))))
                 _%hd164607%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs164699%_
                                                    (map (lambda (_%bind164661%_)
                                                           (let* ((_%$e164663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind164661%_)
                          (_%$E164665164674%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e164663%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e164663%_))
                         (let* ((_%$tgt164666164677%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e164663%_)))
                                (_%$hd164667164680%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt164666164677%_)))
                                (_%$tl164668164683%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt164666164677%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl164668164683%_))
                               (let* ((_%$tgt164669164687%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl164668164683%_)))
                                      (_%$hd164670164690%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt164669164687%_)))
                                      (_%$tl164671164693%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt164669164687%_)))
                                      (_%expr164697%_ _%$hd164670164690%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl164671164693%_))
                                             '())
                                     (__compile _%expr164697%_)
                                     (_%$E164665164674%_)))
                               (_%$E164665164674%_)))
                         (_%$E164665164674%_))))
                 _%hd164607%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body164701%_
                                                    (__compile
                                                     _%body164619%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?164556%_
                                                     _%hd-ids164659%_))
                                                  (_%compile-simple164553%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e164557%_
                                                            _%hd-ids164659%_))
                                                   _%exprs164699%_
                                                   _%body164701%_)
                                                  (_%compile-values164554%_
                                                   _%hd-ids164659%_
                                                   _%exprs164699%_
                                                   _%body164701%_)))
                                            (_%$E164562164584%_)))
                                      (_%$E164562164584%_)))
                                (_%$E164562164584%_)))
                          (_%$E164562164584%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e164559%_))
                (let* ((_%$tgt164572164707%_
                        (let () (declare (not safe)) (__AST-e _%$e164559%_)))
                       (_%$hd164573164710%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt164572164707%_)))
                       (_%$tl164574164713%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt164572164707%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl164574164713%_))
                      (let* ((_%$tgt164575164717%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl164574164713%_)))
                             (_%$hd164576164720%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt164575164717%_)))
                             (_%$tl164577164723%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt164575164717%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd164576164720%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl164577164723%_))
                                (let* ((_%$tgt164578164727%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl164577164723%_)))
                                       (_%$hd164579164730%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt164578164727%_)))
                                       (_%$tl164580164733%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt164578164727%_)))
                                       (_%body164737%_ _%$hd164579164730%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl164580164733%_))
                                              '())
                                      (__compile _%body164737%_)
                                      (_%$E164561164704%_)))
                                (_%$E164561164704%_))
                            (_%$E164561164704%_)))
                      (_%$E164561164704%_)))
                (_%$E164561164704%_))))))
    (define __compile-let-values%
      (lambda (_%stx164364%_)
        (letrec ((_%compile-simple164366%_
                  (lambda (_%hd-ids164548%_ _%exprs164549%_ _%body164550%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp165744
                                        (map __compile-head-id
                                             _%hd-ids164548%_)))
                                   (declare (not safe))
                                   (##map list __tmp165744 _%exprs164549%_))
                                 (cons _%body164550%_ '())))
                     _%stx164364%_)))
                 (_%compile-values164367%_
                  (lambda (_%hd-ids164463%_ _%exprs164464%_ _%body164465%_)
                    (let _%lp164467%_ ((_%rest164469%_ _%hd-ids164463%_)
                                       (_%exprs164470%_ _%exprs164464%_)
                                       (_%bind164471%_ '())
                                       (_%post164472%_ '()))
                      (let* ((_%rest164473164487%_ _%rest164469%_)
                             (_%else164476164495%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind164471%_)
                                             (cons (_%compile-post164368%_
                                                    _%post164472%_
                                                    _%body164465%_)
                                                   '())))
                                 _%stx164364%_))))
                        (let ((_%K164481164531%_
                               (lambda (_%rest164528%_ _%id164529%_)
                                 (_%lp164467%_
                                  _%rest164528%_
                                  (cdr _%exprs164470%_)
                                  (cons (cons (__compile-head-id _%id164529%_)
                                              (cons (car _%exprs164470%_) '()))
                                        _%bind164471%_)
                                  _%post164472%_)))
                              (_%K164478164513%_
                               (lambda (_%rest164499%_ _%hd164500%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd164500%_))
                                     (_%lp164467%_
                                      _%rest164499%_
                                      (cdr _%exprs164470%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd164500%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs164470%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind164471%_)
                                      _%post164472%_)
                                     (if (list? _%hd164500%_)
                                         (let* ((_%len164504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd164500%_)))
                                                (_%tmp164506%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp164467%_
                                            _%rest164499%_
                                            (cdr _%exprs164470%_)
                                            (cons (cons _%tmp164506%_
                                                        (cons (car _%exprs164470%_)
                                                              '()))
                                                  _%bind164471%_)
                                            (cons (cons _%tmp164506%_
                                                        (cons _%len164504%_
                                                              (let ((__tmp165746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id164509%_ _%k164510%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id164509%_))
                                   (cons (__SRC__0 _%id164509%_) _%k164510%_)
                                   '#f)))
                            (__tmp165745
                             (let ()
                               (declare (not safe))
                               (##iota _%len164504%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp165746 _%hd164500%_ __tmp165745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post164472%_)))
                                         (__compile-error__%
                                          _%stx164364%_
                                          _%hd164500%_))))))
                          (if (pair? _%rest164473164487%_)
                              (let ((_%tl164483164536%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164473164487%_)))
                                    (_%hd164482164534%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164473164487%_))))
                                (if (pair? _%hd164482164534%_)
                                    (let ((_%tl164485164541%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd164482164534%_)))
                                          (_%hd164484164539%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd164482164534%_))))
                                      (if (null? _%tl164485164541%_)
                                          (let ((_%id164544%_
                                                 _%hd164484164539%_)
                                                (_%rest164546%_
                                                 _%tl164483164536%_))
                                            (_%K164481164531%_
                                             _%rest164546%_
                                             _%id164544%_))
                                          (let ((_%hd164521%_
                                                 _%hd164482164534%_)
                                                (_%rest164523%_
                                                 _%tl164483164536%_))
                                            (_%K164478164513%_
                                             _%rest164523%_
                                             _%hd164521%_))))
                                    (let ((_%hd164521%_ _%hd164482164534%_)
                                          (_%rest164523%_ _%tl164483164536%_))
                                      (_%K164478164513%_
                                       _%rest164523%_
                                       _%hd164521%_))))
                              (_%else164476164495%_)))))))
                 (_%compile-post164368%_
                  (lambda (_%post164370%_ _%body164371%_)
                    (let _%lp164373%_ ((_%rest164375%_ _%post164370%_)
                                       (_%check164376%_ '())
                                       (_%bind164377%_ '()))
                      (let* ((_%rest164378164390%_ _%rest164375%_)
                             (_%else164380164398%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp165747
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind164377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body164371%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx164364%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp165747
                                          _%check164376%_)))
                                 _%stx164364%_)))
                             (_%K164382164437%_
                              (lambda (_%rest164401%_
                                       _%init164402%_
                                       _%len164403%_
                                       _%tmp164404%_)
                                (_%lp164373%_
                                 _%rest164401%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp164404%_
                                                    (cons _%len164403%_ '())))
                                        _%stx164364%_)
                                       _%check164376%_)
                                 (let ((__tmp165748
                                        (lambda (_%hd164406%_ _%r164407%_)
                                          (let* ((_%hd164408164415%_
                                                  _%hd164406%_)
                                                 (_%E164410164419%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd164408164415%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K164411164425%_
                                                  (lambda (_%k164422%_
                                                           _%id164423%_)
                                                    (cons (cons _%id164423%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp164404%_
                                          (cons _%k164422%_ '())))
                              '()))
                  _%r164407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd164408164415%_)
                                                (let ((_%hd164412164428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd164408164415%_)))
                                                      (_%tl164413164430%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd164408164415%_))))
                                                  (let* ((_%id164433%_
                                                          _%hd164412164428%_)
                                                         (_%k164435%_
                                                          _%tl164413164430%_))
                                                    (_%K164411164425%_
                                                     _%k164435%_
                                                     _%id164433%_)))
                                                (_%E164410164419%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp165748
                                    _%bind164377%_
                                    _%init164402%_))))))
                        (if (pair? _%rest164378164390%_)
                            (let ((_%hd164383164440%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest164378164390%_)))
                                  (_%tl164384164442%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest164378164390%_))))
                              (if (pair? _%hd164383164440%_)
                                  (let ((_%hd164385164445%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd164383164440%_)))
                                        (_%tl164386164447%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd164383164440%_))))
                                    (let ((_%tmp164450%_ _%hd164385164445%_))
                                      (if (pair? _%tl164386164447%_)
                                          (let ((_%hd164387164452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl164386164447%_)))
                                                (_%tl164388164454%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl164386164447%_))))
                                            (let* ((_%len164457%_
                                                    _%hd164387164452%_)
                                                   (_%init164459%_
                                                    _%tl164388164454%_)
                                                   (_%rest164461%_
                                                    _%tl164384164442%_))
                                              (_%K164382164437%_
                                               _%rest164461%_
                                               _%init164459%_
                                               _%len164457%_
                                               _%tmp164450%_)))
                                          (_%else164380164398%_))))
                                  (_%else164380164398%_)))
                            (_%else164380164398%_)))))))
          (__compile-let-form
           _%stx164364%_
           _%compile-simple164366%_
           _%compile-values164367%_))))
    (define __compile-letrec-values%
      (lambda (_%stx164161%_)
        (letrec ((_%compile-simple164163%_
                  (lambda (_%hd-ids164360%_ _%exprs164361%_ _%body164362%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp165749
                                        (map __compile-head-id
                                             _%hd-ids164360%_)))
                                   (declare (not safe))
                                   (##map list __tmp165749 _%exprs164361%_))
                                 (cons _%body164362%_ '())))
                     _%stx164161%_)))
                 (_%compile-values164164%_
                  (lambda (_%hd-ids164271%_ _%exprs164272%_ _%body164273%_)
                    (let _%lp164275%_ ((_%rest164277%_ _%hd-ids164271%_)
                                       (_%exprs164278%_ _%exprs164272%_)
                                       (_%pre164279%_ '())
                                       (_%bind164280%_ '())
                                       (_%post164281%_ '()))
                      (let* ((_%rest164282164296%_ _%rest164277%_)
                             (_%else164285164304%_
                              (lambda ()
                                (_%compile-inner164165%_
                                 _%pre164279%_
                                 _%bind164280%_
                                 _%post164281%_
                                 _%body164273%_))))
                        (let ((_%K164290164343%_
                               (lambda (_%rest164340%_ _%id164341%_)
                                 (_%lp164275%_
                                  _%rest164340%_
                                  (cdr _%exprs164278%_)
                                  _%pre164279%_
                                  (cons (cons (__compile-head-id _%id164341%_)
                                              (cons (car _%exprs164278%_) '()))
                                        _%bind164280%_)
                                  _%post164281%_)))
                              (_%K164287164325%_
                               (lambda (_%rest164308%_ _%hd164309%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd164309%_))
                                     (_%lp164275%_
                                      _%rest164308%_
                                      (cdr _%exprs164278%_)
                                      _%pre164279%_
                                      (cons (cons (__compile-head-id
                                                   _%hd164309%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs164278%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind164280%_)
                                      _%post164281%_)
                                     (if (list? _%hd164309%_)
                                         (let* ((_%len164313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd164309%_)))
                                                (_%tmp164315%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp164275%_
                                            _%rest164308%_
                                            (cdr _%exprs164278%_)
                                            (let ((__tmp165750
                                                   (lambda (_%id164318%_
                                                            _%r164319%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id164318%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id164318%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r164319%_)
                 _%r164319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp165750
                                               _%pre164279%_
                                               _%hd164309%_))
                                            (cons (cons _%tmp164315%_
                                                        (cons (car _%exprs164278%_)
                                                              '()))
                                                  _%bind164280%_)
                                            (cons (cons _%tmp164315%_
                                                        (cons _%len164313%_
                                                              (let ((__tmp165752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id164321%_ _%k164322%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id164321%_))
                                   (cons (__SRC__0 _%id164321%_) _%k164322%_)
                                   '#f)))
                            (__tmp165751
                             (let ()
                               (declare (not safe))
                               (##iota _%len164313%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp165752 _%hd164309%_ __tmp165751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post164281%_)))
                                         (__compile-error__%
                                          _%stx164161%_
                                          _%hd164309%_))))))
                          (if (pair? _%rest164282164296%_)
                              (let ((_%tl164292164348%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164282164296%_)))
                                    (_%hd164291164346%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164282164296%_))))
                                (if (pair? _%hd164291164346%_)
                                    (let ((_%tl164294164353%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd164291164346%_)))
                                          (_%hd164293164351%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd164291164346%_))))
                                      (if (null? _%tl164294164353%_)
                                          (let ((_%id164356%_
                                                 _%hd164293164351%_)
                                                (_%rest164358%_
                                                 _%tl164292164348%_))
                                            (_%K164290164343%_
                                             _%rest164358%_
                                             _%id164356%_))
                                          (let ((_%hd164333%_
                                                 _%hd164291164346%_)
                                                (_%rest164335%_
                                                 _%tl164292164348%_))
                                            (_%K164287164325%_
                                             _%rest164335%_
                                             _%hd164333%_))))
                                    (let ((_%hd164333%_ _%hd164291164346%_)
                                          (_%rest164335%_ _%tl164292164348%_))
                                      (_%K164287164325%_
                                       _%rest164335%_
                                       _%hd164333%_))))
                              (_%else164285164304%_)))))))
                 (_%compile-inner164165%_
                  (lambda (_%pre164266%_
                           _%bind164267%_
                           _%post164268%_
                           _%body164269%_)
                    (if (null? _%pre164266%_)
                        (_%compile-bind164166%_
                         _%bind164267%_
                         _%post164268%_
                         _%body164269%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre164266%_)
                                     (cons (_%compile-bind164166%_
                                            _%bind164267%_
                                            _%post164268%_
                                            _%body164269%_)
                                           '())))
                         _%stx164161%_))))
                 (_%compile-bind164166%_
                  (lambda (_%bind164262%_ _%post164263%_ _%body164264%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind164262%_)
                                 (cons (_%compile-post164167%_
                                        _%post164263%_
                                        _%body164264%_)
                                       '())))
                     _%stx164161%_)))
                 (_%compile-post164167%_
                  (lambda (_%post164169%_ _%body164170%_)
                    (let _%lp164172%_ ((_%rest164174%_ _%post164169%_)
                                       (_%check164175%_ '())
                                       (_%bind164176%_ '()))
                      (let* ((_%rest164177164189%_ _%rest164174%_)
                             (_%else164179164197%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp165753
                                              (let ((__tmp165754
                                                     (cons _%body164170%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp165754
                                                 _%bind164176%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp165753
                                          _%check164175%_)))
                                 _%stx164161%_)))
                             (_%K164181164236%_
                              (lambda (_%rest164200%_
                                       _%init164201%_
                                       _%len164202%_
                                       _%tmp164203%_)
                                (_%lp164172%_
                                 _%rest164200%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp164203%_
                                                    (cons _%len164202%_ '())))
                                        _%stx164161%_)
                                       _%check164175%_)
                                 (let ((__tmp165755
                                        (lambda (_%hd164205%_ _%r164206%_)
                                          (let* ((_%hd164207164214%_
                                                  _%hd164205%_)
                                                 (_%E164209164218%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd164207164214%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K164210164224%_
                                                  (lambda (_%k164221%_
                                                           _%id164222%_)
                                                    (cons (cons 'set!
                                                                (cons _%id164222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp164203%_
                                                (cons _%k164221%_ '())))
                                    '())))
                  _%r164206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd164207164214%_)
                                                (let ((_%hd164211164227%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd164207164214%_)))
                                                      (_%tl164212164229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd164207164214%_))))
                                                  (let* ((_%id164232%_
                                                          _%hd164211164227%_)
                                                         (_%k164234%_
                                                          _%tl164212164229%_))
                                                    (_%K164210164224%_
                                                     _%k164234%_
                                                     _%id164232%_)))
                                                (_%E164209164218%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp165755
                                    _%bind164176%_
                                    _%init164201%_))))))
                        (if (pair? _%rest164177164189%_)
                            (let ((_%hd164182164239%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest164177164189%_)))
                                  (_%tl164183164241%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest164177164189%_))))
                              (if (pair? _%hd164182164239%_)
                                  (let ((_%hd164184164244%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd164182164239%_)))
                                        (_%tl164185164246%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd164182164239%_))))
                                    (let ((_%tmp164249%_ _%hd164184164244%_))
                                      (if (pair? _%tl164185164246%_)
                                          (let ((_%hd164186164251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl164185164246%_)))
                                                (_%tl164187164253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl164185164246%_))))
                                            (let* ((_%len164256%_
                                                    _%hd164186164251%_)
                                                   (_%init164258%_
                                                    _%tl164187164253%_)
                                                   (_%rest164260%_
                                                    _%tl164183164241%_))
                                              (_%K164181164236%_
                                               _%rest164260%_
                                               _%init164258%_
                                               _%len164256%_
                                               _%tmp164249%_)))
                                          (_%else164179164197%_))))
                                  (_%else164179164197%_)))
                            (_%else164179164197%_)))))))
          (__compile-let-form
           _%stx164161%_
           _%compile-simple164163%_
           _%compile-values164164%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx163912%_)
        (letrec ((_%compile-simple163914%_
                  (lambda (_%hd-ids164157%_ _%exprs164158%_ _%body164159%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp165756
                                        (map __compile-head-id
                                             _%hd-ids164157%_)))
                                   (declare (not safe))
                                   (##map list __tmp165756 _%exprs164158%_))
                                 (cons _%body164159%_ '())))
                     _%stx163912%_)))
                 (_%compile-values163915%_
                  (lambda (_%hd-ids164064%_ _%exprs164065%_ _%body164066%_)
                    (let _%lp164068%_ ((_%rest164070%_ _%hd-ids164064%_)
                                       (_%exprs164071%_ _%exprs164065%_)
                                       (_%bind164072%_ '())
                                       (_%post164073%_ '()))
                      (let* ((_%rest164074164088%_ _%rest164070%_)
                             (_%else164077164096%_
                              (lambda ()
                                (_%compile-bind163916%_
                                 _%bind164072%_
                                 _%post164073%_
                                 _%body164066%_))))
                        (let ((_%K164082164140%_
                               (lambda (_%rest164135%_ _%hd164136%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd164136%_))
                                     (let ((_%id164138%_
                                            (__SRC__0 _%hd164136%_)))
                                       (_%lp164068%_
                                        _%rest164135%_
                                        (cdr _%exprs164071%_)
                                        (cons (cons _%id164138%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind164072%_)
                                        (cons (cons _%id164138%_
                                                    (cons (car _%exprs164071%_)
                                                          '()))
                                              _%post164073%_)))
                                     (_%lp164068%_
                                      _%rest164135%_
                                      (cdr _%exprs164071%_)
                                      _%bind164072%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs164071%_)
                                                        '()))
                                            _%post164073%_)))))
                              (_%K164079164120%_
                               (lambda (_%rest164100%_ _%hd164101%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd164101%_))
                                     (let ((_%id164104%_
                                            (__SRC__0 _%hd164101%_)))
                                       (_%lp164068%_
                                        _%rest164100%_
                                        (cdr _%exprs164071%_)
                                        (cons (cons _%id164104%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind164072%_)
                                        (cons (cons _%id164104%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs164071%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post164073%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd164101%_))
                                         (if (list? _%hd164101%_)
                                             (let* ((_%len164108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd164101%_)))
                                                    (_%tmp164110%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp164068%_
                                                _%rest164100%_
                                                (cdr _%exprs164071%_)
                                                (let ((__tmp165757
                                                       (lambda (_%id164113%_
                                                                _%r164114%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id164113%_))
                     (cons (cons (__SRC__0 _%id164113%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r164114%_)
                     _%r164114%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp165757
                                                   _%bind164072%_
                                                   _%hd164101%_))
                                                (cons (cons _%tmp164110%_
                                                            (cons (car _%exprs164071%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len164108%_
                                (let ((__tmp165759
                                       (lambda (_%id164116%_ _%k164117%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id164116%_))
                                             (cons (__SRC__0 _%id164116%_)
                                                   _%k164117%_)
                                             '#f)))
                                      (__tmp165758
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len164108%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp165759
                                   _%hd164101%_
                                   __tmp165758)))))
              _%post164073%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx163912%_
                                              _%hd164101%_))
                                         (_%lp164068%_
                                          _%rest164100%_
                                          (cdr _%exprs164071%_)
                                          _%bind164072%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs164071%_)
                                                            '()))
                                                _%post164073%_)))))))
                          (if (pair? _%rest164074164088%_)
                              (let ((_%tl164084164145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164074164088%_)))
                                    (_%hd164083164143%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164074164088%_))))
                                (if (pair? _%hd164083164143%_)
                                    (let ((_%tl164086164150%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd164083164143%_)))
                                          (_%hd164085164148%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd164083164143%_))))
                                      (if (null? _%tl164086164150%_)
                                          (let ((_%hd164153%_
                                                 _%hd164085164148%_)
                                                (_%rest164155%_
                                                 _%tl164084164145%_))
                                            (_%K164082164140%_
                                             _%rest164155%_
                                             _%hd164153%_))
                                          (let ((_%hd164128%_
                                                 _%hd164083164143%_)
                                                (_%rest164130%_
                                                 _%tl164084164145%_))
                                            (_%K164079164120%_
                                             _%rest164130%_
                                             _%hd164128%_))))
                                    (let ((_%hd164128%_ _%hd164083164143%_)
                                          (_%rest164130%_ _%tl164084164145%_))
                                      (_%K164079164120%_
                                       _%rest164130%_
                                       _%hd164128%_))))
                              (_%else164077164096%_)))))))
                 (_%compile-bind163916%_
                  (lambda (_%bind164060%_ _%post164061%_ _%body164062%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind164060%_)
                                 (cons (_%compile-post163917%_
                                        _%post164061%_
                                        _%body164062%_)
                                       '())))
                     _%stx163912%_)))
                 (_%compile-post163917%_
                  (lambda (_%post163919%_ _%body163920%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp165760
                                  (let ((__tmp165762
                                         (lambda (_%hd163922%_ _%r163923%_)
                                           (let* ((_%hd163924163947%_
                                                   _%hd163922%_)
                                                  (_%E163928163951%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd163924163947%_
                                                              '([#f expr])
                                                              '([id expr])
                                                              '([tmp
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         expr
                         len
                         .
                         init])))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K163941164045%_
                                                    (lambda (_%expr164043%_)
                                                      (cons _%expr164043%_
                                                            _%r163923%_)))
                                                   (_%K163936164023%_
                                                    (lambda (_%expr164020%_
                                                             _%id164021%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id164021%_ (cons _%expr164020%_ '())))
                     _%stx163912%_)
                    _%r163923%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K163929163990%_
                                                    (lambda (_%init163955%_
                                                             _%len163956%_
                                                             _%expr163957%_
                                                             _%tmp163958%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp163958%_
                                             (cons _%expr163957%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp163958%_
                                                    (cons _%len163956%_ '())))
                                        _%stx163912%_)
                                       (let ((__tmp165763
                                              (map (lambda (_%hd163960%_)
                                                     (let* ((_%hd163961163968%_
                                                             _%hd163960%_)
                                                            (_%E163963163972%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd163961163968%_
                                '([id . k])))
                       '#!void))
                    (_%K163964163978%_
                     (lambda (_%k163975%_ _%id163976%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id163976%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp163958%_
                                                      (cons _%k163975%_ '())))
                                          '())))
                        _%stx163912%_))))
               (if (pair? _%hd163961163968%_)
                   (let ((_%hd163965163981%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd163961163968%_)))
                         (_%tl163966163983%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd163961163968%_))))
                     (let* ((_%id163986%_ _%hd163965163981%_)
                            (_%k163988%_ _%tl163966163983%_))
                       (_%K163964163978%_ _%k163988%_ _%id163986%_)))
                   (_%E163963163972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init163955%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp165763)))))
                     _%stx163912%_)
                    _%r163923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match165618165619%_
                                                       (lambda (_%hd163930163993%_
                                                                _%tl163931163995%_
                                                                _%hd163932164000%_
                                                                _%tl163933164002%_)
                                                         (let ((_%tmp163998%_
                                                                _%hd163930163993%_)
                                                               (_%expr164005%_
                                                                _%hd163932164000%_))
                                                           (_%E163928163951%_))))
                                                      (_%__match165612165613%_
                                                       (lambda (_%hd163930163993%_
                                                                _%tl163931163995%_)
                                                         (let ((_%tmp163998%_
                                                                _%hd163930163993%_))
                                                           (_%E163928163951%_)))))
                                                 (if (pair? _%hd163924163947%_)
                                                     (let ((_%tl163943164050%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd163924163947%_)))
                                                           (_%hd163942164048%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd163924163947%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd163942164048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl163943164050%_)
                       (let ((_%tl163945164055%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl163943164050%_)))
                             (_%hd163944164053%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl163943164050%_))))
                         (if (null? _%tl163945164055%_)
                             (let ((_%expr164058%_ _%hd163944164053%_))
                               (_%K163941164045%_ _%expr164058%_))
                             (if (pair? _%tl163945164055%_)
                                 (let ((_%tl163935164009%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl163945164055%_)))
                                       (_%hd163934164007%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl163945164055%_))))
                                   (let ((_%tmp163998%_ _%hd163942164048%_)
                                         (_%expr164005%_ _%hd163944164053%_)
                                         (_%len164012%_ _%hd163934164007%_)
                                         (_%init164014%_ _%tl163935164009%_))
                                     (_%K163929163990%_
                                      _%init164014%_
                                      _%len164012%_
                                      _%expr164005%_
                                      _%tmp163998%_)))
                                 (_%__match165618165619%_
                                  _%hd163942164048%_
                                  _%tl163943164050%_
                                  _%hd163944164053%_
                                  _%tl163945164055%_))))
                       (_%__match165612165613%_
                        _%hd163942164048%_
                        _%tl163943164050%_))
                   (if (pair? _%tl163943164050%_)
                       (let ((_%tl163940164035%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl163943164050%_)))
                             (_%hd163939164033%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl163943164050%_))))
                         (if (null? _%tl163940164035%_)
                             (let ((_%id164031%_ _%hd163942164048%_)
                                   (_%expr164038%_ _%hd163939164033%_))
                               (_%K163936164023%_ _%expr164038%_ _%id164031%_))
                             (if (pair? _%tl163940164035%_)
                                 (let ((_%tl163935164009%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl163940164035%_)))
                                       (_%hd163934164007%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl163940164035%_))))
                                   (let ((_%tmp163998%_ _%hd163942164048%_)
                                         (_%expr164005%_ _%hd163939164033%_)
                                         (_%len164012%_ _%hd163934164007%_)
                                         (_%init164014%_ _%tl163935164009%_))
                                     (_%K163929163990%_
                                      _%init164014%_
                                      _%len164012%_
                                      _%expr164005%_
                                      _%tmp163998%_)))
                                 (_%__match165618165619%_
                                  _%hd163942164048%_
                                  _%tl163943164050%_
                                  _%hd163939164033%_
                                  _%tl163940164035%_))))
                       (_%__match165612165613%_
                        _%hd163942164048%_
                        _%tl163943164050%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E163928163951%_)))))))
                                        (__tmp165761 (list _%body163920%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp165762
                                     __tmp165761
                                     _%post163919%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp165760)))
                     _%stx163912%_))))
          (__compile-let-form
           _%stx163912%_
           _%compile-simple163914%_
           _%compile-values163915%_))))
    (define __compile-call%
      (lambda (_%stx163872%_)
        (let* ((_%$e163874%_ _%stx163872%_)
               (_%$E163876163885%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163874%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163874%_))
              (let* ((_%$tgt163877163888%_
                      (let () (declare (not safe)) (__AST-e _%$e163874%_)))
                     (_%$hd163878163891%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163877163888%_)))
                     (_%$tl163879163894%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163877163888%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163879163894%_))
                    (let* ((_%$tgt163880163898%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163879163894%_)))
                           (_%$hd163881163901%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163880163898%_)))
                           (_%$tl163882163904%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163880163898%_)))
                           (_%rator163908%_ _%$hd163881163901%_)
                           (_%rands163910%_ _%$tl163882163904%_))
                      (__SRC__%
                       (cons (__compile _%rator163908%_)
                             (map __compile _%rands163910%_))
                       _%stx163872%_))
                    (_%$E163876163885%_)))
              (_%$E163876163885%_)))))
    (define __compile-ref%
      (lambda (_%stx163834%_)
        (let* ((_%$e163836%_ _%stx163834%_)
               (_%$E163838163847%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163836%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163836%_))
              (let* ((_%$tgt163839163850%_
                      (let () (declare (not safe)) (__AST-e _%$e163836%_)))
                     (_%$hd163840163853%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163839163850%_)))
                     (_%$tl163841163856%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163839163850%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163841163856%_))
                    (let* ((_%$tgt163842163860%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163841163856%_)))
                           (_%$hd163843163863%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163842163860%_)))
                           (_%$tl163844163866%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163842163860%_)))
                           (_%id163870%_ _%$hd163843163863%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163844163866%_))
                                  '())
                          (__SRC__% _%id163870%_ _%stx163834%_)
                          (_%$E163838163847%_)))
                    (_%$E163838163847%_)))
              (_%$E163838163847%_)))))
    (define __compile-setq%
      (lambda (_%stx163781%_)
        (let* ((_%$e163783%_ _%stx163781%_)
               (_%$E163785163797%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163783%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163783%_))
              (let* ((_%$tgt163786163800%_
                      (let () (declare (not safe)) (__AST-e _%$e163783%_)))
                     (_%$hd163787163803%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163786163800%_)))
                     (_%$tl163788163806%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163786163800%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163788163806%_))
                    (let* ((_%$tgt163789163810%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163788163806%_)))
                           (_%$hd163790163813%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163789163810%_)))
                           (_%$tl163791163816%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163789163810%_)))
                           (_%id163820%_ _%$hd163790163813%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl163791163816%_))
                          (let* ((_%$tgt163792163822%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163791163816%_)))
                                 (_%$hd163793163825%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt163792163822%_)))
                                 (_%$tl163794163828%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt163792163822%_)))
                                 (_%expr163832%_ _%$hd163793163825%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl163794163828%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id163820%_
                                              _%stx163781%_)
                                             (cons (__compile _%expr163832%_)
                                                   '())))
                                 _%stx163781%_)
                                (_%$E163785163797%_)))
                          (_%$E163785163797%_)))
                    (_%$E163785163797%_)))
              (_%$E163785163797%_)))))
    (define __compile-if%
      (lambda (_%stx163713%_)
        (let* ((_%$e163715%_ _%stx163713%_)
               (_%$E163717163732%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163715%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163715%_))
              (let* ((_%$tgt163718163735%_
                      (let () (declare (not safe)) (__AST-e _%$e163715%_)))
                     (_%$hd163719163738%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163718163735%_)))
                     (_%$tl163720163741%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163718163735%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163720163741%_))
                    (let* ((_%$tgt163721163745%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163720163741%_)))
                           (_%$hd163722163748%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163721163745%_)))
                           (_%$tl163723163751%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163721163745%_)))
                           (_%p163755%_ _%$hd163722163748%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl163723163751%_))
                          (let* ((_%$tgt163724163757%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163723163751%_)))
                                 (_%$hd163725163760%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt163724163757%_)))
                                 (_%$tl163726163763%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt163724163757%_)))
                                 (_%t163767%_ _%$hd163725163760%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl163726163763%_))
                                (let* ((_%$tgt163727163769%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl163726163763%_)))
                                       (_%$hd163728163772%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt163727163769%_)))
                                       (_%$tl163729163775%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt163727163769%_)))
                                       (_%f163779%_ _%$hd163728163772%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl163729163775%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p163755%_)
                                                   (cons (__compile
                                                          _%t163767%_)
                                                         (cons (__compile
                                                                _%f163779%_)
                                                               '()))))
                                       _%stx163713%_)
                                      (_%$E163717163732%_)))
                                (_%$E163717163732%_)))
                          (_%$E163717163732%_)))
                    (_%$E163717163732%_)))
              (_%$E163717163732%_)))))
    (define __compile-quote%
      (lambda (_%stx163675%_)
        (let* ((_%$e163677%_ _%stx163675%_)
               (_%$E163679163688%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163677%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163677%_))
              (let* ((_%$tgt163680163691%_
                      (let () (declare (not safe)) (__AST-e _%$e163677%_)))
                     (_%$hd163681163694%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163680163691%_)))
                     (_%$tl163682163697%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163680163691%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163682163697%_))
                    (let* ((_%$tgt163683163701%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163682163697%_)))
                           (_%$hd163684163704%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163683163701%_)))
                           (_%$tl163685163707%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163683163701%_)))
                           (_%e163711%_ _%$hd163684163704%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163685163707%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e163711%_))
                                       '()))
                           _%stx163675%_)
                          (_%$E163679163688%_)))
                    (_%$E163679163688%_)))
              (_%$E163679163688%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx163637%_)
        (let* ((_%$e163639%_ _%stx163637%_)
               (_%$E163641163650%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163639%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163639%_))
              (let* ((_%$tgt163642163653%_
                      (let () (declare (not safe)) (__AST-e _%$e163639%_)))
                     (_%$hd163643163656%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163642163653%_)))
                     (_%$tl163644163659%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163642163653%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163644163659%_))
                    (let* ((_%$tgt163645163663%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163644163659%_)))
                           (_%$hd163646163666%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163645163663%_)))
                           (_%$tl163647163669%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163645163663%_)))
                           (_%e163673%_ _%$hd163646163666%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163647163669%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e163673%_ '()))
                           _%stx163637%_)
                          (_%$E163641163650%_)))
                    (_%$E163641163650%_)))
              (_%$E163641163650%_)))))
    (__core-bind-syntax!__% '%#begin __compile-begin% make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-foreign
     __compile-begin-foreign%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#module
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#import
     __compile-import%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#export
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#provide
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-values
     __compile-define-values%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-alias
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-runtime
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#extern
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#declare
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-annotation
     __compile-begin-annotation%
     make-__core-expression)
    (__core-bind-syntax!__% '%#quote __compile-quote% make-__core-expression)
    (__core-bind-syntax!__%
     '%#quote-syntax
     __compile-quote-syntax%
     make-__core-expression)
    (__core-bind-syntax!__% '%#lambda __compile-lambda% make-__core-expression)
    (__core-bind-syntax!__%
     '%#case-lambda
     __compile-case-lambda%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#let-values
     __compile-let-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec-values
     __compile-letrec-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec*-values
     __compile-letrec*-values%
     make-__core-expression)
    (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression)
    (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression)
    (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression)
    (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression)
    (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#include __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form)
    (__core-bind-syntax!__%
     '%#letrec-syntax
     __compile-error
     make-__core-form)))
