(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1770752336)
  (begin
    (define __syntax::t
      (let ((__tmp166883 (list)) (__tmp166882 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp166883
         '(e id)
         __tmp166882
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args166687%_
        (apply make-instance __syntax::t _%$args166687%_)))
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
      (let ((__tmp166885 (list __syntax::t))
            (__tmp166884 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp166885
         '()
         __tmp166884
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args166684%_
        (apply make-instance __core-form::t _%$args166684%_)))
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
      (let ((__tmp166887 (list __core-form::t))
            (__tmp166886 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp166887
         '()
         __tmp166886
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args166681%_
        (apply make-instance __core-expression::t _%$args166681%_)))
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
      (let ((__tmp166889 (list __core-form::t))
            (__tmp166888 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp166889
         '()
         __tmp166888
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args166678%_
        (apply make-instance __core-special-form::t _%$args166678%_)))
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
      (lambda (_%id166652%_)
        (let* ((_%h166654%_ __core)
               (_%key166657%_
                (let () (declare (not safe)) (__AST-e _%id166652%_)))
               (_%h166664%_
                (let ((_%$obj166661%_ _%h166654%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj166661%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj166661%_)))
                           '#t)
                      _%$obj166661%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj166661%_)))))
               (_%h166666%_ _%h166664%_))
          (declare (not safe))
          (__hash-get _%h166666%_ _%key166657%_))))
    (define __core-bound-id?__%
      (lambda (_%id166635%_ _%is?166636%_)
        (let ((_%$e166638%_ (__core-resolve _%id166635%_)))
          (if _%$e166638%_ (_%is?166636%_ _%$e166638%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id166645%_)
        (let ((_%is?166647%_ true))
          (__core-bound-id?__% _%id166645%_ _%is?166647%_))))
    (define __core-bound-id?
      (lambda _g166890_
        (let ((_g166891_ (let () (declare (not safe)) (##length _g166890_))))
          (cond ((let () (declare (not safe)) (##fx= _g166891_ 1))
                 (apply __core-bound-id?__0 _g166890_))
                ((let () (declare (not safe)) (##fx= _g166891_ 2))
                 (apply __core-bound-id?__% _g166890_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g166890_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id166590%_ _%e166591%_ _%make166592%_)
        (let* ((_%h166594%_ __core)
               (_%key166597%_ _%id166590%_)
               (_%value166600%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e166591%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e166591%_
                    (_%make166592%_ _%e166591%_ _%id166590%_)))
               (_%h166607%_
                (let ((_%$obj166604%_ _%h166594%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj166604%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj166604%_)))
                           '#t)
                      _%$obj166604%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj166604%_)))))
               (_%h166609%_ _%h166607%_))
          (declare (not safe))
          (__hash-put! _%h166609%_ _%key166597%_ _%value166600%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id166625%_ _%e166626%_)
        (let ((_%make166628%_ make-__syntax))
          (__core-bind-syntax!__% _%id166625%_ _%e166626%_ _%make166628%_))))
    (define __core-bind-syntax!
      (lambda _g166892_
        (let ((_g166893_ (let () (declare (not safe)) (##length _g166892_))))
          (cond ((let () (declare (not safe)) (##fx= _g166893_ 2))
                 (apply __core-bind-syntax!__0 _g166892_))
                ((let () (declare (not safe)) (##fx= _g166893_ 3))
                 (apply __core-bind-syntax!__% _g166892_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g166892_))))))
    (define __SRC__%
      (lambda (_%e166570%_ _%src-stx166571%_)
        (if (or (pair? _%e166570%_) (symbol? _%e166570%_))
            (let ((__tmp166894
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx166571%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx166571%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e166570%_ __tmp166894))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e166570%_ 'gerbil#AST::t))
                (let ((__tmp166896
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e166570%_ '1 '#f '#f)))
                      (__tmp166895
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e166570%_)))))
                  (declare (not safe))
                  (##make-source __tmp166896 __tmp166895))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e166570%_))))))
    (define __SRC__0
      (lambda (_%e166582%_)
        (let ((_%src-stx166584%_ '#f))
          (__SRC__% _%e166582%_ _%src-stx166584%_))))
    (define __SRC
      (lambda _g166897_
        (let ((_g166898_ (let () (declare (not safe)) (##length _g166897_))))
          (cond ((let () (declare (not safe)) (##fx= _g166898_ 1))
                 (apply __SRC__0 _g166897_))
                ((let () (declare (not safe)) (##fx= _g166898_ 2))
                 (apply __SRC__% _g166897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g166897_))))))
    (define __locat
      (lambda (_%loc166567%_)
        (if (let () (declare (not safe)) (##locat? _%loc166567%_))
            _%loc166567%_
            '#f)))
    (define __check-values
      (lambda (_%obj166562%_ _%k166563%_)
        (let ((_%count166565%_
               (if (let () (declare (not safe)) (##values? _%obj166562%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj166562%_))
                   '1)))
          (if (fx= _%count166565%_ _%k166563%_)
              '#!void
              (let ((__tmp166900
                     (if (fx< _%count166565%_ _%k166563%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp166899
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj166562%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj166562%_))
                         _%obj166562%_)))
                (declare (not safe))
                (error __tmp166900 __tmp166899 _%k166563%_))))))
    (define __compile
      (lambda (_%stx166531%_)
        (let* ((_%$e166533%_ _%stx166531%_)
               (_%$E166535166541%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166533%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166533%_))
              (let* ((_%$tgt166536166544%_
                      (let () (declare (not safe)) (__AST-e _%$e166533%_)))
                     (_%$hd166537166547%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166536166544%_)))
                     (_%$tl166538166550%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166536166544%_)))
                     (_%form166554%_ _%$hd166537166547%_)
                     (_%$e166556%_ (__core-resolve _%form166554%_)))
                (if _%$e166556%_
                    ((lambda (_%bind166559%_)
                       ((##structure-ref _%bind166559%_ '1 __syntax::t '#f)
                        _%stx166531%_))
                     _%$e166556%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx166531%_
                       _%form166554%_))))
              (_%$E166535166541%_)))))
    (define __compile-error__%
      (lambda (_%stx166518%_ _%detail166519%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx166518%_
           _%detail166519%_))))
    (define __compile-error__0
      (lambda (_%stx166524%_)
        (let ((_%detail166526%_ '#f))
          (__compile-error__% _%stx166524%_ _%detail166526%_))))
    (define __compile-error
      (lambda _g166901_
        (let ((_g166902_ (let () (declare (not safe)) (##length _g166901_))))
          (cond ((let () (declare (not safe)) (##fx= _g166902_ 1))
                 (apply __compile-error__0 _g166901_))
                ((let () (declare (not safe)) (##fx= _g166902_ 2))
                 (apply __compile-error__% _g166901_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g166901_))))))
    (define __compile-ignore%
      (lambda (_%stx166515%_) (__SRC__% ''#!void _%stx166515%_)))
    (define __compile-begin%
      (lambda (_%stx166490%_)
        (let* ((_%$e166492%_ _%stx166490%_)
               (_%$E166494166500%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166492%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166492%_))
              (let* ((_%$tgt166495166503%_
                      (let () (declare (not safe)) (__AST-e _%$e166492%_)))
                     (_%$hd166496166506%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166495166503%_)))
                     (_%$tl166497166509%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166495166503%_)))
                     (_%body166513%_ _%$tl166497166509%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body166513%_))
                 _%stx166490%_))
              (_%$E166494166500%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx166465%_)
        (let* ((_%$e166467%_ _%stx166465%_)
               (_%$E166469166475%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166467%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166467%_))
              (let* ((_%$tgt166470166478%_
                      (let () (declare (not safe)) (__AST-e _%$e166467%_)))
                     (_%$hd166471166481%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166470166478%_)))
                     (_%$tl166472166484%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166470166478%_)))
                     (_%body166488%_ _%$tl166472166484%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body166488%_)))
                 _%stx166465%_))
              (_%$E166469166475%_)))))
    (define __compile-import%
      (lambda (_%stx166440%_)
        (let* ((_%$e166442%_ _%stx166440%_)
               (_%$E166444166450%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166442%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166442%_))
              (let* ((_%$tgt166445166453%_
                      (let () (declare (not safe)) (__AST-e _%$e166442%_)))
                     (_%$hd166446166456%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166445166453%_)))
                     (_%$tl166447166459%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166445166453%_)))
                     (_%body166463%_ _%$tl166447166459%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body166463%_ '())) '()))
                 _%stx166440%_))
              (_%$E166444166450%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx166387%_)
        (let* ((_%$e166389%_ _%stx166387%_)
               (_%$E166391166403%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166389%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166389%_))
              (let* ((_%$tgt166392166406%_
                      (let () (declare (not safe)) (__AST-e _%$e166389%_)))
                     (_%$hd166393166409%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166392166406%_)))
                     (_%$tl166394166412%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166392166406%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166394166412%_))
                    (let* ((_%$tgt166395166416%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166394166412%_)))
                           (_%$hd166396166419%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166395166416%_)))
                           (_%$tl166397166422%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166395166416%_)))
                           (_%ann166426%_ _%$hd166396166419%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl166397166422%_))
                          (let* ((_%$tgt166398166428%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166397166422%_)))
                                 (_%$hd166399166431%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt166398166428%_)))
                                 (_%$tl166400166434%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt166398166428%_)))
                                 (_%expr166438%_ _%$hd166399166431%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl166400166434%_))
                                        '())
                                (__compile _%expr166438%_)
                                (_%$E166391166403%_)))
                          (_%$E166391166403%_)))
                    (_%$E166391166403%_)))
              (_%$E166391166403%_)))))
    (define __compile-define-values%
      (lambda (_%stx166278%_)
        (let* ((_%$e166280%_ _%stx166278%_)
               (_%$E166282166294%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166280%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166280%_))
              (let* ((_%$tgt166283166297%_
                      (let () (declare (not safe)) (__AST-e _%$e166280%_)))
                     (_%$hd166284166300%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166283166297%_)))
                     (_%$tl166285166303%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166283166297%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166285166303%_))
                    (let* ((_%$tgt166286166307%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166285166303%_)))
                           (_%$hd166287166310%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166286166307%_)))
                           (_%$tl166288166313%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166286166307%_)))
                           (_%hd166317%_ _%$hd166287166310%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl166288166313%_))
                          (let* ((_%$tgt166289166319%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166288166313%_)))
                                 (_%$hd166290166322%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt166289166319%_)))
                                 (_%$tl166291166325%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt166289166319%_)))
                                 (_%expr166329%_ _%$hd166290166322%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl166291166325%_))
                                        '())
                                (let* ((_%$e166331%_ _%hd166317%_)
                                       (_%$E166333166374%_
                                        (lambda ()
                                          (let ((_%$E166334166359%_
                                                 (lambda ()
                                                   (let* ((_%$E166335166346%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e166331%_))))
                  (_%ids166349%_ _%hd166317%_)
                  (_%len166351%_ (length _%ids166349%_))
                  (_%tmp166353%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp166353%_
                                       (cons (__compile _%expr166329%_) '())))
                           _%stx166278%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp166353%_
                                             (cons _%len166351%_ '())))
                                 _%stx166278%_)
                                (let ((__tmp166903
                                       (let ((__tmp166905
                                              (lambda (_%id166356%_
                                                       _%k166357%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id166356%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id166356%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp166353%_
                                           (cons _%k166357%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx166278%_)
                                                    '#f)))
                                             (__tmp166904
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len166351%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp166905
                                          _%ids166349%_
                                          __tmp166904))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp166903)))))
              _%stx166278%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e166331%_))
                                                (let* ((_%$tgt166336166362%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e166331%_)))
                                                       (_%$hd166337166365%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt166336166362%_)))
                                                       (_%$tl166338166368%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt166336166362%_)))
                                                       (_%id166372%_
                                                        _%$hd166337166365%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl166338166368%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id166372%_)
                           (cons (__compile _%expr166329%_) '())))
               _%stx166278%_)
              (_%$E166334166359%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E166334166359%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e166331%_))
                                      (let* ((_%$tgt166339166377%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e166331%_)))
                                             (_%$hd166340166380%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt166339166377%_)))
                                             (_%$tl166341166383%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt166339166377%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd166340166380%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl166341166383%_))
                                                        '())
                                                (__compile _%expr166329%_)
                                                (_%$E166333166374%_))
                                            (_%$E166333166374%_)))
                                      (_%$E166333166374%_)))
                                (_%$E166282166294%_)))
                          (_%$E166282166294%_)))
                    (_%$E166282166294%_)))
              (_%$E166282166294%_)))))
    (define __compile-head-id
      (lambda (_%e166276%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e166276%_))
             _%e166276%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd166233%_)
        (let _%recur166235%_ ((_%rest166237%_ _%hd166233%_))
          (let* ((_%$e166239%_ _%rest166237%_)
                 (_%$E166241166259%_
                  (lambda ()
                    (let ((_%$E166242166256%_
                           (lambda ()
                             (let* ((_%$E166243166251%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e166239%_))))
                                    (_%tail166254%_ _%$e166239%_))
                               (__compile-head-id _%tail166254%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e166239%_))
                                  '())
                          '()
                          (_%$E166242166256%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e166239%_))
                (let* ((_%$tgt166244166262%_
                        (let () (declare (not safe)) (__AST-e _%$e166239%_)))
                       (_%$hd166245166265%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt166244166262%_)))
                       (_%$tl166246166268%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt166244166262%_)))
                       (_%hd166272%_ _%$hd166245166265%_)
                       (_%rest166274%_ _%$tl166246166268%_))
                  (cons (__compile-head-id _%hd166272%_)
                        (_%recur166235%_ _%rest166274%_)))
                (_%$E166241166259%_))))))
    (define __compile-lambda%
      (lambda (_%stx166180%_)
        (let* ((_%$e166182%_ _%stx166180%_)
               (_%$E166184166196%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e166182%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e166182%_))
              (let* ((_%$tgt166185166199%_
                      (let () (declare (not safe)) (__AST-e _%$e166182%_)))
                     (_%$hd166186166202%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt166185166199%_)))
                     (_%$tl166187166205%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt166185166199%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl166187166205%_))
                    (let* ((_%$tgt166188166209%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl166187166205%_)))
                           (_%$hd166189166212%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt166188166209%_)))
                           (_%$tl166190166215%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt166188166209%_)))
                           (_%hd166219%_ _%$hd166189166212%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl166190166215%_))
                          (let* ((_%$tgt166191166221%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl166190166215%_)))
                                 (_%$hd166192166224%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt166191166221%_)))
                                 (_%$tl166193166227%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt166191166221%_)))
                                 (_%body166231%_ _%$hd166192166224%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl166193166227%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd166219%_)
                                             (cons (__compile _%body166231%_)
                                                   '())))
                                 _%stx166180%_)
                                (_%$E166184166196%_)))
                          (_%$E166184166196%_)))
                    (_%$E166184166196%_)))
              (_%$E166184166196%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx165945%_)
        (letrec ((_%variadic?165947%_
                  (lambda (_%hd166145%_)
                    (let* ((_%$e166147%_ _%hd166145%_)
                           (_%$E166149166165%_
                            (lambda ()
                              (let ((_%$E166150166162%_
                                     (lambda ()
                                       (let ((_%$E166151166159%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e166147%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e166147%_))
                                            '())
                                    '#f
                                    (_%$E166150166162%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e166147%_))
                          (let* ((_%$tgt166152166168%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e166147%_)))
                                 (_%$hd166153166171%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt166152166168%_)))
                                 (_%$tl166154166174%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt166152166168%_)))
                                 (_%rest166178%_ _%$tl166154166174%_))
                            (_%variadic?165947%_ _%rest166178%_))
                          (_%$E166149166165%_)))))
                 (_%arity165948%_
                  (lambda (_%hd166083%_)
                    (let _%lp166085%_ ((_%rest166087%_ _%hd166083%_)
                                       (_%k166088%_ '0))
                      (let* ((_%$e166090%_ _%rest166087%_)
                             (_%$E166092166103%_
                              (lambda ()
                                (let ((_%$E166093166100%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e166090%_)))))
                                  _%k166088%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e166090%_))
                            (let* ((_%$tgt166094166106%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e166090%_)))
                                   (_%$hd166095166109%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt166094166106%_)))
                                   (_%$tl166096166112%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt166094166106%_)))
                                   (_%rest166116%_ _%$tl166096166112%_))
                              (_%lp166085%_
                               _%rest166116%_
                               (let ((_%x166118%_ _%k166088%_))
                                 (if (fixnum? _%x166118%_)
                                     (let ((_%x166123%_ _%x166118%_))
                                       (declare (not safe))
                                       (__fx1+ _%x166123%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x166118%_)
                                       '#!void)))))
                            (_%$E166092166103%_))))))
                 (_%generate165949%_
                  (lambda (_%rest166010%_ _%args166011%_ _%len166012%_)
                    (let* ((_%$e166014%_ _%rest166010%_)
                           (_%$E166016166027%_
                            (lambda ()
                              (let ((_%$E166017166024%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e166014%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args166011%_ '())))
                                 _%stx165945%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e166014%_))
                          (let* ((_%$tgt166018166030%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e166014%_)))
                                 (_%$hd166019166033%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt166018166030%_)))
                                 (_%$tl166020166036%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt166018166030%_)))
                                 (_%clause166040%_ _%$hd166019166033%_)
                                 (_%rest166042%_ _%$tl166020166036%_)
                                 (_%$e166044%_ _%clause166040%_)
                                 (_%$E166046166055%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e166044%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e166044%_))
                                (let* ((_%$tgt166047166058%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e166044%_)))
                                       (_%$hd166048166061%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt166047166058%_)))
                                       (_%$tl166049166064%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt166047166058%_)))
                                       (_%hd166068%_ _%$hd166048166061%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl166049166064%_))
                                      (let* ((_%$tgt166050166070%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl166049166064%_)))
                                             (_%$hd166051166073%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt166050166070%_)))
                                             (_%$tl166052166076%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt166050166070%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl166052166076%_))
                                                    '())
                                            (let ((_%clen166080%_
                                                   (_%arity165948%_
                                                    _%hd166068%_))
                                                  (_%cmp166081%_
                                                   (if (_%variadic?165947%_
                                                        _%hd166068%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp166081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len166012%_ (cons _%clen166080%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause166040%_))
                                      (cons _%args166011%_ '())))
                          _%stx165945%_)
                         (cons (_%generate165949%_
                                _%rest166042%_
                                _%args166011%_
                                _%len166012%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx165945%_))
                                            (_%$E166046166055%_)))
                                      (_%$E166046166055%_)))
                                (_%$E166046166055%_)))
                          (_%$E166016166027%_))))))
          (let* ((_%$e165951%_ _%stx165945%_)
                 (_%$E165953165985%_
                  (lambda ()
                    (let ((_%$E165954165967%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e165951%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e165951%_))
                          (let* ((_%$tgt165955165970%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e165951%_)))
                                 (_%$hd165956165973%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt165955165970%_)))
                                 (_%$tl165957165976%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt165955165970%_)))
                                 (_%clauses165980%_ _%$tl165957165976%_))
                            (let ((_%args165982%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx165945%_))
                                  (_%len165983%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx165945%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args165982%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len165983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args165982%_ '()))
                                         _%stx165945%_)
                                        '()))
                            '())
                      (cons (_%generate165949%_
                             _%clauses165980%_
                             _%args165982%_
                             _%len165983%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx165945%_)
                                                 '())))
                               _%stx165945%_)))
                          (_%$E165954165967%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e165951%_))
                (let* ((_%$tgt165958165988%_
                        (let () (declare (not safe)) (__AST-e _%$e165951%_)))
                       (_%$hd165959165991%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt165958165988%_)))
                       (_%$tl165960165994%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt165958165988%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl165960165994%_))
                      (let* ((_%$tgt165961165998%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl165960165994%_)))
                             (_%$hd165962166001%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt165961165998%_)))
                             (_%$tl165963166004%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt165961165998%_)))
                             (_%clause166008%_ _%$hd165962166001%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl165963166004%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause166008%_))
                            (_%$E165953165985%_)))
                      (_%$E165953165985%_)))
                (_%$E165953165985%_))))))
    (define __compile-let-form
      (lambda (_%stx165714%_ _%compile-simple165715%_ _%compile-values165716%_)
        (letrec ((_%simple-bind?165718%_
                  (lambda (_%hd165903%_)
                    (let* ((_%hd165904165914%_ _%hd165903%_)
                           (_%else165907165922%_ (lambda () '#f)))
                      (let ((_%K165910165935%_ (lambda (_%id165933%_) '#t))
                            (_%K165909165927%_ (lambda () '#t)))
                        (let ((_%try-match165906165930%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd165904165914%_ '#f))
                                     (_%K165909165927%_)
                                     (_%else165907165922%_)))))
                          (if (pair? _%hd165904165914%_)
                              (let ((_%tl165912165940%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd165904165914%_)))
                                    (_%hd165911165938%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd165904165914%_))))
                                (if (null? _%tl165912165940%_)
                                    (let ((_%id165943%_ _%hd165911165938%_))
                                      (_%K165910165935%_ _%id165943%_))
                                    (_%try-match165906165930%_)))
                              (_%try-match165906165930%_)))))))
                 (_%car-e165719%_
                  (lambda (_%hd165901%_)
                    (if (pair? _%hd165901%_)
                        (let () (declare (not safe)) (##car _%hd165901%_))
                        _%hd165901%_))))
          (let* ((_%$e165721%_ _%stx165714%_)
                 (_%$E165723165866%_
                  (lambda ()
                    (let ((_%$E165724165746%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e165721%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e165721%_))
                          (let* ((_%$tgt165725165749%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e165721%_)))
                                 (_%$hd165726165752%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt165725165749%_)))
                                 (_%$tl165727165755%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt165725165749%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl165727165755%_))
                                (let* ((_%$tgt165728165759%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl165727165755%_)))
                                       (_%$hd165729165762%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt165728165759%_)))
                                       (_%$tl165730165765%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt165728165759%_)))
                                       (_%hd165769%_ _%$hd165729165762%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl165730165765%_))
                                      (let* ((_%$tgt165731165771%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl165730165765%_)))
                                             (_%$hd165732165774%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt165731165771%_)))
                                             (_%$tl165733165777%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt165731165771%_)))
                                             (_%body165781%_
                                              _%$hd165732165774%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl165733165777%_))
                                                    '())
                                            (let* ((_%hd-ids165821%_
                                                    (map (lambda (_%bind165783%_)
                                                           (let* ((_%$e165785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind165783%_)
                          (_%$E165787165796%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e165785%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e165785%_))
                         (let* ((_%$tgt165788165799%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e165785%_)))
                                (_%$hd165789165802%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt165788165799%_)))
                                (_%$tl165790165805%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt165788165799%_)))
                                (_%ids165809%_ _%$hd165789165802%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl165790165805%_))
                               (let* ((_%$tgt165791165811%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl165790165805%_)))
                                      (_%$hd165792165814%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt165791165811%_)))
                                      (_%$tl165793165817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt165791165811%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl165793165817%_))
                                             '())
                                     _%ids165809%_
                                     (_%$E165787165796%_)))
                               (_%$E165787165796%_)))
                         (_%$E165787165796%_))))
                 _%hd165769%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs165861%_
                                                    (map (lambda (_%bind165823%_)
                                                           (let* ((_%$e165825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind165823%_)
                          (_%$E165827165836%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e165825%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e165825%_))
                         (let* ((_%$tgt165828165839%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e165825%_)))
                                (_%$hd165829165842%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt165828165839%_)))
                                (_%$tl165830165845%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt165828165839%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl165830165845%_))
                               (let* ((_%$tgt165831165849%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl165830165845%_)))
                                      (_%$hd165832165852%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt165831165849%_)))
                                      (_%$tl165833165855%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt165831165849%_)))
                                      (_%expr165859%_ _%$hd165832165852%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl165833165855%_))
                                             '())
                                     (__compile _%expr165859%_)
                                     (_%$E165827165836%_)))
                               (_%$E165827165836%_)))
                         (_%$E165827165836%_))))
                 _%hd165769%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body165863%_
                                                    (__compile
                                                     _%body165781%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?165718%_
                                                     _%hd-ids165821%_))
                                                  (_%compile-simple165715%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e165719%_
                                                            _%hd-ids165821%_))
                                                   _%exprs165861%_
                                                   _%body165863%_)
                                                  (_%compile-values165716%_
                                                   _%hd-ids165821%_
                                                   _%exprs165861%_
                                                   _%body165863%_)))
                                            (_%$E165724165746%_)))
                                      (_%$E165724165746%_)))
                                (_%$E165724165746%_)))
                          (_%$E165724165746%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e165721%_))
                (let* ((_%$tgt165734165869%_
                        (let () (declare (not safe)) (__AST-e _%$e165721%_)))
                       (_%$hd165735165872%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt165734165869%_)))
                       (_%$tl165736165875%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt165734165869%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl165736165875%_))
                      (let* ((_%$tgt165737165879%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl165736165875%_)))
                             (_%$hd165738165882%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt165737165879%_)))
                             (_%$tl165739165885%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt165737165879%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd165738165882%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl165739165885%_))
                                (let* ((_%$tgt165740165889%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl165739165885%_)))
                                       (_%$hd165741165892%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt165740165889%_)))
                                       (_%$tl165742165895%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt165740165889%_)))
                                       (_%body165899%_ _%$hd165741165892%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl165742165895%_))
                                              '())
                                      (__compile _%body165899%_)
                                      (_%$E165723165866%_)))
                                (_%$E165723165866%_))
                            (_%$E165723165866%_)))
                      (_%$E165723165866%_)))
                (_%$E165723165866%_))))))
    (define __compile-let-values%
      (lambda (_%stx165526%_)
        (letrec ((_%compile-simple165528%_
                  (lambda (_%hd-ids165710%_ _%exprs165711%_ _%body165712%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp166906
                                        (map __compile-head-id
                                             _%hd-ids165710%_)))
                                   (declare (not safe))
                                   (##map list __tmp166906 _%exprs165711%_))
                                 (cons _%body165712%_ '())))
                     _%stx165526%_)))
                 (_%compile-values165529%_
                  (lambda (_%hd-ids165625%_ _%exprs165626%_ _%body165627%_)
                    (let _%lp165629%_ ((_%rest165631%_ _%hd-ids165625%_)
                                       (_%exprs165632%_ _%exprs165626%_)
                                       (_%bind165633%_ '())
                                       (_%post165634%_ '()))
                      (let* ((_%rest165635165649%_ _%rest165631%_)
                             (_%else165638165657%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind165633%_)
                                             (cons (_%compile-post165530%_
                                                    _%post165634%_
                                                    _%body165627%_)
                                                   '())))
                                 _%stx165526%_))))
                        (let ((_%K165643165693%_
                               (lambda (_%rest165690%_ _%id165691%_)
                                 (_%lp165629%_
                                  _%rest165690%_
                                  (cdr _%exprs165632%_)
                                  (cons (cons (__compile-head-id _%id165691%_)
                                              (cons (car _%exprs165632%_) '()))
                                        _%bind165633%_)
                                  _%post165634%_)))
                              (_%K165640165675%_
                               (lambda (_%rest165661%_ _%hd165662%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd165662%_))
                                     (_%lp165629%_
                                      _%rest165661%_
                                      (cdr _%exprs165632%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd165662%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs165632%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind165633%_)
                                      _%post165634%_)
                                     (if (list? _%hd165662%_)
                                         (let* ((_%len165666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd165662%_)))
                                                (_%tmp165668%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp165629%_
                                            _%rest165661%_
                                            (cdr _%exprs165632%_)
                                            (cons (cons _%tmp165668%_
                                                        (cons (car _%exprs165632%_)
                                                              '()))
                                                  _%bind165633%_)
                                            (cons (cons _%tmp165668%_
                                                        (cons _%len165666%_
                                                              (let ((__tmp166908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id165671%_ _%k165672%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id165671%_))
                                   (cons (__SRC__0 _%id165671%_) _%k165672%_)
                                   '#f)))
                            (__tmp166907
                             (let ()
                               (declare (not safe))
                               (##iota _%len165666%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp166908 _%hd165662%_ __tmp166907))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post165634%_)))
                                         (__compile-error__%
                                          _%stx165526%_
                                          _%hd165662%_))))))
                          (if (pair? _%rest165635165649%_)
                              (let ((_%tl165645165698%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest165635165649%_)))
                                    (_%hd165644165696%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest165635165649%_))))
                                (if (pair? _%hd165644165696%_)
                                    (let ((_%tl165647165703%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd165644165696%_)))
                                          (_%hd165646165701%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd165644165696%_))))
                                      (if (null? _%tl165647165703%_)
                                          (let ((_%id165706%_
                                                 _%hd165646165701%_)
                                                (_%rest165708%_
                                                 _%tl165645165698%_))
                                            (_%K165643165693%_
                                             _%rest165708%_
                                             _%id165706%_))
                                          (let ((_%hd165683%_
                                                 _%hd165644165696%_)
                                                (_%rest165685%_
                                                 _%tl165645165698%_))
                                            (_%K165640165675%_
                                             _%rest165685%_
                                             _%hd165683%_))))
                                    (let ((_%hd165683%_ _%hd165644165696%_)
                                          (_%rest165685%_ _%tl165645165698%_))
                                      (_%K165640165675%_
                                       _%rest165685%_
                                       _%hd165683%_))))
                              (_%else165638165657%_)))))))
                 (_%compile-post165530%_
                  (lambda (_%post165532%_ _%body165533%_)
                    (let _%lp165535%_ ((_%rest165537%_ _%post165532%_)
                                       (_%check165538%_ '())
                                       (_%bind165539%_ '()))
                      (let* ((_%rest165540165552%_ _%rest165537%_)
                             (_%else165542165560%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp166909
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind165539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body165533%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx165526%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp166909
                                          _%check165538%_)))
                                 _%stx165526%_)))
                             (_%K165544165599%_
                              (lambda (_%rest165563%_
                                       _%init165564%_
                                       _%len165565%_
                                       _%tmp165566%_)
                                (_%lp165535%_
                                 _%rest165563%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp165566%_
                                                    (cons _%len165565%_ '())))
                                        _%stx165526%_)
                                       _%check165538%_)
                                 (let ((__tmp166910
                                        (lambda (_%hd165568%_ _%r165569%_)
                                          (let* ((_%hd165570165577%_
                                                  _%hd165568%_)
                                                 (_%E165572165581%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd165570165577%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K165573165587%_
                                                  (lambda (_%k165584%_
                                                           _%id165585%_)
                                                    (cons (cons _%id165585%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp165566%_
                                          (cons _%k165584%_ '())))
                              '()))
                  _%r165569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd165570165577%_)
                                                (let ((_%hd165574165590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd165570165577%_)))
                                                      (_%tl165575165592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd165570165577%_))))
                                                  (let* ((_%id165595%_
                                                          _%hd165574165590%_)
                                                         (_%k165597%_
                                                          _%tl165575165592%_))
                                                    (_%K165573165587%_
                                                     _%k165597%_
                                                     _%id165595%_)))
                                                (_%E165572165581%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp166910
                                    _%bind165539%_
                                    _%init165564%_))))))
                        (if (pair? _%rest165540165552%_)
                            (let ((_%hd165545165602%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest165540165552%_)))
                                  (_%tl165546165604%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest165540165552%_))))
                              (if (pair? _%hd165545165602%_)
                                  (let ((_%hd165547165607%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd165545165602%_)))
                                        (_%tl165548165609%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd165545165602%_))))
                                    (let ((_%tmp165612%_ _%hd165547165607%_))
                                      (if (pair? _%tl165548165609%_)
                                          (let ((_%hd165549165614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl165548165609%_)))
                                                (_%tl165550165616%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl165548165609%_))))
                                            (let* ((_%len165619%_
                                                    _%hd165549165614%_)
                                                   (_%init165621%_
                                                    _%tl165550165616%_)
                                                   (_%rest165623%_
                                                    _%tl165546165604%_))
                                              (_%K165544165599%_
                                               _%rest165623%_
                                               _%init165621%_
                                               _%len165619%_
                                               _%tmp165612%_)))
                                          (_%else165542165560%_))))
                                  (_%else165542165560%_)))
                            (_%else165542165560%_)))))))
          (__compile-let-form
           _%stx165526%_
           _%compile-simple165528%_
           _%compile-values165529%_))))
    (define __compile-letrec-values%
      (lambda (_%stx165323%_)
        (letrec ((_%compile-simple165325%_
                  (lambda (_%hd-ids165522%_ _%exprs165523%_ _%body165524%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp166911
                                        (map __compile-head-id
                                             _%hd-ids165522%_)))
                                   (declare (not safe))
                                   (##map list __tmp166911 _%exprs165523%_))
                                 (cons _%body165524%_ '())))
                     _%stx165323%_)))
                 (_%compile-values165326%_
                  (lambda (_%hd-ids165433%_ _%exprs165434%_ _%body165435%_)
                    (let _%lp165437%_ ((_%rest165439%_ _%hd-ids165433%_)
                                       (_%exprs165440%_ _%exprs165434%_)
                                       (_%pre165441%_ '())
                                       (_%bind165442%_ '())
                                       (_%post165443%_ '()))
                      (let* ((_%rest165444165458%_ _%rest165439%_)
                             (_%else165447165466%_
                              (lambda ()
                                (_%compile-inner165327%_
                                 _%pre165441%_
                                 _%bind165442%_
                                 _%post165443%_
                                 _%body165435%_))))
                        (let ((_%K165452165505%_
                               (lambda (_%rest165502%_ _%id165503%_)
                                 (_%lp165437%_
                                  _%rest165502%_
                                  (cdr _%exprs165440%_)
                                  _%pre165441%_
                                  (cons (cons (__compile-head-id _%id165503%_)
                                              (cons (car _%exprs165440%_) '()))
                                        _%bind165442%_)
                                  _%post165443%_)))
                              (_%K165449165487%_
                               (lambda (_%rest165470%_ _%hd165471%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd165471%_))
                                     (_%lp165437%_
                                      _%rest165470%_
                                      (cdr _%exprs165440%_)
                                      _%pre165441%_
                                      (cons (cons (__compile-head-id
                                                   _%hd165471%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs165440%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind165442%_)
                                      _%post165443%_)
                                     (if (list? _%hd165471%_)
                                         (let* ((_%len165475%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd165471%_)))
                                                (_%tmp165477%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp165437%_
                                            _%rest165470%_
                                            (cdr _%exprs165440%_)
                                            (let ((__tmp166912
                                                   (lambda (_%id165480%_
                                                            _%r165481%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id165480%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id165480%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r165481%_)
                 _%r165481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp166912
                                               _%pre165441%_
                                               _%hd165471%_))
                                            (cons (cons _%tmp165477%_
                                                        (cons (car _%exprs165440%_)
                                                              '()))
                                                  _%bind165442%_)
                                            (cons (cons _%tmp165477%_
                                                        (cons _%len165475%_
                                                              (let ((__tmp166914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id165483%_ _%k165484%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id165483%_))
                                   (cons (__SRC__0 _%id165483%_) _%k165484%_)
                                   '#f)))
                            (__tmp166913
                             (let ()
                               (declare (not safe))
                               (##iota _%len165475%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp166914 _%hd165471%_ __tmp166913))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post165443%_)))
                                         (__compile-error__%
                                          _%stx165323%_
                                          _%hd165471%_))))))
                          (if (pair? _%rest165444165458%_)
                              (let ((_%tl165454165510%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest165444165458%_)))
                                    (_%hd165453165508%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest165444165458%_))))
                                (if (pair? _%hd165453165508%_)
                                    (let ((_%tl165456165515%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd165453165508%_)))
                                          (_%hd165455165513%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd165453165508%_))))
                                      (if (null? _%tl165456165515%_)
                                          (let ((_%id165518%_
                                                 _%hd165455165513%_)
                                                (_%rest165520%_
                                                 _%tl165454165510%_))
                                            (_%K165452165505%_
                                             _%rest165520%_
                                             _%id165518%_))
                                          (let ((_%hd165495%_
                                                 _%hd165453165508%_)
                                                (_%rest165497%_
                                                 _%tl165454165510%_))
                                            (_%K165449165487%_
                                             _%rest165497%_
                                             _%hd165495%_))))
                                    (let ((_%hd165495%_ _%hd165453165508%_)
                                          (_%rest165497%_ _%tl165454165510%_))
                                      (_%K165449165487%_
                                       _%rest165497%_
                                       _%hd165495%_))))
                              (_%else165447165466%_)))))))
                 (_%compile-inner165327%_
                  (lambda (_%pre165428%_
                           _%bind165429%_
                           _%post165430%_
                           _%body165431%_)
                    (if (null? _%pre165428%_)
                        (_%compile-bind165328%_
                         _%bind165429%_
                         _%post165430%_
                         _%body165431%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre165428%_)
                                     (cons (_%compile-bind165328%_
                                            _%bind165429%_
                                            _%post165430%_
                                            _%body165431%_)
                                           '())))
                         _%stx165323%_))))
                 (_%compile-bind165328%_
                  (lambda (_%bind165424%_ _%post165425%_ _%body165426%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind165424%_)
                                 (cons (_%compile-post165329%_
                                        _%post165425%_
                                        _%body165426%_)
                                       '())))
                     _%stx165323%_)))
                 (_%compile-post165329%_
                  (lambda (_%post165331%_ _%body165332%_)
                    (let _%lp165334%_ ((_%rest165336%_ _%post165331%_)
                                       (_%check165337%_ '())
                                       (_%bind165338%_ '()))
                      (let* ((_%rest165339165351%_ _%rest165336%_)
                             (_%else165341165359%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp166915
                                              (let ((__tmp166916
                                                     (cons _%body165332%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp166916
                                                 _%bind165338%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp166915
                                          _%check165337%_)))
                                 _%stx165323%_)))
                             (_%K165343165398%_
                              (lambda (_%rest165362%_
                                       _%init165363%_
                                       _%len165364%_
                                       _%tmp165365%_)
                                (_%lp165334%_
                                 _%rest165362%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp165365%_
                                                    (cons _%len165364%_ '())))
                                        _%stx165323%_)
                                       _%check165337%_)
                                 (let ((__tmp166917
                                        (lambda (_%hd165367%_ _%r165368%_)
                                          (let* ((_%hd165369165376%_
                                                  _%hd165367%_)
                                                 (_%E165371165380%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd165369165376%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K165372165386%_
                                                  (lambda (_%k165383%_
                                                           _%id165384%_)
                                                    (cons (cons 'set!
                                                                (cons _%id165384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp165365%_
                                                (cons _%k165383%_ '())))
                                    '())))
                  _%r165368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd165369165376%_)
                                                (let ((_%hd165373165389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd165369165376%_)))
                                                      (_%tl165374165391%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd165369165376%_))))
                                                  (let* ((_%id165394%_
                                                          _%hd165373165389%_)
                                                         (_%k165396%_
                                                          _%tl165374165391%_))
                                                    (_%K165372165386%_
                                                     _%k165396%_
                                                     _%id165394%_)))
                                                (_%E165371165380%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp166917
                                    _%bind165338%_
                                    _%init165363%_))))))
                        (if (pair? _%rest165339165351%_)
                            (let ((_%hd165344165401%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest165339165351%_)))
                                  (_%tl165345165403%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest165339165351%_))))
                              (if (pair? _%hd165344165401%_)
                                  (let ((_%hd165346165406%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd165344165401%_)))
                                        (_%tl165347165408%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd165344165401%_))))
                                    (let ((_%tmp165411%_ _%hd165346165406%_))
                                      (if (pair? _%tl165347165408%_)
                                          (let ((_%hd165348165413%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl165347165408%_)))
                                                (_%tl165349165415%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl165347165408%_))))
                                            (let* ((_%len165418%_
                                                    _%hd165348165413%_)
                                                   (_%init165420%_
                                                    _%tl165349165415%_)
                                                   (_%rest165422%_
                                                    _%tl165345165403%_))
                                              (_%K165343165398%_
                                               _%rest165422%_
                                               _%init165420%_
                                               _%len165418%_
                                               _%tmp165411%_)))
                                          (_%else165341165359%_))))
                                  (_%else165341165359%_)))
                            (_%else165341165359%_)))))))
          (__compile-let-form
           _%stx165323%_
           _%compile-simple165325%_
           _%compile-values165326%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx165074%_)
        (letrec ((_%compile-simple165076%_
                  (lambda (_%hd-ids165319%_ _%exprs165320%_ _%body165321%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp166918
                                        (map __compile-head-id
                                             _%hd-ids165319%_)))
                                   (declare (not safe))
                                   (##map list __tmp166918 _%exprs165320%_))
                                 (cons _%body165321%_ '())))
                     _%stx165074%_)))
                 (_%compile-values165077%_
                  (lambda (_%hd-ids165226%_ _%exprs165227%_ _%body165228%_)
                    (let _%lp165230%_ ((_%rest165232%_ _%hd-ids165226%_)
                                       (_%exprs165233%_ _%exprs165227%_)
                                       (_%bind165234%_ '())
                                       (_%post165235%_ '()))
                      (let* ((_%rest165236165250%_ _%rest165232%_)
                             (_%else165239165258%_
                              (lambda ()
                                (_%compile-bind165078%_
                                 _%bind165234%_
                                 _%post165235%_
                                 _%body165228%_))))
                        (let ((_%K165244165302%_
                               (lambda (_%rest165297%_ _%hd165298%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd165298%_))
                                     (let ((_%id165300%_
                                            (__SRC__0 _%hd165298%_)))
                                       (_%lp165230%_
                                        _%rest165297%_
                                        (cdr _%exprs165233%_)
                                        (cons (cons _%id165300%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind165234%_)
                                        (cons (cons _%id165300%_
                                                    (cons (car _%exprs165233%_)
                                                          '()))
                                              _%post165235%_)))
                                     (_%lp165230%_
                                      _%rest165297%_
                                      (cdr _%exprs165233%_)
                                      _%bind165234%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs165233%_)
                                                        '()))
                                            _%post165235%_)))))
                              (_%K165241165282%_
                               (lambda (_%rest165262%_ _%hd165263%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd165263%_))
                                     (let ((_%id165266%_
                                            (__SRC__0 _%hd165263%_)))
                                       (_%lp165230%_
                                        _%rest165262%_
                                        (cdr _%exprs165233%_)
                                        (cons (cons _%id165266%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind165234%_)
                                        (cons (cons _%id165266%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs165233%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post165235%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd165263%_))
                                         (if (list? _%hd165263%_)
                                             (let* ((_%len165270%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd165263%_)))
                                                    (_%tmp165272%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp165230%_
                                                _%rest165262%_
                                                (cdr _%exprs165233%_)
                                                (let ((__tmp166919
                                                       (lambda (_%id165275%_
                                                                _%r165276%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id165275%_))
                     (cons (cons (__SRC__0 _%id165275%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r165276%_)
                     _%r165276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp166919
                                                   _%bind165234%_
                                                   _%hd165263%_))
                                                (cons (cons _%tmp165272%_
                                                            (cons (car _%exprs165233%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len165270%_
                                (let ((__tmp166921
                                       (lambda (_%id165278%_ _%k165279%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id165278%_))
                                             (cons (__SRC__0 _%id165278%_)
                                                   _%k165279%_)
                                             '#f)))
                                      (__tmp166920
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len165270%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp166921
                                   _%hd165263%_
                                   __tmp166920)))))
              _%post165235%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx165074%_
                                              _%hd165263%_))
                                         (_%lp165230%_
                                          _%rest165262%_
                                          (cdr _%exprs165233%_)
                                          _%bind165234%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs165233%_)
                                                            '()))
                                                _%post165235%_)))))))
                          (if (pair? _%rest165236165250%_)
                              (let ((_%tl165246165307%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest165236165250%_)))
                                    (_%hd165245165305%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest165236165250%_))))
                                (if (pair? _%hd165245165305%_)
                                    (let ((_%tl165248165312%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd165245165305%_)))
                                          (_%hd165247165310%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd165245165305%_))))
                                      (if (null? _%tl165248165312%_)
                                          (let ((_%hd165315%_
                                                 _%hd165247165310%_)
                                                (_%rest165317%_
                                                 _%tl165246165307%_))
                                            (_%K165244165302%_
                                             _%rest165317%_
                                             _%hd165315%_))
                                          (let ((_%hd165290%_
                                                 _%hd165245165305%_)
                                                (_%rest165292%_
                                                 _%tl165246165307%_))
                                            (_%K165241165282%_
                                             _%rest165292%_
                                             _%hd165290%_))))
                                    (let ((_%hd165290%_ _%hd165245165305%_)
                                          (_%rest165292%_ _%tl165246165307%_))
                                      (_%K165241165282%_
                                       _%rest165292%_
                                       _%hd165290%_))))
                              (_%else165239165258%_)))))))
                 (_%compile-bind165078%_
                  (lambda (_%bind165222%_ _%post165223%_ _%body165224%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind165222%_)
                                 (cons (_%compile-post165079%_
                                        _%post165223%_
                                        _%body165224%_)
                                       '())))
                     _%stx165074%_)))
                 (_%compile-post165079%_
                  (lambda (_%post165081%_ _%body165082%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp166922
                                  (let ((__tmp166924
                                         (lambda (_%hd165084%_ _%r165085%_)
                                           (let* ((_%hd165086165109%_
                                                   _%hd165084%_)
                                                  (_%E165090165113%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd165086165109%_
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
                                             (let ((_%K165103165207%_
                                                    (lambda (_%expr165205%_)
                                                      (cons _%expr165205%_
                                                            _%r165085%_)))
                                                   (_%K165098165185%_
                                                    (lambda (_%expr165182%_
                                                             _%id165183%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id165183%_ (cons _%expr165182%_ '())))
                     _%stx165074%_)
                    _%r165085%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K165091165152%_
                                                    (lambda (_%init165117%_
                                                             _%len165118%_
                                                             _%expr165119%_
                                                             _%tmp165120%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp165120%_
                                             (cons _%expr165119%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp165120%_
                                                    (cons _%len165118%_ '())))
                                        _%stx165074%_)
                                       (let ((__tmp166925
                                              (map (lambda (_%hd165122%_)
                                                     (let* ((_%hd165123165130%_
                                                             _%hd165122%_)
                                                            (_%E165125165134%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd165123165130%_
                                '([id . k])))
                       '#!void))
                    (_%K165126165140%_
                     (lambda (_%k165137%_ _%id165138%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id165138%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp165120%_
                                                      (cons _%k165137%_ '())))
                                          '())))
                        _%stx165074%_))))
               (if (pair? _%hd165123165130%_)
                   (let ((_%hd165127165143%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd165123165130%_)))
                         (_%tl165128165145%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd165123165130%_))))
                     (let* ((_%id165148%_ _%hd165127165143%_)
                            (_%k165150%_ _%tl165128165145%_))
                       (_%K165126165140%_ _%k165150%_ _%id165148%_)))
                   (_%E165125165134%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init165117%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp166925)))))
                     _%stx165074%_)
                    _%r165085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match166780166781%_
                                                       (lambda (_%hd165092165155%_
                                                                _%tl165093165157%_
                                                                _%hd165094165162%_
                                                                _%tl165095165164%_)
                                                         (let ((_%tmp165160%_
                                                                _%hd165092165155%_)
                                                               (_%expr165167%_
                                                                _%hd165094165162%_))
                                                           (_%E165090165113%_))))
                                                      (_%__match166774166775%_
                                                       (lambda (_%hd165092165155%_
                                                                _%tl165093165157%_)
                                                         (let ((_%tmp165160%_
                                                                _%hd165092165155%_))
                                                           (_%E165090165113%_)))))
                                                 (if (pair? _%hd165086165109%_)
                                                     (let ((_%tl165105165212%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd165086165109%_)))
                                                           (_%hd165104165210%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd165086165109%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd165104165210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl165105165212%_)
                       (let ((_%tl165107165217%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl165105165212%_)))
                             (_%hd165106165215%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl165105165212%_))))
                         (if (null? _%tl165107165217%_)
                             (let ((_%expr165220%_ _%hd165106165215%_))
                               (_%K165103165207%_ _%expr165220%_))
                             (if (pair? _%tl165107165217%_)
                                 (let ((_%tl165097165171%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl165107165217%_)))
                                       (_%hd165096165169%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl165107165217%_))))
                                   (let ((_%tmp165160%_ _%hd165104165210%_)
                                         (_%expr165167%_ _%hd165106165215%_)
                                         (_%len165174%_ _%hd165096165169%_)
                                         (_%init165176%_ _%tl165097165171%_))
                                     (_%K165091165152%_
                                      _%init165176%_
                                      _%len165174%_
                                      _%expr165167%_
                                      _%tmp165160%_)))
                                 (_%__match166780166781%_
                                  _%hd165104165210%_
                                  _%tl165105165212%_
                                  _%hd165106165215%_
                                  _%tl165107165217%_))))
                       (_%__match166774166775%_
                        _%hd165104165210%_
                        _%tl165105165212%_))
                   (if (pair? _%tl165105165212%_)
                       (let ((_%tl165102165197%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl165105165212%_)))
                             (_%hd165101165195%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl165105165212%_))))
                         (if (null? _%tl165102165197%_)
                             (let ((_%id165193%_ _%hd165104165210%_)
                                   (_%expr165200%_ _%hd165101165195%_))
                               (_%K165098165185%_ _%expr165200%_ _%id165193%_))
                             (if (pair? _%tl165102165197%_)
                                 (let ((_%tl165097165171%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl165102165197%_)))
                                       (_%hd165096165169%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl165102165197%_))))
                                   (let ((_%tmp165160%_ _%hd165104165210%_)
                                         (_%expr165167%_ _%hd165101165195%_)
                                         (_%len165174%_ _%hd165096165169%_)
                                         (_%init165176%_ _%tl165097165171%_))
                                     (_%K165091165152%_
                                      _%init165176%_
                                      _%len165174%_
                                      _%expr165167%_
                                      _%tmp165160%_)))
                                 (_%__match166780166781%_
                                  _%hd165104165210%_
                                  _%tl165105165212%_
                                  _%hd165101165195%_
                                  _%tl165102165197%_))))
                       (_%__match166774166775%_
                        _%hd165104165210%_
                        _%tl165105165212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E165090165113%_)))))))
                                        (__tmp166923 (list _%body165082%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp166924
                                     __tmp166923
                                     _%post165081%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp166922)))
                     _%stx165074%_))))
          (__compile-let-form
           _%stx165074%_
           _%compile-simple165076%_
           _%compile-values165077%_))))
    (define __compile-call%
      (lambda (_%stx165034%_)
        (let* ((_%$e165036%_ _%stx165034%_)
               (_%$E165038165047%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165036%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165036%_))
              (let* ((_%$tgt165039165050%_
                      (let () (declare (not safe)) (__AST-e _%$e165036%_)))
                     (_%$hd165040165053%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165039165050%_)))
                     (_%$tl165041165056%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165039165050%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl165041165056%_))
                    (let* ((_%$tgt165042165060%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl165041165056%_)))
                           (_%$hd165043165063%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt165042165060%_)))
                           (_%$tl165044165066%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt165042165060%_)))
                           (_%rator165070%_ _%$hd165043165063%_)
                           (_%rands165072%_ _%$tl165044165066%_))
                      (__SRC__%
                       (cons (__compile _%rator165070%_)
                             (map __compile _%rands165072%_))
                       _%stx165034%_))
                    (_%$E165038165047%_)))
              (_%$E165038165047%_)))))
    (define __compile-ref%
      (lambda (_%stx164996%_)
        (let* ((_%$e164998%_ _%stx164996%_)
               (_%$E165000165009%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e164998%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e164998%_))
              (let* ((_%$tgt165001165012%_
                      (let () (declare (not safe)) (__AST-e _%$e164998%_)))
                     (_%$hd165002165015%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165001165012%_)))
                     (_%$tl165003165018%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165001165012%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl165003165018%_))
                    (let* ((_%$tgt165004165022%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl165003165018%_)))
                           (_%$hd165005165025%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt165004165022%_)))
                           (_%$tl165006165028%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt165004165022%_)))
                           (_%id165032%_ _%$hd165005165025%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl165006165028%_))
                                  '())
                          (__SRC__% _%id165032%_ _%stx164996%_)
                          (_%$E165000165009%_)))
                    (_%$E165000165009%_)))
              (_%$E165000165009%_)))))
    (define __compile-setq%
      (lambda (_%stx164943%_)
        (let* ((_%$e164945%_ _%stx164943%_)
               (_%$E164947164959%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e164945%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e164945%_))
              (let* ((_%$tgt164948164962%_
                      (let () (declare (not safe)) (__AST-e _%$e164945%_)))
                     (_%$hd164949164965%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt164948164962%_)))
                     (_%$tl164950164968%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt164948164962%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl164950164968%_))
                    (let* ((_%$tgt164951164972%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl164950164968%_)))
                           (_%$hd164952164975%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt164951164972%_)))
                           (_%$tl164953164978%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt164951164972%_)))
                           (_%id164982%_ _%$hd164952164975%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl164953164978%_))
                          (let* ((_%$tgt164954164984%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl164953164978%_)))
                                 (_%$hd164955164987%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164954164984%_)))
                                 (_%$tl164956164990%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164954164984%_)))
                                 (_%expr164994%_ _%$hd164955164987%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl164956164990%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id164982%_
                                              _%stx164943%_)
                                             (cons (__compile _%expr164994%_)
                                                   '())))
                                 _%stx164943%_)
                                (_%$E164947164959%_)))
                          (_%$E164947164959%_)))
                    (_%$E164947164959%_)))
              (_%$E164947164959%_)))))
    (define __compile-if%
      (lambda (_%stx164875%_)
        (let* ((_%$e164877%_ _%stx164875%_)
               (_%$E164879164894%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e164877%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e164877%_))
              (let* ((_%$tgt164880164897%_
                      (let () (declare (not safe)) (__AST-e _%$e164877%_)))
                     (_%$hd164881164900%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt164880164897%_)))
                     (_%$tl164882164903%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt164880164897%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl164882164903%_))
                    (let* ((_%$tgt164883164907%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl164882164903%_)))
                           (_%$hd164884164910%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt164883164907%_)))
                           (_%$tl164885164913%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt164883164907%_)))
                           (_%p164917%_ _%$hd164884164910%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl164885164913%_))
                          (let* ((_%$tgt164886164919%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl164885164913%_)))
                                 (_%$hd164887164922%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164886164919%_)))
                                 (_%$tl164888164925%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164886164919%_)))
                                 (_%t164929%_ _%$hd164887164922%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl164888164925%_))
                                (let* ((_%$tgt164889164931%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl164888164925%_)))
                                       (_%$hd164890164934%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt164889164931%_)))
                                       (_%$tl164891164937%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt164889164931%_)))
                                       (_%f164941%_ _%$hd164890164934%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl164891164937%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p164917%_)
                                                   (cons (__compile
                                                          _%t164929%_)
                                                         (cons (__compile
                                                                _%f164941%_)
                                                               '()))))
                                       _%stx164875%_)
                                      (_%$E164879164894%_)))
                                (_%$E164879164894%_)))
                          (_%$E164879164894%_)))
                    (_%$E164879164894%_)))
              (_%$E164879164894%_)))))
    (define __compile-quote%
      (lambda (_%stx164837%_)
        (let* ((_%$e164839%_ _%stx164837%_)
               (_%$E164841164850%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e164839%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e164839%_))
              (let* ((_%$tgt164842164853%_
                      (let () (declare (not safe)) (__AST-e _%$e164839%_)))
                     (_%$hd164843164856%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt164842164853%_)))
                     (_%$tl164844164859%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt164842164853%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl164844164859%_))
                    (let* ((_%$tgt164845164863%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl164844164859%_)))
                           (_%$hd164846164866%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt164845164863%_)))
                           (_%$tl164847164869%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt164845164863%_)))
                           (_%e164873%_ _%$hd164846164866%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl164847164869%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e164873%_))
                                       '()))
                           _%stx164837%_)
                          (_%$E164841164850%_)))
                    (_%$E164841164850%_)))
              (_%$E164841164850%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx164799%_)
        (let* ((_%$e164801%_ _%stx164799%_)
               (_%$E164803164812%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e164801%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e164801%_))
              (let* ((_%$tgt164804164815%_
                      (let () (declare (not safe)) (__AST-e _%$e164801%_)))
                     (_%$hd164805164818%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt164804164815%_)))
                     (_%$tl164806164821%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt164804164815%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl164806164821%_))
                    (let* ((_%$tgt164807164825%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl164806164821%_)))
                           (_%$hd164808164828%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt164807164825%_)))
                           (_%$tl164809164831%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt164807164825%_)))
                           (_%e164835%_ _%$hd164808164828%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl164809164831%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e164835%_ '()))
                           _%stx164799%_)
                          (_%$E164803164812%_)))
                    (_%$E164803164812%_)))
              (_%$E164803164812%_)))))
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
