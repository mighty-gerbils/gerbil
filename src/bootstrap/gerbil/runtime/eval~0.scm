(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1784471381)
  (begin
    (define __syntax::t
      (let ((__tmp177891 (list)) (__tmp177890 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__syntax::t
         '__syntax
         __tmp177891
         '(e id)
         __tmp177890
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args177695%_
        (apply make-instance __syntax::t _%$args177695%_)))
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
      (let ((__tmp177893 (list __syntax::t))
            (__tmp177892 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-form::t
         '__core-form
         __tmp177893
         '()
         __tmp177892
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args177692%_
        (apply make-instance __core-form::t _%$args177692%_)))
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
      (let ((__tmp177895 (list __core-form::t))
            (__tmp177894 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-expression::t
         '__core-expression
         __tmp177895
         '()
         __tmp177894
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args177689%_
        (apply make-instance __core-expression::t _%$args177689%_)))
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
      (let ((__tmp177897 (list __core-form::t))
            (__tmp177896 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-special-form::t
         '__core-special-form
         __tmp177897
         '()
         __tmp177896
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args177686%_
        (apply make-instance __core-special-form::t _%$args177686%_)))
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
      (lambda (_%id177660%_)
        (let* ((_%h177662%_ __core)
               (_%key177665%_
                (let () (declare (not safe)) (__AST-e _%id177660%_)))
               (_%h177672%_
                (let ((_%$obj177669%_ _%h177662%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj177669%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj177669%_)))
                           '#t)
                      _%$obj177669%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj177669%_)))))
               (_%h177674%_ _%h177672%_))
          (declare (not safe))
          (__hash-get _%h177674%_ _%key177665%_))))
    (define __core-bound-id?__%
      (lambda (_%id177643%_ _%is?177644%_)
        (let ((_%$e177646%_ (__core-resolve _%id177643%_)))
          (if _%$e177646%_ (_%is?177644%_ _%$e177646%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id177653%_)
        (let ((_%is?177655%_ true))
          (__core-bound-id?__% _%id177653%_ _%is?177655%_))))
    (define __core-bound-id?
      (lambda _g177898_
        (let ((_g177899_ (let () (declare (not safe)) (##length _g177898_))))
          (cond ((let () (declare (not safe)) (##fx= _g177899_ 1))
                 (apply __core-bound-id?__0 _g177898_))
                ((let () (declare (not safe)) (##fx= _g177899_ 2))
                 (apply __core-bound-id?__% _g177898_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g177898_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id177598%_ _%e177599%_ _%make177600%_)
        (let* ((_%h177602%_ __core)
               (_%key177605%_ _%id177598%_)
               (_%value177608%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%e177599%_ '__syntax::t))
                    _%e177599%_
                    (_%make177600%_ _%e177599%_ _%id177598%_)))
               (_%h177615%_
                (let ((_%$obj177612%_ _%h177602%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj177612%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj177612%_)))
                           '#t)
                      _%$obj177612%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj177612%_)))))
               (_%h177617%_ _%h177615%_))
          (declare (not safe))
          (__hash-put! _%h177617%_ _%key177605%_ _%value177608%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id177633%_ _%e177634%_)
        (let ((_%make177636%_ make-__syntax))
          (__core-bind-syntax!__% _%id177633%_ _%e177634%_ _%make177636%_))))
    (define __core-bind-syntax!
      (lambda _g177900_
        (let ((_g177901_ (let () (declare (not safe)) (##length _g177900_))))
          (cond ((let () (declare (not safe)) (##fx= _g177901_ 2))
                 (apply __core-bind-syntax!__0 _g177900_))
                ((let () (declare (not safe)) (##fx= _g177901_ 3))
                 (apply __core-bind-syntax!__% _g177900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g177900_))))))
    (define __SRC__%
      (lambda (_%e177578%_ _%src-stx177579%_)
        (if (or (pair? _%e177578%_) (symbol? _%e177578%_))
            (let ((__tmp177902
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx177579%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx177579%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e177578%_ __tmp177902))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e177578%_ 'gerbil#AST::t))
                (let ((__tmp177904
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e177578%_ '1 '#f '#f)))
                      (__tmp177903
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e177578%_)))))
                  (declare (not safe))
                  (##make-source __tmp177904 __tmp177903))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e177578%_))))))
    (define __SRC__0
      (lambda (_%e177590%_)
        (let ((_%src-stx177592%_ '#f))
          (__SRC__% _%e177590%_ _%src-stx177592%_))))
    (define __SRC
      (lambda _g177905_
        (let ((_g177906_ (let () (declare (not safe)) (##length _g177905_))))
          (cond ((let () (declare (not safe)) (##fx= _g177906_ 1))
                 (apply __SRC__0 _g177905_))
                ((let () (declare (not safe)) (##fx= _g177906_ 2))
                 (apply __SRC__% _g177905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g177905_))))))
    (define __locat
      (lambda (_%loc177575%_)
        (if (let () (declare (not safe)) (##locat? _%loc177575%_))
            _%loc177575%_
            '#f)))
    (define __check-values
      (lambda (_%obj177570%_ _%k177571%_)
        (let ((_%count177573%_
               (if (let () (declare (not safe)) (##values? _%obj177570%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj177570%_))
                   '1)))
          (if (fx= _%count177573%_ _%k177571%_)
              '#!void
              (let ((__tmp177908
                     (if (fx< _%count177573%_ _%k177571%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp177907
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj177570%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj177570%_))
                         _%obj177570%_)))
                (declare (not safe))
                (error __tmp177908 __tmp177907 _%k177571%_))))))
    (define __compile
      (lambda (_%stx177539%_)
        (let* ((_%$e177541%_ _%stx177539%_)
               (_%$%$E177543177549%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177541%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177541%_))
              (let* ((_%$%$tgt177544177552%_
                      (let () (declare (not safe)) (__AST-e _%$e177541%_)))
                     (_%$%$hd177545177555%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177544177552%_)))
                     (_%$%$tl177546177558%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177544177552%_)))
                     (_%form177562%_ _%$%$hd177545177555%_)
                     (_%$e177564%_ (__core-resolve _%form177562%_)))
                (if _%$e177564%_
                    ((##structure-ref _%$e177564%_ '1 __syntax::t '#f)
                     _%stx177539%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx177539%_
                       _%form177562%_))))
              (_%$%$E177543177549%_)))))
    (define __compile-error__%
      (lambda (_%stx177526%_ _%detail177527%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx177526%_
           _%detail177527%_))))
    (define __compile-error__0
      (lambda (_%stx177532%_)
        (let ((_%detail177534%_ '#f))
          (__compile-error__% _%stx177532%_ _%detail177534%_))))
    (define __compile-error
      (lambda _g177909_
        (let ((_g177910_ (let () (declare (not safe)) (##length _g177909_))))
          (cond ((let () (declare (not safe)) (##fx= _g177910_ 1))
                 (apply __compile-error__0 _g177909_))
                ((let () (declare (not safe)) (##fx= _g177910_ 2))
                 (apply __compile-error__% _g177909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g177909_))))))
    (define __compile-ignore%
      (lambda (_%stx177523%_) (__SRC__% ''#!void _%stx177523%_)))
    (define __compile-begin%
      (lambda (_%stx177498%_)
        (let* ((_%$e177500%_ _%stx177498%_)
               (_%$%$E177502177508%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177500%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177500%_))
              (let* ((_%$%$tgt177503177511%_
                      (let () (declare (not safe)) (__AST-e _%$e177500%_)))
                     (_%$%$hd177504177514%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177503177511%_)))
                     (_%$%$tl177505177517%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177503177511%_)))
                     (_%body177521%_ _%$%$tl177505177517%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body177521%_))
                 _%stx177498%_))
              (_%$%$E177502177508%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx177473%_)
        (let* ((_%$e177475%_ _%stx177473%_)
               (_%$%$E177477177483%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177475%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177475%_))
              (let* ((_%$%$tgt177478177486%_
                      (let () (declare (not safe)) (__AST-e _%$e177475%_)))
                     (_%$%$hd177479177489%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177478177486%_)))
                     (_%$%$tl177480177492%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177478177486%_)))
                     (_%body177496%_ _%$%$tl177480177492%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body177496%_)))
                 _%stx177473%_))
              (_%$%$E177477177483%_)))))
    (define __compile-import%
      (lambda (_%stx177448%_)
        (let* ((_%$e177450%_ _%stx177448%_)
               (_%$%$E177452177458%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177450%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177450%_))
              (let* ((_%$%$tgt177453177461%_
                      (let () (declare (not safe)) (__AST-e _%$e177450%_)))
                     (_%$%$hd177454177464%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177453177461%_)))
                     (_%$%$tl177455177467%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177453177461%_)))
                     (_%body177471%_ _%$%$tl177455177467%_))
                (__SRC__%
                 (list '__eval-import (list 'quote _%body177471%_))
                 _%stx177448%_))
              (_%$%$E177452177458%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx177395%_)
        (let* ((_%$e177397%_ _%stx177395%_)
               (_%$%$E177399177411%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177397%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177397%_))
              (let* ((_%$%$tgt177400177414%_
                      (let () (declare (not safe)) (__AST-e _%$e177397%_)))
                     (_%$%$hd177401177417%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177400177414%_)))
                     (_%$%$tl177402177420%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177400177414%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl177402177420%_))
                    (let* ((_%$%$tgt177403177424%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl177402177420%_)))
                           (_%$%$hd177404177427%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt177403177424%_)))
                           (_%$%$tl177405177430%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt177403177424%_)))
                           (_%ann177434%_ _%$%$hd177404177427%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl177405177430%_))
                          (let* ((_%$%$tgt177406177436%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl177405177430%_)))
                                 (_%$%$hd177407177439%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177406177436%_)))
                                 (_%$%$tl177408177442%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177406177436%_)))
                                 (_%expr177446%_ _%$%$hd177407177439%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177408177442%_))
                                        '())
                                (__compile _%expr177446%_)
                                (_%$%$E177399177411%_)))
                          (_%$%$E177399177411%_)))
                    (_%$%$E177399177411%_)))
              (_%$%$E177399177411%_)))))
    (define __compile-define-values%
      (lambda (_%stx177286%_)
        (let* ((_%$e177288%_ _%stx177286%_)
               (_%$%$E177290177302%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177288%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177288%_))
              (let* ((_%$%$tgt177291177305%_
                      (let () (declare (not safe)) (__AST-e _%$e177288%_)))
                     (_%$%$hd177292177308%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177291177305%_)))
                     (_%$%$tl177293177311%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177291177305%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl177293177311%_))
                    (let* ((_%$%$tgt177294177315%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl177293177311%_)))
                           (_%$%$hd177295177318%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt177294177315%_)))
                           (_%$%$tl177296177321%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt177294177315%_)))
                           (_%hd177325%_ _%$%$hd177295177318%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl177296177321%_))
                          (let* ((_%$%$tgt177297177327%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl177296177321%_)))
                                 (_%$%$hd177298177330%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177297177327%_)))
                                 (_%$%$tl177299177333%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177297177327%_)))
                                 (_%expr177337%_ _%$%$hd177298177330%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177299177333%_))
                                        '())
                                (let* ((_%$e177339%_ _%hd177325%_)
                                       (_%$%$E177341177382%_
                                        (lambda ()
                                          (let ((_%$%$E177342177367%_
                                                 (lambda ()
                                                   (let* ((_%$%$E177343177354%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e177339%_))))
                  (_%ids177357%_ _%hd177325%_)
                  (_%len177359%_ (length _%ids177357%_))
                  (_%tmp177361%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (list 'define
                                 _%tmp177361%_
                                 (__compile _%expr177337%_))
                           _%stx177286%_)
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp177361%_
                                       _%len177359%_)
                                 _%stx177286%_)
                                (let ((__tmp177912
                                       (lambda (_%id177364%_ _%k177365%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id177364%_))
                                             (__SRC__%
                                              (list 'define
                                                    (__SRC__0 _%id177364%_)
                                                    (list '##values-ref
                                                          _%tmp177361%_
                                                          _%k177365%_))
                                              _%stx177286%_)
                                             '#f)))
                                      (__tmp177911
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len177359%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp177912
                                   _%ids177357%_
                                   __tmp177911)))))
              _%stx177286%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e177339%_))
                                                (let* ((_%$%$tgt177344177370%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e177339%_)))
                                                       (_%$%$hd177345177373%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%$tgt177344177370%_)))
                                                       (_%$%$tl177346177376%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%$tgt177344177370%_)))
                                                       (_%id177380%_
                                                        _%$%$hd177345177373%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$%$tl177346177376%_))
                      '())
              (__SRC__%
               (list 'define
                     (__SRC__0 _%id177380%_)
                     (__compile _%expr177337%_))
               _%stx177286%_)
              (_%$%$E177342177367%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%$E177342177367%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e177339%_))
                                      (let* ((_%$%$tgt177347177385%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e177339%_)))
                                             (_%$%$hd177348177388%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt177347177385%_)))
                                             (_%$%$tl177349177391%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt177347177385%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$hd177348177388%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$%$tl177349177391%_))
                                                        '())
                                                (__compile _%expr177337%_)
                                                (_%$%$E177341177382%_))
                                            (_%$%$E177341177382%_)))
                                      (_%$%$E177341177382%_)))
                                (_%$%$E177290177302%_)))
                          (_%$%$E177290177302%_)))
                    (_%$%$E177290177302%_)))
              (_%$%$E177290177302%_)))))
    (define __compile-head-id
      (lambda (_%e177284%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e177284%_))
             _%e177284%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd177241%_)
        (let _%recur177243%_ ((_%rest177245%_ _%hd177241%_))
          (let* ((_%$e177247%_ _%rest177245%_)
                 (_%$%$E177249177267%_
                  (lambda ()
                    (let ((_%$%$E177250177264%_
                           (lambda ()
                             (let* ((_%$%$E177251177259%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e177247%_))))
                                    (_%tail177262%_ _%$e177247%_))
                               (__compile-head-id _%tail177262%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177247%_))
                                  '())
                          '()
                          (_%$%$E177250177264%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e177247%_))
                (let* ((_%$%$tgt177252177270%_
                        (let () (declare (not safe)) (__AST-e _%$e177247%_)))
                       (_%$%$hd177253177273%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt177252177270%_)))
                       (_%$%$tl177254177276%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt177252177270%_)))
                       (_%hd177280%_ _%$%$hd177253177273%_)
                       (_%rest177282%_ _%$%$tl177254177276%_))
                  (cons (__compile-head-id _%hd177280%_)
                        (_%recur177243%_ _%rest177282%_)))
                (_%$%$E177249177267%_))))))
    (define __compile-lambda%
      (lambda (_%stx177188%_)
        (let* ((_%$e177190%_ _%stx177188%_)
               (_%$%$E177192177204%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177190%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177190%_))
              (let* ((_%$%$tgt177193177207%_
                      (let () (declare (not safe)) (__AST-e _%$e177190%_)))
                     (_%$%$hd177194177210%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177193177207%_)))
                     (_%$%$tl177195177213%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177193177207%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl177195177213%_))
                    (let* ((_%$%$tgt177196177217%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl177195177213%_)))
                           (_%$%$hd177197177220%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt177196177217%_)))
                           (_%$%$tl177198177223%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt177196177217%_)))
                           (_%hd177227%_ _%$%$hd177197177220%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl177198177223%_))
                          (let* ((_%$%$tgt177199177229%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl177198177223%_)))
                                 (_%$%$hd177200177232%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177199177229%_)))
                                 (_%$%$tl177201177235%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177199177229%_)))
                                 (_%body177239%_ _%$%$hd177200177232%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177201177235%_))
                                        '())
                                (__SRC__%
                                 (list 'lambda
                                       (__compile-lambda-head _%hd177227%_)
                                       (__compile _%body177239%_))
                                 _%stx177188%_)
                                (_%$%$E177192177204%_)))
                          (_%$%$E177192177204%_)))
                    (_%$%$E177192177204%_)))
              (_%$%$E177192177204%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx176953%_)
        (letrec ((_%variadic?176955%_
                  (lambda (_%hd177153%_)
                    (let* ((_%$e177155%_ _%hd177153%_)
                           (_%$%$E177157177173%_
                            (lambda ()
                              (let ((_%$%$E177158177170%_
                                     (lambda ()
                                       (let ((_%$%$E177159177167%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e177155%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e177155%_))
                                            '())
                                    '#f
                                    (_%$%$E177158177170%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177155%_))
                          (let* ((_%$%$tgt177160177176%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177155%_)))
                                 (_%$%$hd177161177179%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177160177176%_)))
                                 (_%$%$tl177162177182%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177160177176%_)))
                                 (_%rest177186%_ _%$%$tl177162177182%_))
                            (_%variadic?176955%_ _%rest177186%_))
                          (_%$%$E177157177173%_)))))
                 (_%arity176956%_
                  (lambda (_%hd177091%_)
                    (let _%lp177093%_ ((_%rest177095%_ _%hd177091%_)
                                       (_%k177096%_ '0))
                      (let* ((_%$e177098%_ _%rest177095%_)
                             (_%$%$E177100177111%_
                              (lambda ()
                                (let ((_%$%$E177101177108%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e177098%_)))))
                                  _%k177096%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e177098%_))
                            (let* ((_%$%$tgt177102177114%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e177098%_)))
                                   (_%$%$hd177103177117%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%$tgt177102177114%_)))
                                   (_%$%$tl177104177120%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%$tgt177102177114%_)))
                                   (_%rest177124%_ _%$%$tl177104177120%_))
                              (_%lp177093%_
                               _%rest177124%_
                               (let ((_%x177126%_ _%k177096%_))
                                 (if (fixnum? _%x177126%_)
                                     (let ((_%x177131%_ _%x177126%_))
                                       (declare (not safe))
                                       (__fx1+ _%x177131%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x177126%_)
                                       '#!void)))))
                            (_%$%$E177100177111%_))))))
                 (_%generate176957%_
                  (lambda (_%rest177018%_ _%args177019%_ _%len177020%_)
                    (let* ((_%$e177022%_ _%rest177018%_)
                           (_%$%$E177024177035%_
                            (lambda ()
                              (let ((_%$%$E177025177032%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e177022%_)))))
                                (__SRC__%
                                 (list 'error
                                       '"No clause matching arguments"
                                       _%args177019%_)
                                 _%stx176953%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177022%_))
                          (let* ((_%$%$tgt177026177038%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177022%_)))
                                 (_%$%$hd177027177041%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177026177038%_)))
                                 (_%$%$tl177028177044%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177026177038%_)))
                                 (_%clause177048%_ _%$%$hd177027177041%_)
                                 (_%rest177050%_ _%$%$tl177028177044%_)
                                 (_%$e177052%_ _%clause177048%_)
                                 (_%$%$E177054177063%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e177052%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e177052%_))
                                (let* ((_%$%$tgt177055177066%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e177052%_)))
                                       (_%$%$hd177056177069%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt177055177066%_)))
                                       (_%$%$tl177057177072%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt177055177066%_)))
                                       (_%hd177076%_ _%$%$hd177056177069%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl177057177072%_))
                                      (let* ((_%$%$tgt177058177078%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl177057177072%_)))
                                             (_%$%$hd177059177081%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt177058177078%_)))
                                             (_%$%$tl177060177084%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt177058177078%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl177060177084%_))
                                                    '())
                                            (let ((_%clen177088%_
                                                   (_%arity176956%_
                                                    _%hd177076%_))
                                                  (_%cmp177089%_
                                                   (if (_%variadic?176955%_
                                                        _%hd177076%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (list 'if
                                                     (list _%cmp177089%_
                                                           _%len177020%_
                                                           _%clen177088%_)
                                                     (__SRC__%
                                                      (list '##apply
                                                            (__compile-lambda%
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause177048%_))
                    _%args177019%_)
              _%stx176953%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%generate176957%_
                                                      _%rest177050%_
                                                      _%args177019%_
                                                      _%len177020%_))
                                               _%stx176953%_))
                                            (_%$%$E177054177063%_)))
                                      (_%$%$E177054177063%_)))
                                (_%$%$E177054177063%_)))
                          (_%$%$E177024177035%_))))))
          (let* ((_%$e176959%_ _%stx176953%_)
                 (_%$%$E176961176993%_
                  (lambda ()
                    (let ((_%$%$E176962176975%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e176959%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e176959%_))
                          (let* ((_%$%$tgt176963176978%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e176959%_)))
                                 (_%$%$hd176964176981%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt176963176978%_)))
                                 (_%$%$tl176965176984%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt176963176978%_)))
                                 (_%clauses176988%_ _%$%$tl176965176984%_))
                            (let ((_%args176990%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx176953%_))
                                  (_%len176991%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx176953%_)))
                              (__SRC__%
                               (list 'lambda
                                     _%args176990%_
                                     (__SRC__%
                                      (list 'let
                                            (list (list _%len176991%_
                                                        (__SRC__%
                                                         (list '##length
                                                               _%args176990%_)
                                                         _%stx176953%_)))
                                            (_%generate176957%_
                                             _%clauses176988%_
                                             _%args176990%_
                                             _%len176991%_))
                                      _%stx176953%_))
                               _%stx176953%_)))
                          (_%$%$E176962176975%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e176959%_))
                (let* ((_%$%$tgt176966176996%_
                        (let () (declare (not safe)) (__AST-e _%$e176959%_)))
                       (_%$%$hd176967176999%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt176966176996%_)))
                       (_%$%$tl176968177002%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt176966176996%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl176968177002%_))
                      (let* ((_%$%$tgt176969177006%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl176968177002%_)))
                             (_%$%$hd176970177009%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt176969177006%_)))
                             (_%$%$tl176971177012%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt176969177006%_)))
                             (_%clause177016%_ _%$%$hd176970177009%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$tl176971177012%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause177016%_))
                            (_%$%$E176961176993%_)))
                      (_%$%$E176961176993%_)))
                (_%$%$E176961176993%_))))))
    (define __compile-let-form
      (lambda (_%stx176722%_ _%compile-simple176723%_ _%compile-values176724%_)
        (letrec ((_%simple-bind?176726%_
                  (lambda (_%hd176911%_)
                    (let* ((_%$%hd176912176922%_ _%hd176911%_)
                           (_%$%else176915176930%_ (lambda () '#f)))
                      (let ((_%$%K176918176943%_ (lambda (_%id176941%_) '#t))
                            (_%$%K176917176935%_ (lambda () '#t)))
                        (let ((_%$%try-match176914176938%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%$%hd176912176922%_ '#f))
                                     (_%$%K176917176935%_)
                                     (_%$%else176915176930%_)))))
                          (if (pair? _%$%hd176912176922%_)
                              (let ((_%$%tl176920176948%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%hd176912176922%_)))
                                    (_%$%hd176919176946%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%hd176912176922%_))))
                                (if (null? _%$%tl176920176948%_)
                                    (let ((_%id176951%_ _%$%hd176919176946%_))
                                      (_%$%K176918176943%_ _%id176951%_))
                                    (_%$%try-match176914176938%_)))
                              (_%$%try-match176914176938%_)))))))
                 (_%car-e176727%_
                  (lambda (_%hd176909%_)
                    (if (pair? _%hd176909%_)
                        (let () (declare (not safe)) (##car _%hd176909%_))
                        _%hd176909%_))))
          (let* ((_%$e176729%_ _%stx176722%_)
                 (_%$%$E176731176874%_
                  (lambda ()
                    (let ((_%$%$E176732176754%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e176729%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e176729%_))
                          (let* ((_%$%$tgt176733176757%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e176729%_)))
                                 (_%$%$hd176734176760%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt176733176757%_)))
                                 (_%$%$tl176735176763%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt176733176757%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl176735176763%_))
                                (let* ((_%$%$tgt176736176767%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl176735176763%_)))
                                       (_%$%$hd176737176770%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt176736176767%_)))
                                       (_%$%$tl176738176773%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt176736176767%_)))
                                       (_%hd176777%_ _%$%$hd176737176770%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl176738176773%_))
                                      (let* ((_%$%$tgt176739176779%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl176738176773%_)))
                                             (_%$%$hd176740176782%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt176739176779%_)))
                                             (_%$%$tl176741176785%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt176739176779%_)))
                                             (_%body176789%_
                                              _%$%$hd176740176782%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl176741176785%_))
                                                    '())
                                            (let* ((_%hd-ids176829%_
                                                    (map (lambda (_%bind176791%_)
                                                           (let* ((_%$e176793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind176791%_)
                          (_%$%$E176795176804%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e176793%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e176793%_))
                         (let* ((_%$%$tgt176796176807%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e176793%_)))
                                (_%$%$hd176797176810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt176796176807%_)))
                                (_%$%$tl176798176813%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt176796176807%_)))
                                (_%ids176817%_ _%$%$hd176797176810%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl176798176813%_))
                               (let* ((_%$%$tgt176799176819%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl176798176813%_)))
                                      (_%$%$hd176800176822%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt176799176819%_)))
                                      (_%$%$tl176801176825%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt176799176819%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl176801176825%_))
                                             '())
                                     _%ids176817%_
                                     (_%$%$E176795176804%_)))
                               (_%$%$E176795176804%_)))
                         (_%$%$E176795176804%_))))
                 _%hd176777%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs176869%_
                                                    (map (lambda (_%bind176831%_)
                                                           (let* ((_%$e176833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind176831%_)
                          (_%$%$E176835176844%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e176833%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e176833%_))
                         (let* ((_%$%$tgt176836176847%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e176833%_)))
                                (_%$%$hd176837176850%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt176836176847%_)))
                                (_%$%$tl176838176853%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt176836176847%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl176838176853%_))
                               (let* ((_%$%$tgt176839176857%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl176838176853%_)))
                                      (_%$%$hd176840176860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt176839176857%_)))
                                      (_%$%$tl176841176863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt176839176857%_)))
                                      (_%expr176867%_ _%$%$hd176840176860%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl176841176863%_))
                                             '())
                                     (__compile _%expr176867%_)
                                     (_%$%$E176835176844%_)))
                               (_%$%$E176835176844%_)))
                         (_%$%$E176835176844%_))))
                 _%hd176777%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body176871%_
                                                    (__compile
                                                     _%body176789%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?176726%_
                                                     _%hd-ids176829%_))
                                                  (_%compile-simple176723%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e176727%_
                                                            _%hd-ids176829%_))
                                                   _%exprs176869%_
                                                   _%body176871%_)
                                                  (_%compile-values176724%_
                                                   _%hd-ids176829%_
                                                   _%exprs176869%_
                                                   _%body176871%_)))
                                            (_%$%$E176732176754%_)))
                                      (_%$%$E176732176754%_)))
                                (_%$%$E176732176754%_)))
                          (_%$%$E176732176754%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e176729%_))
                (let* ((_%$%$tgt176742176877%_
                        (let () (declare (not safe)) (__AST-e _%$e176729%_)))
                       (_%$%$hd176743176880%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt176742176877%_)))
                       (_%$%$tl176744176883%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt176742176877%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl176744176883%_))
                      (let* ((_%$%$tgt176745176887%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl176744176883%_)))
                             (_%$%$hd176746176890%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt176745176887%_)))
                             (_%$%$tl176747176893%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt176745176887%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$hd176746176890%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl176747176893%_))
                                (let* ((_%$%$tgt176748176897%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl176747176893%_)))
                                       (_%$%$hd176749176900%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt176748176897%_)))
                                       (_%$%$tl176750176903%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt176748176897%_)))
                                       (_%body176907%_ _%$%$hd176749176900%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl176750176903%_))
                                              '())
                                      (__compile _%body176907%_)
                                      (_%$%$E176731176874%_)))
                                (_%$%$E176731176874%_))
                            (_%$%$E176731176874%_)))
                      (_%$%$E176731176874%_)))
                (_%$%$E176731176874%_))))))
    (define __compile-let-values%
      (lambda (_%stx176534%_)
        (letrec ((_%compile-simple176536%_
                  (lambda (_%hd-ids176718%_ _%exprs176719%_ _%body176720%_)
                    (__SRC__%
                     (list 'let
                           (let ((__tmp177913
                                  (map __compile-head-id _%hd-ids176718%_)))
                             (declare (not safe))
                             (##map list __tmp177913 _%exprs176719%_))
                           _%body176720%_)
                     _%stx176534%_)))
                 (_%compile-values176537%_
                  (lambda (_%hd-ids176633%_ _%exprs176634%_ _%body176635%_)
                    (let _%lp176637%_ ((_%rest176639%_ _%hd-ids176633%_)
                                       (_%exprs176640%_ _%exprs176634%_)
                                       (_%bind176641%_ '())
                                       (_%post176642%_ '()))
                      (let* ((_%$%rest176643176657%_ _%rest176639%_)
                             (_%$%else176646176665%_
                              (lambda ()
                                (__SRC__%
                                 (list 'let
                                       (reverse _%bind176641%_)
                                       (_%compile-post176538%_
                                        _%post176642%_
                                        _%body176635%_))
                                 _%stx176534%_))))
                        (let ((_%$%K176651176701%_
                               (lambda (_%rest176698%_ _%id176699%_)
                                 (_%lp176637%_
                                  _%rest176698%_
                                  (cdr _%exprs176640%_)
                                  (cons (list (__compile-head-id _%id176699%_)
                                              (car _%exprs176640%_))
                                        _%bind176641%_)
                                  _%post176642%_)))
                              (_%$%K176648176683%_
                               (lambda (_%rest176669%_ _%hd176670%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176670%_))
                                     (_%lp176637%_
                                      _%rest176669%_
                                      (cdr _%exprs176640%_)
                                      (cons (list (__compile-head-id
                                                   _%hd176670%_)
                                                  (list 'values->list
                                                        (car _%exprs176640%_)))
                                            _%bind176641%_)
                                      _%post176642%_)
                                     (if (list? _%hd176670%_)
                                         (let* ((_%len176674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd176670%_)))
                                                (_%tmp176676%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp176637%_
                                            _%rest176669%_
                                            (cdr _%exprs176640%_)
                                            (cons (list _%tmp176676%_
                                                        (car _%exprs176640%_))
                                                  _%bind176641%_)
                                            (cons (cons _%tmp176676%_
                                                        (cons _%len176674%_
                                                              (let ((__tmp177915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id176679%_ _%k176680%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id176679%_))
                                   (cons (__SRC__0 _%id176679%_) _%k176680%_)
                                   '#f)))
                            (__tmp177914
                             (let ()
                               (declare (not safe))
                               (##iota _%len176674%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp177915 _%hd176670%_ __tmp177914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post176642%_)))
                                         (__compile-error__%
                                          _%stx176534%_
                                          _%hd176670%_))))))
                          (if (pair? _%$%rest176643176657%_)
                              (let ((_%$%tl176653176706%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest176643176657%_)))
                                    (_%$%hd176652176704%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest176643176657%_))))
                                (if (pair? _%$%hd176652176704%_)
                                    (let ((_%$%tl176655176711%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd176652176704%_)))
                                          (_%$%hd176654176709%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd176652176704%_))))
                                      (if (null? _%$%tl176655176711%_)
                                          (let ((_%id176714%_
                                                 _%$%hd176654176709%_)
                                                (_%rest176716%_
                                                 _%$%tl176653176706%_))
                                            (_%$%K176651176701%_
                                             _%rest176716%_
                                             _%id176714%_))
                                          (let ((_%hd176691%_
                                                 _%$%hd176652176704%_)
                                                (_%rest176693%_
                                                 _%$%tl176653176706%_))
                                            (_%$%K176648176683%_
                                             _%rest176693%_
                                             _%hd176691%_))))
                                    (let ((_%hd176691%_ _%$%hd176652176704%_)
                                          (_%rest176693%_
                                           _%$%tl176653176706%_))
                                      (_%$%K176648176683%_
                                       _%rest176693%_
                                       _%hd176691%_))))
                              (_%$%else176646176665%_)))))))
                 (_%compile-post176538%_
                  (lambda (_%post176540%_ _%body176541%_)
                    (let _%lp176543%_ ((_%rest176545%_ _%post176540%_)
                                       (_%check176546%_ '())
                                       (_%bind176547%_ '()))
                      (let* ((_%$%rest176548176560%_ _%rest176545%_)
                             (_%$%else176550176568%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp177916
                                              (list (__SRC__%
                                                     (list 'let
                                                           _%bind176547%_
                                                           _%body176541%_)
                                                     _%stx176534%_))))
                                         (declare (not safe))
                                         (##append
                                          _%check176546%_
                                          __tmp177916)))
                                 _%stx176534%_)))
                             (_%$%K176552176607%_
                              (lambda (_%rest176571%_
                                       _%init176572%_
                                       _%len176573%_
                                       _%tmp176574%_)
                                (_%lp176543%_
                                 _%rest176571%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp176574%_
                                              _%len176573%_)
                                        _%stx176534%_)
                                       _%check176546%_)
                                 (let ((__tmp177917
                                        (lambda (_%hd176576%_ _%r176577%_)
                                          (let* ((_%$%hd176578176585%_
                                                  _%hd176576%_)
                                                 (_%$%E176580176589%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd176578176585%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K176581176595%_
                                                  (lambda (_%k176592%_
                                                           _%id176593%_)
                                                    (cons (list _%id176593%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp176574%_
                              _%k176592%_))
                  _%r176577%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd176578176585%_)
                                                (let ((_%$%hd176582176598%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd176578176585%_)))
                                                      (_%$%tl176583176600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd176578176585%_))))
                                                  (let* ((_%id176603%_
                                                          _%$%hd176582176598%_)
                                                         (_%k176605%_
                                                          _%$%tl176583176600%_))
                                                    (_%$%K176581176595%_
                                                     _%k176605%_
                                                     _%id176603%_)))
                                                (_%$%E176580176589%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp177917
                                    _%bind176547%_
                                    _%init176572%_))))))
                        (if (pair? _%$%rest176548176560%_)
                            (let ((_%$%hd176553176610%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest176548176560%_)))
                                  (_%$%tl176554176612%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest176548176560%_))))
                              (if (pair? _%$%hd176553176610%_)
                                  (let ((_%$%hd176555176615%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd176553176610%_)))
                                        (_%$%tl176556176617%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd176553176610%_))))
                                    (let ((_%tmp176620%_ _%$%hd176555176615%_))
                                      (if (pair? _%$%tl176556176617%_)
                                          (let ((_%$%hd176557176622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl176556176617%_)))
                                                (_%$%tl176558176624%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl176556176617%_))))
                                            (let* ((_%len176627%_
                                                    _%$%hd176557176622%_)
                                                   (_%init176629%_
                                                    _%$%tl176558176624%_)
                                                   (_%rest176631%_
                                                    _%$%tl176554176612%_))
                                              (_%$%K176552176607%_
                                               _%rest176631%_
                                               _%init176629%_
                                               _%len176627%_
                                               _%tmp176620%_)))
                                          (_%$%else176550176568%_))))
                                  (_%$%else176550176568%_)))
                            (_%$%else176550176568%_)))))))
          (__compile-let-form
           _%stx176534%_
           _%compile-simple176536%_
           _%compile-values176537%_))))
    (define __compile-letrec-values%
      (lambda (_%stx176331%_)
        (letrec ((_%compile-simple176333%_
                  (lambda (_%hd-ids176530%_ _%exprs176531%_ _%body176532%_)
                    (__SRC__%
                     (list 'letrec
                           (let ((__tmp177918
                                  (map __compile-head-id _%hd-ids176530%_)))
                             (declare (not safe))
                             (##map list __tmp177918 _%exprs176531%_))
                           _%body176532%_)
                     _%stx176331%_)))
                 (_%compile-values176334%_
                  (lambda (_%hd-ids176441%_ _%exprs176442%_ _%body176443%_)
                    (let _%lp176445%_ ((_%rest176447%_ _%hd-ids176441%_)
                                       (_%exprs176448%_ _%exprs176442%_)
                                       (_%pre176449%_ '())
                                       (_%bind176450%_ '())
                                       (_%post176451%_ '()))
                      (let* ((_%$%rest176452176466%_ _%rest176447%_)
                             (_%$%else176455176474%_
                              (lambda ()
                                (_%compile-inner176335%_
                                 _%pre176449%_
                                 _%bind176450%_
                                 _%post176451%_
                                 _%body176443%_))))
                        (let ((_%$%K176460176513%_
                               (lambda (_%rest176510%_ _%id176511%_)
                                 (_%lp176445%_
                                  _%rest176510%_
                                  (cdr _%exprs176448%_)
                                  _%pre176449%_
                                  (cons (list (__compile-head-id _%id176511%_)
                                              (car _%exprs176448%_))
                                        _%bind176450%_)
                                  _%post176451%_)))
                              (_%$%K176457176495%_
                               (lambda (_%rest176478%_ _%hd176479%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176479%_))
                                     (_%lp176445%_
                                      _%rest176478%_
                                      (cdr _%exprs176448%_)
                                      _%pre176449%_
                                      (cons (list (__compile-head-id
                                                   _%hd176479%_)
                                                  (list 'values->list
                                                        (car _%exprs176448%_)))
                                            _%bind176450%_)
                                      _%post176451%_)
                                     (if (list? _%hd176479%_)
                                         (let* ((_%len176483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd176479%_)))
                                                (_%tmp176485%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp176445%_
                                            _%rest176478%_
                                            (cdr _%exprs176448%_)
                                            (let ((__tmp177919
                                                   (lambda (_%id176488%_
                                                            _%r176489%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id176488%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id176488%_)
                             '('#!void))
                       _%r176489%_)
                 _%r176489%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp177919
                                               _%pre176449%_
                                               _%hd176479%_))
                                            (cons (list _%tmp176485%_
                                                        (car _%exprs176448%_))
                                                  _%bind176450%_)
                                            (cons (cons _%tmp176485%_
                                                        (cons _%len176483%_
                                                              (let ((__tmp177921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id176491%_ _%k176492%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id176491%_))
                                   (cons (__SRC__0 _%id176491%_) _%k176492%_)
                                   '#f)))
                            (__tmp177920
                             (let ()
                               (declare (not safe))
                               (##iota _%len176483%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp177921 _%hd176479%_ __tmp177920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post176451%_)))
                                         (__compile-error__%
                                          _%stx176331%_
                                          _%hd176479%_))))))
                          (if (pair? _%$%rest176452176466%_)
                              (let ((_%$%tl176462176518%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest176452176466%_)))
                                    (_%$%hd176461176516%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest176452176466%_))))
                                (if (pair? _%$%hd176461176516%_)
                                    (let ((_%$%tl176464176523%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd176461176516%_)))
                                          (_%$%hd176463176521%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd176461176516%_))))
                                      (if (null? _%$%tl176464176523%_)
                                          (let ((_%id176526%_
                                                 _%$%hd176463176521%_)
                                                (_%rest176528%_
                                                 _%$%tl176462176518%_))
                                            (_%$%K176460176513%_
                                             _%rest176528%_
                                             _%id176526%_))
                                          (let ((_%hd176503%_
                                                 _%$%hd176461176516%_)
                                                (_%rest176505%_
                                                 _%$%tl176462176518%_))
                                            (_%$%K176457176495%_
                                             _%rest176505%_
                                             _%hd176503%_))))
                                    (let ((_%hd176503%_ _%$%hd176461176516%_)
                                          (_%rest176505%_
                                           _%$%tl176462176518%_))
                                      (_%$%K176457176495%_
                                       _%rest176505%_
                                       _%hd176503%_))))
                              (_%$%else176455176474%_)))))))
                 (_%compile-inner176335%_
                  (lambda (_%pre176436%_
                           _%bind176437%_
                           _%post176438%_
                           _%body176439%_)
                    (if (null? _%pre176436%_)
                        (_%compile-bind176336%_
                         _%bind176437%_
                         _%post176438%_
                         _%body176439%_)
                        (__SRC__%
                         (list 'let
                               (reverse _%pre176436%_)
                               (_%compile-bind176336%_
                                _%bind176437%_
                                _%post176438%_
                                _%body176439%_))
                         _%stx176331%_))))
                 (_%compile-bind176336%_
                  (lambda (_%bind176432%_ _%post176433%_ _%body176434%_)
                    (__SRC__%
                     (list 'letrec
                           (reverse _%bind176432%_)
                           (_%compile-post176337%_
                            _%post176433%_
                            _%body176434%_))
                     _%stx176331%_)))
                 (_%compile-post176337%_
                  (lambda (_%post176339%_ _%body176340%_)
                    (let _%lp176342%_ ((_%rest176344%_ _%post176339%_)
                                       (_%check176345%_ '())
                                       (_%bind176346%_ '()))
                      (let* ((_%$%rest176347176359%_ _%rest176344%_)
                             (_%$%else176349176367%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (append _%check176345%_
                                               _%bind176346%_
                                               (list _%body176340%_)))
                                 _%stx176331%_)))
                             (_%$%K176351176406%_
                              (lambda (_%rest176370%_
                                       _%init176371%_
                                       _%len176372%_
                                       _%tmp176373%_)
                                (_%lp176342%_
                                 _%rest176370%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp176373%_
                                              _%len176372%_)
                                        _%stx176331%_)
                                       _%check176345%_)
                                 (let ((__tmp177922
                                        (lambda (_%hd176375%_ _%r176376%_)
                                          (let* ((_%$%hd176377176384%_
                                                  _%hd176375%_)
                                                 (_%$%E176379176388%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd176377176384%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K176380176394%_
                                                  (lambda (_%k176391%_
                                                           _%id176392%_)
                                                    (cons (list 'set!
                                                                _%id176392%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp176373%_
                              _%k176391%_))
                  _%r176376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd176377176384%_)
                                                (let ((_%$%hd176381176397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd176377176384%_)))
                                                      (_%$%tl176382176399%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd176377176384%_))))
                                                  (let* ((_%id176402%_
                                                          _%$%hd176381176397%_)
                                                         (_%k176404%_
                                                          _%$%tl176382176399%_))
                                                    (_%$%K176380176394%_
                                                     _%k176404%_
                                                     _%id176402%_)))
                                                (_%$%E176379176388%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp177922
                                    _%bind176346%_
                                    _%init176371%_))))))
                        (if (pair? _%$%rest176347176359%_)
                            (let ((_%$%hd176352176409%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest176347176359%_)))
                                  (_%$%tl176353176411%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest176347176359%_))))
                              (if (pair? _%$%hd176352176409%_)
                                  (let ((_%$%hd176354176414%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd176352176409%_)))
                                        (_%$%tl176355176416%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd176352176409%_))))
                                    (let ((_%tmp176419%_ _%$%hd176354176414%_))
                                      (if (pair? _%$%tl176355176416%_)
                                          (let ((_%$%hd176356176421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl176355176416%_)))
                                                (_%$%tl176357176423%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl176355176416%_))))
                                            (let* ((_%len176426%_
                                                    _%$%hd176356176421%_)
                                                   (_%init176428%_
                                                    _%$%tl176357176423%_)
                                                   (_%rest176430%_
                                                    _%$%tl176353176411%_))
                                              (_%$%K176351176406%_
                                               _%rest176430%_
                                               _%init176428%_
                                               _%len176426%_
                                               _%tmp176419%_)))
                                          (_%$%else176349176367%_))))
                                  (_%$%else176349176367%_)))
                            (_%$%else176349176367%_)))))))
          (__compile-let-form
           _%stx176331%_
           _%compile-simple176333%_
           _%compile-values176334%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx176082%_)
        (letrec ((_%compile-simple176084%_
                  (lambda (_%hd-ids176327%_ _%exprs176328%_ _%body176329%_)
                    (__SRC__%
                     (list 'letrec*
                           (let ((__tmp177923
                                  (map __compile-head-id _%hd-ids176327%_)))
                             (declare (not safe))
                             (##map list __tmp177923 _%exprs176328%_))
                           _%body176329%_)
                     _%stx176082%_)))
                 (_%compile-values176085%_
                  (lambda (_%hd-ids176234%_ _%exprs176235%_ _%body176236%_)
                    (let _%lp176238%_ ((_%rest176240%_ _%hd-ids176234%_)
                                       (_%exprs176241%_ _%exprs176235%_)
                                       (_%bind176242%_ '())
                                       (_%post176243%_ '()))
                      (let* ((_%$%rest176244176258%_ _%rest176240%_)
                             (_%$%else176247176266%_
                              (lambda ()
                                (_%compile-bind176086%_
                                 _%bind176242%_
                                 _%post176243%_
                                 _%body176236%_))))
                        (let ((_%$%K176252176310%_
                               (lambda (_%rest176305%_ _%hd176306%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176306%_))
                                     (let ((_%id176308%_
                                            (__SRC__0 _%hd176306%_)))
                                       (_%lp176238%_
                                        _%rest176305%_
                                        (cdr _%exprs176241%_)
                                        (cons (cons _%id176308%_ '('#!void))
                                              _%bind176242%_)
                                        (cons (list _%id176308%_
                                                    (car _%exprs176241%_))
                                              _%post176243%_)))
                                     (_%lp176238%_
                                      _%rest176305%_
                                      (cdr _%exprs176241%_)
                                      _%bind176242%_
                                      (cons (list '#f (car _%exprs176241%_))
                                            _%post176243%_)))))
                              (_%$%K176249176290%_
                               (lambda (_%rest176270%_ _%hd176271%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176271%_))
                                     (let ((_%id176274%_
                                            (__SRC__0 _%hd176271%_)))
                                       (_%lp176238%_
                                        _%rest176270%_
                                        (cdr _%exprs176241%_)
                                        (cons (cons _%id176274%_ '('#!void))
                                              _%bind176242%_)
                                        (cons (list _%id176274%_
                                                    (list 'values->list
                                                          (car _%exprs176241%_)))
                                              _%post176243%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd176271%_))
                                         (if (list? _%hd176271%_)
                                             (let* ((_%len176278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd176271%_)))
                                                    (_%tmp176280%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp176238%_
                                                _%rest176270%_
                                                (cdr _%exprs176241%_)
                                                (let ((__tmp177924
                                                       (lambda (_%id176283%_
                                                                _%r176284%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id176283%_))
                     (cons (cons (__SRC__0 _%id176283%_) '('#!void))
                           _%r176284%_)
                     _%r176284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp177924
                                                   _%bind176242%_
                                                   _%hd176271%_))
                                                (cons (cons _%tmp176280%_
                                                            (cons (car _%exprs176241%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len176278%_
                                (let ((__tmp177926
                                       (lambda (_%id176286%_ _%k176287%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id176286%_))
                                             (cons (__SRC__0 _%id176286%_)
                                                   _%k176287%_)
                                             '#f)))
                                      (__tmp177925
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len176278%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp177926
                                   _%hd176271%_
                                   __tmp177925)))))
              _%post176243%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx176082%_
                                              _%hd176271%_))
                                         (_%lp176238%_
                                          _%rest176270%_
                                          (cdr _%exprs176241%_)
                                          _%bind176242%_
                                          (cons (list '#f
                                                      (car _%exprs176241%_))
                                                _%post176243%_)))))))
                          (if (pair? _%$%rest176244176258%_)
                              (let ((_%$%tl176254176315%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest176244176258%_)))
                                    (_%$%hd176253176313%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest176244176258%_))))
                                (if (pair? _%$%hd176253176313%_)
                                    (let ((_%$%tl176256176320%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd176253176313%_)))
                                          (_%$%hd176255176318%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd176253176313%_))))
                                      (if (null? _%$%tl176256176320%_)
                                          (let ((_%hd176323%_
                                                 _%$%hd176255176318%_)
                                                (_%rest176325%_
                                                 _%$%tl176254176315%_))
                                            (_%$%K176252176310%_
                                             _%rest176325%_
                                             _%hd176323%_))
                                          (let ((_%hd176298%_
                                                 _%$%hd176253176313%_)
                                                (_%rest176300%_
                                                 _%$%tl176254176315%_))
                                            (_%$%K176249176290%_
                                             _%rest176300%_
                                             _%hd176298%_))))
                                    (let ((_%hd176298%_ _%$%hd176253176313%_)
                                          (_%rest176300%_
                                           _%$%tl176254176315%_))
                                      (_%$%K176249176290%_
                                       _%rest176300%_
                                       _%hd176298%_))))
                              (_%$%else176247176266%_)))))))
                 (_%compile-bind176086%_
                  (lambda (_%bind176230%_ _%post176231%_ _%body176232%_)
                    (__SRC__%
                     (list 'let
                           (reverse _%bind176230%_)
                           (_%compile-post176087%_
                            _%post176231%_
                            _%body176232%_))
                     _%stx176082%_)))
                 (_%compile-post176087%_
                  (lambda (_%post176089%_ _%body176090%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp177928
                                  (lambda (_%hd176092%_ _%r176093%_)
                                    (let* ((_%$%hd176094176117%_ _%hd176092%_)
                                           (_%$%E176098176121%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%$%hd176094176117%_
                                                       '([#f expr])
                                                       '([id expr])
                                                       '([tmp
                                                          expr
                                                          len
                                                          .
                                                          init])))
                                              '#!void)))
                                      (let ((_%$%K176111176215%_
                                             (lambda (_%expr176213%_)
                                               (cons _%expr176213%_
                                                     _%r176093%_)))
                                            (_%$%K176106176193%_
                                             (lambda (_%expr176190%_
                                                      _%id176191%_)
                                               (cons (__SRC__%
                                                      (list 'set!
                                                            _%id176191%_
                                                            _%expr176190%_)
                                                      _%stx176082%_)
                                                     _%r176093%_)))
                                            (_%$%K176099176160%_
                                             (lambda (_%init176125%_
                                                      _%len176126%_
                                                      _%expr176127%_
                                                      _%tmp176128%_)
                                               (cons (__SRC__%
                                                      (cons 'let
                                                            (cons (list (list _%tmp176128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%expr176127%_))
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp176128%_
                                       _%len176126%_)
                                 _%stx176082%_)
                                (map (lambda (_%hd176130%_)
                                       (let* ((_%$%hd176131176138%_
                                               _%hd176130%_)
                                              (_%$%E176133176142%_
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (error '"No clause matching"
                                                          _%$%hd176131176138%_
                                                          '([id . k])))
                                                 '#!void))
                                              (_%$%K176134176148%_
                                               (lambda (_%k176145%_
                                                        _%id176146%_)
                                                 (__SRC__%
                                                  (list 'set!
                                                        _%id176146%_
                                                        (list '##values-ref
                                                              _%tmp176128%_
                                                              _%k176145%_))
                                                  _%stx176082%_))))
                                         (if (pair? _%$%hd176131176138%_)
                                             (let ((_%$%hd176135176151%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%hd176131176138%_)))
                                                   (_%$%tl176136176153%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%hd176131176138%_))))
                                               (let* ((_%id176156%_
                                                       _%$%hd176135176151%_)
                                                      (_%k176158%_
                                                       _%$%tl176136176153%_))
                                                 (_%$%K176134176148%_
                                                  _%k176158%_
                                                  _%id176156%_)))
                                             (_%$%E176133176142%_))))
                                     _%init176125%_))))
              _%stx176082%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r176093%_))))
                                        (let* ((_%__match177788177789%_
                                                (lambda (_%$%hd176100176163%_
                                                         _%$%tl176101176165%_
                                                         _%$%hd176102176170%_
                                                         _%$%tl176103176172%_)
                                                  (let ((_%tmp176168%_
                                                         _%$%hd176100176163%_)
                                                        (_%expr176175%_
                                                         _%$%hd176102176170%_))
                                                    (_%$%E176098176121%_))))
                                               (_%__match177782177783%_
                                                (lambda (_%$%hd176100176163%_
                                                         _%$%tl176101176165%_)
                                                  (let ((_%tmp176168%_
                                                         _%$%hd176100176163%_))
                                                    (_%$%E176098176121%_)))))
                                          (if (pair? _%$%hd176094176117%_)
                                              (let ((_%$%tl176113176220%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd176094176117%_)))
                                                    (_%$%hd176112176218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd176094176117%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd176112176218%_
                                                             '#f))
                                                    (if (pair? _%$%tl176113176220%_)
                                                        (let ((_%$%tl176115176225%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl176113176220%_)))
                      (_%$%hd176114176223%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl176113176220%_))))
                  (if (null? _%$%tl176115176225%_)
                      (let ((_%expr176228%_ _%$%hd176114176223%_))
                        (_%$%K176111176215%_ _%expr176228%_))
                      (if (pair? _%$%tl176115176225%_)
                          (let ((_%$%tl176105176179%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl176115176225%_)))
                                (_%$%hd176104176177%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl176115176225%_))))
                            (let ((_%tmp176168%_ _%$%hd176112176218%_)
                                  (_%expr176175%_ _%$%hd176114176223%_)
                                  (_%len176182%_ _%$%hd176104176177%_)
                                  (_%init176184%_ _%$%tl176105176179%_))
                              (_%$%K176099176160%_
                               _%init176184%_
                               _%len176182%_
                               _%expr176175%_
                               _%tmp176168%_)))
                          (_%__match177788177789%_
                           _%$%hd176112176218%_
                           _%$%tl176113176220%_
                           _%$%hd176114176223%_
                           _%$%tl176115176225%_))))
                (_%__match177782177783%_
                 _%$%hd176112176218%_
                 _%$%tl176113176220%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (pair? _%$%tl176113176220%_)
                                                        (let ((_%$%tl176110176205%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl176113176220%_)))
                      (_%$%hd176109176203%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl176113176220%_))))
                  (if (null? _%$%tl176110176205%_)
                      (let ((_%id176201%_ _%$%hd176112176218%_)
                            (_%expr176208%_ _%$%hd176109176203%_))
                        (_%$%K176106176193%_ _%expr176208%_ _%id176201%_))
                      (if (pair? _%$%tl176110176205%_)
                          (let ((_%$%tl176105176179%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl176110176205%_)))
                                (_%$%hd176104176177%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl176110176205%_))))
                            (let ((_%tmp176168%_ _%$%hd176112176218%_)
                                  (_%expr176175%_ _%$%hd176109176203%_)
                                  (_%len176182%_ _%$%hd176104176177%_)
                                  (_%init176184%_ _%$%tl176105176179%_))
                              (_%$%K176099176160%_
                               _%init176184%_
                               _%len176182%_
                               _%expr176175%_
                               _%tmp176168%_)))
                          (_%__match177788177789%_
                           _%$%hd176112176218%_
                           _%$%tl176113176220%_
                           _%$%hd176109176203%_
                           _%$%tl176110176205%_))))
                (_%__match177782177783%_
                 _%$%hd176112176218%_
                 _%$%tl176113176220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E176098176121%_)))))))
                                 (__tmp177927 (list _%body176090%_)))
                             (declare (not safe))
                             (foldl__0
                              __tmp177928
                              __tmp177927
                              _%post176089%_)))
                     _%stx176082%_))))
          (__compile-let-form
           _%stx176082%_
           _%compile-simple176084%_
           _%compile-values176085%_))))
    (define __compile-call%
      (lambda (_%stx176042%_)
        (let* ((_%$e176044%_ _%stx176042%_)
               (_%$%$E176046176055%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176044%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176044%_))
              (let* ((_%$%$tgt176047176058%_
                      (let () (declare (not safe)) (__AST-e _%$e176044%_)))
                     (_%$%$hd176048176061%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176047176058%_)))
                     (_%$%$tl176049176064%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176047176058%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176049176064%_))
                    (let* ((_%$%$tgt176050176068%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176049176064%_)))
                           (_%$%$hd176051176071%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176050176068%_)))
                           (_%$%$tl176052176074%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176050176068%_)))
                           (_%rator176078%_ _%$%$hd176051176071%_)
                           (_%rands176080%_ _%$%$tl176052176074%_))
                      (__SRC__%
                       (cons (__compile _%rator176078%_)
                             (map __compile _%rands176080%_))
                       _%stx176042%_))
                    (_%$%$E176046176055%_)))
              (_%$%$E176046176055%_)))))
    (define __compile-ref%
      (lambda (_%stx176004%_)
        (let* ((_%$e176006%_ _%stx176004%_)
               (_%$%$E176008176017%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176006%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176006%_))
              (let* ((_%$%$tgt176009176020%_
                      (let () (declare (not safe)) (__AST-e _%$e176006%_)))
                     (_%$%$hd176010176023%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176009176020%_)))
                     (_%$%$tl176011176026%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176009176020%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176011176026%_))
                    (let* ((_%$%$tgt176012176030%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176011176026%_)))
                           (_%$%$hd176013176033%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176012176030%_)))
                           (_%$%$tl176014176036%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176012176030%_)))
                           (_%id176040%_ _%$%$hd176013176033%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176014176036%_))
                                  '())
                          (__SRC__% _%id176040%_ _%stx176004%_)
                          (_%$%$E176008176017%_)))
                    (_%$%$E176008176017%_)))
              (_%$%$E176008176017%_)))))
    (define __compile-setq%
      (lambda (_%stx175951%_)
        (let* ((_%$e175953%_ _%stx175951%_)
               (_%$%$E175955175967%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175953%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175953%_))
              (let* ((_%$%$tgt175956175970%_
                      (let () (declare (not safe)) (__AST-e _%$e175953%_)))
                     (_%$%$hd175957175973%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt175956175970%_)))
                     (_%$%$tl175958175976%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt175956175970%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl175958175976%_))
                    (let* ((_%$%$tgt175959175980%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl175958175976%_)))
                           (_%$%$hd175960175983%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt175959175980%_)))
                           (_%$%$tl175961175986%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt175959175980%_)))
                           (_%id175990%_ _%$%$hd175960175983%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl175961175986%_))
                          (let* ((_%$%$tgt175962175992%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl175961175986%_)))
                                 (_%$%$hd175963175995%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt175962175992%_)))
                                 (_%$%$tl175964175998%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt175962175992%_)))
                                 (_%expr176002%_ _%$%$hd175963175995%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl175964175998%_))
                                        '())
                                (__SRC__%
                                 (list 'set!
                                       (__SRC__% _%id175990%_ _%stx175951%_)
                                       (__compile _%expr176002%_))
                                 _%stx175951%_)
                                (_%$%$E175955175967%_)))
                          (_%$%$E175955175967%_)))
                    (_%$%$E175955175967%_)))
              (_%$%$E175955175967%_)))))
    (define __compile-if%
      (lambda (_%stx175883%_)
        (let* ((_%$e175885%_ _%stx175883%_)
               (_%$%$E175887175902%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175885%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175885%_))
              (let* ((_%$%$tgt175888175905%_
                      (let () (declare (not safe)) (__AST-e _%$e175885%_)))
                     (_%$%$hd175889175908%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt175888175905%_)))
                     (_%$%$tl175890175911%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt175888175905%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl175890175911%_))
                    (let* ((_%$%$tgt175891175915%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl175890175911%_)))
                           (_%$%$hd175892175918%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt175891175915%_)))
                           (_%$%$tl175893175921%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt175891175915%_)))
                           (_%p175925%_ _%$%$hd175892175918%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl175893175921%_))
                          (let* ((_%$%$tgt175894175927%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl175893175921%_)))
                                 (_%$%$hd175895175930%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt175894175927%_)))
                                 (_%$%$tl175896175933%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt175894175927%_)))
                                 (_%t175937%_ _%$%$hd175895175930%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl175896175933%_))
                                (let* ((_%$%$tgt175897175939%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl175896175933%_)))
                                       (_%$%$hd175898175942%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt175897175939%_)))
                                       (_%$%$tl175899175945%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt175897175939%_)))
                                       (_%f175949%_ _%$%$hd175898175942%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl175899175945%_))
                                              '())
                                      (__SRC__%
                                       (list 'if
                                             (__compile _%p175925%_)
                                             (__compile _%t175937%_)
                                             (__compile _%f175949%_))
                                       _%stx175883%_)
                                      (_%$%$E175887175902%_)))
                                (_%$%$E175887175902%_)))
                          (_%$%$E175887175902%_)))
                    (_%$%$E175887175902%_)))
              (_%$%$E175887175902%_)))))
    (define __compile-quote%
      (lambda (_%stx175845%_)
        (let* ((_%$e175847%_ _%stx175845%_)
               (_%$%$E175849175858%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175847%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175847%_))
              (let* ((_%$%$tgt175850175861%_
                      (let () (declare (not safe)) (__AST-e _%$e175847%_)))
                     (_%$%$hd175851175864%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt175850175861%_)))
                     (_%$%$tl175852175867%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt175850175861%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl175852175867%_))
                    (let* ((_%$%$tgt175853175871%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl175852175867%_)))
                           (_%$%$hd175854175874%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt175853175871%_)))
                           (_%$%$tl175855175877%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt175853175871%_)))
                           (_%e175881%_ _%$%$hd175854175874%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl175855175877%_))
                                  '())
                          (__SRC__%
                           (list 'quote
                                 (let ()
                                   (declare (not safe))
                                   (__AST->datum _%e175881%_)))
                           _%stx175845%_)
                          (_%$%$E175849175858%_)))
                    (_%$%$E175849175858%_)))
              (_%$%$E175849175858%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx175807%_)
        (let* ((_%$e175809%_ _%stx175807%_)
               (_%$%$E175811175820%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175809%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175809%_))
              (let* ((_%$%$tgt175812175823%_
                      (let () (declare (not safe)) (__AST-e _%$e175809%_)))
                     (_%$%$hd175813175826%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt175812175823%_)))
                     (_%$%$tl175814175829%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt175812175823%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl175814175829%_))
                    (let* ((_%$%$tgt175815175833%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl175814175829%_)))
                           (_%$%$hd175816175836%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt175815175833%_)))
                           (_%$%$tl175817175839%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt175815175833%_)))
                           (_%e175843%_ _%$%$hd175816175836%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl175817175839%_))
                                  '())
                          (__SRC__% (list 'quote _%e175843%_) _%stx175807%_)
                          (_%$%$E175811175820%_)))
                    (_%$%$E175811175820%_)))
              (_%$%$E175811175820%_)))))
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
