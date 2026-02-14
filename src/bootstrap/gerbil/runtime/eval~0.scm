(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1771030479)
  (begin
    (define __syntax::t
      (let ((__tmp168187 (list)) (__tmp168186 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp168187
         '(e id)
         __tmp168186
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args167991%_
        (apply make-instance __syntax::t _%$args167991%_)))
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
      (let ((__tmp168189 (list __syntax::t))
            (__tmp168188 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp168189
         '()
         __tmp168188
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args167988%_
        (apply make-instance __core-form::t _%$args167988%_)))
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
      (let ((__tmp168191 (list __core-form::t))
            (__tmp168190 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp168191
         '()
         __tmp168190
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args167985%_
        (apply make-instance __core-expression::t _%$args167985%_)))
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
      (let ((__tmp168193 (list __core-form::t))
            (__tmp168192 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp168193
         '()
         __tmp168192
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args167982%_
        (apply make-instance __core-special-form::t _%$args167982%_)))
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
      (lambda (_%id167956%_)
        (let* ((_%h167958%_ __core)
               (_%key167961%_
                (let () (declare (not safe)) (__AST-e _%id167956%_)))
               (_%h167968%_
                (let ((_%$obj167965%_ _%h167958%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj167965%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj167965%_)))
                           '#t)
                      _%$obj167965%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj167965%_)))))
               (_%h167970%_ _%h167968%_))
          (declare (not safe))
          (__hash-get _%h167970%_ _%key167961%_))))
    (define __core-bound-id?__%
      (lambda (_%id167939%_ _%is?167940%_)
        (let ((_%$e167942%_ (__core-resolve _%id167939%_)))
          (if _%$e167942%_ (_%is?167940%_ _%$e167942%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id167949%_)
        (let ((_%is?167951%_ true))
          (__core-bound-id?__% _%id167949%_ _%is?167951%_))))
    (define __core-bound-id?
      (lambda _g168194_
        (let ((_g168195_ (let () (declare (not safe)) (##length _g168194_))))
          (cond ((let () (declare (not safe)) (##fx= _g168195_ 1))
                 (apply __core-bound-id?__0 _g168194_))
                ((let () (declare (not safe)) (##fx= _g168195_ 2))
                 (apply __core-bound-id?__% _g168194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g168194_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id167894%_ _%e167895%_ _%make167896%_)
        (let* ((_%h167898%_ __core)
               (_%key167901%_ _%id167894%_)
               (_%value167904%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e167895%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e167895%_
                    (_%make167896%_ _%e167895%_ _%id167894%_)))
               (_%h167911%_
                (let ((_%$obj167908%_ _%h167898%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj167908%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj167908%_)))
                           '#t)
                      _%$obj167908%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj167908%_)))))
               (_%h167913%_ _%h167911%_))
          (declare (not safe))
          (__hash-put! _%h167913%_ _%key167901%_ _%value167904%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id167929%_ _%e167930%_)
        (let ((_%make167932%_ make-__syntax))
          (__core-bind-syntax!__% _%id167929%_ _%e167930%_ _%make167932%_))))
    (define __core-bind-syntax!
      (lambda _g168196_
        (let ((_g168197_ (let () (declare (not safe)) (##length _g168196_))))
          (cond ((let () (declare (not safe)) (##fx= _g168197_ 2))
                 (apply __core-bind-syntax!__0 _g168196_))
                ((let () (declare (not safe)) (##fx= _g168197_ 3))
                 (apply __core-bind-syntax!__% _g168196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g168196_))))))
    (define __SRC__%
      (lambda (_%e167874%_ _%src-stx167875%_)
        (if (or (pair? _%e167874%_) (symbol? _%e167874%_))
            (let ((__tmp168198
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx167875%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx167875%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e167874%_ __tmp168198))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e167874%_ 'gerbil#AST::t))
                (let ((__tmp168200
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e167874%_ '1 '#f '#f)))
                      (__tmp168199
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e167874%_)))))
                  (declare (not safe))
                  (##make-source __tmp168200 __tmp168199))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e167874%_))))))
    (define __SRC__0
      (lambda (_%e167886%_)
        (let ((_%src-stx167888%_ '#f))
          (__SRC__% _%e167886%_ _%src-stx167888%_))))
    (define __SRC
      (lambda _g168201_
        (let ((_g168202_ (let () (declare (not safe)) (##length _g168201_))))
          (cond ((let () (declare (not safe)) (##fx= _g168202_ 1))
                 (apply __SRC__0 _g168201_))
                ((let () (declare (not safe)) (##fx= _g168202_ 2))
                 (apply __SRC__% _g168201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g168201_))))))
    (define __locat
      (lambda (_%loc167871%_)
        (if (let () (declare (not safe)) (##locat? _%loc167871%_))
            _%loc167871%_
            '#f)))
    (define __check-values
      (lambda (_%obj167866%_ _%k167867%_)
        (let ((_%count167869%_
               (if (let () (declare (not safe)) (##values? _%obj167866%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj167866%_))
                   '1)))
          (if (fx= _%count167869%_ _%k167867%_)
              '#!void
              (let ((__tmp168204
                     (if (fx< _%count167869%_ _%k167867%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp168203
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj167866%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj167866%_))
                         _%obj167866%_)))
                (declare (not safe))
                (error __tmp168204 __tmp168203 _%k167867%_))))))
    (define __compile
      (lambda (_%stx167835%_)
        (let* ((_%$e167837%_ _%stx167835%_)
               (_%$E167839167845%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167837%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167837%_))
              (let* ((_%$tgt167840167848%_
                      (let () (declare (not safe)) (__AST-e _%$e167837%_)))
                     (_%$hd167841167851%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167840167848%_)))
                     (_%$tl167842167854%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167840167848%_)))
                     (_%form167858%_ _%$hd167841167851%_)
                     (_%$e167860%_ (__core-resolve _%form167858%_)))
                (if _%$e167860%_
                    ((lambda (_%bind167863%_)
                       ((##structure-ref _%bind167863%_ '1 __syntax::t '#f)
                        _%stx167835%_))
                     _%$e167860%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx167835%_
                       _%form167858%_))))
              (_%$E167839167845%_)))))
    (define __compile-error__%
      (lambda (_%stx167822%_ _%detail167823%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx167822%_
           _%detail167823%_))))
    (define __compile-error__0
      (lambda (_%stx167828%_)
        (let ((_%detail167830%_ '#f))
          (__compile-error__% _%stx167828%_ _%detail167830%_))))
    (define __compile-error
      (lambda _g168205_
        (let ((_g168206_ (let () (declare (not safe)) (##length _g168205_))))
          (cond ((let () (declare (not safe)) (##fx= _g168206_ 1))
                 (apply __compile-error__0 _g168205_))
                ((let () (declare (not safe)) (##fx= _g168206_ 2))
                 (apply __compile-error__% _g168205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g168205_))))))
    (define __compile-ignore%
      (lambda (_%stx167819%_) (__SRC__% ''#!void _%stx167819%_)))
    (define __compile-begin%
      (lambda (_%stx167794%_)
        (let* ((_%$e167796%_ _%stx167794%_)
               (_%$E167798167804%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167796%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167796%_))
              (let* ((_%$tgt167799167807%_
                      (let () (declare (not safe)) (__AST-e _%$e167796%_)))
                     (_%$hd167800167810%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167799167807%_)))
                     (_%$tl167801167813%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167799167807%_)))
                     (_%body167817%_ _%$tl167801167813%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body167817%_))
                 _%stx167794%_))
              (_%$E167798167804%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx167769%_)
        (let* ((_%$e167771%_ _%stx167769%_)
               (_%$E167773167779%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167771%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167771%_))
              (let* ((_%$tgt167774167782%_
                      (let () (declare (not safe)) (__AST-e _%$e167771%_)))
                     (_%$hd167775167785%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167774167782%_)))
                     (_%$tl167776167788%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167774167782%_)))
                     (_%body167792%_ _%$tl167776167788%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body167792%_)))
                 _%stx167769%_))
              (_%$E167773167779%_)))))
    (define __compile-import%
      (lambda (_%stx167744%_)
        (let* ((_%$e167746%_ _%stx167744%_)
               (_%$E167748167754%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167746%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167746%_))
              (let* ((_%$tgt167749167757%_
                      (let () (declare (not safe)) (__AST-e _%$e167746%_)))
                     (_%$hd167750167760%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167749167757%_)))
                     (_%$tl167751167763%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167749167757%_)))
                     (_%body167767%_ _%$tl167751167763%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body167767%_ '())) '()))
                 _%stx167744%_))
              (_%$E167748167754%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx167691%_)
        (let* ((_%$e167693%_ _%stx167691%_)
               (_%$E167695167707%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167693%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167693%_))
              (let* ((_%$tgt167696167710%_
                      (let () (declare (not safe)) (__AST-e _%$e167693%_)))
                     (_%$hd167697167713%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167696167710%_)))
                     (_%$tl167698167716%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167696167710%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167698167716%_))
                    (let* ((_%$tgt167699167720%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167698167716%_)))
                           (_%$hd167700167723%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167699167720%_)))
                           (_%$tl167701167726%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167699167720%_)))
                           (_%ann167730%_ _%$hd167700167723%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167701167726%_))
                          (let* ((_%$tgt167702167732%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167701167726%_)))
                                 (_%$hd167703167735%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167702167732%_)))
                                 (_%$tl167704167738%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167702167732%_)))
                                 (_%expr167742%_ _%$hd167703167735%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167704167738%_))
                                        '())
                                (__compile _%expr167742%_)
                                (_%$E167695167707%_)))
                          (_%$E167695167707%_)))
                    (_%$E167695167707%_)))
              (_%$E167695167707%_)))))
    (define __compile-define-values%
      (lambda (_%stx167582%_)
        (let* ((_%$e167584%_ _%stx167582%_)
               (_%$E167586167598%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167584%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167584%_))
              (let* ((_%$tgt167587167601%_
                      (let () (declare (not safe)) (__AST-e _%$e167584%_)))
                     (_%$hd167588167604%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167587167601%_)))
                     (_%$tl167589167607%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167587167601%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167589167607%_))
                    (let* ((_%$tgt167590167611%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167589167607%_)))
                           (_%$hd167591167614%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167590167611%_)))
                           (_%$tl167592167617%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167590167611%_)))
                           (_%hd167621%_ _%$hd167591167614%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167592167617%_))
                          (let* ((_%$tgt167593167623%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167592167617%_)))
                                 (_%$hd167594167626%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167593167623%_)))
                                 (_%$tl167595167629%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167593167623%_)))
                                 (_%expr167633%_ _%$hd167594167626%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167595167629%_))
                                        '())
                                (let* ((_%$e167635%_ _%hd167621%_)
                                       (_%$E167637167678%_
                                        (lambda ()
                                          (let ((_%$E167638167663%_
                                                 (lambda ()
                                                   (let* ((_%$E167639167650%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e167635%_))))
                  (_%ids167653%_ _%hd167621%_)
                  (_%len167655%_ (length _%ids167653%_))
                  (_%tmp167657%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp167657%_
                                       (cons (__compile _%expr167633%_) '())))
                           _%stx167582%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp167657%_
                                             (cons _%len167655%_ '())))
                                 _%stx167582%_)
                                (let ((__tmp168207
                                       (let ((__tmp168209
                                              (lambda (_%id167660%_
                                                       _%k167661%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id167660%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id167660%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp167657%_
                                           (cons _%k167661%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx167582%_)
                                                    '#f)))
                                             (__tmp168208
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len167655%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp168209
                                          _%ids167653%_
                                          __tmp168208))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp168207)))))
              _%stx167582%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e167635%_))
                                                (let* ((_%$tgt167640167666%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e167635%_)))
                                                       (_%$hd167641167669%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt167640167666%_)))
                                                       (_%$tl167642167672%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt167640167666%_)))
                                                       (_%id167676%_
                                                        _%$hd167641167669%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl167642167672%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id167676%_)
                           (cons (__compile _%expr167633%_) '())))
               _%stx167582%_)
              (_%$E167638167663%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E167638167663%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e167635%_))
                                      (let* ((_%$tgt167643167681%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e167635%_)))
                                             (_%$hd167644167684%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt167643167681%_)))
                                             (_%$tl167645167687%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt167643167681%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd167644167684%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl167645167687%_))
                                                        '())
                                                (__compile _%expr167633%_)
                                                (_%$E167637167678%_))
                                            (_%$E167637167678%_)))
                                      (_%$E167637167678%_)))
                                (_%$E167586167598%_)))
                          (_%$E167586167598%_)))
                    (_%$E167586167598%_)))
              (_%$E167586167598%_)))))
    (define __compile-head-id
      (lambda (_%e167580%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e167580%_))
             _%e167580%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd167537%_)
        (let _%recur167539%_ ((_%rest167541%_ _%hd167537%_))
          (let* ((_%$e167543%_ _%rest167541%_)
                 (_%$E167545167563%_
                  (lambda ()
                    (let ((_%$E167546167560%_
                           (lambda ()
                             (let* ((_%$E167547167555%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e167543%_))))
                                    (_%tail167558%_ _%$e167543%_))
                               (__compile-head-id _%tail167558%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e167543%_))
                                  '())
                          '()
                          (_%$E167546167560%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e167543%_))
                (let* ((_%$tgt167548167566%_
                        (let () (declare (not safe)) (__AST-e _%$e167543%_)))
                       (_%$hd167549167569%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt167548167566%_)))
                       (_%$tl167550167572%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt167548167566%_)))
                       (_%hd167576%_ _%$hd167549167569%_)
                       (_%rest167578%_ _%$tl167550167572%_))
                  (cons (__compile-head-id _%hd167576%_)
                        (_%recur167539%_ _%rest167578%_)))
                (_%$E167545167563%_))))))
    (define __compile-lambda%
      (lambda (_%stx167484%_)
        (let* ((_%$e167486%_ _%stx167484%_)
               (_%$E167488167500%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167486%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167486%_))
              (let* ((_%$tgt167489167503%_
                      (let () (declare (not safe)) (__AST-e _%$e167486%_)))
                     (_%$hd167490167506%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167489167503%_)))
                     (_%$tl167491167509%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167489167503%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167491167509%_))
                    (let* ((_%$tgt167492167513%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167491167509%_)))
                           (_%$hd167493167516%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167492167513%_)))
                           (_%$tl167494167519%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167492167513%_)))
                           (_%hd167523%_ _%$hd167493167516%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167494167519%_))
                          (let* ((_%$tgt167495167525%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167494167519%_)))
                                 (_%$hd167496167528%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167495167525%_)))
                                 (_%$tl167497167531%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167495167525%_)))
                                 (_%body167535%_ _%$hd167496167528%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167497167531%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd167523%_)
                                             (cons (__compile _%body167535%_)
                                                   '())))
                                 _%stx167484%_)
                                (_%$E167488167500%_)))
                          (_%$E167488167500%_)))
                    (_%$E167488167500%_)))
              (_%$E167488167500%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx167249%_)
        (letrec ((_%variadic?167251%_
                  (lambda (_%hd167449%_)
                    (let* ((_%$e167451%_ _%hd167449%_)
                           (_%$E167453167469%_
                            (lambda ()
                              (let ((_%$E167454167466%_
                                     (lambda ()
                                       (let ((_%$E167455167463%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e167451%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e167451%_))
                                            '())
                                    '#f
                                    (_%$E167454167466%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e167451%_))
                          (let* ((_%$tgt167456167472%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e167451%_)))
                                 (_%$hd167457167475%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167456167472%_)))
                                 (_%$tl167458167478%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167456167472%_)))
                                 (_%rest167482%_ _%$tl167458167478%_))
                            (_%variadic?167251%_ _%rest167482%_))
                          (_%$E167453167469%_)))))
                 (_%arity167252%_
                  (lambda (_%hd167387%_)
                    (let _%lp167389%_ ((_%rest167391%_ _%hd167387%_)
                                       (_%k167392%_ '0))
                      (let* ((_%$e167394%_ _%rest167391%_)
                             (_%$E167396167407%_
                              (lambda ()
                                (let ((_%$E167397167404%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e167394%_)))))
                                  _%k167392%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e167394%_))
                            (let* ((_%$tgt167398167410%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e167394%_)))
                                   (_%$hd167399167413%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt167398167410%_)))
                                   (_%$tl167400167416%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt167398167410%_)))
                                   (_%rest167420%_ _%$tl167400167416%_))
                              (_%lp167389%_
                               _%rest167420%_
                               (let ((_%x167422%_ _%k167392%_))
                                 (if (fixnum? _%x167422%_)
                                     (let ((_%x167427%_ _%x167422%_))
                                       (declare (not safe))
                                       (__fx1+ _%x167427%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x167422%_)
                                       '#!void)))))
                            (_%$E167396167407%_))))))
                 (_%generate167253%_
                  (lambda (_%rest167314%_ _%args167315%_ _%len167316%_)
                    (let* ((_%$e167318%_ _%rest167314%_)
                           (_%$E167320167331%_
                            (lambda ()
                              (let ((_%$E167321167328%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e167318%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args167315%_ '())))
                                 _%stx167249%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e167318%_))
                          (let* ((_%$tgt167322167334%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e167318%_)))
                                 (_%$hd167323167337%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167322167334%_)))
                                 (_%$tl167324167340%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167322167334%_)))
                                 (_%clause167344%_ _%$hd167323167337%_)
                                 (_%rest167346%_ _%$tl167324167340%_)
                                 (_%$e167348%_ _%clause167344%_)
                                 (_%$E167350167359%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e167348%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e167348%_))
                                (let* ((_%$tgt167351167362%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e167348%_)))
                                       (_%$hd167352167365%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167351167362%_)))
                                       (_%$tl167353167368%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167351167362%_)))
                                       (_%hd167372%_ _%$hd167352167365%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl167353167368%_))
                                      (let* ((_%$tgt167354167374%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167353167368%_)))
                                             (_%$hd167355167377%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt167354167374%_)))
                                             (_%$tl167356167380%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt167354167374%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl167356167380%_))
                                                    '())
                                            (let ((_%clen167384%_
                                                   (_%arity167252%_
                                                    _%hd167372%_))
                                                  (_%cmp167385%_
                                                   (if (_%variadic?167251%_
                                                        _%hd167372%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp167385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len167316%_ (cons _%clen167384%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause167344%_))
                                      (cons _%args167315%_ '())))
                          _%stx167249%_)
                         (cons (_%generate167253%_
                                _%rest167346%_
                                _%args167315%_
                                _%len167316%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx167249%_))
                                            (_%$E167350167359%_)))
                                      (_%$E167350167359%_)))
                                (_%$E167350167359%_)))
                          (_%$E167320167331%_))))))
          (let* ((_%$e167255%_ _%stx167249%_)
                 (_%$E167257167289%_
                  (lambda ()
                    (let ((_%$E167258167271%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e167255%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e167255%_))
                          (let* ((_%$tgt167259167274%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e167255%_)))
                                 (_%$hd167260167277%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167259167274%_)))
                                 (_%$tl167261167280%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167259167274%_)))
                                 (_%clauses167284%_ _%$tl167261167280%_))
                            (let ((_%args167286%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx167249%_))
                                  (_%len167287%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx167249%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args167286%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len167287%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args167286%_ '()))
                                         _%stx167249%_)
                                        '()))
                            '())
                      (cons (_%generate167253%_
                             _%clauses167284%_
                             _%args167286%_
                             _%len167287%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx167249%_)
                                                 '())))
                               _%stx167249%_)))
                          (_%$E167258167271%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e167255%_))
                (let* ((_%$tgt167262167292%_
                        (let () (declare (not safe)) (__AST-e _%$e167255%_)))
                       (_%$hd167263167295%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt167262167292%_)))
                       (_%$tl167264167298%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt167262167292%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl167264167298%_))
                      (let* ((_%$tgt167265167302%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl167264167298%_)))
                             (_%$hd167266167305%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt167265167302%_)))
                             (_%$tl167267167308%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt167265167302%_)))
                             (_%clause167312%_ _%$hd167266167305%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl167267167308%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause167312%_))
                            (_%$E167257167289%_)))
                      (_%$E167257167289%_)))
                (_%$E167257167289%_))))))
    (define __compile-let-form
      (lambda (_%stx167018%_ _%compile-simple167019%_ _%compile-values167020%_)
        (letrec ((_%simple-bind?167022%_
                  (lambda (_%hd167207%_)
                    (let* ((_%hd167208167218%_ _%hd167207%_)
                           (_%else167211167226%_ (lambda () '#f)))
                      (let ((_%K167214167239%_ (lambda (_%id167237%_) '#t))
                            (_%K167213167231%_ (lambda () '#t)))
                        (let ((_%try-match167210167234%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd167208167218%_ '#f))
                                     (_%K167213167231%_)
                                     (_%else167211167226%_)))))
                          (if (pair? _%hd167208167218%_)
                              (let ((_%tl167216167244%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd167208167218%_)))
                                    (_%hd167215167242%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd167208167218%_))))
                                (if (null? _%tl167216167244%_)
                                    (let ((_%id167247%_ _%hd167215167242%_))
                                      (_%K167214167239%_ _%id167247%_))
                                    (_%try-match167210167234%_)))
                              (_%try-match167210167234%_)))))))
                 (_%car-e167023%_
                  (lambda (_%hd167205%_)
                    (if (pair? _%hd167205%_)
                        (let () (declare (not safe)) (##car _%hd167205%_))
                        _%hd167205%_))))
          (let* ((_%$e167025%_ _%stx167018%_)
                 (_%$E167027167170%_
                  (lambda ()
                    (let ((_%$E167028167050%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e167025%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e167025%_))
                          (let* ((_%$tgt167029167053%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e167025%_)))
                                 (_%$hd167030167056%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167029167053%_)))
                                 (_%$tl167031167059%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167029167053%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl167031167059%_))
                                (let* ((_%$tgt167032167063%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167031167059%_)))
                                       (_%$hd167033167066%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167032167063%_)))
                                       (_%$tl167034167069%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167032167063%_)))
                                       (_%hd167073%_ _%$hd167033167066%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl167034167069%_))
                                      (let* ((_%$tgt167035167075%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167034167069%_)))
                                             (_%$hd167036167078%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt167035167075%_)))
                                             (_%$tl167037167081%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt167035167075%_)))
                                             (_%body167085%_
                                              _%$hd167036167078%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl167037167081%_))
                                                    '())
                                            (let* ((_%hd-ids167125%_
                                                    (map (lambda (_%bind167087%_)
                                                           (let* ((_%$e167089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind167087%_)
                          (_%$E167091167100%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e167089%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e167089%_))
                         (let* ((_%$tgt167092167103%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e167089%_)))
                                (_%$hd167093167106%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt167092167103%_)))
                                (_%$tl167094167109%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt167092167103%_)))
                                (_%ids167113%_ _%$hd167093167106%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl167094167109%_))
                               (let* ((_%$tgt167095167115%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl167094167109%_)))
                                      (_%$hd167096167118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt167095167115%_)))
                                      (_%$tl167097167121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt167095167115%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl167097167121%_))
                                             '())
                                     _%ids167113%_
                                     (_%$E167091167100%_)))
                               (_%$E167091167100%_)))
                         (_%$E167091167100%_))))
                 _%hd167073%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs167165%_
                                                    (map (lambda (_%bind167127%_)
                                                           (let* ((_%$e167129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind167127%_)
                          (_%$E167131167140%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e167129%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e167129%_))
                         (let* ((_%$tgt167132167143%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e167129%_)))
                                (_%$hd167133167146%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt167132167143%_)))
                                (_%$tl167134167149%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt167132167143%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl167134167149%_))
                               (let* ((_%$tgt167135167153%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl167134167149%_)))
                                      (_%$hd167136167156%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt167135167153%_)))
                                      (_%$tl167137167159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt167135167153%_)))
                                      (_%expr167163%_ _%$hd167136167156%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl167137167159%_))
                                             '())
                                     (__compile _%expr167163%_)
                                     (_%$E167131167140%_)))
                               (_%$E167131167140%_)))
                         (_%$E167131167140%_))))
                 _%hd167073%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body167167%_
                                                    (__compile
                                                     _%body167085%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?167022%_
                                                     _%hd-ids167125%_))
                                                  (_%compile-simple167019%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e167023%_
                                                            _%hd-ids167125%_))
                                                   _%exprs167165%_
                                                   _%body167167%_)
                                                  (_%compile-values167020%_
                                                   _%hd-ids167125%_
                                                   _%exprs167165%_
                                                   _%body167167%_)))
                                            (_%$E167028167050%_)))
                                      (_%$E167028167050%_)))
                                (_%$E167028167050%_)))
                          (_%$E167028167050%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e167025%_))
                (let* ((_%$tgt167038167173%_
                        (let () (declare (not safe)) (__AST-e _%$e167025%_)))
                       (_%$hd167039167176%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt167038167173%_)))
                       (_%$tl167040167179%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt167038167173%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl167040167179%_))
                      (let* ((_%$tgt167041167183%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl167040167179%_)))
                             (_%$hd167042167186%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt167041167183%_)))
                             (_%$tl167043167189%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt167041167183%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd167042167186%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl167043167189%_))
                                (let* ((_%$tgt167044167193%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167043167189%_)))
                                       (_%$hd167045167196%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167044167193%_)))
                                       (_%$tl167046167199%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167044167193%_)))
                                       (_%body167203%_ _%$hd167045167196%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167046167199%_))
                                              '())
                                      (__compile _%body167203%_)
                                      (_%$E167027167170%_)))
                                (_%$E167027167170%_))
                            (_%$E167027167170%_)))
                      (_%$E167027167170%_)))
                (_%$E167027167170%_))))))
    (define __compile-let-values%
      (lambda (_%stx166830%_)
        (letrec ((_%compile-simple166832%_
                  (lambda (_%hd-ids167014%_ _%exprs167015%_ _%body167016%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp168210
                                        (map __compile-head-id
                                             _%hd-ids167014%_)))
                                   (declare (not safe))
                                   (##map list __tmp168210 _%exprs167015%_))
                                 (cons _%body167016%_ '())))
                     _%stx166830%_)))
                 (_%compile-values166833%_
                  (lambda (_%hd-ids166929%_ _%exprs166930%_ _%body166931%_)
                    (let _%lp166933%_ ((_%rest166935%_ _%hd-ids166929%_)
                                       (_%exprs166936%_ _%exprs166930%_)
                                       (_%bind166937%_ '())
                                       (_%post166938%_ '()))
                      (let* ((_%rest166939166953%_ _%rest166935%_)
                             (_%else166942166961%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind166937%_)
                                             (cons (_%compile-post166834%_
                                                    _%post166938%_
                                                    _%body166931%_)
                                                   '())))
                                 _%stx166830%_))))
                        (let ((_%K166947166997%_
                               (lambda (_%rest166994%_ _%id166995%_)
                                 (_%lp166933%_
                                  _%rest166994%_
                                  (cdr _%exprs166936%_)
                                  (cons (cons (__compile-head-id _%id166995%_)
                                              (cons (car _%exprs166936%_) '()))
                                        _%bind166937%_)
                                  _%post166938%_)))
                              (_%K166944166979%_
                               (lambda (_%rest166965%_ _%hd166966%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd166966%_))
                                     (_%lp166933%_
                                      _%rest166965%_
                                      (cdr _%exprs166936%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd166966%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs166936%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind166937%_)
                                      _%post166938%_)
                                     (if (list? _%hd166966%_)
                                         (let* ((_%len166970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd166966%_)))
                                                (_%tmp166972%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp166933%_
                                            _%rest166965%_
                                            (cdr _%exprs166936%_)
                                            (cons (cons _%tmp166972%_
                                                        (cons (car _%exprs166936%_)
                                                              '()))
                                                  _%bind166937%_)
                                            (cons (cons _%tmp166972%_
                                                        (cons _%len166970%_
                                                              (let ((__tmp168212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id166975%_ _%k166976%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id166975%_))
                                   (cons (__SRC__0 _%id166975%_) _%k166976%_)
                                   '#f)))
                            (__tmp168211
                             (let ()
                               (declare (not safe))
                               (##iota _%len166970%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp168212 _%hd166966%_ __tmp168211))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post166938%_)))
                                         (__compile-error__%
                                          _%stx166830%_
                                          _%hd166966%_))))))
                          (if (pair? _%rest166939166953%_)
                              (let ((_%tl166949167002%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest166939166953%_)))
                                    (_%hd166948167000%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest166939166953%_))))
                                (if (pair? _%hd166948167000%_)
                                    (let ((_%tl166951167007%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd166948167000%_)))
                                          (_%hd166950167005%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd166948167000%_))))
                                      (if (null? _%tl166951167007%_)
                                          (let ((_%id167010%_
                                                 _%hd166950167005%_)
                                                (_%rest167012%_
                                                 _%tl166949167002%_))
                                            (_%K166947166997%_
                                             _%rest167012%_
                                             _%id167010%_))
                                          (let ((_%hd166987%_
                                                 _%hd166948167000%_)
                                                (_%rest166989%_
                                                 _%tl166949167002%_))
                                            (_%K166944166979%_
                                             _%rest166989%_
                                             _%hd166987%_))))
                                    (let ((_%hd166987%_ _%hd166948167000%_)
                                          (_%rest166989%_ _%tl166949167002%_))
                                      (_%K166944166979%_
                                       _%rest166989%_
                                       _%hd166987%_))))
                              (_%else166942166961%_)))))))
                 (_%compile-post166834%_
                  (lambda (_%post166836%_ _%body166837%_)
                    (let _%lp166839%_ ((_%rest166841%_ _%post166836%_)
                                       (_%check166842%_ '())
                                       (_%bind166843%_ '()))
                      (let* ((_%rest166844166856%_ _%rest166841%_)
                             (_%else166846166864%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp168213
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind166843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body166837%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx166830%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp168213
                                          _%check166842%_)))
                                 _%stx166830%_)))
                             (_%K166848166903%_
                              (lambda (_%rest166867%_
                                       _%init166868%_
                                       _%len166869%_
                                       _%tmp166870%_)
                                (_%lp166839%_
                                 _%rest166867%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp166870%_
                                                    (cons _%len166869%_ '())))
                                        _%stx166830%_)
                                       _%check166842%_)
                                 (let ((__tmp168214
                                        (lambda (_%hd166872%_ _%r166873%_)
                                          (let* ((_%hd166874166881%_
                                                  _%hd166872%_)
                                                 (_%E166876166885%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd166874166881%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K166877166891%_
                                                  (lambda (_%k166888%_
                                                           _%id166889%_)
                                                    (cons (cons _%id166889%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp166870%_
                                          (cons _%k166888%_ '())))
                              '()))
                  _%r166873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd166874166881%_)
                                                (let ((_%hd166878166894%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd166874166881%_)))
                                                      (_%tl166879166896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd166874166881%_))))
                                                  (let* ((_%id166899%_
                                                          _%hd166878166894%_)
                                                         (_%k166901%_
                                                          _%tl166879166896%_))
                                                    (_%K166877166891%_
                                                     _%k166901%_
                                                     _%id166899%_)))
                                                (_%E166876166885%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp168214
                                    _%bind166843%_
                                    _%init166868%_))))))
                        (if (pair? _%rest166844166856%_)
                            (let ((_%hd166849166906%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest166844166856%_)))
                                  (_%tl166850166908%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest166844166856%_))))
                              (if (pair? _%hd166849166906%_)
                                  (let ((_%hd166851166911%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd166849166906%_)))
                                        (_%tl166852166913%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd166849166906%_))))
                                    (let ((_%tmp166916%_ _%hd166851166911%_))
                                      (if (pair? _%tl166852166913%_)
                                          (let ((_%hd166853166918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl166852166913%_)))
                                                (_%tl166854166920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl166852166913%_))))
                                            (let* ((_%len166923%_
                                                    _%hd166853166918%_)
                                                   (_%init166925%_
                                                    _%tl166854166920%_)
                                                   (_%rest166927%_
                                                    _%tl166850166908%_))
                                              (_%K166848166903%_
                                               _%rest166927%_
                                               _%init166925%_
                                               _%len166923%_
                                               _%tmp166916%_)))
                                          (_%else166846166864%_))))
                                  (_%else166846166864%_)))
                            (_%else166846166864%_)))))))
          (__compile-let-form
           _%stx166830%_
           _%compile-simple166832%_
           _%compile-values166833%_))))
    (define __compile-letrec-values%
      (lambda (_%stx166627%_)
        (letrec ((_%compile-simple166629%_
                  (lambda (_%hd-ids166826%_ _%exprs166827%_ _%body166828%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp168215
                                        (map __compile-head-id
                                             _%hd-ids166826%_)))
                                   (declare (not safe))
                                   (##map list __tmp168215 _%exprs166827%_))
                                 (cons _%body166828%_ '())))
                     _%stx166627%_)))
                 (_%compile-values166630%_
                  (lambda (_%hd-ids166737%_ _%exprs166738%_ _%body166739%_)
                    (let _%lp166741%_ ((_%rest166743%_ _%hd-ids166737%_)
                                       (_%exprs166744%_ _%exprs166738%_)
                                       (_%pre166745%_ '())
                                       (_%bind166746%_ '())
                                       (_%post166747%_ '()))
                      (let* ((_%rest166748166762%_ _%rest166743%_)
                             (_%else166751166770%_
                              (lambda ()
                                (_%compile-inner166631%_
                                 _%pre166745%_
                                 _%bind166746%_
                                 _%post166747%_
                                 _%body166739%_))))
                        (let ((_%K166756166809%_
                               (lambda (_%rest166806%_ _%id166807%_)
                                 (_%lp166741%_
                                  _%rest166806%_
                                  (cdr _%exprs166744%_)
                                  _%pre166745%_
                                  (cons (cons (__compile-head-id _%id166807%_)
                                              (cons (car _%exprs166744%_) '()))
                                        _%bind166746%_)
                                  _%post166747%_)))
                              (_%K166753166791%_
                               (lambda (_%rest166774%_ _%hd166775%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd166775%_))
                                     (_%lp166741%_
                                      _%rest166774%_
                                      (cdr _%exprs166744%_)
                                      _%pre166745%_
                                      (cons (cons (__compile-head-id
                                                   _%hd166775%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs166744%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind166746%_)
                                      _%post166747%_)
                                     (if (list? _%hd166775%_)
                                         (let* ((_%len166779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd166775%_)))
                                                (_%tmp166781%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp166741%_
                                            _%rest166774%_
                                            (cdr _%exprs166744%_)
                                            (let ((__tmp168216
                                                   (lambda (_%id166784%_
                                                            _%r166785%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id166784%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id166784%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r166785%_)
                 _%r166785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp168216
                                               _%pre166745%_
                                               _%hd166775%_))
                                            (cons (cons _%tmp166781%_
                                                        (cons (car _%exprs166744%_)
                                                              '()))
                                                  _%bind166746%_)
                                            (cons (cons _%tmp166781%_
                                                        (cons _%len166779%_
                                                              (let ((__tmp168218
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id166787%_ _%k166788%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id166787%_))
                                   (cons (__SRC__0 _%id166787%_) _%k166788%_)
                                   '#f)))
                            (__tmp168217
                             (let ()
                               (declare (not safe))
                               (##iota _%len166779%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp168218 _%hd166775%_ __tmp168217))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post166747%_)))
                                         (__compile-error__%
                                          _%stx166627%_
                                          _%hd166775%_))))))
                          (if (pair? _%rest166748166762%_)
                              (let ((_%tl166758166814%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest166748166762%_)))
                                    (_%hd166757166812%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest166748166762%_))))
                                (if (pair? _%hd166757166812%_)
                                    (let ((_%tl166760166819%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd166757166812%_)))
                                          (_%hd166759166817%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd166757166812%_))))
                                      (if (null? _%tl166760166819%_)
                                          (let ((_%id166822%_
                                                 _%hd166759166817%_)
                                                (_%rest166824%_
                                                 _%tl166758166814%_))
                                            (_%K166756166809%_
                                             _%rest166824%_
                                             _%id166822%_))
                                          (let ((_%hd166799%_
                                                 _%hd166757166812%_)
                                                (_%rest166801%_
                                                 _%tl166758166814%_))
                                            (_%K166753166791%_
                                             _%rest166801%_
                                             _%hd166799%_))))
                                    (let ((_%hd166799%_ _%hd166757166812%_)
                                          (_%rest166801%_ _%tl166758166814%_))
                                      (_%K166753166791%_
                                       _%rest166801%_
                                       _%hd166799%_))))
                              (_%else166751166770%_)))))))
                 (_%compile-inner166631%_
                  (lambda (_%pre166732%_
                           _%bind166733%_
                           _%post166734%_
                           _%body166735%_)
                    (if (null? _%pre166732%_)
                        (_%compile-bind166632%_
                         _%bind166733%_
                         _%post166734%_
                         _%body166735%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre166732%_)
                                     (cons (_%compile-bind166632%_
                                            _%bind166733%_
                                            _%post166734%_
                                            _%body166735%_)
                                           '())))
                         _%stx166627%_))))
                 (_%compile-bind166632%_
                  (lambda (_%bind166728%_ _%post166729%_ _%body166730%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind166728%_)
                                 (cons (_%compile-post166633%_
                                        _%post166729%_
                                        _%body166730%_)
                                       '())))
                     _%stx166627%_)))
                 (_%compile-post166633%_
                  (lambda (_%post166635%_ _%body166636%_)
                    (let _%lp166638%_ ((_%rest166640%_ _%post166635%_)
                                       (_%check166641%_ '())
                                       (_%bind166642%_ '()))
                      (let* ((_%rest166643166655%_ _%rest166640%_)
                             (_%else166645166663%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp168219
                                              (let ((__tmp168220
                                                     (cons _%body166636%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp168220
                                                 _%bind166642%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp168219
                                          _%check166641%_)))
                                 _%stx166627%_)))
                             (_%K166647166702%_
                              (lambda (_%rest166666%_
                                       _%init166667%_
                                       _%len166668%_
                                       _%tmp166669%_)
                                (_%lp166638%_
                                 _%rest166666%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp166669%_
                                                    (cons _%len166668%_ '())))
                                        _%stx166627%_)
                                       _%check166641%_)
                                 (let ((__tmp168221
                                        (lambda (_%hd166671%_ _%r166672%_)
                                          (let* ((_%hd166673166680%_
                                                  _%hd166671%_)
                                                 (_%E166675166684%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd166673166680%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K166676166690%_
                                                  (lambda (_%k166687%_
                                                           _%id166688%_)
                                                    (cons (cons 'set!
                                                                (cons _%id166688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp166669%_
                                                (cons _%k166687%_ '())))
                                    '())))
                  _%r166672%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd166673166680%_)
                                                (let ((_%hd166677166693%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd166673166680%_)))
                                                      (_%tl166678166695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd166673166680%_))))
                                                  (let* ((_%id166698%_
                                                          _%hd166677166693%_)
                                                         (_%k166700%_
                                                          _%tl166678166695%_))
                                                    (_%K166676166690%_
                                                     _%k166700%_
                                                     _%id166698%_)))
                                                (_%E166675166684%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp168221
                                    _%bind166642%_
                                    _%init166667%_))))))
                        (if (pair? _%rest166643166655%_)
                            (let ((_%hd166648166705%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest166643166655%_)))
                                  (_%tl166649166707%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest166643166655%_))))
                              (if (pair? _%hd166648166705%_)
                                  (let ((_%hd166650166710%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd166648166705%_)))
                                        (_%tl166651166712%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd166648166705%_))))
                                    (let ((_%tmp166715%_ _%hd166650166710%_))
                                      (if (pair? _%tl166651166712%_)
                                          (let ((_%hd166652166717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl166651166712%_)))
                                                (_%tl166653166719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl166651166712%_))))
                                            (let* ((_%len166722%_
                                                    _%hd166652166717%_)
                                                   (_%init166724%_
                                                    _%tl166653166719%_)
                                                   (_%rest166726%_
                                                    _%tl166649166707%_))
                                              (_%K166647166702%_
                                               _%rest166726%_
                                               _%init166724%_
                                               _%len166722%_
                                               _%tmp166715%_)))
                                          (_%else166645166663%_))))
                                  (_%else166645166663%_)))
                            (_%else166645166663%_)))))))
          (__compile-let-form
           _%stx166627%_
           _%compile-simple166629%_
           _%compile-values166630%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx166378%_)
        (letrec ((_%compile-simple166380%_
                  (lambda (_%hd-ids166623%_ _%exprs166624%_ _%body166625%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp168222
                                        (map __compile-head-id
                                             _%hd-ids166623%_)))
                                   (declare (not safe))
                                   (##map list __tmp168222 _%exprs166624%_))
                                 (cons _%body166625%_ '())))
                     _%stx166378%_)))
                 (_%compile-values166381%_
                  (lambda (_%hd-ids166530%_ _%exprs166531%_ _%body166532%_)
                    (let _%lp166534%_ ((_%rest166536%_ _%hd-ids166530%_)
                                       (_%exprs166537%_ _%exprs166531%_)
                                       (_%bind166538%_ '())
                                       (_%post166539%_ '()))
                      (let* ((_%rest166540166554%_ _%rest166536%_)
                             (_%else166543166562%_
                              (lambda ()
                                (_%compile-bind166382%_
                                 _%bind166538%_
                                 _%post166539%_
                                 _%body166532%_))))
                        (let ((_%K166548166606%_
                               (lambda (_%rest166601%_ _%hd166602%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd166602%_))
                                     (let ((_%id166604%_
                                            (__SRC__0 _%hd166602%_)))
                                       (_%lp166534%_
                                        _%rest166601%_
                                        (cdr _%exprs166537%_)
                                        (cons (cons _%id166604%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind166538%_)
                                        (cons (cons _%id166604%_
                                                    (cons (car _%exprs166537%_)
                                                          '()))
                                              _%post166539%_)))
                                     (_%lp166534%_
                                      _%rest166601%_
                                      (cdr _%exprs166537%_)
                                      _%bind166538%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs166537%_)
                                                        '()))
                                            _%post166539%_)))))
                              (_%K166545166586%_
                               (lambda (_%rest166566%_ _%hd166567%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd166567%_))
                                     (let ((_%id166570%_
                                            (__SRC__0 _%hd166567%_)))
                                       (_%lp166534%_
                                        _%rest166566%_
                                        (cdr _%exprs166537%_)
                                        (cons (cons _%id166570%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind166538%_)
                                        (cons (cons _%id166570%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs166537%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post166539%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd166567%_))
                                         (if (list? _%hd166567%_)
                                             (let* ((_%len166574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd166567%_)))
                                                    (_%tmp166576%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp166534%_
                                                _%rest166566%_
                                                (cdr _%exprs166537%_)
                                                (let ((__tmp168223
                                                       (lambda (_%id166579%_
                                                                _%r166580%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id166579%_))
                     (cons (cons (__SRC__0 _%id166579%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r166580%_)
                     _%r166580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp168223
                                                   _%bind166538%_
                                                   _%hd166567%_))
                                                (cons (cons _%tmp166576%_
                                                            (cons (car _%exprs166537%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len166574%_
                                (let ((__tmp168225
                                       (lambda (_%id166582%_ _%k166583%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id166582%_))
                                             (cons (__SRC__0 _%id166582%_)
                                                   _%k166583%_)
                                             '#f)))
                                      (__tmp168224
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len166574%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp168225
                                   _%hd166567%_
                                   __tmp168224)))))
              _%post166539%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx166378%_
                                              _%hd166567%_))
                                         (_%lp166534%_
                                          _%rest166566%_
                                          (cdr _%exprs166537%_)
                                          _%bind166538%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs166537%_)
                                                            '()))
                                                _%post166539%_)))))))
                          (if (pair? _%rest166540166554%_)
                              (let ((_%tl166550166611%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest166540166554%_)))
                                    (_%hd166549166609%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest166540166554%_))))
                                (if (pair? _%hd166549166609%_)
                                    (let ((_%tl166552166616%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd166549166609%_)))
                                          (_%hd166551166614%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd166549166609%_))))
                                      (if (null? _%tl166552166616%_)
                                          (let ((_%hd166619%_
                                                 _%hd166551166614%_)
                                                (_%rest166621%_
                                                 _%tl166550166611%_))
                                            (_%K166548166606%_
                                             _%rest166621%_
                                             _%hd166619%_))
                                          (let ((_%hd166594%_
                                                 _%hd166549166609%_)
                                                (_%rest166596%_
                                                 _%tl166550166611%_))
                                            (_%K166545166586%_
                                             _%rest166596%_
                                             _%hd166594%_))))
                                    (let ((_%hd166594%_ _%hd166549166609%_)
                                          (_%rest166596%_ _%tl166550166611%_))
                                      (_%K166545166586%_
                                       _%rest166596%_
                                       _%hd166594%_))))
                              (_%else166543166562%_)))))))
                 (_%compile-bind166382%_
                  (lambda (_%bind166526%_ _%post166527%_ _%body166528%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind166526%_)
                                 (cons (_%compile-post166383%_
                                        _%post166527%_
                                        _%body166528%_)
                                       '())))
                     _%stx166378%_)))
                 (_%compile-post166383%_
                  (lambda (_%post166385%_ _%body166386%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp168226
                                  (let ((__tmp168228
                                         (lambda (_%hd166388%_ _%r166389%_)
                                           (let* ((_%hd166390166413%_
                                                   _%hd166388%_)
                                                  (_%E166394166417%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd166390166413%_
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
                                             (let ((_%K166407166511%_
                                                    (lambda (_%expr166509%_)
                                                      (cons _%expr166509%_
                                                            _%r166389%_)))
                                                   (_%K166402166489%_
                                                    (lambda (_%expr166486%_
                                                             _%id166487%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id166487%_ (cons _%expr166486%_ '())))
                     _%stx166378%_)
                    _%r166389%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K166395166456%_
                                                    (lambda (_%init166421%_
                                                             _%len166422%_
                                                             _%expr166423%_
                                                             _%tmp166424%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp166424%_
                                             (cons _%expr166423%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp166424%_
                                                    (cons _%len166422%_ '())))
                                        _%stx166378%_)
                                       (let ((__tmp168229
                                              (map (lambda (_%hd166426%_)
                                                     (let* ((_%hd166427166434%_
                                                             _%hd166426%_)
                                                            (_%E166429166438%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd166427166434%_
                                '([id . k])))
                       '#!void))
                    (_%K166430166444%_
                     (lambda (_%k166441%_ _%id166442%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id166442%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp166424%_
                                                      (cons _%k166441%_ '())))
                                          '())))
                        _%stx166378%_))))
               (if (pair? _%hd166427166434%_)
                   (let ((_%hd166431166447%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd166427166434%_)))
                         (_%tl166432166449%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd166427166434%_))))
                     (let* ((_%id166452%_ _%hd166431166447%_)
                            (_%k166454%_ _%tl166432166449%_))
                       (_%K166430166444%_ _%k166454%_ _%id166452%_)))
                   (_%E166429166438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init166421%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp168229)))))
                     _%stx166378%_)
                    _%r166389%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match168084168085%_
                                                       (lambda (_%hd166396166459%_
                                                                _%tl166397166461%_
                                                                _%hd166398166466%_
                                                                _%tl166399166468%_)
                                                         (let ((_%tmp166464%_
                                                                _%hd166396166459%_)
                                                               (_%expr166471%_
                                                                _%hd166398166466%_))
                                                           (_%E166394166417%_))))
                                                      (_%__match168078168079%_
                                                       (lambda (_%hd166396166459%_
                                                                _%tl166397166461%_)
                                                         (let ((_%tmp166464%_
                                                                _%hd166396166459%_))
                                                           (_%E166394166417%_)))))
                                                 (if (pair? _%hd166390166413%_)
                                                     (let ((_%tl166409166516%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd166390166413%_)))
                                                           (_%hd166408166514%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd166390166413%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd166408166514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl166409166516%_)
                       (let ((_%tl166411166521%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl166409166516%_)))
                             (_%hd166410166519%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl166409166516%_))))
                         (if (null? _%tl166411166521%_)
                             (let ((_%expr166524%_ _%hd166410166519%_))
                               (_%K166407166511%_ _%expr166524%_))
                             (if (pair? _%tl166411166521%_)
                                 (let ((_%tl166401166475%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl166411166521%_)))
                                       (_%hd166400166473%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl166411166521%_))))
                                   (let ((_%tmp166464%_ _%hd166408166514%_)
                                         (_%expr166471%_ _%hd166410166519%_)
                                         (_%len166478%_ _%hd166400166473%_)
                                         (_%init166480%_ _%tl166401166475%_))
                                     (_%K166395166456%_
                                      _%init166480%_
                                      _%len166478%_
                                      _%expr166471%_
                                      _%tmp166464%_)))
                                 (_%__match168084168085%_
                                  _%hd166408166514%_
                                  _%tl166409166516%_
                                  _%hd166410166519%_
                                  _%tl166411166521%_))))
                       (_%__match168078168079%_
                        _%hd166408166514%_
                        _%tl166409166516%_))
                   (if (pair? _%tl166409166516%_)
                       (let ((_%tl166406166501%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl166409166516%_)))
                             (_%hd166405166499%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl166409166516%_))))
                         (if (null? _%tl166406166501%_)
                             (let ((_%id166497%_ _%hd166408166514%_)
                                   (_%expr166504%_ _%hd166405166499%_))
                               (_%K166402166489%_ _%expr166504%_ _%id166497%_))
                             (if (pair? _%tl166406166501%_)
                                 (let ((_%tl166401166475%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl166406166501%_)))
                                       (_%hd166400166473%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl166406166501%_))))
                                   (let ((_%tmp166464%_ _%hd166408166514%_)
                                         (_%expr166471%_ _%hd166405166499%_)
                                         (_%len166478%_ _%hd166400166473%_)
                                         (_%init166480%_ _%tl166401166475%_))
                                     (_%K166395166456%_
                                      _%init166480%_
                                      _%len166478%_
                                      _%expr166471%_
                                      _%tmp166464%_)))
                                 (_%__match168084168085%_
                                  _%hd166408166514%_
                                  _%tl166409166516%_
                                  _%hd166405166499%_
                                  _%tl166406166501%_))))
                       (_%__match168078168079%_
                        _%hd166408166514%_
                        _%tl166409166516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E166394166417%_)))))))
                                        (__tmp168227 (list _%body166386%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp168228
                                     __tmp168227
                                     _%post166385%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp168226)))
                     _%stx166378%_))))
          (__compile-let-form
           _%stx166378%_
           _%compile-simple166380%_
           _%compile-values166381%_))))
    (define __compile-call%
      (lambda (_%stx166338%_)
        (let* ((_%$e166340%_ _%stx166338%_)
               (_%$E166342166351%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166340%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166340%_))
              (let* ((_%$tgt166343166354%_
                      (let () (declare (not safe)) (__AST-e _%$e166340%_)))
                     (_%$hd166344166357%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166343166354%_)))
                     (_%$tl166345166360%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166343166354%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166345166360%_))
                    (let* ((_%$tgt166346166364%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166345166360%_)))
                           (_%$hd166347166367%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166346166364%_)))
                           (_%$tl166348166370%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166346166364%_)))
                           (_%rator166374%_ _%$hd166347166367%_)
                           (_%rands166376%_ _%$tl166348166370%_))
                      (__SRC__%
                       (cons (__compile _%rator166374%_)
                             (map __compile _%rands166376%_))
                       _%stx166338%_))
                    (_%$E166342166351%_)))
              (_%$E166342166351%_)))))
    (define __compile-ref%
      (lambda (_%stx166300%_)
        (let* ((_%$e166302%_ _%stx166300%_)
               (_%$E166304166313%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166302%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166302%_))
              (let* ((_%$tgt166305166316%_
                      (let () (declare (not safe)) (__AST-e _%$e166302%_)))
                     (_%$hd166306166319%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166305166316%_)))
                     (_%$tl166307166322%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166305166316%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166307166322%_))
                    (let* ((_%$tgt166308166326%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166307166322%_)))
                           (_%$hd166309166329%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166308166326%_)))
                           (_%$tl166310166332%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166308166326%_)))
                           (_%id166336%_ _%$hd166309166329%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166310166332%_))
                                  '())
                          (__SRC__% _%id166336%_ _%stx166300%_)
                          (_%$E166304166313%_)))
                    (_%$E166304166313%_)))
              (_%$E166304166313%_)))))
    (define __compile-setq%
      (lambda (_%stx166247%_)
        (let* ((_%$e166249%_ _%stx166247%_)
               (_%$E166251166263%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166249%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166249%_))
              (let* ((_%$tgt166252166266%_
                      (let () (declare (not safe)) (__AST-e _%$e166249%_)))
                     (_%$hd166253166269%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166252166266%_)))
                     (_%$tl166254166272%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166252166266%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166254166272%_))
                    (let* ((_%$tgt166255166276%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166254166272%_)))
                           (_%$hd166256166279%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166255166276%_)))
                           (_%$tl166257166282%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166255166276%_)))
                           (_%id166286%_ _%$hd166256166279%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl166257166282%_))
                          (let* ((_%$tgt166258166288%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166257166282%_)))
                                 (_%$hd166259166291%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt166258166288%_)))
                                 (_%$tl166260166294%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt166258166288%_)))
                                 (_%expr166298%_ _%$hd166259166291%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl166260166294%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id166286%_
                                              _%stx166247%_)
                                             (cons (__compile _%expr166298%_)
                                                   '())))
                                 _%stx166247%_)
                                (_%$E166251166263%_)))
                          (_%$E166251166263%_)))
                    (_%$E166251166263%_)))
              (_%$E166251166263%_)))))
    (define __compile-if%
      (lambda (_%stx166179%_)
        (let* ((_%$e166181%_ _%stx166179%_)
               (_%$E166183166198%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166181%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166181%_))
              (let* ((_%$tgt166184166201%_
                      (let () (declare (not safe)) (__AST-e _%$e166181%_)))
                     (_%$hd166185166204%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166184166201%_)))
                     (_%$tl166186166207%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166184166201%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166186166207%_))
                    (let* ((_%$tgt166187166211%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166186166207%_)))
                           (_%$hd166188166214%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166187166211%_)))
                           (_%$tl166189166217%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166187166211%_)))
                           (_%p166221%_ _%$hd166188166214%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl166189166217%_))
                          (let* ((_%$tgt166190166223%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166189166217%_)))
                                 (_%$hd166191166226%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt166190166223%_)))
                                 (_%$tl166192166229%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt166190166223%_)))
                                 (_%t166233%_ _%$hd166191166226%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl166192166229%_))
                                (let* ((_%$tgt166193166235%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl166192166229%_)))
                                       (_%$hd166194166238%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt166193166235%_)))
                                       (_%$tl166195166241%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt166193166235%_)))
                                       (_%f166245%_ _%$hd166194166238%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl166195166241%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p166221%_)
                                                   (cons (__compile
                                                          _%t166233%_)
                                                         (cons (__compile
                                                                _%f166245%_)
                                                               '()))))
                                       _%stx166179%_)
                                      (_%$E166183166198%_)))
                                (_%$E166183166198%_)))
                          (_%$E166183166198%_)))
                    (_%$E166183166198%_)))
              (_%$E166183166198%_)))))
    (define __compile-quote%
      (lambda (_%stx166141%_)
        (let* ((_%$e166143%_ _%stx166141%_)
               (_%$E166145166154%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166143%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166143%_))
              (let* ((_%$tgt166146166157%_
                      (let () (declare (not safe)) (__AST-e _%$e166143%_)))
                     (_%$hd166147166160%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166146166157%_)))
                     (_%$tl166148166163%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166146166157%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166148166163%_))
                    (let* ((_%$tgt166149166167%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166148166163%_)))
                           (_%$hd166150166170%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166149166167%_)))
                           (_%$tl166151166173%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166149166167%_)))
                           (_%e166177%_ _%$hd166150166170%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166151166173%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e166177%_))
                                       '()))
                           _%stx166141%_)
                          (_%$E166145166154%_)))
                    (_%$E166145166154%_)))
              (_%$E166145166154%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx166103%_)
        (let* ((_%$e166105%_ _%stx166103%_)
               (_%$E166107166116%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166105%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166105%_))
              (let* ((_%$tgt166108166119%_
                      (let () (declare (not safe)) (__AST-e _%$e166105%_)))
                     (_%$hd166109166122%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166108166119%_)))
                     (_%$tl166110166125%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166108166119%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166110166125%_))
                    (let* ((_%$tgt166111166129%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166110166125%_)))
                           (_%$hd166112166132%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166111166129%_)))
                           (_%$tl166113166135%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166111166129%_)))
                           (_%e166139%_ _%$hd166112166132%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166113166135%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e166139%_ '()))
                           _%stx166103%_)
                          (_%$E166107166116%_)))
                    (_%$E166107166116%_)))
              (_%$E166107166116%_)))))
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
