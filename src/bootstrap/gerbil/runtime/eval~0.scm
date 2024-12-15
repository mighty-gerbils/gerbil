(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1734225193)
  (begin
    (define __syntax::t
      (let ((__tmp116005 (list)) (__tmp116004 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp116005
         '(e id)
         __tmp116004
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args115809%_
        (apply make-instance __syntax::t _%$args115809%_)))
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
      (let ((__tmp116007 (list __syntax::t))
            (__tmp116006 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp116007
         '()
         __tmp116006
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args115806%_
        (apply make-instance __core-form::t _%$args115806%_)))
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
      (let ((__tmp116009 (list __core-form::t))
            (__tmp116008 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp116009
         '()
         __tmp116008
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args115803%_
        (apply make-instance __core-expression::t _%$args115803%_)))
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
      (let ((__tmp116011 (list __core-form::t))
            (__tmp116010 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp116011
         '()
         __tmp116010
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args115800%_
        (apply make-instance __core-special-form::t _%$args115800%_)))
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
      (lambda (_%id115798%_)
        (let ((__tmp116012
               (let () (declare (not safe)) (__AST-e _%id115798%_))))
          (declare (not safe))
          (__hash-get __core __tmp116012))))
    (define __core-bound-id?__%
      (lambda (_%id115781%_ _%is?115782%_)
        (let ((_%$e115784%_ (__core-resolve _%id115781%_)))
          (if _%$e115784%_ (_%is?115782%_ _%$e115784%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id115791%_)
        (let ((_%is?115793%_ true))
          (__core-bound-id?__% _%id115791%_ _%is?115793%_))))
    (define __core-bound-id?
      (lambda _g116014_
        (let ((_g116013_ (let () (declare (not safe)) (##length _g116014_))))
          (cond ((let () (declare (not safe)) (##fx= _g116013_ 1))
                 (apply __core-bound-id?__0 _g116014_))
                ((let () (declare (not safe)) (##fx= _g116013_ 2))
                 (apply __core-bound-id?__% _g116014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g116014_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id115764%_ _%e115765%_ _%make115766%_)
        (let ((__tmp116015
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e115765%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e115765%_
                   (_%make115766%_ _%e115765%_ _%id115764%_))))
          (declare (not safe))
          (__hash-put! __core _%id115764%_ __tmp116015))))
    (define __core-bind-syntax!__0
      (lambda (_%id115771%_ _%e115772%_)
        (let ((_%make115774%_ make-__syntax))
          (__core-bind-syntax!__% _%id115771%_ _%e115772%_ _%make115774%_))))
    (define __core-bind-syntax!
      (lambda _g116017_
        (let ((_g116016_ (let () (declare (not safe)) (##length _g116017_))))
          (cond ((let () (declare (not safe)) (##fx= _g116016_ 2))
                 (apply __core-bind-syntax!__0 _g116017_))
                ((let () (declare (not safe)) (##fx= _g116016_ 3))
                 (apply __core-bind-syntax!__% _g116017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g116017_))))))
    (define __SRC__%
      (lambda (_%e115744%_ _%src-stx115745%_)
        (if (or (pair? _%e115744%_) (symbol? _%e115744%_))
            (let ((__tmp116018
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx115745%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx115745%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e115744%_ __tmp116018))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e115744%_ 'gerbil#AST::t))
                (let ((__tmp116020
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e115744%_ '1 '#f '#f)))
                      (__tmp116019
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e115744%_)))))
                  (declare (not safe))
                  (##make-source __tmp116020 __tmp116019))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e115744%_))))))
    (define __SRC__0
      (lambda (_%e115756%_)
        (let ((_%src-stx115758%_ '#f))
          (__SRC__% _%e115756%_ _%src-stx115758%_))))
    (define __SRC
      (lambda _g116022_
        (let ((_g116021_ (let () (declare (not safe)) (##length _g116022_))))
          (cond ((let () (declare (not safe)) (##fx= _g116021_ 1))
                 (apply __SRC__0 _g116022_))
                ((let () (declare (not safe)) (##fx= _g116021_ 2))
                 (apply __SRC__% _g116022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g116022_))))))
    (define __locat
      (lambda (_%loc115741%_)
        (if (let () (declare (not safe)) (##locat? _%loc115741%_))
            _%loc115741%_
            '#f)))
    (define __check-values
      (lambda (_%obj115736%_ _%k115737%_)
        (let ((_%count115739%_
               (if (let () (declare (not safe)) (##values? _%obj115736%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj115736%_))
                   '1)))
          (if (fx= _%count115739%_ _%k115737%_)
              '#!void
              (let ((__tmp116024
                     (if (fx< _%count115739%_ _%k115737%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp116023
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj115736%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj115736%_))
                         _%obj115736%_)))
                (declare (not safe))
                (error __tmp116024 __tmp116023 _%k115737%_))))))
    (define __compile
      (lambda (_%stx115705%_)
        (let* ((_%$e115707%_ _%stx115705%_)
               (_%$E115709115715%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115707%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115707%_))
              (let* ((_%$tgt115710115718%_
                      (let () (declare (not safe)) (__AST-e _%$e115707%_)))
                     (_%$hd115711115721%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115710115718%_)))
                     (_%$tl115712115724%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115710115718%_)))
                     (_%form115728%_ _%$hd115711115721%_)
                     (_%$e115730%_ (__core-resolve _%form115728%_)))
                (if _%$e115730%_
                    ((lambda (_%bind115733%_)
                       ((##structure-ref _%bind115733%_ '1 __syntax::t '#f)
                        _%stx115705%_))
                     _%$e115730%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx115705%_
                       _%form115728%_))))
              (_%$E115709115715%_)))))
    (define __compile-error__%
      (lambda (_%stx115692%_ _%detail115693%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx115692%_
           _%detail115693%_))))
    (define __compile-error__0
      (lambda (_%stx115698%_)
        (let ((_%detail115700%_ '#f))
          (__compile-error__% _%stx115698%_ _%detail115700%_))))
    (define __compile-error
      (lambda _g116026_
        (let ((_g116025_ (let () (declare (not safe)) (##length _g116026_))))
          (cond ((let () (declare (not safe)) (##fx= _g116025_ 1))
                 (apply __compile-error__0 _g116026_))
                ((let () (declare (not safe)) (##fx= _g116025_ 2))
                 (apply __compile-error__% _g116026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g116026_))))))
    (define __compile-ignore%
      (lambda (_%stx115689%_) (__SRC__% ''#!void _%stx115689%_)))
    (define __compile-begin%
      (lambda (_%stx115664%_)
        (let* ((_%$e115666%_ _%stx115664%_)
               (_%$E115668115674%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115666%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115666%_))
              (let* ((_%$tgt115669115677%_
                      (let () (declare (not safe)) (__AST-e _%$e115666%_)))
                     (_%$hd115670115680%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115669115677%_)))
                     (_%$tl115671115683%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115669115677%_)))
                     (_%body115687%_ _%$tl115671115683%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body115687%_))
                 _%stx115664%_))
              (_%$E115668115674%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx115639%_)
        (let* ((_%$e115641%_ _%stx115639%_)
               (_%$E115643115649%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115641%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115641%_))
              (let* ((_%$tgt115644115652%_
                      (let () (declare (not safe)) (__AST-e _%$e115641%_)))
                     (_%$hd115645115655%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115644115652%_)))
                     (_%$tl115646115658%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115644115652%_)))
                     (_%body115662%_ _%$tl115646115658%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body115662%_)))
                 _%stx115639%_))
              (_%$E115643115649%_)))))
    (define __compile-import%
      (lambda (_%stx115614%_)
        (let* ((_%$e115616%_ _%stx115614%_)
               (_%$E115618115624%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115616%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115616%_))
              (let* ((_%$tgt115619115627%_
                      (let () (declare (not safe)) (__AST-e _%$e115616%_)))
                     (_%$hd115620115630%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115619115627%_)))
                     (_%$tl115621115633%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115619115627%_)))
                     (_%body115637%_ _%$tl115621115633%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body115637%_ '())) '()))
                 _%stx115614%_))
              (_%$E115618115624%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx115561%_)
        (let* ((_%$e115563%_ _%stx115561%_)
               (_%$E115565115577%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115563%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115563%_))
              (let* ((_%$tgt115566115580%_
                      (let () (declare (not safe)) (__AST-e _%$e115563%_)))
                     (_%$hd115567115583%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115566115580%_)))
                     (_%$tl115568115586%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115566115580%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115568115586%_))
                    (let* ((_%$tgt115569115590%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115568115586%_)))
                           (_%$hd115570115593%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115569115590%_)))
                           (_%$tl115571115596%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115569115590%_)))
                           (_%ann115600%_ _%$hd115570115593%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115571115596%_))
                          (let* ((_%$tgt115572115602%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115571115596%_)))
                                 (_%$hd115573115605%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115572115602%_)))
                                 (_%$tl115574115608%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115572115602%_)))
                                 (_%expr115612%_ _%$hd115573115605%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115574115608%_))
                                        '())
                                (__compile _%expr115612%_)
                                (_%$E115565115577%_)))
                          (_%$E115565115577%_)))
                    (_%$E115565115577%_)))
              (_%$E115565115577%_)))))
    (define __compile-define-values%
      (lambda (_%stx115452%_)
        (let* ((_%$e115454%_ _%stx115452%_)
               (_%$E115456115468%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115454%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115454%_))
              (let* ((_%$tgt115457115471%_
                      (let () (declare (not safe)) (__AST-e _%$e115454%_)))
                     (_%$hd115458115474%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115457115471%_)))
                     (_%$tl115459115477%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115457115471%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115459115477%_))
                    (let* ((_%$tgt115460115481%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115459115477%_)))
                           (_%$hd115461115484%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115460115481%_)))
                           (_%$tl115462115487%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115460115481%_)))
                           (_%hd115491%_ _%$hd115461115484%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115462115487%_))
                          (let* ((_%$tgt115463115493%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115462115487%_)))
                                 (_%$hd115464115496%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115463115493%_)))
                                 (_%$tl115465115499%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115463115493%_)))
                                 (_%expr115503%_ _%$hd115464115496%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115465115499%_))
                                        '())
                                (let* ((_%$e115505%_ _%hd115491%_)
                                       (_%$E115507115548%_
                                        (lambda ()
                                          (let ((_%$E115508115533%_
                                                 (lambda ()
                                                   (let* ((_%$E115509115520%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e115505%_))))
                  (_%ids115523%_ _%hd115491%_)
                  (_%len115525%_ (length _%ids115523%_))
                  (_%tmp115527%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp115527%_
                                       (cons (__compile _%expr115503%_) '())))
                           _%stx115452%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp115527%_
                                             (cons _%len115525%_ '())))
                                 _%stx115452%_)
                                (let ((__tmp116027
                                       (let ((__tmp116029
                                              (lambda (_%id115530%_
                                                       _%k115531%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id115530%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id115530%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp115527%_
                                           (cons _%k115531%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx115452%_)
                                                    '#f)))
                                             (__tmp116028
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len115525%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp116029
                                          _%ids115523%_
                                          __tmp116028))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp116027)))))
              _%stx115452%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e115505%_))
                                                (let* ((_%$tgt115510115536%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e115505%_)))
                                                       (_%$hd115511115539%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt115510115536%_)))
                                                       (_%$tl115512115542%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt115510115536%_)))
                                                       (_%id115546%_
                                                        _%$hd115511115539%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl115512115542%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id115546%_)
                           (cons (__compile _%expr115503%_) '())))
               _%stx115452%_)
              (_%$E115508115533%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E115508115533%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e115505%_))
                                      (let* ((_%$tgt115513115551%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e115505%_)))
                                             (_%$hd115514115554%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115513115551%_)))
                                             (_%$tl115515115557%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115513115551%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd115514115554%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl115515115557%_))
                                                        '())
                                                (__compile _%expr115503%_)
                                                (_%$E115507115548%_))
                                            (_%$E115507115548%_)))
                                      (_%$E115507115548%_)))
                                (_%$E115456115468%_)))
                          (_%$E115456115468%_)))
                    (_%$E115456115468%_)))
              (_%$E115456115468%_)))))
    (define __compile-head-id
      (lambda (_%e115450%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e115450%_))
             _%e115450%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd115407%_)
        (let _%recur115409%_ ((_%rest115411%_ _%hd115407%_))
          (let* ((_%$e115413%_ _%rest115411%_)
                 (_%$E115415115433%_
                  (lambda ()
                    (let ((_%$E115416115430%_
                           (lambda ()
                             (let* ((_%$E115417115425%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e115413%_))))
                                    (_%tail115428%_ _%$e115413%_))
                               (__compile-head-id _%tail115428%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115413%_))
                                  '())
                          '()
                          (_%$E115416115430%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115413%_))
                (let* ((_%$tgt115418115436%_
                        (let () (declare (not safe)) (__AST-e _%$e115413%_)))
                       (_%$hd115419115439%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115418115436%_)))
                       (_%$tl115420115442%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115418115436%_)))
                       (_%hd115446%_ _%$hd115419115439%_)
                       (_%rest115448%_ _%$tl115420115442%_))
                  (cons (__compile-head-id _%hd115446%_)
                        (_%recur115409%_ _%rest115448%_)))
                (_%$E115415115433%_))))))
    (define __compile-lambda%
      (lambda (_%stx115354%_)
        (let* ((_%$e115356%_ _%stx115354%_)
               (_%$E115358115370%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115356%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115356%_))
              (let* ((_%$tgt115359115373%_
                      (let () (declare (not safe)) (__AST-e _%$e115356%_)))
                     (_%$hd115360115376%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115359115373%_)))
                     (_%$tl115361115379%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115359115373%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115361115379%_))
                    (let* ((_%$tgt115362115383%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115361115379%_)))
                           (_%$hd115363115386%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115362115383%_)))
                           (_%$tl115364115389%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115362115383%_)))
                           (_%hd115393%_ _%$hd115363115386%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115364115389%_))
                          (let* ((_%$tgt115365115395%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115364115389%_)))
                                 (_%$hd115366115398%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115365115395%_)))
                                 (_%$tl115367115401%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115365115395%_)))
                                 (_%body115405%_ _%$hd115366115398%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115367115401%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd115393%_)
                                             (cons (__compile _%body115405%_)
                                                   '())))
                                 _%stx115354%_)
                                (_%$E115358115370%_)))
                          (_%$E115358115370%_)))
                    (_%$E115358115370%_)))
              (_%$E115358115370%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx115146%_)
        (letrec ((_%variadic?115148%_
                  (lambda (_%hd115319%_)
                    (let* ((_%$e115321%_ _%hd115319%_)
                           (_%$E115323115339%_
                            (lambda ()
                              (let ((_%$E115324115336%_
                                     (lambda ()
                                       (let ((_%$E115325115333%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e115321%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e115321%_))
                                            '())
                                    '#f
                                    (_%$E115324115336%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115321%_))
                          (let* ((_%$tgt115326115342%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115321%_)))
                                 (_%$hd115327115345%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115326115342%_)))
                                 (_%$tl115328115348%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115326115342%_)))
                                 (_%rest115352%_ _%$tl115328115348%_))
                            (_%variadic?115148%_ _%rest115352%_))
                          (_%$E115323115339%_)))))
                 (_%arity115149%_
                  (lambda (_%hd115284%_)
                    (let _%lp115286%_ ((_%rest115288%_ _%hd115284%_)
                                       (_%k115289%_ '0))
                      (let* ((_%$e115291%_ _%rest115288%_)
                             (_%$E115293115304%_
                              (lambda ()
                                (let ((_%$E115294115301%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e115291%_)))))
                                  _%k115289%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e115291%_))
                            (let* ((_%$tgt115295115307%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e115291%_)))
                                   (_%$hd115296115310%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt115295115307%_)))
                                   (_%$tl115297115313%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt115295115307%_)))
                                   (_%rest115317%_ _%$tl115297115313%_))
                              (_%lp115286%_
                               _%rest115317%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k115289%_ '1))))
                            (_%$E115293115304%_))))))
                 (_%generate115150%_
                  (lambda (_%rest115211%_ _%args115212%_ _%len115213%_)
                    (let* ((_%$e115215%_ _%rest115211%_)
                           (_%$E115217115228%_
                            (lambda ()
                              (let ((_%$E115218115225%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e115215%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args115212%_ '())))
                                 _%stx115146%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115215%_))
                          (let* ((_%$tgt115219115231%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115215%_)))
                                 (_%$hd115220115234%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115219115231%_)))
                                 (_%$tl115221115237%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115219115231%_)))
                                 (_%clause115241%_ _%$hd115220115234%_)
                                 (_%rest115243%_ _%$tl115221115237%_)
                                 (_%$e115245%_ _%clause115241%_)
                                 (_%$E115247115256%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e115245%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e115245%_))
                                (let* ((_%$tgt115248115259%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e115245%_)))
                                       (_%$hd115249115262%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt115248115259%_)))
                                       (_%$tl115250115265%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt115248115259%_)))
                                       (_%hd115269%_ _%$hd115249115262%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl115250115265%_))
                                      (let* ((_%$tgt115251115271%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl115250115265%_)))
                                             (_%$hd115252115274%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115251115271%_)))
                                             (_%$tl115253115277%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115251115271%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl115253115277%_))
                                                    '())
                                            (let ((_%clen115281%_
                                                   (_%arity115149%_
                                                    _%hd115269%_))
                                                  (_%cmp115282%_
                                                   (if (_%variadic?115148%_
                                                        _%hd115269%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp115282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len115213%_ (cons _%clen115281%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause115241%_))
                                      (cons _%args115212%_ '())))
                          _%stx115146%_)
                         (cons (_%generate115150%_
                                _%rest115243%_
                                _%args115212%_
                                _%len115213%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx115146%_))
                                            (_%$E115247115256%_)))
                                      (_%$E115247115256%_)))
                                (_%$E115247115256%_)))
                          (_%$E115217115228%_))))))
          (let* ((_%$e115152%_ _%stx115146%_)
                 (_%$E115154115186%_
                  (lambda ()
                    (let ((_%$E115155115168%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115152%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115152%_))
                          (let* ((_%$tgt115156115171%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115152%_)))
                                 (_%$hd115157115174%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115156115171%_)))
                                 (_%$tl115158115177%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115156115171%_)))
                                 (_%clauses115181%_ _%$tl115158115177%_))
                            (let ((_%args115183%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx115146%_))
                                  (_%len115184%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx115146%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args115183%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len115184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args115183%_ '()))
                                         _%stx115146%_)
                                        '()))
                            '())
                      (cons (_%generate115150%_
                             _%clauses115181%_
                             _%args115183%_
                             _%len115184%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx115146%_)
                                                 '())))
                               _%stx115146%_)))
                          (_%$E115155115168%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115152%_))
                (let* ((_%$tgt115159115189%_
                        (let () (declare (not safe)) (__AST-e _%$e115152%_)))
                       (_%$hd115160115192%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115159115189%_)))
                       (_%$tl115161115195%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115159115189%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl115161115195%_))
                      (let* ((_%$tgt115162115199%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl115161115195%_)))
                             (_%$hd115163115202%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt115162115199%_)))
                             (_%$tl115164115205%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt115162115199%_)))
                             (_%clause115209%_ _%$hd115163115202%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl115164115205%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause115209%_))
                            (_%$E115154115186%_)))
                      (_%$E115154115186%_)))
                (_%$E115154115186%_))))))
    (define __compile-let-form
      (lambda (_%stx114915%_ _%compile-simple114916%_ _%compile-values114917%_)
        (letrec ((_%simple-bind?114919%_
                  (lambda (_%hd115104%_)
                    (let* ((_%hd115105115115%_ _%hd115104%_)
                           (_%else115108115123%_ (lambda () '#f)))
                      (let ((_%K115111115136%_ (lambda (_%id115134%_) '#t))
                            (_%K115110115128%_ (lambda () '#t)))
                        (let ((_%try-match115107115131%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd115105115115%_ '#f))
                                     (_%K115110115128%_)
                                     (_%else115108115123%_)))))
                          (if (pair? _%hd115105115115%_)
                              (let ((_%tl115113115141%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd115105115115%_)))
                                    (_%hd115112115139%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd115105115115%_))))
                                (if (null? _%tl115113115141%_)
                                    (let ((_%id115144%_ _%hd115112115139%_))
                                      (_%K115111115136%_ _%id115144%_))
                                    (_%try-match115107115131%_)))
                              (_%try-match115107115131%_)))))))
                 (_%car-e114920%_
                  (lambda (_%hd115102%_)
                    (if (pair? _%hd115102%_)
                        (let () (declare (not safe)) (##car _%hd115102%_))
                        _%hd115102%_))))
          (let* ((_%$e114922%_ _%stx114915%_)
                 (_%$E114924115067%_
                  (lambda ()
                    (let ((_%$E114925114947%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114922%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114922%_))
                          (let* ((_%$tgt114926114950%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114922%_)))
                                 (_%$hd114927114953%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114926114950%_)))
                                 (_%$tl114928114956%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114926114950%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114928114956%_))
                                (let* ((_%$tgt114929114960%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114928114956%_)))
                                       (_%$hd114930114963%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114929114960%_)))
                                       (_%$tl114931114966%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114929114960%_)))
                                       (_%hd114970%_ _%$hd114930114963%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl114931114966%_))
                                      (let* ((_%$tgt114932114972%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114931114966%_)))
                                             (_%$hd114933114975%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114932114972%_)))
                                             (_%$tl114934114978%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114932114972%_)))
                                             (_%body114982%_
                                              _%$hd114933114975%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl114934114978%_))
                                                    '())
                                            (let* ((_%hd-ids115022%_
                                                    (map (lambda (_%bind114984%_)
                                                           (let* ((_%$e114986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind114984%_)
                          (_%$E114988114997%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114986%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e114986%_))
                         (let* ((_%$tgt114989115000%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e114986%_)))
                                (_%$hd114990115003%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt114989115000%_)))
                                (_%$tl114991115006%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt114989115000%_)))
                                (_%ids115010%_ _%$hd114990115003%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl114991115006%_))
                               (let* ((_%$tgt114992115012%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl114991115006%_)))
                                      (_%$hd114993115015%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt114992115012%_)))
                                      (_%$tl114994115018%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt114992115012%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl114994115018%_))
                                             '())
                                     _%ids115010%_
                                     (_%$E114988114997%_)))
                               (_%$E114988114997%_)))
                         (_%$E114988114997%_))))
                 _%hd114970%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs115062%_
                                                    (map (lambda (_%bind115024%_)
                                                           (let* ((_%$e115026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind115024%_)
                          (_%$E115028115037%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115026%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e115026%_))
                         (let* ((_%$tgt115029115040%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e115026%_)))
                                (_%$hd115030115043%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt115029115040%_)))
                                (_%$tl115031115046%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt115029115040%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl115031115046%_))
                               (let* ((_%$tgt115032115050%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl115031115046%_)))
                                      (_%$hd115033115053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt115032115050%_)))
                                      (_%$tl115034115056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt115032115050%_)))
                                      (_%expr115060%_ _%$hd115033115053%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl115034115056%_))
                                             '())
                                     (__compile _%expr115060%_)
                                     (_%$E115028115037%_)))
                               (_%$E115028115037%_)))
                         (_%$E115028115037%_))))
                 _%hd114970%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body115064%_
                                                    (__compile
                                                     _%body114982%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?114919%_
                                                     _%hd-ids115022%_))
                                                  (_%compile-simple114916%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e114920%_
                                                            _%hd-ids115022%_))
                                                   _%exprs115062%_
                                                   _%body115064%_)
                                                  (_%compile-values114917%_
                                                   _%hd-ids115022%_
                                                   _%exprs115062%_
                                                   _%body115064%_)))
                                            (_%$E114925114947%_)))
                                      (_%$E114925114947%_)))
                                (_%$E114925114947%_)))
                          (_%$E114925114947%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114922%_))
                (let* ((_%$tgt114935115070%_
                        (let () (declare (not safe)) (__AST-e _%$e114922%_)))
                       (_%$hd114936115073%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114935115070%_)))
                       (_%$tl114937115076%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114935115070%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl114937115076%_))
                      (let* ((_%$tgt114938115080%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl114937115076%_)))
                             (_%$hd114939115083%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt114938115080%_)))
                             (_%$tl114940115086%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt114938115080%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd114939115083%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114940115086%_))
                                (let* ((_%$tgt114941115090%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114940115086%_)))
                                       (_%$hd114942115093%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114941115090%_)))
                                       (_%$tl114943115096%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114941115090%_)))
                                       (_%body115100%_ _%$hd114942115093%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114943115096%_))
                                              '())
                                      (__compile _%body115100%_)
                                      (_%$E114924115067%_)))
                                (_%$E114924115067%_))
                            (_%$E114924115067%_)))
                      (_%$E114924115067%_)))
                (_%$E114924115067%_))))))
    (define __compile-let-values%
      (lambda (_%stx114727%_)
        (letrec ((_%compile-simple114729%_
                  (lambda (_%hd-ids114911%_ _%exprs114912%_ _%body114913%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp116030
                                        (map __compile-head-id
                                             _%hd-ids114911%_)))
                                   (declare (not safe))
                                   (##map list __tmp116030 _%exprs114912%_))
                                 (cons _%body114913%_ '())))
                     _%stx114727%_)))
                 (_%compile-values114730%_
                  (lambda (_%hd-ids114826%_ _%exprs114827%_ _%body114828%_)
                    (let _%lp114830%_ ((_%rest114832%_ _%hd-ids114826%_)
                                       (_%exprs114833%_ _%exprs114827%_)
                                       (_%bind114834%_ '())
                                       (_%post114835%_ '()))
                      (let* ((_%rest114836114850%_ _%rest114832%_)
                             (_%else114839114858%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind114834%_)
                                             (cons (_%compile-post114731%_
                                                    _%post114835%_
                                                    _%body114828%_)
                                                   '())))
                                 _%stx114727%_))))
                        (let ((_%K114844114894%_
                               (lambda (_%rest114891%_ _%id114892%_)
                                 (_%lp114830%_
                                  _%rest114891%_
                                  (cdr _%exprs114833%_)
                                  (cons (cons (__compile-head-id _%id114892%_)
                                              (cons (car _%exprs114833%_) '()))
                                        _%bind114834%_)
                                  _%post114835%_)))
                              (_%K114841114876%_
                               (lambda (_%rest114862%_ _%hd114863%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114863%_))
                                     (_%lp114830%_
                                      _%rest114862%_
                                      (cdr _%exprs114833%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd114863%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114833%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114834%_)
                                      _%post114835%_)
                                     (if (list? _%hd114863%_)
                                         (let* ((_%len114867%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114863%_)))
                                                (_%tmp114869%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114830%_
                                            _%rest114862%_
                                            (cdr _%exprs114833%_)
                                            (cons (cons _%tmp114869%_
                                                        (cons (car _%exprs114833%_)
                                                              '()))
                                                  _%bind114834%_)
                                            (cons (cons _%tmp114869%_
                                                        (cons _%len114867%_
                                                              (let ((__tmp116032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114872%_ _%k114873%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114872%_))
                                   (cons (__SRC__0 _%id114872%_) _%k114873%_)
                                   '#f)))
                            (__tmp116031
                             (let ()
                               (declare (not safe))
                               (##iota _%len114867%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp116032 _%hd114863%_ __tmp116031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114835%_)))
                                         (__compile-error__%
                                          _%stx114727%_
                                          _%hd114863%_))))))
                          (if (pair? _%rest114836114850%_)
                              (let ((_%tl114846114899%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114836114850%_)))
                                    (_%hd114845114897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114836114850%_))))
                                (if (pair? _%hd114845114897%_)
                                    (let ((_%tl114848114904%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114845114897%_)))
                                          (_%hd114847114902%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114845114897%_))))
                                      (if (null? _%tl114848114904%_)
                                          (let ((_%id114907%_
                                                 _%hd114847114902%_)
                                                (_%rest114909%_
                                                 _%tl114846114899%_))
                                            (_%K114844114894%_
                                             _%rest114909%_
                                             _%id114907%_))
                                          (let ((_%hd114884%_
                                                 _%hd114845114897%_)
                                                (_%rest114886%_
                                                 _%tl114846114899%_))
                                            (_%K114841114876%_
                                             _%rest114886%_
                                             _%hd114884%_))))
                                    (let ((_%hd114884%_ _%hd114845114897%_)
                                          (_%rest114886%_ _%tl114846114899%_))
                                      (_%K114841114876%_
                                       _%rest114886%_
                                       _%hd114884%_))))
                              (_%else114839114858%_)))))))
                 (_%compile-post114731%_
                  (lambda (_%post114733%_ _%body114734%_)
                    (let _%lp114736%_ ((_%rest114738%_ _%post114733%_)
                                       (_%check114739%_ '())
                                       (_%bind114740%_ '()))
                      (let* ((_%rest114741114753%_ _%rest114738%_)
                             (_%else114743114761%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp116033
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind114740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body114734%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx114727%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp116033
                                          _%check114739%_)))
                                 _%stx114727%_)))
                             (_%K114745114800%_
                              (lambda (_%rest114764%_
                                       _%init114765%_
                                       _%len114766%_
                                       _%tmp114767%_)
                                (_%lp114736%_
                                 _%rest114764%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114767%_
                                                    (cons _%len114766%_ '())))
                                        _%stx114727%_)
                                       _%check114739%_)
                                 (let ((__tmp116034
                                        (lambda (_%hd114769%_ _%r114770%_)
                                          (let* ((_%hd114771114778%_
                                                  _%hd114769%_)
                                                 (_%E114773114782%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd114771114778%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K114774114788%_
                                                  (lambda (_%k114785%_
                                                           _%id114786%_)
                                                    (cons (cons _%id114786%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp114767%_
                                          (cons _%k114785%_ '())))
                              '()))
                  _%r114770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd114771114778%_)
                                                (let ((_%hd114775114791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd114771114778%_)))
                                                      (_%tl114776114793%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd114771114778%_))))
                                                  (let* ((_%id114796%_
                                                          _%hd114775114791%_)
                                                         (_%k114798%_
                                                          _%tl114776114793%_))
                                                    (_%K114774114788%_
                                                     _%k114798%_
                                                     _%id114796%_)))
                                                (_%E114773114782%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp116034
                                    _%bind114740%_
                                    _%init114765%_))))))
                        (if (pair? _%rest114741114753%_)
                            (let ((_%hd114746114803%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest114741114753%_)))
                                  (_%tl114747114805%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest114741114753%_))))
                              (if (pair? _%hd114746114803%_)
                                  (let ((_%hd114748114808%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd114746114803%_)))
                                        (_%tl114749114810%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd114746114803%_))))
                                    (let ((_%tmp114813%_ _%hd114748114808%_))
                                      (if (pair? _%tl114749114810%_)
                                          (let ((_%hd114750114815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl114749114810%_)))
                                                (_%tl114751114817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl114749114810%_))))
                                            (let* ((_%len114820%_
                                                    _%hd114750114815%_)
                                                   (_%init114822%_
                                                    _%tl114751114817%_)
                                                   (_%rest114824%_
                                                    _%tl114747114805%_))
                                              (_%K114745114800%_
                                               _%rest114824%_
                                               _%init114822%_
                                               _%len114820%_
                                               _%tmp114813%_)))
                                          (_%else114743114761%_))))
                                  (_%else114743114761%_)))
                            (_%else114743114761%_)))))))
          (__compile-let-form
           _%stx114727%_
           _%compile-simple114729%_
           _%compile-values114730%_))))
    (define __compile-letrec-values%
      (lambda (_%stx114524%_)
        (letrec ((_%compile-simple114526%_
                  (lambda (_%hd-ids114723%_ _%exprs114724%_ _%body114725%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp116035
                                        (map __compile-head-id
                                             _%hd-ids114723%_)))
                                   (declare (not safe))
                                   (##map list __tmp116035 _%exprs114724%_))
                                 (cons _%body114725%_ '())))
                     _%stx114524%_)))
                 (_%compile-values114527%_
                  (lambda (_%hd-ids114634%_ _%exprs114635%_ _%body114636%_)
                    (let _%lp114638%_ ((_%rest114640%_ _%hd-ids114634%_)
                                       (_%exprs114641%_ _%exprs114635%_)
                                       (_%pre114642%_ '())
                                       (_%bind114643%_ '())
                                       (_%post114644%_ '()))
                      (let* ((_%rest114645114659%_ _%rest114640%_)
                             (_%else114648114667%_
                              (lambda ()
                                (_%compile-inner114528%_
                                 _%pre114642%_
                                 _%bind114643%_
                                 _%post114644%_
                                 _%body114636%_))))
                        (let ((_%K114653114706%_
                               (lambda (_%rest114703%_ _%id114704%_)
                                 (_%lp114638%_
                                  _%rest114703%_
                                  (cdr _%exprs114641%_)
                                  _%pre114642%_
                                  (cons (cons (__compile-head-id _%id114704%_)
                                              (cons (car _%exprs114641%_) '()))
                                        _%bind114643%_)
                                  _%post114644%_)))
                              (_%K114650114688%_
                               (lambda (_%rest114671%_ _%hd114672%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114672%_))
                                     (_%lp114638%_
                                      _%rest114671%_
                                      (cdr _%exprs114641%_)
                                      _%pre114642%_
                                      (cons (cons (__compile-head-id
                                                   _%hd114672%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114641%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114643%_)
                                      _%post114644%_)
                                     (if (list? _%hd114672%_)
                                         (let* ((_%len114676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114672%_)))
                                                (_%tmp114678%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114638%_
                                            _%rest114671%_
                                            (cdr _%exprs114641%_)
                                            (let ((__tmp116036
                                                   (lambda (_%id114681%_
                                                            _%r114682%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id114681%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id114681%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r114682%_)
                 _%r114682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp116036
                                               _%pre114642%_
                                               _%hd114672%_))
                                            (cons (cons _%tmp114678%_
                                                        (cons (car _%exprs114641%_)
                                                              '()))
                                                  _%bind114643%_)
                                            (cons (cons _%tmp114678%_
                                                        (cons _%len114676%_
                                                              (let ((__tmp116038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114684%_ _%k114685%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114684%_))
                                   (cons (__SRC__0 _%id114684%_) _%k114685%_)
                                   '#f)))
                            (__tmp116037
                             (let ()
                               (declare (not safe))
                               (##iota _%len114676%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp116038 _%hd114672%_ __tmp116037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114644%_)))
                                         (__compile-error__%
                                          _%stx114524%_
                                          _%hd114672%_))))))
                          (if (pair? _%rest114645114659%_)
                              (let ((_%tl114655114711%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114645114659%_)))
                                    (_%hd114654114709%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114645114659%_))))
                                (if (pair? _%hd114654114709%_)
                                    (let ((_%tl114657114716%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114654114709%_)))
                                          (_%hd114656114714%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114654114709%_))))
                                      (if (null? _%tl114657114716%_)
                                          (let ((_%id114719%_
                                                 _%hd114656114714%_)
                                                (_%rest114721%_
                                                 _%tl114655114711%_))
                                            (_%K114653114706%_
                                             _%rest114721%_
                                             _%id114719%_))
                                          (let ((_%hd114696%_
                                                 _%hd114654114709%_)
                                                (_%rest114698%_
                                                 _%tl114655114711%_))
                                            (_%K114650114688%_
                                             _%rest114698%_
                                             _%hd114696%_))))
                                    (let ((_%hd114696%_ _%hd114654114709%_)
                                          (_%rest114698%_ _%tl114655114711%_))
                                      (_%K114650114688%_
                                       _%rest114698%_
                                       _%hd114696%_))))
                              (_%else114648114667%_)))))))
                 (_%compile-inner114528%_
                  (lambda (_%pre114629%_
                           _%bind114630%_
                           _%post114631%_
                           _%body114632%_)
                    (if (null? _%pre114629%_)
                        (_%compile-bind114529%_
                         _%bind114630%_
                         _%post114631%_
                         _%body114632%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre114629%_)
                                     (cons (_%compile-bind114529%_
                                            _%bind114630%_
                                            _%post114631%_
                                            _%body114632%_)
                                           '())))
                         _%stx114524%_))))
                 (_%compile-bind114529%_
                  (lambda (_%bind114625%_ _%post114626%_ _%body114627%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind114625%_)
                                 (cons (_%compile-post114530%_
                                        _%post114626%_
                                        _%body114627%_)
                                       '())))
                     _%stx114524%_)))
                 (_%compile-post114530%_
                  (lambda (_%post114532%_ _%body114533%_)
                    (let _%lp114535%_ ((_%rest114537%_ _%post114532%_)
                                       (_%check114538%_ '())
                                       (_%bind114539%_ '()))
                      (let* ((_%rest114540114552%_ _%rest114537%_)
                             (_%else114542114560%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp116039
                                              (let ((__tmp116040
                                                     (cons _%body114533%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp116040
                                                 _%bind114539%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp116039
                                          _%check114538%_)))
                                 _%stx114524%_)))
                             (_%K114544114599%_
                              (lambda (_%rest114563%_
                                       _%init114564%_
                                       _%len114565%_
                                       _%tmp114566%_)
                                (_%lp114535%_
                                 _%rest114563%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114566%_
                                                    (cons _%len114565%_ '())))
                                        _%stx114524%_)
                                       _%check114538%_)
                                 (let ((__tmp116041
                                        (lambda (_%hd114568%_ _%r114569%_)
                                          (let* ((_%hd114570114577%_
                                                  _%hd114568%_)
                                                 (_%E114572114581%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd114570114577%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K114573114587%_
                                                  (lambda (_%k114584%_
                                                           _%id114585%_)
                                                    (cons (cons 'set!
                                                                (cons _%id114585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp114566%_
                                                (cons _%k114584%_ '())))
                                    '())))
                  _%r114569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd114570114577%_)
                                                (let ((_%hd114574114590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd114570114577%_)))
                                                      (_%tl114575114592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd114570114577%_))))
                                                  (let* ((_%id114595%_
                                                          _%hd114574114590%_)
                                                         (_%k114597%_
                                                          _%tl114575114592%_))
                                                    (_%K114573114587%_
                                                     _%k114597%_
                                                     _%id114595%_)))
                                                (_%E114572114581%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp116041
                                    _%bind114539%_
                                    _%init114564%_))))))
                        (if (pair? _%rest114540114552%_)
                            (let ((_%hd114545114602%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest114540114552%_)))
                                  (_%tl114546114604%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest114540114552%_))))
                              (if (pair? _%hd114545114602%_)
                                  (let ((_%hd114547114607%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd114545114602%_)))
                                        (_%tl114548114609%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd114545114602%_))))
                                    (let ((_%tmp114612%_ _%hd114547114607%_))
                                      (if (pair? _%tl114548114609%_)
                                          (let ((_%hd114549114614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl114548114609%_)))
                                                (_%tl114550114616%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl114548114609%_))))
                                            (let* ((_%len114619%_
                                                    _%hd114549114614%_)
                                                   (_%init114621%_
                                                    _%tl114550114616%_)
                                                   (_%rest114623%_
                                                    _%tl114546114604%_))
                                              (_%K114544114599%_
                                               _%rest114623%_
                                               _%init114621%_
                                               _%len114619%_
                                               _%tmp114612%_)))
                                          (_%else114542114560%_))))
                                  (_%else114542114560%_)))
                            (_%else114542114560%_)))))))
          (__compile-let-form
           _%stx114524%_
           _%compile-simple114526%_
           _%compile-values114527%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx114275%_)
        (letrec ((_%compile-simple114277%_
                  (lambda (_%hd-ids114520%_ _%exprs114521%_ _%body114522%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp116042
                                        (map __compile-head-id
                                             _%hd-ids114520%_)))
                                   (declare (not safe))
                                   (##map list __tmp116042 _%exprs114521%_))
                                 (cons _%body114522%_ '())))
                     _%stx114275%_)))
                 (_%compile-values114278%_
                  (lambda (_%hd-ids114427%_ _%exprs114428%_ _%body114429%_)
                    (let _%lp114431%_ ((_%rest114433%_ _%hd-ids114427%_)
                                       (_%exprs114434%_ _%exprs114428%_)
                                       (_%bind114435%_ '())
                                       (_%post114436%_ '()))
                      (let* ((_%rest114437114451%_ _%rest114433%_)
                             (_%else114440114459%_
                              (lambda ()
                                (_%compile-bind114279%_
                                 _%bind114435%_
                                 _%post114436%_
                                 _%body114429%_))))
                        (let ((_%K114445114503%_
                               (lambda (_%rest114498%_ _%hd114499%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114499%_))
                                     (let ((_%id114501%_
                                            (__SRC__0 _%hd114499%_)))
                                       (_%lp114431%_
                                        _%rest114498%_
                                        (cdr _%exprs114434%_)
                                        (cons (cons _%id114501%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind114435%_)
                                        (cons (cons _%id114501%_
                                                    (cons (car _%exprs114434%_)
                                                          '()))
                                              _%post114436%_)))
                                     (_%lp114431%_
                                      _%rest114498%_
                                      (cdr _%exprs114434%_)
                                      _%bind114435%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs114434%_)
                                                        '()))
                                            _%post114436%_)))))
                              (_%K114442114483%_
                               (lambda (_%rest114463%_ _%hd114464%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114464%_))
                                     (let ((_%id114467%_
                                            (__SRC__0 _%hd114464%_)))
                                       (_%lp114431%_
                                        _%rest114463%_
                                        (cdr _%exprs114434%_)
                                        (cons (cons _%id114467%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind114435%_)
                                        (cons (cons _%id114467%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs114434%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post114436%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd114464%_))
                                         (if (list? _%hd114464%_)
                                             (let* ((_%len114471%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd114464%_)))
                                                    (_%tmp114473%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp114431%_
                                                _%rest114463%_
                                                (cdr _%exprs114434%_)
                                                (let ((__tmp116043
                                                       (lambda (_%id114476%_
                                                                _%r114477%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id114476%_))
                     (cons (cons (__SRC__0 _%id114476%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r114477%_)
                     _%r114477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp116043
                                                   _%bind114435%_
                                                   _%hd114464%_))
                                                (cons (cons _%tmp114473%_
                                                            (cons (car _%exprs114434%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len114471%_
                                (let ((__tmp116045
                                       (lambda (_%id114479%_ _%k114480%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id114479%_))
                                             (cons (__SRC__0 _%id114479%_)
                                                   _%k114480%_)
                                             '#f)))
                                      (__tmp116044
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len114471%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp116045
                                   _%hd114464%_
                                   __tmp116044)))))
              _%post114436%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx114275%_
                                              _%hd114464%_))
                                         (_%lp114431%_
                                          _%rest114463%_
                                          (cdr _%exprs114434%_)
                                          _%bind114435%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs114434%_)
                                                            '()))
                                                _%post114436%_)))))))
                          (if (pair? _%rest114437114451%_)
                              (let ((_%tl114447114508%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114437114451%_)))
                                    (_%hd114446114506%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114437114451%_))))
                                (if (pair? _%hd114446114506%_)
                                    (let ((_%tl114449114513%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114446114506%_)))
                                          (_%hd114448114511%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114446114506%_))))
                                      (if (null? _%tl114449114513%_)
                                          (let ((_%hd114516%_
                                                 _%hd114448114511%_)
                                                (_%rest114518%_
                                                 _%tl114447114508%_))
                                            (_%K114445114503%_
                                             _%rest114518%_
                                             _%hd114516%_))
                                          (let ((_%hd114491%_
                                                 _%hd114446114506%_)
                                                (_%rest114493%_
                                                 _%tl114447114508%_))
                                            (_%K114442114483%_
                                             _%rest114493%_
                                             _%hd114491%_))))
                                    (let ((_%hd114491%_ _%hd114446114506%_)
                                          (_%rest114493%_ _%tl114447114508%_))
                                      (_%K114442114483%_
                                       _%rest114493%_
                                       _%hd114491%_))))
                              (_%else114440114459%_)))))))
                 (_%compile-bind114279%_
                  (lambda (_%bind114423%_ _%post114424%_ _%body114425%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind114423%_)
                                 (cons (_%compile-post114280%_
                                        _%post114424%_
                                        _%body114425%_)
                                       '())))
                     _%stx114275%_)))
                 (_%compile-post114280%_
                  (lambda (_%post114282%_ _%body114283%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp116046
                                  (let ((__tmp116048
                                         (lambda (_%hd114285%_ _%r114286%_)
                                           (let* ((_%hd114287114310%_
                                                   _%hd114285%_)
                                                  (_%E114291114314%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd114287114310%_
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
                                             (let ((_%K114304114408%_
                                                    (lambda (_%expr114406%_)
                                                      (cons _%expr114406%_
                                                            _%r114286%_)))
                                                   (_%K114299114386%_
                                                    (lambda (_%expr114383%_
                                                             _%id114384%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id114384%_ (cons _%expr114383%_ '())))
                     _%stx114275%_)
                    _%r114286%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K114292114353%_
                                                    (lambda (_%init114318%_
                                                             _%len114319%_
                                                             _%expr114320%_
                                                             _%tmp114321%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp114321%_
                                             (cons _%expr114320%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114321%_
                                                    (cons _%len114319%_ '())))
                                        _%stx114275%_)
                                       (let ((__tmp116049
                                              (map (lambda (_%hd114323%_)
                                                     (let* ((_%hd114324114331%_
                                                             _%hd114323%_)
                                                            (_%E114326114335%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd114324114331%_
                                '([id . k])))
                       '#!void))
                    (_%K114327114341%_
                     (lambda (_%k114338%_ _%id114339%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id114339%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp114321%_
                                                      (cons _%k114338%_ '())))
                                          '())))
                        _%stx114275%_))))
               (if (pair? _%hd114324114331%_)
                   (let ((_%hd114328114344%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd114324114331%_)))
                         (_%tl114329114346%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd114324114331%_))))
                     (let* ((_%id114349%_ _%hd114328114344%_)
                            (_%k114351%_ _%tl114329114346%_))
                       (_%K114327114341%_ _%k114351%_ _%id114349%_)))
                   (_%E114326114335%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init114318%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp116049)))))
                     _%stx114275%_)
                    _%r114286%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match115902115903%_
                                                       (lambda (_%hd114293114356%_
                                                                _%tl114294114358%_
                                                                _%hd114295114363%_
                                                                _%tl114296114365%_)
                                                         (let ((_%tmp114361%_
                                                                _%hd114293114356%_)
                                                               (_%expr114368%_
                                                                _%hd114295114363%_))
                                                           (_%E114291114314%_))))
                                                      (_%__match115896115897%_
                                                       (lambda (_%hd114293114356%_
                                                                _%tl114294114358%_)
                                                         (let ((_%tmp114361%_
                                                                _%hd114293114356%_))
                                                           (_%E114291114314%_)))))
                                                 (if (pair? _%hd114287114310%_)
                                                     (let ((_%tl114306114413%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd114287114310%_)))
                                                           (_%hd114305114411%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd114287114310%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd114305114411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl114306114413%_)
                       (let ((_%tl114308114418%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl114306114413%_)))
                             (_%hd114307114416%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl114306114413%_))))
                         (if (null? _%tl114308114418%_)
                             (let ((_%expr114421%_ _%hd114307114416%_))
                               (_%K114304114408%_ _%expr114421%_))
                             (if (pair? _%tl114308114418%_)
                                 (let ((_%tl114298114372%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl114308114418%_)))
                                       (_%hd114297114370%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl114308114418%_))))
                                   (let ((_%tmp114361%_ _%hd114305114411%_)
                                         (_%expr114368%_ _%hd114307114416%_)
                                         (_%len114375%_ _%hd114297114370%_)
                                         (_%init114377%_ _%tl114298114372%_))
                                     (_%K114292114353%_
                                      _%init114377%_
                                      _%len114375%_
                                      _%expr114368%_
                                      _%tmp114361%_)))
                                 (_%__match115902115903%_
                                  _%hd114305114411%_
                                  _%tl114306114413%_
                                  _%hd114307114416%_
                                  _%tl114308114418%_))))
                       (_%__match115896115897%_
                        _%hd114305114411%_
                        _%tl114306114413%_))
                   (if (pair? _%tl114306114413%_)
                       (let ((_%tl114303114398%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl114306114413%_)))
                             (_%hd114302114396%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl114306114413%_))))
                         (if (null? _%tl114303114398%_)
                             (let ((_%id114394%_ _%hd114305114411%_)
                                   (_%expr114401%_ _%hd114302114396%_))
                               (_%K114299114386%_ _%expr114401%_ _%id114394%_))
                             (if (pair? _%tl114303114398%_)
                                 (let ((_%tl114298114372%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl114303114398%_)))
                                       (_%hd114297114370%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl114303114398%_))))
                                   (let ((_%tmp114361%_ _%hd114305114411%_)
                                         (_%expr114368%_ _%hd114302114396%_)
                                         (_%len114375%_ _%hd114297114370%_)
                                         (_%init114377%_ _%tl114298114372%_))
                                     (_%K114292114353%_
                                      _%init114377%_
                                      _%len114375%_
                                      _%expr114368%_
                                      _%tmp114361%_)))
                                 (_%__match115902115903%_
                                  _%hd114305114411%_
                                  _%tl114306114413%_
                                  _%hd114302114396%_
                                  _%tl114303114398%_))))
                       (_%__match115896115897%_
                        _%hd114305114411%_
                        _%tl114306114413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E114291114314%_)))))))
                                        (__tmp116047 (list _%body114283%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp116048
                                     __tmp116047
                                     _%post114282%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp116046)))
                     _%stx114275%_))))
          (__compile-let-form
           _%stx114275%_
           _%compile-simple114277%_
           _%compile-values114278%_))))
    (define __compile-call%
      (lambda (_%stx114235%_)
        (let* ((_%$e114237%_ _%stx114235%_)
               (_%$E114239114248%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114237%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114237%_))
              (let* ((_%$tgt114240114251%_
                      (let () (declare (not safe)) (__AST-e _%$e114237%_)))
                     (_%$hd114241114254%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114240114251%_)))
                     (_%$tl114242114257%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114240114251%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114242114257%_))
                    (let* ((_%$tgt114243114261%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114242114257%_)))
                           (_%$hd114244114264%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114243114261%_)))
                           (_%$tl114245114267%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114243114261%_)))
                           (_%rator114271%_ _%$hd114244114264%_)
                           (_%rands114273%_ _%$tl114245114267%_))
                      (__SRC__%
                       (cons (__compile _%rator114271%_)
                             (map __compile _%rands114273%_))
                       _%stx114235%_))
                    (_%$E114239114248%_)))
              (_%$E114239114248%_)))))
    (define __compile-ref%
      (lambda (_%stx114197%_)
        (let* ((_%$e114199%_ _%stx114197%_)
               (_%$E114201114210%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114199%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114199%_))
              (let* ((_%$tgt114202114213%_
                      (let () (declare (not safe)) (__AST-e _%$e114199%_)))
                     (_%$hd114203114216%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114202114213%_)))
                     (_%$tl114204114219%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114202114213%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114204114219%_))
                    (let* ((_%$tgt114205114223%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114204114219%_)))
                           (_%$hd114206114226%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114205114223%_)))
                           (_%$tl114207114229%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114205114223%_)))
                           (_%id114233%_ _%$hd114206114226%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114207114229%_))
                                  '())
                          (__SRC__% _%id114233%_ _%stx114197%_)
                          (_%$E114201114210%_)))
                    (_%$E114201114210%_)))
              (_%$E114201114210%_)))))
    (define __compile-setq%
      (lambda (_%stx114144%_)
        (let* ((_%$e114146%_ _%stx114144%_)
               (_%$E114148114160%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114146%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114146%_))
              (let* ((_%$tgt114149114163%_
                      (let () (declare (not safe)) (__AST-e _%$e114146%_)))
                     (_%$hd114150114166%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114149114163%_)))
                     (_%$tl114151114169%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114149114163%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114151114169%_))
                    (let* ((_%$tgt114152114173%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114151114169%_)))
                           (_%$hd114153114176%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114152114173%_)))
                           (_%$tl114154114179%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114152114173%_)))
                           (_%id114183%_ _%$hd114153114176%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114154114179%_))
                          (let* ((_%$tgt114155114185%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114154114179%_)))
                                 (_%$hd114156114188%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114155114185%_)))
                                 (_%$tl114157114191%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114155114185%_)))
                                 (_%expr114195%_ _%$hd114156114188%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114157114191%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id114183%_
                                              _%stx114144%_)
                                             (cons (__compile _%expr114195%_)
                                                   '())))
                                 _%stx114144%_)
                                (_%$E114148114160%_)))
                          (_%$E114148114160%_)))
                    (_%$E114148114160%_)))
              (_%$E114148114160%_)))))
    (define __compile-if%
      (lambda (_%stx114076%_)
        (let* ((_%$e114078%_ _%stx114076%_)
               (_%$E114080114095%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114078%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114078%_))
              (let* ((_%$tgt114081114098%_
                      (let () (declare (not safe)) (__AST-e _%$e114078%_)))
                     (_%$hd114082114101%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114081114098%_)))
                     (_%$tl114083114104%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114081114098%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114083114104%_))
                    (let* ((_%$tgt114084114108%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114083114104%_)))
                           (_%$hd114085114111%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114084114108%_)))
                           (_%$tl114086114114%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114084114108%_)))
                           (_%p114118%_ _%$hd114085114111%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114086114114%_))
                          (let* ((_%$tgt114087114120%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114086114114%_)))
                                 (_%$hd114088114123%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114087114120%_)))
                                 (_%$tl114089114126%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114087114120%_)))
                                 (_%t114130%_ _%$hd114088114123%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114089114126%_))
                                (let* ((_%$tgt114090114132%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114089114126%_)))
                                       (_%$hd114091114135%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114090114132%_)))
                                       (_%$tl114092114138%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114090114132%_)))
                                       (_%f114142%_ _%$hd114091114135%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114092114138%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p114118%_)
                                                   (cons (__compile
                                                          _%t114130%_)
                                                         (cons (__compile
                                                                _%f114142%_)
                                                               '()))))
                                       _%stx114076%_)
                                      (_%$E114080114095%_)))
                                (_%$E114080114095%_)))
                          (_%$E114080114095%_)))
                    (_%$E114080114095%_)))
              (_%$E114080114095%_)))))
    (define __compile-quote%
      (lambda (_%stx114038%_)
        (let* ((_%$e114040%_ _%stx114038%_)
               (_%$E114042114051%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114040%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114040%_))
              (let* ((_%$tgt114043114054%_
                      (let () (declare (not safe)) (__AST-e _%$e114040%_)))
                     (_%$hd114044114057%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114043114054%_)))
                     (_%$tl114045114060%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114043114054%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114045114060%_))
                    (let* ((_%$tgt114046114064%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114045114060%_)))
                           (_%$hd114047114067%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114046114064%_)))
                           (_%$tl114048114070%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114046114064%_)))
                           (_%e114074%_ _%$hd114047114067%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114048114070%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e114074%_))
                                       '()))
                           _%stx114038%_)
                          (_%$E114042114051%_)))
                    (_%$E114042114051%_)))
              (_%$E114042114051%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx114000%_)
        (let* ((_%$e114002%_ _%stx114000%_)
               (_%$E114004114013%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114002%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114002%_))
              (let* ((_%$tgt114005114016%_
                      (let () (declare (not safe)) (__AST-e _%$e114002%_)))
                     (_%$hd114006114019%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114005114016%_)))
                     (_%$tl114007114022%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114005114016%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114007114022%_))
                    (let* ((_%$tgt114008114026%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114007114022%_)))
                           (_%$hd114009114029%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114008114026%_)))
                           (_%$tl114010114032%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114008114026%_)))
                           (_%e114036%_ _%$hd114009114029%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114010114032%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e114036%_ '()))
                           _%stx114000%_)
                          (_%$E114004114013%_)))
                    (_%$E114004114013%_)))
              (_%$E114004114013%_)))))
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
