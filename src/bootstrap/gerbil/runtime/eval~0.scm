(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1781697561)
  (begin
    (define __syntax::t
      (let ((__tmp173695 (list)) (__tmp173694 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__syntax::t
         '__syntax
         __tmp173695
         '(e id)
         __tmp173694
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args173499%_
        (apply make-instance __syntax::t _%$args173499%_)))
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
      (let ((__tmp173697 (list __syntax::t))
            (__tmp173696 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-form::t
         '__core-form
         __tmp173697
         '()
         __tmp173696
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args173496%_
        (apply make-instance __core-form::t _%$args173496%_)))
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
      (let ((__tmp173699 (list __core-form::t))
            (__tmp173698 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-expression::t
         '__core-expression
         __tmp173699
         '()
         __tmp173698
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args173493%_
        (apply make-instance __core-expression::t _%$args173493%_)))
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
      (let ((__tmp173701 (list __core-form::t))
            (__tmp173700 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-special-form::t
         '__core-special-form
         __tmp173701
         '()
         __tmp173700
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args173490%_
        (apply make-instance __core-special-form::t _%$args173490%_)))
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
      (lambda (_%id173464%_)
        (let* ((_%h173466%_ __core)
               (_%key173469%_
                (let () (declare (not safe)) (__AST-e _%id173464%_)))
               (_%h173476%_
                (let ((_%$obj173473%_ _%h173466%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj173473%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj173473%_)))
                           '#t)
                      _%$obj173473%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj173473%_)))))
               (_%h173478%_ _%h173476%_))
          (declare (not safe))
          (__hash-get _%h173478%_ _%key173469%_))))
    (define __core-bound-id?__%
      (lambda (_%id173447%_ _%is?173448%_)
        (let ((_%$e173450%_ (__core-resolve _%id173447%_)))
          (if _%$e173450%_ (_%is?173448%_ _%$e173450%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id173457%_)
        (let ((_%is?173459%_ true))
          (__core-bound-id?__% _%id173457%_ _%is?173459%_))))
    (define __core-bound-id?
      (lambda _g173702_
        (let ((_g173703_ (let () (declare (not safe)) (##length _g173702_))))
          (cond ((let () (declare (not safe)) (##fx= _g173703_ 1))
                 (apply __core-bound-id?__0 _g173702_))
                ((let () (declare (not safe)) (##fx= _g173703_ 2))
                 (apply __core-bound-id?__% _g173702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g173702_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id173402%_ _%e173403%_ _%make173404%_)
        (let* ((_%h173406%_ __core)
               (_%key173409%_ _%id173402%_)
               (_%value173412%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%e173403%_ '__syntax::t))
                    _%e173403%_
                    (_%make173404%_ _%e173403%_ _%id173402%_)))
               (_%h173419%_
                (let ((_%$obj173416%_ _%h173406%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj173416%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj173416%_)))
                           '#t)
                      _%$obj173416%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj173416%_)))))
               (_%h173421%_ _%h173419%_))
          (declare (not safe))
          (__hash-put! _%h173421%_ _%key173409%_ _%value173412%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id173437%_ _%e173438%_)
        (let ((_%make173440%_ make-__syntax))
          (__core-bind-syntax!__% _%id173437%_ _%e173438%_ _%make173440%_))))
    (define __core-bind-syntax!
      (lambda _g173704_
        (let ((_g173705_ (let () (declare (not safe)) (##length _g173704_))))
          (cond ((let () (declare (not safe)) (##fx= _g173705_ 2))
                 (apply __core-bind-syntax!__0 _g173704_))
                ((let () (declare (not safe)) (##fx= _g173705_ 3))
                 (apply __core-bind-syntax!__% _g173704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g173704_))))))
    (define __SRC__%
      (lambda (_%e173382%_ _%src-stx173383%_)
        (if (or (pair? _%e173382%_) (symbol? _%e173382%_))
            (let ((__tmp173706
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx173383%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx173383%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e173382%_ __tmp173706))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e173382%_ 'gerbil#AST::t))
                (let ((__tmp173708
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e173382%_ '1 '#f '#f)))
                      (__tmp173707
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e173382%_)))))
                  (declare (not safe))
                  (##make-source __tmp173708 __tmp173707))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e173382%_))))))
    (define __SRC__0
      (lambda (_%e173394%_)
        (let ((_%src-stx173396%_ '#f))
          (__SRC__% _%e173394%_ _%src-stx173396%_))))
    (define __SRC
      (lambda _g173709_
        (let ((_g173710_ (let () (declare (not safe)) (##length _g173709_))))
          (cond ((let () (declare (not safe)) (##fx= _g173710_ 1))
                 (apply __SRC__0 _g173709_))
                ((let () (declare (not safe)) (##fx= _g173710_ 2))
                 (apply __SRC__% _g173709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g173709_))))))
    (define __locat
      (lambda (_%loc173379%_)
        (if (let () (declare (not safe)) (##locat? _%loc173379%_))
            _%loc173379%_
            '#f)))
    (define __check-values
      (lambda (_%obj173374%_ _%k173375%_)
        (let ((_%count173377%_
               (if (let () (declare (not safe)) (##values? _%obj173374%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj173374%_))
                   '1)))
          (if (fx= _%count173377%_ _%k173375%_)
              '#!void
              (let ((__tmp173712
                     (if (fx< _%count173377%_ _%k173375%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp173711
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj173374%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj173374%_))
                         _%obj173374%_)))
                (declare (not safe))
                (error __tmp173712 __tmp173711 _%k173375%_))))))
    (define __compile
      (lambda (_%stx173343%_)
        (let* ((_%$e173345%_ _%stx173343%_)
               (_%$%$E173347173353%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173345%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173345%_))
              (let* ((_%$%$tgt173348173356%_
                      (let () (declare (not safe)) (__AST-e _%$e173345%_)))
                     (_%$%$hd173349173359%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173348173356%_)))
                     (_%$%$tl173350173362%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173348173356%_)))
                     (_%form173366%_ _%$%$hd173349173359%_)
                     (_%$e173368%_ (__core-resolve _%form173366%_)))
                (if _%$e173368%_
                    ((##structure-ref _%$e173368%_ '1 __syntax::t '#f)
                     _%stx173343%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx173343%_
                       _%form173366%_))))
              (_%$%$E173347173353%_)))))
    (define __compile-error__%
      (lambda (_%stx173330%_ _%detail173331%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx173330%_
           _%detail173331%_))))
    (define __compile-error__0
      (lambda (_%stx173336%_)
        (let ((_%detail173338%_ '#f))
          (__compile-error__% _%stx173336%_ _%detail173338%_))))
    (define __compile-error
      (lambda _g173713_
        (let ((_g173714_ (let () (declare (not safe)) (##length _g173713_))))
          (cond ((let () (declare (not safe)) (##fx= _g173714_ 1))
                 (apply __compile-error__0 _g173713_))
                ((let () (declare (not safe)) (##fx= _g173714_ 2))
                 (apply __compile-error__% _g173713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g173713_))))))
    (define __compile-ignore%
      (lambda (_%stx173327%_) (__SRC__% ''#!void _%stx173327%_)))
    (define __compile-begin%
      (lambda (_%stx173302%_)
        (let* ((_%$e173304%_ _%stx173302%_)
               (_%$%$E173306173312%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173304%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173304%_))
              (let* ((_%$%$tgt173307173315%_
                      (let () (declare (not safe)) (__AST-e _%$e173304%_)))
                     (_%$%$hd173308173318%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173307173315%_)))
                     (_%$%$tl173309173321%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173307173315%_)))
                     (_%body173325%_ _%$%$tl173309173321%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body173325%_))
                 _%stx173302%_))
              (_%$%$E173306173312%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx173277%_)
        (let* ((_%$e173279%_ _%stx173277%_)
               (_%$%$E173281173287%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173279%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173279%_))
              (let* ((_%$%$tgt173282173290%_
                      (let () (declare (not safe)) (__AST-e _%$e173279%_)))
                     (_%$%$hd173283173293%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173282173290%_)))
                     (_%$%$tl173284173296%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173282173290%_)))
                     (_%body173300%_ _%$%$tl173284173296%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body173300%_)))
                 _%stx173277%_))
              (_%$%$E173281173287%_)))))
    (define __compile-import%
      (lambda (_%stx173252%_)
        (let* ((_%$e173254%_ _%stx173252%_)
               (_%$%$E173256173262%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173254%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173254%_))
              (let* ((_%$%$tgt173257173265%_
                      (let () (declare (not safe)) (__AST-e _%$e173254%_)))
                     (_%$%$hd173258173268%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173257173265%_)))
                     (_%$%$tl173259173271%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173257173265%_)))
                     (_%body173275%_ _%$%$tl173259173271%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body173275%_ '())) '()))
                 _%stx173252%_))
              (_%$%$E173256173262%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx173199%_)
        (let* ((_%$e173201%_ _%stx173199%_)
               (_%$%$E173203173215%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173201%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173201%_))
              (let* ((_%$%$tgt173204173218%_
                      (let () (declare (not safe)) (__AST-e _%$e173201%_)))
                     (_%$%$hd173205173221%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173204173218%_)))
                     (_%$%$tl173206173224%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173204173218%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl173206173224%_))
                    (let* ((_%$%$tgt173207173228%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl173206173224%_)))
                           (_%$%$hd173208173231%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt173207173228%_)))
                           (_%$%$tl173209173234%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt173207173228%_)))
                           (_%ann173238%_ _%$%$hd173208173231%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl173209173234%_))
                          (let* ((_%$%$tgt173210173240%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl173209173234%_)))
                                 (_%$%$hd173211173243%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt173210173240%_)))
                                 (_%$%$tl173212173246%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt173210173240%_)))
                                 (_%expr173250%_ _%$%$hd173211173243%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl173212173246%_))
                                        '())
                                (__compile _%expr173250%_)
                                (_%$%$E173203173215%_)))
                          (_%$%$E173203173215%_)))
                    (_%$%$E173203173215%_)))
              (_%$%$E173203173215%_)))))
    (define __compile-define-values%
      (lambda (_%stx173090%_)
        (let* ((_%$e173092%_ _%stx173090%_)
               (_%$%$E173094173106%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173092%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173092%_))
              (let* ((_%$%$tgt173095173109%_
                      (let () (declare (not safe)) (__AST-e _%$e173092%_)))
                     (_%$%$hd173096173112%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173095173109%_)))
                     (_%$%$tl173097173115%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173095173109%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl173097173115%_))
                    (let* ((_%$%$tgt173098173119%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl173097173115%_)))
                           (_%$%$hd173099173122%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt173098173119%_)))
                           (_%$%$tl173100173125%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt173098173119%_)))
                           (_%hd173129%_ _%$%$hd173099173122%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl173100173125%_))
                          (let* ((_%$%$tgt173101173131%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl173100173125%_)))
                                 (_%$%$hd173102173134%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt173101173131%_)))
                                 (_%$%$tl173103173137%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt173101173131%_)))
                                 (_%expr173141%_ _%$%$hd173102173134%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl173103173137%_))
                                        '())
                                (let* ((_%$e173143%_ _%hd173129%_)
                                       (_%$%$E173145173186%_
                                        (lambda ()
                                          (let ((_%$%$E173146173171%_
                                                 (lambda ()
                                                   (let* ((_%$%$E173147173158%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e173143%_))))
                  (_%ids173161%_ _%hd173129%_)
                  (_%len173163%_ (length _%ids173161%_))
                  (_%tmp173165%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp173165%_
                                       (cons (__compile _%expr173141%_) '())))
                           _%stx173090%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp173165%_
                                             (cons _%len173163%_ '())))
                                 _%stx173090%_)
                                (let ((__tmp173715
                                       (let ((__tmp173717
                                              (lambda (_%id173168%_
                                                       _%k173169%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id173168%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id173168%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp173165%_
                                           (cons _%k173169%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx173090%_)
                                                    '#f)))
                                             (__tmp173716
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len173163%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp173717
                                          _%ids173161%_
                                          __tmp173716))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp173715)))))
              _%stx173090%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e173143%_))
                                                (let* ((_%$%$tgt173148173174%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e173143%_)))
                                                       (_%$%$hd173149173177%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%$tgt173148173174%_)))
                                                       (_%$%$tl173150173180%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%$tgt173148173174%_)))
                                                       (_%id173184%_
                                                        _%$%$hd173149173177%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$%$tl173150173180%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id173184%_)
                           (cons (__compile _%expr173141%_) '())))
               _%stx173090%_)
              (_%$%$E173146173171%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%$E173146173171%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e173143%_))
                                      (let* ((_%$%$tgt173151173189%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e173143%_)))
                                             (_%$%$hd173152173192%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt173151173189%_)))
                                             (_%$%$tl173153173195%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt173151173189%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$hd173152173192%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$%$tl173153173195%_))
                                                        '())
                                                (__compile _%expr173141%_)
                                                (_%$%$E173145173186%_))
                                            (_%$%$E173145173186%_)))
                                      (_%$%$E173145173186%_)))
                                (_%$%$E173094173106%_)))
                          (_%$%$E173094173106%_)))
                    (_%$%$E173094173106%_)))
              (_%$%$E173094173106%_)))))
    (define __compile-head-id
      (lambda (_%e173088%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e173088%_))
             _%e173088%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd173045%_)
        (let _%recur173047%_ ((_%rest173049%_ _%hd173045%_))
          (let* ((_%$e173051%_ _%rest173049%_)
                 (_%$%$E173053173071%_
                  (lambda ()
                    (let ((_%$%$E173054173068%_
                           (lambda ()
                             (let* ((_%$%$E173055173063%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e173051%_))))
                                    (_%tail173066%_ _%$e173051%_))
                               (__compile-head-id _%tail173066%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e173051%_))
                                  '())
                          '()
                          (_%$%$E173054173068%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e173051%_))
                (let* ((_%$%$tgt173056173074%_
                        (let () (declare (not safe)) (__AST-e _%$e173051%_)))
                       (_%$%$hd173057173077%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt173056173074%_)))
                       (_%$%$tl173058173080%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt173056173074%_)))
                       (_%hd173084%_ _%$%$hd173057173077%_)
                       (_%rest173086%_ _%$%$tl173058173080%_))
                  (cons (__compile-head-id _%hd173084%_)
                        (_%recur173047%_ _%rest173086%_)))
                (_%$%$E173053173071%_))))))
    (define __compile-lambda%
      (lambda (_%stx172992%_)
        (let* ((_%$e172994%_ _%stx172992%_)
               (_%$%$E172996173008%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e172994%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e172994%_))
              (let* ((_%$%$tgt172997173011%_
                      (let () (declare (not safe)) (__AST-e _%$e172994%_)))
                     (_%$%$hd172998173014%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt172997173011%_)))
                     (_%$%$tl172999173017%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt172997173011%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl172999173017%_))
                    (let* ((_%$%$tgt173000173021%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl172999173017%_)))
                           (_%$%$hd173001173024%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt173000173021%_)))
                           (_%$%$tl173002173027%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt173000173021%_)))
                           (_%hd173031%_ _%$%$hd173001173024%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl173002173027%_))
                          (let* ((_%$%$tgt173003173033%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl173002173027%_)))
                                 (_%$%$hd173004173036%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt173003173033%_)))
                                 (_%$%$tl173005173039%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt173003173033%_)))
                                 (_%body173043%_ _%$%$hd173004173036%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl173005173039%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd173031%_)
                                             (cons (__compile _%body173043%_)
                                                   '())))
                                 _%stx172992%_)
                                (_%$%$E172996173008%_)))
                          (_%$%$E172996173008%_)))
                    (_%$%$E172996173008%_)))
              (_%$%$E172996173008%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx172757%_)
        (letrec ((_%variadic?172759%_
                  (lambda (_%hd172957%_)
                    (let* ((_%$e172959%_ _%hd172957%_)
                           (_%$%$E172961172977%_
                            (lambda ()
                              (let ((_%$%$E172962172974%_
                                     (lambda ()
                                       (let ((_%$%$E172963172971%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e172959%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e172959%_))
                                            '())
                                    '#f
                                    (_%$%$E172962172974%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e172959%_))
                          (let* ((_%$%$tgt172964172980%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e172959%_)))
                                 (_%$%$hd172965172983%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt172964172980%_)))
                                 (_%$%$tl172966172986%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt172964172980%_)))
                                 (_%rest172990%_ _%$%$tl172966172986%_))
                            (_%variadic?172759%_ _%rest172990%_))
                          (_%$%$E172961172977%_)))))
                 (_%arity172760%_
                  (lambda (_%hd172895%_)
                    (let _%lp172897%_ ((_%rest172899%_ _%hd172895%_)
                                       (_%k172900%_ '0))
                      (let* ((_%$e172902%_ _%rest172899%_)
                             (_%$%$E172904172915%_
                              (lambda ()
                                (let ((_%$%$E172905172912%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e172902%_)))))
                                  _%k172900%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e172902%_))
                            (let* ((_%$%$tgt172906172918%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e172902%_)))
                                   (_%$%$hd172907172921%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%$tgt172906172918%_)))
                                   (_%$%$tl172908172924%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%$tgt172906172918%_)))
                                   (_%rest172928%_ _%$%$tl172908172924%_))
                              (_%lp172897%_
                               _%rest172928%_
                               (let ((_%x172930%_ _%k172900%_))
                                 (if (fixnum? _%x172930%_)
                                     (let ((_%x172935%_ _%x172930%_))
                                       (declare (not safe))
                                       (__fx1+ _%x172935%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x172930%_)
                                       '#!void)))))
                            (_%$%$E172904172915%_))))))
                 (_%generate172761%_
                  (lambda (_%rest172822%_ _%args172823%_ _%len172824%_)
                    (let* ((_%$e172826%_ _%rest172822%_)
                           (_%$%$E172828172839%_
                            (lambda ()
                              (let ((_%$%$E172829172836%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e172826%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args172823%_ '())))
                                 _%stx172757%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e172826%_))
                          (let* ((_%$%$tgt172830172842%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e172826%_)))
                                 (_%$%$hd172831172845%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt172830172842%_)))
                                 (_%$%$tl172832172848%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt172830172842%_)))
                                 (_%clause172852%_ _%$%$hd172831172845%_)
                                 (_%rest172854%_ _%$%$tl172832172848%_)
                                 (_%$e172856%_ _%clause172852%_)
                                 (_%$%$E172858172867%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e172856%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e172856%_))
                                (let* ((_%$%$tgt172859172870%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e172856%_)))
                                       (_%$%$hd172860172873%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt172859172870%_)))
                                       (_%$%$tl172861172876%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt172859172870%_)))
                                       (_%hd172880%_ _%$%$hd172860172873%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl172861172876%_))
                                      (let* ((_%$%$tgt172862172882%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl172861172876%_)))
                                             (_%$%$hd172863172885%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt172862172882%_)))
                                             (_%$%$tl172864172888%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt172862172882%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl172864172888%_))
                                                    '())
                                            (let ((_%clen172892%_
                                                   (_%arity172760%_
                                                    _%hd172880%_))
                                                  (_%cmp172893%_
                                                   (if (_%variadic?172759%_
                                                        _%hd172880%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp172893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len172824%_ (cons _%clen172892%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause172852%_))
                                      (cons _%args172823%_ '())))
                          _%stx172757%_)
                         (cons (_%generate172761%_
                                _%rest172854%_
                                _%args172823%_
                                _%len172824%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx172757%_))
                                            (_%$%$E172858172867%_)))
                                      (_%$%$E172858172867%_)))
                                (_%$%$E172858172867%_)))
                          (_%$%$E172828172839%_))))))
          (let* ((_%$e172763%_ _%stx172757%_)
                 (_%$%$E172765172797%_
                  (lambda ()
                    (let ((_%$%$E172766172779%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e172763%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e172763%_))
                          (let* ((_%$%$tgt172767172782%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e172763%_)))
                                 (_%$%$hd172768172785%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt172767172782%_)))
                                 (_%$%$tl172769172788%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt172767172782%_)))
                                 (_%clauses172792%_ _%$%$tl172769172788%_))
                            (let ((_%args172794%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx172757%_))
                                  (_%len172795%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx172757%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args172794%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len172795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args172794%_ '()))
                                         _%stx172757%_)
                                        '()))
                            '())
                      (cons (_%generate172761%_
                             _%clauses172792%_
                             _%args172794%_
                             _%len172795%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx172757%_)
                                                 '())))
                               _%stx172757%_)))
                          (_%$%$E172766172779%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e172763%_))
                (let* ((_%$%$tgt172770172800%_
                        (let () (declare (not safe)) (__AST-e _%$e172763%_)))
                       (_%$%$hd172771172803%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt172770172800%_)))
                       (_%$%$tl172772172806%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt172770172800%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl172772172806%_))
                      (let* ((_%$%$tgt172773172810%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl172772172806%_)))
                             (_%$%$hd172774172813%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt172773172810%_)))
                             (_%$%$tl172775172816%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt172773172810%_)))
                             (_%clause172820%_ _%$%$hd172774172813%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$tl172775172816%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause172820%_))
                            (_%$%$E172765172797%_)))
                      (_%$%$E172765172797%_)))
                (_%$%$E172765172797%_))))))
    (define __compile-let-form
      (lambda (_%stx172526%_ _%compile-simple172527%_ _%compile-values172528%_)
        (letrec ((_%simple-bind?172530%_
                  (lambda (_%hd172715%_)
                    (let* ((_%$%hd172716172726%_ _%hd172715%_)
                           (_%$%else172719172734%_ (lambda () '#f)))
                      (let ((_%$%K172722172747%_ (lambda (_%id172745%_) '#t))
                            (_%$%K172721172739%_ (lambda () '#t)))
                        (let ((_%$%try-match172718172742%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%$%hd172716172726%_ '#f))
                                     (_%$%K172721172739%_)
                                     (_%$%else172719172734%_)))))
                          (if (pair? _%$%hd172716172726%_)
                              (let ((_%$%tl172724172752%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%hd172716172726%_)))
                                    (_%$%hd172723172750%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%hd172716172726%_))))
                                (if (null? _%$%tl172724172752%_)
                                    (let ((_%id172755%_ _%$%hd172723172750%_))
                                      (_%$%K172722172747%_ _%id172755%_))
                                    (_%$%try-match172718172742%_)))
                              (_%$%try-match172718172742%_)))))))
                 (_%car-e172531%_
                  (lambda (_%hd172713%_)
                    (if (pair? _%hd172713%_)
                        (let () (declare (not safe)) (##car _%hd172713%_))
                        _%hd172713%_))))
          (let* ((_%$e172533%_ _%stx172526%_)
                 (_%$%$E172535172678%_
                  (lambda ()
                    (let ((_%$%$E172536172558%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e172533%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e172533%_))
                          (let* ((_%$%$tgt172537172561%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e172533%_)))
                                 (_%$%$hd172538172564%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt172537172561%_)))
                                 (_%$%$tl172539172567%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt172537172561%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl172539172567%_))
                                (let* ((_%$%$tgt172540172571%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl172539172567%_)))
                                       (_%$%$hd172541172574%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt172540172571%_)))
                                       (_%$%$tl172542172577%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt172540172571%_)))
                                       (_%hd172581%_ _%$%$hd172541172574%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl172542172577%_))
                                      (let* ((_%$%$tgt172543172583%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl172542172577%_)))
                                             (_%$%$hd172544172586%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt172543172583%_)))
                                             (_%$%$tl172545172589%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt172543172583%_)))
                                             (_%body172593%_
                                              _%$%$hd172544172586%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl172545172589%_))
                                                    '())
                                            (let* ((_%hd-ids172633%_
                                                    (map (lambda (_%bind172595%_)
                                                           (let* ((_%$e172597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind172595%_)
                          (_%$%$E172599172608%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e172597%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e172597%_))
                         (let* ((_%$%$tgt172600172611%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e172597%_)))
                                (_%$%$hd172601172614%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt172600172611%_)))
                                (_%$%$tl172602172617%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt172600172611%_)))
                                (_%ids172621%_ _%$%$hd172601172614%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl172602172617%_))
                               (let* ((_%$%$tgt172603172623%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl172602172617%_)))
                                      (_%$%$hd172604172626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt172603172623%_)))
                                      (_%$%$tl172605172629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt172603172623%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl172605172629%_))
                                             '())
                                     _%ids172621%_
                                     (_%$%$E172599172608%_)))
                               (_%$%$E172599172608%_)))
                         (_%$%$E172599172608%_))))
                 _%hd172581%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs172673%_
                                                    (map (lambda (_%bind172635%_)
                                                           (let* ((_%$e172637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind172635%_)
                          (_%$%$E172639172648%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e172637%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e172637%_))
                         (let* ((_%$%$tgt172640172651%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e172637%_)))
                                (_%$%$hd172641172654%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt172640172651%_)))
                                (_%$%$tl172642172657%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt172640172651%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl172642172657%_))
                               (let* ((_%$%$tgt172643172661%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl172642172657%_)))
                                      (_%$%$hd172644172664%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt172643172661%_)))
                                      (_%$%$tl172645172667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt172643172661%_)))
                                      (_%expr172671%_ _%$%$hd172644172664%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl172645172667%_))
                                             '())
                                     (__compile _%expr172671%_)
                                     (_%$%$E172639172648%_)))
                               (_%$%$E172639172648%_)))
                         (_%$%$E172639172648%_))))
                 _%hd172581%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body172675%_
                                                    (__compile
                                                     _%body172593%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?172530%_
                                                     _%hd-ids172633%_))
                                                  (_%compile-simple172527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e172531%_
                                                            _%hd-ids172633%_))
                                                   _%exprs172673%_
                                                   _%body172675%_)
                                                  (_%compile-values172528%_
                                                   _%hd-ids172633%_
                                                   _%exprs172673%_
                                                   _%body172675%_)))
                                            (_%$%$E172536172558%_)))
                                      (_%$%$E172536172558%_)))
                                (_%$%$E172536172558%_)))
                          (_%$%$E172536172558%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e172533%_))
                (let* ((_%$%$tgt172546172681%_
                        (let () (declare (not safe)) (__AST-e _%$e172533%_)))
                       (_%$%$hd172547172684%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt172546172681%_)))
                       (_%$%$tl172548172687%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt172546172681%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl172548172687%_))
                      (let* ((_%$%$tgt172549172691%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl172548172687%_)))
                             (_%$%$hd172550172694%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt172549172691%_)))
                             (_%$%$tl172551172697%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt172549172691%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$hd172550172694%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl172551172697%_))
                                (let* ((_%$%$tgt172552172701%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl172551172697%_)))
                                       (_%$%$hd172553172704%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt172552172701%_)))
                                       (_%$%$tl172554172707%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt172552172701%_)))
                                       (_%body172711%_ _%$%$hd172553172704%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl172554172707%_))
                                              '())
                                      (__compile _%body172711%_)
                                      (_%$%$E172535172678%_)))
                                (_%$%$E172535172678%_))
                            (_%$%$E172535172678%_)))
                      (_%$%$E172535172678%_)))
                (_%$%$E172535172678%_))))))
    (define __compile-let-values%
      (lambda (_%stx172338%_)
        (letrec ((_%compile-simple172340%_
                  (lambda (_%hd-ids172522%_ _%exprs172523%_ _%body172524%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp173718
                                        (map __compile-head-id
                                             _%hd-ids172522%_)))
                                   (declare (not safe))
                                   (##map list __tmp173718 _%exprs172523%_))
                                 (cons _%body172524%_ '())))
                     _%stx172338%_)))
                 (_%compile-values172341%_
                  (lambda (_%hd-ids172437%_ _%exprs172438%_ _%body172439%_)
                    (let _%lp172441%_ ((_%rest172443%_ _%hd-ids172437%_)
                                       (_%exprs172444%_ _%exprs172438%_)
                                       (_%bind172445%_ '())
                                       (_%post172446%_ '()))
                      (let* ((_%$%rest172447172461%_ _%rest172443%_)
                             (_%$%else172450172469%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind172445%_)
                                             (cons (_%compile-post172342%_
                                                    _%post172446%_
                                                    _%body172439%_)
                                                   '())))
                                 _%stx172338%_))))
                        (let ((_%$%K172455172505%_
                               (lambda (_%rest172502%_ _%id172503%_)
                                 (_%lp172441%_
                                  _%rest172502%_
                                  (cdr _%exprs172444%_)
                                  (cons (cons (__compile-head-id _%id172503%_)
                                              (cons (car _%exprs172444%_) '()))
                                        _%bind172445%_)
                                  _%post172446%_)))
                              (_%$%K172452172487%_
                               (lambda (_%rest172473%_ _%hd172474%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd172474%_))
                                     (_%lp172441%_
                                      _%rest172473%_
                                      (cdr _%exprs172444%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd172474%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs172444%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind172445%_)
                                      _%post172446%_)
                                     (if (list? _%hd172474%_)
                                         (let* ((_%len172478%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd172474%_)))
                                                (_%tmp172480%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp172441%_
                                            _%rest172473%_
                                            (cdr _%exprs172444%_)
                                            (cons (cons _%tmp172480%_
                                                        (cons (car _%exprs172444%_)
                                                              '()))
                                                  _%bind172445%_)
                                            (cons (cons _%tmp172480%_
                                                        (cons _%len172478%_
                                                              (let ((__tmp173720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id172483%_ _%k172484%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id172483%_))
                                   (cons (__SRC__0 _%id172483%_) _%k172484%_)
                                   '#f)))
                            (__tmp173719
                             (let ()
                               (declare (not safe))
                               (##iota _%len172478%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp173720 _%hd172474%_ __tmp173719))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post172446%_)))
                                         (__compile-error__%
                                          _%stx172338%_
                                          _%hd172474%_))))))
                          (if (pair? _%$%rest172447172461%_)
                              (let ((_%$%tl172457172510%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest172447172461%_)))
                                    (_%$%hd172456172508%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest172447172461%_))))
                                (if (pair? _%$%hd172456172508%_)
                                    (let ((_%$%tl172459172515%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd172456172508%_)))
                                          (_%$%hd172458172513%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd172456172508%_))))
                                      (if (null? _%$%tl172459172515%_)
                                          (let ((_%id172518%_
                                                 _%$%hd172458172513%_)
                                                (_%rest172520%_
                                                 _%$%tl172457172510%_))
                                            (_%$%K172455172505%_
                                             _%rest172520%_
                                             _%id172518%_))
                                          (let ((_%hd172495%_
                                                 _%$%hd172456172508%_)
                                                (_%rest172497%_
                                                 _%$%tl172457172510%_))
                                            (_%$%K172452172487%_
                                             _%rest172497%_
                                             _%hd172495%_))))
                                    (let ((_%hd172495%_ _%$%hd172456172508%_)
                                          (_%rest172497%_
                                           _%$%tl172457172510%_))
                                      (_%$%K172452172487%_
                                       _%rest172497%_
                                       _%hd172495%_))))
                              (_%$%else172450172469%_)))))))
                 (_%compile-post172342%_
                  (lambda (_%post172344%_ _%body172345%_)
                    (let _%lp172347%_ ((_%rest172349%_ _%post172344%_)
                                       (_%check172350%_ '())
                                       (_%bind172351%_ '()))
                      (let* ((_%$%rest172352172364%_ _%rest172349%_)
                             (_%$%else172354172372%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp173721
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind172351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body172345%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx172338%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp173721
                                          _%check172350%_)))
                                 _%stx172338%_)))
                             (_%$%K172356172411%_
                              (lambda (_%rest172375%_
                                       _%init172376%_
                                       _%len172377%_
                                       _%tmp172378%_)
                                (_%lp172347%_
                                 _%rest172375%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp172378%_
                                                    (cons _%len172377%_ '())))
                                        _%stx172338%_)
                                       _%check172350%_)
                                 (let ((__tmp173722
                                        (lambda (_%hd172380%_ _%r172381%_)
                                          (let* ((_%$%hd172382172389%_
                                                  _%hd172380%_)
                                                 (_%$%E172384172393%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd172382172389%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K172385172399%_
                                                  (lambda (_%k172396%_
                                                           _%id172397%_)
                                                    (cons (cons _%id172397%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp172378%_
                                          (cons _%k172396%_ '())))
                              '()))
                  _%r172381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd172382172389%_)
                                                (let ((_%$%hd172386172402%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd172382172389%_)))
                                                      (_%$%tl172387172404%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd172382172389%_))))
                                                  (let* ((_%id172407%_
                                                          _%$%hd172386172402%_)
                                                         (_%k172409%_
                                                          _%$%tl172387172404%_))
                                                    (_%$%K172385172399%_
                                                     _%k172409%_
                                                     _%id172407%_)))
                                                (_%$%E172384172393%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp173722
                                    _%bind172351%_
                                    _%init172376%_))))))
                        (if (pair? _%$%rest172352172364%_)
                            (let ((_%$%hd172357172414%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest172352172364%_)))
                                  (_%$%tl172358172416%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest172352172364%_))))
                              (if (pair? _%$%hd172357172414%_)
                                  (let ((_%$%hd172359172419%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd172357172414%_)))
                                        (_%$%tl172360172421%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd172357172414%_))))
                                    (let ((_%tmp172424%_ _%$%hd172359172419%_))
                                      (if (pair? _%$%tl172360172421%_)
                                          (let ((_%$%hd172361172426%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl172360172421%_)))
                                                (_%$%tl172362172428%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl172360172421%_))))
                                            (let* ((_%len172431%_
                                                    _%$%hd172361172426%_)
                                                   (_%init172433%_
                                                    _%$%tl172362172428%_)
                                                   (_%rest172435%_
                                                    _%$%tl172358172416%_))
                                              (_%$%K172356172411%_
                                               _%rest172435%_
                                               _%init172433%_
                                               _%len172431%_
                                               _%tmp172424%_)))
                                          (_%$%else172354172372%_))))
                                  (_%$%else172354172372%_)))
                            (_%$%else172354172372%_)))))))
          (__compile-let-form
           _%stx172338%_
           _%compile-simple172340%_
           _%compile-values172341%_))))
    (define __compile-letrec-values%
      (lambda (_%stx172135%_)
        (letrec ((_%compile-simple172137%_
                  (lambda (_%hd-ids172334%_ _%exprs172335%_ _%body172336%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp173723
                                        (map __compile-head-id
                                             _%hd-ids172334%_)))
                                   (declare (not safe))
                                   (##map list __tmp173723 _%exprs172335%_))
                                 (cons _%body172336%_ '())))
                     _%stx172135%_)))
                 (_%compile-values172138%_
                  (lambda (_%hd-ids172245%_ _%exprs172246%_ _%body172247%_)
                    (let _%lp172249%_ ((_%rest172251%_ _%hd-ids172245%_)
                                       (_%exprs172252%_ _%exprs172246%_)
                                       (_%pre172253%_ '())
                                       (_%bind172254%_ '())
                                       (_%post172255%_ '()))
                      (let* ((_%$%rest172256172270%_ _%rest172251%_)
                             (_%$%else172259172278%_
                              (lambda ()
                                (_%compile-inner172139%_
                                 _%pre172253%_
                                 _%bind172254%_
                                 _%post172255%_
                                 _%body172247%_))))
                        (let ((_%$%K172264172317%_
                               (lambda (_%rest172314%_ _%id172315%_)
                                 (_%lp172249%_
                                  _%rest172314%_
                                  (cdr _%exprs172252%_)
                                  _%pre172253%_
                                  (cons (cons (__compile-head-id _%id172315%_)
                                              (cons (car _%exprs172252%_) '()))
                                        _%bind172254%_)
                                  _%post172255%_)))
                              (_%$%K172261172299%_
                               (lambda (_%rest172282%_ _%hd172283%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd172283%_))
                                     (_%lp172249%_
                                      _%rest172282%_
                                      (cdr _%exprs172252%_)
                                      _%pre172253%_
                                      (cons (cons (__compile-head-id
                                                   _%hd172283%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs172252%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind172254%_)
                                      _%post172255%_)
                                     (if (list? _%hd172283%_)
                                         (let* ((_%len172287%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd172283%_)))
                                                (_%tmp172289%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp172249%_
                                            _%rest172282%_
                                            (cdr _%exprs172252%_)
                                            (let ((__tmp173724
                                                   (lambda (_%id172292%_
                                                            _%r172293%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id172292%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id172292%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r172293%_)
                 _%r172293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp173724
                                               _%pre172253%_
                                               _%hd172283%_))
                                            (cons (cons _%tmp172289%_
                                                        (cons (car _%exprs172252%_)
                                                              '()))
                                                  _%bind172254%_)
                                            (cons (cons _%tmp172289%_
                                                        (cons _%len172287%_
                                                              (let ((__tmp173726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id172295%_ _%k172296%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id172295%_))
                                   (cons (__SRC__0 _%id172295%_) _%k172296%_)
                                   '#f)))
                            (__tmp173725
                             (let ()
                               (declare (not safe))
                               (##iota _%len172287%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp173726 _%hd172283%_ __tmp173725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post172255%_)))
                                         (__compile-error__%
                                          _%stx172135%_
                                          _%hd172283%_))))))
                          (if (pair? _%$%rest172256172270%_)
                              (let ((_%$%tl172266172322%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest172256172270%_)))
                                    (_%$%hd172265172320%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest172256172270%_))))
                                (if (pair? _%$%hd172265172320%_)
                                    (let ((_%$%tl172268172327%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd172265172320%_)))
                                          (_%$%hd172267172325%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd172265172320%_))))
                                      (if (null? _%$%tl172268172327%_)
                                          (let ((_%id172330%_
                                                 _%$%hd172267172325%_)
                                                (_%rest172332%_
                                                 _%$%tl172266172322%_))
                                            (_%$%K172264172317%_
                                             _%rest172332%_
                                             _%id172330%_))
                                          (let ((_%hd172307%_
                                                 _%$%hd172265172320%_)
                                                (_%rest172309%_
                                                 _%$%tl172266172322%_))
                                            (_%$%K172261172299%_
                                             _%rest172309%_
                                             _%hd172307%_))))
                                    (let ((_%hd172307%_ _%$%hd172265172320%_)
                                          (_%rest172309%_
                                           _%$%tl172266172322%_))
                                      (_%$%K172261172299%_
                                       _%rest172309%_
                                       _%hd172307%_))))
                              (_%$%else172259172278%_)))))))
                 (_%compile-inner172139%_
                  (lambda (_%pre172240%_
                           _%bind172241%_
                           _%post172242%_
                           _%body172243%_)
                    (if (null? _%pre172240%_)
                        (_%compile-bind172140%_
                         _%bind172241%_
                         _%post172242%_
                         _%body172243%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre172240%_)
                                     (cons (_%compile-bind172140%_
                                            _%bind172241%_
                                            _%post172242%_
                                            _%body172243%_)
                                           '())))
                         _%stx172135%_))))
                 (_%compile-bind172140%_
                  (lambda (_%bind172236%_ _%post172237%_ _%body172238%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind172236%_)
                                 (cons (_%compile-post172141%_
                                        _%post172237%_
                                        _%body172238%_)
                                       '())))
                     _%stx172135%_)))
                 (_%compile-post172141%_
                  (lambda (_%post172143%_ _%body172144%_)
                    (let _%lp172146%_ ((_%rest172148%_ _%post172143%_)
                                       (_%check172149%_ '())
                                       (_%bind172150%_ '()))
                      (let* ((_%$%rest172151172163%_ _%rest172148%_)
                             (_%$%else172153172171%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp173727
                                              (let ((__tmp173728
                                                     (cons _%body172144%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp173728
                                                 _%bind172150%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp173727
                                          _%check172149%_)))
                                 _%stx172135%_)))
                             (_%$%K172155172210%_
                              (lambda (_%rest172174%_
                                       _%init172175%_
                                       _%len172176%_
                                       _%tmp172177%_)
                                (_%lp172146%_
                                 _%rest172174%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp172177%_
                                                    (cons _%len172176%_ '())))
                                        _%stx172135%_)
                                       _%check172149%_)
                                 (let ((__tmp173729
                                        (lambda (_%hd172179%_ _%r172180%_)
                                          (let* ((_%$%hd172181172188%_
                                                  _%hd172179%_)
                                                 (_%$%E172183172192%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd172181172188%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K172184172198%_
                                                  (lambda (_%k172195%_
                                                           _%id172196%_)
                                                    (cons (cons 'set!
                                                                (cons _%id172196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp172177%_
                                                (cons _%k172195%_ '())))
                                    '())))
                  _%r172180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd172181172188%_)
                                                (let ((_%$%hd172185172201%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd172181172188%_)))
                                                      (_%$%tl172186172203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd172181172188%_))))
                                                  (let* ((_%id172206%_
                                                          _%$%hd172185172201%_)
                                                         (_%k172208%_
                                                          _%$%tl172186172203%_))
                                                    (_%$%K172184172198%_
                                                     _%k172208%_
                                                     _%id172206%_)))
                                                (_%$%E172183172192%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp173729
                                    _%bind172150%_
                                    _%init172175%_))))))
                        (if (pair? _%$%rest172151172163%_)
                            (let ((_%$%hd172156172213%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest172151172163%_)))
                                  (_%$%tl172157172215%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest172151172163%_))))
                              (if (pair? _%$%hd172156172213%_)
                                  (let ((_%$%hd172158172218%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd172156172213%_)))
                                        (_%$%tl172159172220%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd172156172213%_))))
                                    (let ((_%tmp172223%_ _%$%hd172158172218%_))
                                      (if (pair? _%$%tl172159172220%_)
                                          (let ((_%$%hd172160172225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl172159172220%_)))
                                                (_%$%tl172161172227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl172159172220%_))))
                                            (let* ((_%len172230%_
                                                    _%$%hd172160172225%_)
                                                   (_%init172232%_
                                                    _%$%tl172161172227%_)
                                                   (_%rest172234%_
                                                    _%$%tl172157172215%_))
                                              (_%$%K172155172210%_
                                               _%rest172234%_
                                               _%init172232%_
                                               _%len172230%_
                                               _%tmp172223%_)))
                                          (_%$%else172153172171%_))))
                                  (_%$%else172153172171%_)))
                            (_%$%else172153172171%_)))))))
          (__compile-let-form
           _%stx172135%_
           _%compile-simple172137%_
           _%compile-values172138%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx171886%_)
        (letrec ((_%compile-simple171888%_
                  (lambda (_%hd-ids172131%_ _%exprs172132%_ _%body172133%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp173730
                                        (map __compile-head-id
                                             _%hd-ids172131%_)))
                                   (declare (not safe))
                                   (##map list __tmp173730 _%exprs172132%_))
                                 (cons _%body172133%_ '())))
                     _%stx171886%_)))
                 (_%compile-values171889%_
                  (lambda (_%hd-ids172038%_ _%exprs172039%_ _%body172040%_)
                    (let _%lp172042%_ ((_%rest172044%_ _%hd-ids172038%_)
                                       (_%exprs172045%_ _%exprs172039%_)
                                       (_%bind172046%_ '())
                                       (_%post172047%_ '()))
                      (let* ((_%$%rest172048172062%_ _%rest172044%_)
                             (_%$%else172051172070%_
                              (lambda ()
                                (_%compile-bind171890%_
                                 _%bind172046%_
                                 _%post172047%_
                                 _%body172040%_))))
                        (let ((_%$%K172056172114%_
                               (lambda (_%rest172109%_ _%hd172110%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd172110%_))
                                     (let ((_%id172112%_
                                            (__SRC__0 _%hd172110%_)))
                                       (_%lp172042%_
                                        _%rest172109%_
                                        (cdr _%exprs172045%_)
                                        (cons (cons _%id172112%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind172046%_)
                                        (cons (cons _%id172112%_
                                                    (cons (car _%exprs172045%_)
                                                          '()))
                                              _%post172047%_)))
                                     (_%lp172042%_
                                      _%rest172109%_
                                      (cdr _%exprs172045%_)
                                      _%bind172046%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs172045%_)
                                                        '()))
                                            _%post172047%_)))))
                              (_%$%K172053172094%_
                               (lambda (_%rest172074%_ _%hd172075%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd172075%_))
                                     (let ((_%id172078%_
                                            (__SRC__0 _%hd172075%_)))
                                       (_%lp172042%_
                                        _%rest172074%_
                                        (cdr _%exprs172045%_)
                                        (cons (cons _%id172078%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind172046%_)
                                        (cons (cons _%id172078%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs172045%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post172047%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd172075%_))
                                         (if (list? _%hd172075%_)
                                             (let* ((_%len172082%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd172075%_)))
                                                    (_%tmp172084%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp172042%_
                                                _%rest172074%_
                                                (cdr _%exprs172045%_)
                                                (let ((__tmp173731
                                                       (lambda (_%id172087%_
                                                                _%r172088%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id172087%_))
                     (cons (cons (__SRC__0 _%id172087%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r172088%_)
                     _%r172088%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp173731
                                                   _%bind172046%_
                                                   _%hd172075%_))
                                                (cons (cons _%tmp172084%_
                                                            (cons (car _%exprs172045%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len172082%_
                                (let ((__tmp173733
                                       (lambda (_%id172090%_ _%k172091%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id172090%_))
                                             (cons (__SRC__0 _%id172090%_)
                                                   _%k172091%_)
                                             '#f)))
                                      (__tmp173732
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len172082%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp173733
                                   _%hd172075%_
                                   __tmp173732)))))
              _%post172047%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx171886%_
                                              _%hd172075%_))
                                         (_%lp172042%_
                                          _%rest172074%_
                                          (cdr _%exprs172045%_)
                                          _%bind172046%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs172045%_)
                                                            '()))
                                                _%post172047%_)))))))
                          (if (pair? _%$%rest172048172062%_)
                              (let ((_%$%tl172058172119%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest172048172062%_)))
                                    (_%$%hd172057172117%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest172048172062%_))))
                                (if (pair? _%$%hd172057172117%_)
                                    (let ((_%$%tl172060172124%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd172057172117%_)))
                                          (_%$%hd172059172122%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd172057172117%_))))
                                      (if (null? _%$%tl172060172124%_)
                                          (let ((_%hd172127%_
                                                 _%$%hd172059172122%_)
                                                (_%rest172129%_
                                                 _%$%tl172058172119%_))
                                            (_%$%K172056172114%_
                                             _%rest172129%_
                                             _%hd172127%_))
                                          (let ((_%hd172102%_
                                                 _%$%hd172057172117%_)
                                                (_%rest172104%_
                                                 _%$%tl172058172119%_))
                                            (_%$%K172053172094%_
                                             _%rest172104%_
                                             _%hd172102%_))))
                                    (let ((_%hd172102%_ _%$%hd172057172117%_)
                                          (_%rest172104%_
                                           _%$%tl172058172119%_))
                                      (_%$%K172053172094%_
                                       _%rest172104%_
                                       _%hd172102%_))))
                              (_%$%else172051172070%_)))))))
                 (_%compile-bind171890%_
                  (lambda (_%bind172034%_ _%post172035%_ _%body172036%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind172034%_)
                                 (cons (_%compile-post171891%_
                                        _%post172035%_
                                        _%body172036%_)
                                       '())))
                     _%stx171886%_)))
                 (_%compile-post171891%_
                  (lambda (_%post171893%_ _%body171894%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp173734
                                  (let ((__tmp173736
                                         (lambda (_%hd171896%_ _%r171897%_)
                                           (let* ((_%$%hd171898171921%_
                                                   _%hd171896%_)
                                                  (_%$%E171902171925%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%hd171898171921%_
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
                                             (let ((_%$%K171915172019%_
                                                    (lambda (_%expr172017%_)
                                                      (cons _%expr172017%_
                                                            _%r171897%_)))
                                                   (_%$%K171910171997%_
                                                    (lambda (_%expr171994%_
                                                             _%id171995%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id171995%_ (cons _%expr171994%_ '())))
                     _%stx171886%_)
                    _%r171897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K171903171964%_
                                                    (lambda (_%init171929%_
                                                             _%len171930%_
                                                             _%expr171931%_
                                                             _%tmp171932%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp171932%_
                                             (cons _%expr171931%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp171932%_
                                                    (cons _%len171930%_ '())))
                                        _%stx171886%_)
                                       (let ((__tmp173737
                                              (map (lambda (_%hd171934%_)
                                                     (let* ((_%$%hd171935171942%_
                                                             _%hd171934%_)
                                                            (_%$%E171937171946%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%$%hd171935171942%_
                                '([id . k])))
                       '#!void))
                    (_%$%K171938171952%_
                     (lambda (_%k171949%_ _%id171950%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id171950%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp171932%_
                                                      (cons _%k171949%_ '())))
                                          '())))
                        _%stx171886%_))))
               (if (pair? _%$%hd171935171942%_)
                   (let ((_%$%hd171939171955%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%hd171935171942%_)))
                         (_%$%tl171940171957%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%hd171935171942%_))))
                     (let* ((_%id171960%_ _%$%hd171939171955%_)
                            (_%k171962%_ _%$%tl171940171957%_))
                       (_%$%K171938171952%_ _%k171962%_ _%id171960%_)))
                   (_%$%E171937171946%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init171929%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp173737)))))
                     _%stx171886%_)
                    _%r171897%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match173592173593%_
                                                       (lambda (_%$%hd171904171967%_
                                                                _%$%tl171905171969%_
                                                                _%$%hd171906171974%_
                                                                _%$%tl171907171976%_)
                                                         (let ((_%tmp171972%_
                                                                _%$%hd171904171967%_)
                                                               (_%expr171979%_
                                                                _%$%hd171906171974%_))
                                                           (_%$%E171902171925%_))))
                                                      (_%__match173586173587%_
                                                       (lambda (_%$%hd171904171967%_
                                                                _%$%tl171905171969%_)
                                                         (let ((_%tmp171972%_
                                                                _%$%hd171904171967%_))
                                                           (_%$%E171902171925%_)))))
                                                 (if (pair? _%$%hd171898171921%_)
                                                     (let ((_%$%tl171917172024%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%hd171898171921%_)))
                                                           (_%$%hd171916172022%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%hd171898171921%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%$%hd171916172022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%$%tl171917172024%_)
                       (let ((_%$%tl171919172029%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%tl171917172024%_)))
                             (_%$%hd171918172027%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%tl171917172024%_))))
                         (if (null? _%$%tl171919172029%_)
                             (let ((_%expr172032%_ _%$%hd171918172027%_))
                               (_%$%K171915172019%_ _%expr172032%_))
                             (if (pair? _%$%tl171919172029%_)
                                 (let ((_%$%tl171909171983%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl171919172029%_)))
                                       (_%$%hd171908171981%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl171919172029%_))))
                                   (let ((_%tmp171972%_ _%$%hd171916172022%_)
                                         (_%expr171979%_ _%$%hd171918172027%_)
                                         (_%len171986%_ _%$%hd171908171981%_)
                                         (_%init171988%_ _%$%tl171909171983%_))
                                     (_%$%K171903171964%_
                                      _%init171988%_
                                      _%len171986%_
                                      _%expr171979%_
                                      _%tmp171972%_)))
                                 (_%__match173592173593%_
                                  _%$%hd171916172022%_
                                  _%$%tl171917172024%_
                                  _%$%hd171918172027%_
                                  _%$%tl171919172029%_))))
                       (_%__match173586173587%_
                        _%$%hd171916172022%_
                        _%$%tl171917172024%_))
                   (if (pair? _%$%tl171917172024%_)
                       (let ((_%$%tl171914172009%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%tl171917172024%_)))
                             (_%$%hd171913172007%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%tl171917172024%_))))
                         (if (null? _%$%tl171914172009%_)
                             (let ((_%id172005%_ _%$%hd171916172022%_)
                                   (_%expr172012%_ _%$%hd171913172007%_))
                               (_%$%K171910171997%_
                                _%expr172012%_
                                _%id172005%_))
                             (if (pair? _%$%tl171914172009%_)
                                 (let ((_%$%tl171909171983%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl171914172009%_)))
                                       (_%$%hd171908171981%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl171914172009%_))))
                                   (let ((_%tmp171972%_ _%$%hd171916172022%_)
                                         (_%expr171979%_ _%$%hd171913172007%_)
                                         (_%len171986%_ _%$%hd171908171981%_)
                                         (_%init171988%_ _%$%tl171909171983%_))
                                     (_%$%K171903171964%_
                                      _%init171988%_
                                      _%len171986%_
                                      _%expr171979%_
                                      _%tmp171972%_)))
                                 (_%__match173592173593%_
                                  _%$%hd171916172022%_
                                  _%$%tl171917172024%_
                                  _%$%hd171913172007%_
                                  _%$%tl171914172009%_))))
                       (_%__match173586173587%_
                        _%$%hd171916172022%_
                        _%$%tl171917172024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E171902171925%_)))))))
                                        (__tmp173735 (list _%body171894%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp173736
                                     __tmp173735
                                     _%post171893%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp173734)))
                     _%stx171886%_))))
          (__compile-let-form
           _%stx171886%_
           _%compile-simple171888%_
           _%compile-values171889%_))))
    (define __compile-call%
      (lambda (_%stx171846%_)
        (let* ((_%$e171848%_ _%stx171846%_)
               (_%$%$E171850171859%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e171848%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e171848%_))
              (let* ((_%$%$tgt171851171862%_
                      (let () (declare (not safe)) (__AST-e _%$e171848%_)))
                     (_%$%$hd171852171865%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt171851171862%_)))
                     (_%$%$tl171853171868%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt171851171862%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl171853171868%_))
                    (let* ((_%$%$tgt171854171872%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl171853171868%_)))
                           (_%$%$hd171855171875%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt171854171872%_)))
                           (_%$%$tl171856171878%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt171854171872%_)))
                           (_%rator171882%_ _%$%$hd171855171875%_)
                           (_%rands171884%_ _%$%$tl171856171878%_))
                      (__SRC__%
                       (cons (__compile _%rator171882%_)
                             (map __compile _%rands171884%_))
                       _%stx171846%_))
                    (_%$%$E171850171859%_)))
              (_%$%$E171850171859%_)))))
    (define __compile-ref%
      (lambda (_%stx171808%_)
        (let* ((_%$e171810%_ _%stx171808%_)
               (_%$%$E171812171821%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e171810%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e171810%_))
              (let* ((_%$%$tgt171813171824%_
                      (let () (declare (not safe)) (__AST-e _%$e171810%_)))
                     (_%$%$hd171814171827%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt171813171824%_)))
                     (_%$%$tl171815171830%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt171813171824%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl171815171830%_))
                    (let* ((_%$%$tgt171816171834%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl171815171830%_)))
                           (_%$%$hd171817171837%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt171816171834%_)))
                           (_%$%$tl171818171840%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt171816171834%_)))
                           (_%id171844%_ _%$%$hd171817171837%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl171818171840%_))
                                  '())
                          (__SRC__% _%id171844%_ _%stx171808%_)
                          (_%$%$E171812171821%_)))
                    (_%$%$E171812171821%_)))
              (_%$%$E171812171821%_)))))
    (define __compile-setq%
      (lambda (_%stx171755%_)
        (let* ((_%$e171757%_ _%stx171755%_)
               (_%$%$E171759171771%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e171757%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e171757%_))
              (let* ((_%$%$tgt171760171774%_
                      (let () (declare (not safe)) (__AST-e _%$e171757%_)))
                     (_%$%$hd171761171777%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt171760171774%_)))
                     (_%$%$tl171762171780%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt171760171774%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl171762171780%_))
                    (let* ((_%$%$tgt171763171784%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl171762171780%_)))
                           (_%$%$hd171764171787%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt171763171784%_)))
                           (_%$%$tl171765171790%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt171763171784%_)))
                           (_%id171794%_ _%$%$hd171764171787%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl171765171790%_))
                          (let* ((_%$%$tgt171766171796%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl171765171790%_)))
                                 (_%$%$hd171767171799%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt171766171796%_)))
                                 (_%$%$tl171768171802%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt171766171796%_)))
                                 (_%expr171806%_ _%$%$hd171767171799%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl171768171802%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id171794%_
                                              _%stx171755%_)
                                             (cons (__compile _%expr171806%_)
                                                   '())))
                                 _%stx171755%_)
                                (_%$%$E171759171771%_)))
                          (_%$%$E171759171771%_)))
                    (_%$%$E171759171771%_)))
              (_%$%$E171759171771%_)))))
    (define __compile-if%
      (lambda (_%stx171687%_)
        (let* ((_%$e171689%_ _%stx171687%_)
               (_%$%$E171691171706%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e171689%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e171689%_))
              (let* ((_%$%$tgt171692171709%_
                      (let () (declare (not safe)) (__AST-e _%$e171689%_)))
                     (_%$%$hd171693171712%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt171692171709%_)))
                     (_%$%$tl171694171715%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt171692171709%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl171694171715%_))
                    (let* ((_%$%$tgt171695171719%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl171694171715%_)))
                           (_%$%$hd171696171722%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt171695171719%_)))
                           (_%$%$tl171697171725%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt171695171719%_)))
                           (_%p171729%_ _%$%$hd171696171722%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl171697171725%_))
                          (let* ((_%$%$tgt171698171731%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl171697171725%_)))
                                 (_%$%$hd171699171734%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt171698171731%_)))
                                 (_%$%$tl171700171737%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt171698171731%_)))
                                 (_%t171741%_ _%$%$hd171699171734%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl171700171737%_))
                                (let* ((_%$%$tgt171701171743%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl171700171737%_)))
                                       (_%$%$hd171702171746%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt171701171743%_)))
                                       (_%$%$tl171703171749%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt171701171743%_)))
                                       (_%f171753%_ _%$%$hd171702171746%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl171703171749%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p171729%_)
                                                   (cons (__compile
                                                          _%t171741%_)
                                                         (cons (__compile
                                                                _%f171753%_)
                                                               '()))))
                                       _%stx171687%_)
                                      (_%$%$E171691171706%_)))
                                (_%$%$E171691171706%_)))
                          (_%$%$E171691171706%_)))
                    (_%$%$E171691171706%_)))
              (_%$%$E171691171706%_)))))
    (define __compile-quote%
      (lambda (_%stx171649%_)
        (let* ((_%$e171651%_ _%stx171649%_)
               (_%$%$E171653171662%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e171651%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e171651%_))
              (let* ((_%$%$tgt171654171665%_
                      (let () (declare (not safe)) (__AST-e _%$e171651%_)))
                     (_%$%$hd171655171668%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt171654171665%_)))
                     (_%$%$tl171656171671%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt171654171665%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl171656171671%_))
                    (let* ((_%$%$tgt171657171675%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl171656171671%_)))
                           (_%$%$hd171658171678%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt171657171675%_)))
                           (_%$%$tl171659171681%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt171657171675%_)))
                           (_%e171685%_ _%$%$hd171658171678%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl171659171681%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e171685%_))
                                       '()))
                           _%stx171649%_)
                          (_%$%$E171653171662%_)))
                    (_%$%$E171653171662%_)))
              (_%$%$E171653171662%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx171611%_)
        (let* ((_%$e171613%_ _%stx171611%_)
               (_%$%$E171615171624%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e171613%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e171613%_))
              (let* ((_%$%$tgt171616171627%_
                      (let () (declare (not safe)) (__AST-e _%$e171613%_)))
                     (_%$%$hd171617171630%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt171616171627%_)))
                     (_%$%$tl171618171633%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt171616171627%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl171618171633%_))
                    (let* ((_%$%$tgt171619171637%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl171618171633%_)))
                           (_%$%$hd171620171640%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt171619171637%_)))
                           (_%$%$tl171621171643%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt171619171637%_)))
                           (_%e171647%_ _%$%$hd171620171640%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl171621171643%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e171647%_ '()))
                           _%stx171611%_)
                          (_%$%$E171615171624%_)))
                    (_%$%$E171615171624%_)))
              (_%$%$E171615171624%_)))))
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
