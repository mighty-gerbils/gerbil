(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-top::timestamp 1710833425)
  (begin
    (define gxc#::collect-top-level-type-info::t
      (let ((__tmp130650 (list gxc#::void::t))
            (__tmp130648
             (let ((__tmp130649
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130649 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-top-level-type-info::t
         '::collect-top-level-type-info
         __tmp130650
         '()
         __tmp130648
         '#f)))
    (define gxc#::collect-top-level-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-top-level-type-info::t)))
    (define gxc#make-::collect-top-level-type-info
      (lambda _$args128544_
        (apply make-instance
               gxc#::collect-top-level-type-info::t
               _$args128544_)))
    (define gxc#::collect-top-level-type-info-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-top-level-type-info::t
            '%#begin
            gxc#apply-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-top-level-type-info::t
            '%#begin-syntax
            gxc#apply-begin-syntax%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-top-level-type-info::t
            '%#module
            gxc#apply-module%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-top-level-type-info::t
            '%#define-values
            gxc#collect-top-level-type-define-values%))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::collect-top-level-type-info::t)))))
    (define gxc#apply-collect-top-level-type-info
      (lambda (_stx128536_)
        (force gxc#::collect-top-level-type-info-bind-methods!)
        (let* ((_self128539_
                (let ((__obj130631
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-top-level-type-info::t))))
                  __obj130631))
               (__tmp130651
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128539_ _stx128536_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130651
           gxc#current-compile-method
           _self128539_))))
    (define gxc#::basic-expression-top-level-type::t
      (let ((__tmp130654 (list gxc#::false::t))
            (__tmp130652
             (let ((__tmp130653
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130653 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-top-level-type::t
         '::basic-expression-top-level-type
         __tmp130654
         '()
         __tmp130652
         '#f)))
    (define gxc#::basic-expression-top-level-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-top-level-type::t)))
    (define gxc#make-::basic-expression-top-level-type
      (lambda _$args128533_
        (apply make-instance
               gxc#::basic-expression-top-level-type::t
               _$args128533_)))
    (define gxc#::basic-expression-top-level-type-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-top-level-type::t
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-top-level-type::t
            '%#call
            gxc#basic-expression-type-call%))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::basic-expression-top-level-type::t)))))
    (define gxc#apply-basic-expression-top-level-type
      (lambda (_stx128525_)
        (force gxc#::basic-expression-top-level-type-bind-methods!)
        (let* ((_self128528_
                (let ((__obj130633
                       (let ()
                         (declare (not safe))
                         (##structure
                          gxc#::basic-expression-top-level-type::t))))
                  __obj130633))
               (__tmp130655
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128528_ _stx128525_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130655
           gxc#current-compile-method
           _self128528_))))
    (define gxc#::collect-type-info::t
      (let ((__tmp130658 (list gxc#::void::t))
            (__tmp130656
             (let ((__tmp130657
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130657 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-type-info::t
         '::collect-type-info
         __tmp130658
         '()
         __tmp130656
         '#f)))
    (define gxc#::collect-type-info?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-type-info::t)))
    (define gxc#make-::collect-type-info
      (lambda _$args128522_
        (apply make-instance gxc#::collect-type-info::t _$args128522_)))
    (define gxc#::collect-type-info-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#begin
            gxc#apply-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#begin-syntax
            gxc#apply-begin-syntax%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#module
            gxc#apply-module%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#define-values
            gxc#collect-type-define-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#begin-annotation
            gxc#apply-begin-annotation%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#lambda
            gxc#apply-body-lambda%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#case-lambda
            gxc#apply-body-case-lambda%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#let-values
            gxc#collect-type-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#letrec-values
            gxc#collect-type-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#letrec*-values
            gxc#collect-type-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#call
            gxc#collect-type-call%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#if
            gxc#apply-operands))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::collect-type-info::t
            '%#set!
            gxc#apply-body-setq%))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::collect-type-info::t)))))
    (define gxc#apply-collect-type-info
      (lambda (_stx128514_)
        (force gxc#::collect-type-info-bind-methods!)
        (let* ((_self128517_
                (let ((__obj130635
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-type-info::t))))
                  __obj130635))
               (__tmp130659
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128517_ _stx128514_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130659
           gxc#current-compile-method
           _self128517_))))
    (define gxc#::basic-expression-type::t
      (let ((__tmp130662 (list gxc#::false::t))
            (__tmp130660
             (let ((__tmp130661
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130661 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::basic-expression-type::t
         '::basic-expression-type
         __tmp130662
         '()
         __tmp130660
         '#f)))
    (define gxc#::basic-expression-type?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::basic-expression-type::t)))
    (define gxc#make-::basic-expression-type
      (lambda _$args128511_
        (apply make-instance gxc#::basic-expression-type::t _$args128511_)))
    (define gxc#::basic-expression-type-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::false-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#begin
            gxc#basic-expression-type-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#lambda
            gxc#basic-expression-type-lambda%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#let-values
            gxc#basic-expression-type-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#letrec-values
            gxc#basic-expression-type-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#letrec*-values
            gxc#basic-expression-type-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#call
            gxc#basic-expression-type-call%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::basic-expression-type::t
            '%#ref
            gxc#basic-expression-type-ref%))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::basic-expression-type::t)))))
    (define gxc#apply-basic-expression-type
      (lambda (_stx128503_)
        (force gxc#::basic-expression-type-bind-methods!)
        (let* ((_self128506_
                (let ((__obj130637
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::basic-expression-type::t))))
                  __obj130637))
               (__tmp130663
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128506_ _stx128503_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130663
           gxc#current-compile-method
           _self128506_))))
    (define gxc#::lift-top-lambdas::t
      (let ((__tmp130666 (list gxc#::basic-xform::t))
            (__tmp130664
             (let ((__tmp130665
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp130665 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-top-lambdas::t
         '::lift-top-lambdas
         __tmp130666
         '()
         __tmp130664
         '#f)))
    (define gxc#::lift-top-lambdas?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-top-lambdas::t)))
    (define gxc#make-::lift-top-lambdas
      (lambda _$args128500_
        (apply make-instance gxc#::lift-top-lambdas::t _$args128500_)))
    (define gxc#::lift-top-lambdas-bind-methods!
      (make-promise
       (lambda ()
         (force gxc#::basic-xform-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::lift-top-lambdas::t
            '%#define-values
            gxc#lift-top-lambda-define-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::lift-top-lambdas::t
            '%#let-values
            gxc#lift-top-lambda-let-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::lift-top-lambdas::t
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::lift-top-lambdas::t
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%))
         (let ()
           (declare (not safe))
           (seal-class! gxc#::lift-top-lambdas::t)))))
    (define gxc#apply-lift-top-lambdas
      (lambda (_stx128492_)
        (force gxc#::lift-top-lambdas-bind-methods!)
        (let* ((_self128495_
                (let ((__obj130639
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::lift-top-lambdas::t))))
                  __obj130639))
               (__tmp130667
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self128495_ _stx128492_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp130667
           gxc#current-compile-method
           _self128495_))))
    (define gxc#collect-top-level-type-define-values%
      (lambda (_self128394_ _stx128395_)
        (let* ((___stx128557128558_ _stx128395_)
               (_g128398128418_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128557128558_)))))
          (let ((___kont128559128560_
                 (lambda (_L128462_ _L128463_)
                   (let ((_sym128481_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128463_))))
                     (if (let ((__tmp130668 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130668 _sym128481_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128481_))
                         (let ((_type128482128484_
                                (let ()
                                  (declare (not safe))
                                  (gxc#apply-basic-expression-top-level-type
                                   _L128462_))))
                           (if _type128482128484_
                               (let ((_type128487_ _type128482128484_))
                                 (declare (not safe))
                                 (gxc#optimizer-declare-type!__0
                                  _sym128481_
                                  _type128487_))
                               '#f))))))
                (___kont128561128562_ (lambda () '#!void)))
            (let ((___match128590128591_
                   (lambda (_e128404128430_
                            _hd128403128433_
                            _tl128402128435_
                            _e128407128438_
                            _hd128406128441_
                            _tl128405128443_
                            _e128410128446_
                            _hd128409128449_
                            _tl128408128451_
                            _e128413128454_
                            _hd128412128457_
                            _tl128411128459_)
                     (let ((_L128462_ _hd128412128457_)
                           (_L128463_ _hd128409128449_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128463_))
                           (___kont128559128560_ _L128462_ _L128463_)
                           (___kont128561128562_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128557128558_))
                  (let ((_e128404128430_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128557128558_))))
                    (let ((_tl128402128435_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128404128430_)))
                          (_hd128403128433_
                           (let ()
                             (declare (not safe))
                             (##car _e128404128430_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128402128435_))
                          (let ((_e128407128438_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128402128435_))))
                            (let ((_tl128405128443_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128407128438_)))
                                  (_hd128406128441_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128407128438_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128406128441_))
                                  (let ((_e128410128446_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128406128441_))))
                                    (let ((_tl128408128451_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128410128446_)))
                                          (_hd128409128449_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128410128446_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128408128451_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128405128443_))
                                              (let ((_e128413128454_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128405128443_))))
                                                (let ((_tl128411128459_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128413128454_)))
                                                      (_hd128412128457_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128413128454_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128411128459_))
                                                      (___match128590128591_
                                                       _e128404128430_
                                                       _hd128403128433_
                                                       _tl128402128435_
                                                       _e128407128438_
                                                       _hd128406128441_
                                                       _tl128405128443_
                                                       _e128410128446_
                                                       _hd128409128449_
                                                       _tl128408128451_
                                                       _e128413128454_
                                                       _hd128412128457_
                                                       _tl128411128459_)
                                                      (___kont128561128562_))))
                                              (___kont128561128562_))
                                          (___kont128561128562_))))
                                  (___kont128561128562_))))
                          (___kont128561128562_))))
                  (___kont128561128562_)))))))
    (define gxc#collect-type-define-values%
      (lambda (_self128249_ _stx128250_)
        (let* ((___stx128593128594_ _stx128250_)
               (_g128253128284_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128593128594_)))))
          (let ((___kont128595128596_
                 (lambda (_L128366_ _L128367_)
                   (let ((_sym128383_
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L128367_))))
                     (if (let ((__tmp130669 (gxc#current-compile-mutators)))
                           (declare (not safe))
                           (hash-get __tmp130669 _sym128383_))
                         (let ()
                           (declare (not safe))
                           (gxc#verbose
                            '"skipping type inference for mutable binding "
                            _sym128383_))
                         (if (let ()
                               (declare (not safe))
                               (gxc#optimizer-lookup-type _sym128383_))
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"skipping type inference for already declared type "
                                _sym128383_))
                             (let ((_type128384128386_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#apply-basic-expression-type
                                       _L128366_))))
                               (if _type128384128386_
                                   (let ((_type128389_ _type128384128386_))
                                     (declare (not safe))
                                     (gxc#optimizer-declare-type!__0
                                      _sym128383_
                                      _type128389_))
                                   '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _self128249_ _L128366_)))))
                (___kont128597128598_
                 (lambda (_L128313_ _L128314_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self128249_ _L128313_)))))
            (let ((___match128626128627_
                   (lambda (_e128259128334_
                            _hd128258128337_
                            _tl128257128339_
                            _e128262128342_
                            _hd128261128345_
                            _tl128260128347_
                            _e128265128350_
                            _hd128264128353_
                            _tl128263128355_
                            _e128268128358_
                            _hd128267128361_
                            _tl128266128363_)
                     (let ((_L128366_ _hd128267128361_)
                           (_L128367_ _hd128264128353_))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _L128367_))
                           (___kont128595128596_ _L128366_ _L128367_)
                           (___kont128597128598_
                            _hd128267128361_
                            _hd128261128345_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128593128594_))
                  (let ((_e128259128334_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128593128594_))))
                    (let ((_tl128257128339_
                           (let ()
                             (declare (not safe))
                             (##cdr _e128259128334_)))
                          (_hd128258128337_
                           (let ()
                             (declare (not safe))
                             (##car _e128259128334_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl128257128339_))
                          (let ((_e128262128342_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl128257128339_))))
                            (let ((_tl128260128347_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128262128342_)))
                                  (_hd128261128345_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128262128342_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd128261128345_))
                                  (let ((_e128265128350_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd128261128345_))))
                                    (let ((_tl128263128355_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128265128350_)))
                                          (_hd128264128353_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128265128350_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl128263128355_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128260128347_))
                                              (let ((_e128268128358_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128260128347_))))
                                                (let ((_tl128266128363_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128268128358_)))
                                                      (_hd128267128361_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128268128358_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128266128363_))
                                                      (___match128626128627_
                                                       _e128259128334_
                                                       _hd128258128337_
                                                       _tl128257128339_
                                                       _e128262128342_
                                                       _hd128261128345_
                                                       _tl128260128347_
                                                       _e128265128350_
                                                       _hd128264128353_
                                                       _tl128263128355_
                                                       _e128268128358_
                                                       _hd128267128361_
                                                       _tl128266128363_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g128253128284_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g128253128284_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl128260128347_))
                                              (let ((_e128279128305_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl128260128347_))))
                                                (let ((_tl128277128310_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e128279128305_)))
                                                      (_hd128278128308_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e128279128305_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl128277128310_))
                                                      (___kont128597128598_
                                                       _hd128278128308_
                                                       _hd128261128345_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g128253128284_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g128253128284_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl128260128347_))
                                      (let ((_e128279128305_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl128260128347_))))
                                        (let ((_tl128277128310_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e128279128305_)))
                                              (_hd128278128308_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e128279128305_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl128277128310_))
                                              (___kont128597128598_
                                               _hd128278128308_
                                               _hd128261128345_)
                                              (let ()
                                                (declare (not safe))
                                                (_g128253128284_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g128253128284_))))))
                          (let () (declare (not safe)) (_g128253128284_)))))
                  (let () (declare (not safe)) (_g128253128284_))))))))
    (define gxc#collect-type-let-values%
      (lambda (_self128029_ _stx128030_)
        (letrec ((_collect-e128032_
                  (lambda (_hd128193_ _expr128194_)
                    (let* ((___stx128649128650_ _hd128193_)
                           (_g128197128207_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx128649128650_)))))
                      (let ((___kont128651128652_
                             (lambda (_L128227_)
                               (let ((_sym128238_
                                      (let ()
                                        (declare (not safe))
                                        (gxc#identifier-symbol _L128227_))))
                                 (if (let ((__tmp130670
                                            (gxc#current-compile-mutators)))
                                       (declare (not safe))
                                       (hash-get __tmp130670 _sym128238_))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#verbose
                                        '"skipping type declaration for mutable binding "
                                        _sym128238_))
                                     (let ((_type128239128241_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-basic-expression-type
                                               _expr128194_))))
                                       (if _type128239128241_
                                           (let ((_type128244_
                                                  _type128239128241_))
                                             (declare (not safe))
                                             (gxc#optimizer-declare-type!__%
                                              _sym128238_
                                              _type128244_
                                              '#t))
                                           '#f))))))
                            (___kont128653128654_ (lambda () '#!void)))
                        (let ((___match128662128663_
                               (lambda (_e128202128219_
                                        _hd128201128222_
                                        _tl128200128224_)
                                 (let ((_L128227_ _hd128201128222_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _L128227_))
                                       (___kont128651128652_ _L128227_)
                                       (___kont128653128654_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx128649128650_))
                              (let ((_e128202128219_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx128649128650_))))
                                (let ((_tl128200128224_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128202128219_)))
                                      (_hd128201128222_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128202128219_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl128200128224_))
                                      (___match128662128663_
                                       _e128202128219_
                                       _hd128201128222_
                                       _tl128200128224_)
                                      (___kont128653128654_))))
                              (___kont128653128654_))))))))
          (let* ((_g128034128069_
                  (lambda (_g128035128066_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g128035128066_))))
                 (_g128033128190_
                  (lambda (_g128035128072_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g128035128072_))
                        (let ((_e128041128074_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g128035128072_))))
                          (let ((_hd128040128077_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128041128074_)))
                                (_tl128039128079_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128041128074_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128039128079_))
                                (let ((_e128044128082_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128039128079_))))
                                  (let ((_hd128043128085_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128044128082_)))
                                        (_tl128042128087_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128044128082_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd128043128085_))
                                        (let ((_g130671_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd128043128085_
                                                  '0))))
                                          (begin
                                            (let ((_g130672_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g130671_)
                                                         (##vector-length
                                                          _g130671_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g130672_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g130672_)))
                                            (let ((_target128045128090_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130671_
                                                      0)))
                                                  (_tl128047128092_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g130671_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl128047128092_))
                                                  (letrec ((_loop128048128095_
                                                            (lambda (_hd128046128098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr128052128100_
                             _hd128053128102_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd128046128098_))
                          (let ((_e128049128105_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd128046128098_))))
                            (let ((_lp-hd128050128108_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e128049128105_)))
                                  (_lp-tl128051128110_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e128049128105_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _lp-hd128050128108_))
                                  (let ((_e128058128113_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _lp-hd128050128108_))))
                                    (let ((_hd128057128116_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e128058128113_)))
                                          (_tl128056128118_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e128058128113_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl128056128118_))
                                          (let ((_e128061128121_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl128056128118_))))
                                            (let ((_hd128060128124_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128061128121_)))
                                                  (_tl128059128126_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128061128121_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl128059128126_))
                                                  (let ((__tmp130677
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _hd128060128124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _expr128052128100_)))
                (__tmp130676
                 (let ()
                   (declare (not safe))
                   (cons _hd128057128116_ _hd128053128102_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_loop128048128095_
                                                     _lp-tl128051128110_
                                                     __tmp130677
                                                     __tmp130676))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g128034128069_
                                                     _g128035128072_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g128034128069_
                                             _g128035128072_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g128034128069_ _g128035128072_)))))
                          (let ((_expr128054128129_
                                 (reverse _expr128052128100_))
                                (_hd128055128131_ (reverse _hd128053128102_)))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128042128087_))
                                (let ((_e128064128134_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128042128087_))))
                                  (let ((_hd128063128137_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128064128134_)))
                                        (_tl128062128139_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128064128134_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128062128139_))
                                        ((lambda (_L128142_
                                                  _L128143_
                                                  _L128144_)
                                           (for-each
                                            _collect-e128032_
                                            (let ((__tmp130673
                                                   (lambda (_g128164128167_
                                                            _g128165128169_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128164128167_
                                                             _g128165128169_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130673
                                                      '()
                                                      _L128144_))
                                            (let ((__tmp130674
                                                   (lambda (_g128171128174_
                                                            _g128172128176_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128171128174_
                                                             _g128172128176_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130674
                                                      '()
                                                      _L128143_)))
                                           (for-each
                                            (lambda (_g128178128180_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self128029_
                                                 _g128178128180_)))
                                            (let ((__tmp130675
                                                   (lambda (_g128182128185_
                                                            _g128183128187_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g128182128185_
                                                             _g128183128187_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp130675
                                                      '()
                                                      _L128143_)))
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self128029_
                                              _L128142_)))
                                         _hd128063128137_
                                         _expr128054128129_
                                         _hd128055128131_)
                                        (let ()
                                          (declare (not safe))
                                          (_g128034128069_ _g128035128072_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g128034128069_ _g128035128072_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop128048128095_
                                                       _target128045128090_
                                                       '()
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g128034128069_
                                                     _g128035128072_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g128034128069_ _g128035128072_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g128034128069_ _g128035128072_)))))
                        (let ()
                          (declare (not safe))
                          (_g128034128069_ _g128035128072_))))))
            (declare (not safe))
            (_g128033128190_ _stx128030_)))))
    (define gxc#collect-type-call%
      (lambda (_self127516_ _stx127517_)
        (let* ((___stx128665128666_ _stx127517_)
               (_g127521127636_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128665128666_)))))
          (let ((___kont128667128668_
                 (lambda (_L127979_ _L127980_ _L127981_ _L127982_ _L127983_)
                   (let ((__tmp130681
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127982_)))
                         (__tmp130680
                          (let () (declare (not safe)) (gx#stx-e _L127981_)))
                         (__tmp130679
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127980_)))
                         (__tmp130678
                          (let () (declare (not safe)) (gx#stx-e _L127979_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130681
                      __tmp130680
                      __tmp130679
                      __tmp130678))))
                (___kont128669128670_
                 (lambda (_L127807_ _L127808_ _L127809_ _L127810_)
                   (let ((__tmp130684
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127809_)))
                         (__tmp130683
                          (let () (declare (not safe)) (gx#stx-e _L127808_)))
                         (__tmp130682
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L127807_))))
                     (declare (not safe))
                     (gxc#optimizer-declare-method!__%
                      __tmp130684
                      __tmp130683
                      __tmp130682
                      '#f))))
                (___kont128671128672_
                 (lambda (_L127673_)
                   (for-each
                    (lambda (_g127686127688_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self127516_ _g127686127688_)))
                    (let ((__tmp130685
                           (lambda (_g127690127693_ _g127691127695_)
                             (let ()
                               (declare (not safe))
                               (cons _g127690127693_ _g127691127695_)))))
                      (declare (not safe))
                      (foldr1 __tmp130685 '() _L127673_))))))
            (let* ((___match128922128923_
                    (lambda (_e127622127641_
                             _hd127621127644_
                             _tl127620127646_
                             ___splice128673128674_
                             _target127623127649_
                             _tl127625127651_)
                      (letrec ((_loop127626127654_
                                (lambda (_hd127624127657_ _expr127630127659_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd127624127657_))
                                      (let ((_e127627127662_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd127624127657_))))
                                        (let ((_lp-tl127629127667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127627127662_)))
                                              (_lp-hd127628127665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127627127662_))))
                                          (let ((__tmp130686
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd127628127665_
                                                         _expr127630127659_))))
                                            (declare (not safe))
                                            (_loop127626127654_
                                             _lp-tl127629127667_
                                             __tmp130686))))
                                      (let ((_expr127631127670_
                                             (reverse _expr127630127659_)))
                                        (___kont128671128672_
                                         _expr127631127670_))))))
                        (let ()
                          (declare (not safe))
                          (_loop127626127654_ _target127623127649_ '())))))
                   (___match128802128803_
                    (lambda (_e127530127851_
                             _hd127529127854_
                             _tl127528127856_
                             _e127533127859_
                             _hd127532127862_
                             _tl127531127864_
                             _e127536127867_
                             _hd127535127870_
                             _tl127534127872_
                             _e127539127875_
                             _hd127538127878_
                             _tl127537127880_
                             _e127542127883_
                             _hd127541127886_
                             _tl127540127888_
                             _e127545127891_
                             _hd127544127894_
                             _tl127543127896_
                             _e127548127899_
                             _hd127547127902_
                             _tl127546127904_
                             _e127551127907_
                             _hd127550127910_
                             _tl127549127912_
                             _e127554127915_
                             _hd127553127918_
                             _tl127552127920_
                             _e127557127923_
                             _hd127556127926_
                             _tl127555127928_
                             _e127560127931_
                             _hd127559127934_
                             _tl127558127936_
                             _e127563127939_
                             _hd127562127942_
                             _tl127561127944_
                             _e127566127947_
                             _hd127565127950_
                             _tl127564127952_
                             _e127569127955_
                             _hd127568127958_
                             _tl127567127960_
                             _e127572127963_
                             _hd127571127966_
                             _tl127570127968_
                             _e127575127971_
                             _hd127574127974_
                             _tl127573127976_)
                      (let ((_L127979_ _hd127574127974_)
                            (_L127980_ _hd127565127950_)
                            (_L127981_ _hd127556127926_)
                            (_L127982_ _hd127547127902_)
                            (_L127983_ _hd127538127878_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#runtime-identifier=?
                               _L127983_
                               'bind-method!))
                            (___kont128667128668_
                             _L127979_
                             _L127980_
                             _L127981_
                             _L127982_
                             _L127983_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl127528127856_))
                                (let ((___splice128673128674_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl127528127856_
                                          '0))))
                                  (let ((_tl127625127651_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128673128674_
                                            '1)))
                                        (_target127623127649_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice128673128674_
                                            '0))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl127625127651_))
                                        (___match128922128923_
                                         _e127530127851_
                                         _hd127529127854_
                                         _tl127528127856_
                                         ___splice128673128674_
                                         _target127623127649_
                                         _tl127625127651_)
                                        (let ()
                                          (declare (not safe))
                                          (_g127521127636_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g127521127636_))))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128665128666_))
                  (let ((_e127530127851_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128665128666_))))
                    (let ((_tl127528127856_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127530127851_)))
                          (_hd127529127854_
                           (let ()
                             (declare (not safe))
                             (##car _e127530127851_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127528127856_))
                          (let ((_e127533127859_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127528127856_))))
                            (let ((_tl127531127864_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127533127859_)))
                                  (_hd127532127862_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127533127859_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd127532127862_))
                                  (let ((_e127536127867_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd127532127862_))))
                                    (let ((_tl127534127872_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127536127867_)))
                                          (_hd127535127870_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127536127867_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd127535127870_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd127535127870_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127534127872_))
                                                  (let ((_e127539127875_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127534127872_))))
                                                    (let ((_tl127537127880_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127539127875_)))
                                                          (_hd127538127878_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127539127875_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127537127880_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl127531127864_))
                      (let ((_e127542127883_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127531127864_))))
                        (let ((_tl127540127888_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127542127883_)))
                              (_hd127541127886_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127542127883_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd127541127886_))
                              (let ((_e127545127891_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd127541127886_))))
                                (let ((_tl127543127896_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127545127891_)))
                                      (_hd127544127894_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127545127891_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd127544127894_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd127544127894_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127543127896_))
                                              (let ((_e127548127899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127543127896_))))
                                                (let ((_tl127546127904_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127548127899_)))
                                                      (_hd127547127902_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127548127899_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127546127904_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl127540127888_))
                                                          (let ((_e127551127907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl127540127888_))))
                    (let ((_tl127549127912_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127551127907_)))
                          (_hd127550127910_
                           (let ()
                             (declare (not safe))
                             (##car _e127551127907_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd127550127910_))
                          (let ((_e127554127915_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd127550127910_))))
                            (let ((_tl127552127920_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127554127915_)))
                                  (_hd127553127918_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127554127915_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd127553127918_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd127553127918_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl127552127920_))
                                          (let ((_e127557127923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl127552127920_))))
                                            (let ((_tl127555127928_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e127557127923_)))
                                                  (_hd127556127926_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e127557127923_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127555127928_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127549127912_))
                                                      (let ((_e127560127931_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127549127912_))))
                (let ((_tl127558127936_
                       (let () (declare (not safe)) (##cdr _e127560127931_)))
                      (_hd127559127934_
                       (let () (declare (not safe)) (##car _e127560127931_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd127559127934_))
                      (let ((_e127563127939_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd127559127934_))))
                        (let ((_tl127561127944_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127563127939_)))
                              (_hd127562127942_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127563127939_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd127562127942_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd127562127942_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127561127944_))
                                      (let ((_e127566127947_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127561127944_))))
                                        (let ((_tl127564127952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127566127947_)))
                                              (_hd127565127950_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127566127947_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127564127952_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl127558127936_))
                                                  (let ((_e127569127955_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl127558127936_))))
                                                    (let ((_tl127567127960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e127569127955_)))
                                                          (_hd127568127958_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e127569127955_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd127568127958_))
                                                          (let ((_e127572127963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd127568127958_))))
                    (let ((_tl127570127968_
                           (let ()
                             (declare (not safe))
                             (##cdr _e127572127963_)))
                          (_hd127571127966_
                           (let ()
                             (declare (not safe))
                             (##car _e127572127963_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd127571127966_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd127571127966_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl127570127968_))
                                  (let ((_e127575127971_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl127570127968_))))
                                    (let ((_tl127573127976_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e127575127971_)))
                                          (_hd127574127974_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e127575127971_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127573127976_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127567127960_))
                                              (___match128802128803_
                                               _e127530127851_
                                               _hd127529127854_
                                               _tl127528127856_
                                               _e127533127859_
                                               _hd127532127862_
                                               _tl127531127864_
                                               _e127536127867_
                                               _hd127535127870_
                                               _tl127534127872_
                                               _e127539127875_
                                               _hd127538127878_
                                               _tl127537127880_
                                               _e127542127883_
                                               _hd127541127886_
                                               _tl127540127888_
                                               _e127545127891_
                                               _hd127544127894_
                                               _tl127543127896_
                                               _e127548127899_
                                               _hd127547127902_
                                               _tl127546127904_
                                               _e127551127907_
                                               _hd127550127910_
                                               _tl127549127912_
                                               _e127554127915_
                                               _hd127553127918_
                                               _tl127552127920_
                                               _e127557127923_
                                               _hd127556127926_
                                               _tl127555127928_
                                               _e127560127931_
                                               _hd127559127934_
                                               _tl127558127936_
                                               _e127563127939_
                                               _hd127562127942_
                                               _tl127561127944_
                                               _e127566127947_
                                               _hd127565127950_
                                               _tl127564127952_
                                               _e127569127955_
                                               _hd127568127958_
                                               _tl127567127960_
                                               _e127572127963_
                                               _hd127571127966_
                                               _tl127570127968_
                                               _e127575127971_
                                               _hd127574127974_
                                               _tl127573127976_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127528127856_))
                                                  (let ((___splice128673128674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127528127856_
                                                            '0))))
                                                    (let ((_tl127625127651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128673128674_
                                                              '1)))
                                                          (_target127623127649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128673128674_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127625127651_))
                                                          (___match128922128923_
                                                           _e127530127851_
                                                           _hd127529127854_
                                                           _tl127528127856_
                                                           ___splice128673128674_
                                                           _target127623127649_
                                                           _tl127625127651_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127521127636_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127521127636_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127528127856_))
                                              (let ((___splice128673128674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127528127856_
                                                        '0))))
                                                (let ((_tl127625127651_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128673128674_
                                                          '1)))
                                                      (_target127623127649_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128673128674_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127625127651_))
                                                      (___match128922128923_
                                                       _e127530127851_
                                                       _hd127529127854_
                                                       _tl127528127856_
                                                       ___splice128673128674_
                                                       _target127623127649_
                                                       _tl127625127651_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127521127636_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127521127636_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127528127856_))
                                      (let ((___splice128673128674_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127528127856_
                                                '0))))
                                        (let ((_tl127625127651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128673128674_
                                                  '1)))
                                              (_target127623127649_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128673128674_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127625127651_))
                                              (___match128922128923_
                                               _e127530127851_
                                               _hd127529127854_
                                               _tl127528127856_
                                               ___splice128673128674_
                                               _target127623127649_
                                               _tl127625127651_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127521127636_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127521127636_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127528127856_))
                                  (let ((___splice128673128674_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127528127856_
                                            '0))))
                                    (let ((_tl127625127651_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128673128674_
                                              '1)))
                                          (_target127623127649_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128673128674_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127625127651_))
                                          (___match128922128923_
                                           _e127530127851_
                                           _hd127529127854_
                                           _tl127528127856_
                                           ___splice128673128674_
                                           _target127623127649_
                                           _tl127625127651_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127521127636_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127521127636_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127528127856_))
                              (let ((___splice128673128674_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127528127856_
                                        '0))))
                                (let ((_tl127625127651_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128673128674_
                                          '1)))
                                      (_target127623127649_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128673128674_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127625127651_))
                                      (___match128922128923_
                                       _e127530127851_
                                       _hd127529127854_
                                       _tl127528127856_
                                       ___splice128673128674_
                                       _target127623127649_
                                       _tl127625127651_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127521127636_)))))
                              (let ()
                                (declare (not safe))
                                (_g127521127636_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127528127856_))
                      (let ((___splice128673128674_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127528127856_ '0))))
                        (let ((_tl127625127651_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128673128674_ '1)))
                              (_target127623127649_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128673128674_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127625127651_))
                              (___match128922128923_
                               _e127530127851_
                               _hd127529127854_
                               _tl127528127856_
                               ___splice128673128674_
                               _target127623127649_
                               _tl127625127651_)
                              (let ()
                                (declare (not safe))
                                (_g127521127636_)))))
                      (let () (declare (not safe)) (_g127521127636_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127558127936_))
                                                      (if (let ((__tmp130687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp130687 'bind-method!))
                  (let ((_L127807_ _hd127565127950_)
                        (_L127808_ _hd127556127926_)
                        (_L127809_ _hd127547127902_)
                        (_L127810_ _hd127538127878_))
                    (___kont128669128670_
                     _L127807_
                     _L127808_
                     _L127809_
                     _L127810_))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127528127856_))
                      (let ((___splice128673128674_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127528127856_ '0))))
                        (let ((_tl127625127651_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128673128674_ '1)))
                              (_target127623127649_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128673128674_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127625127651_))
                              (___match128922128923_
                               _e127530127851_
                               _hd127529127854_
                               _tl127528127856_
                               ___splice128673128674_
                               _target127623127649_
                               _tl127625127651_)
                              (let ()
                                (declare (not safe))
                                (_g127521127636_)))))
                      (let () (declare (not safe)) (_g127521127636_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127528127856_))
                  (let ((___splice128673128674_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127528127856_ '0))))
                    (let ((_tl127625127651_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128673128674_ '1)))
                          (_target127623127649_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128673128674_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127625127651_))
                          (___match128922128923_
                           _e127530127851_
                           _hd127529127854_
                           _tl127528127856_
                           ___splice128673128674_
                           _target127623127649_
                           _tl127625127651_)
                          (let () (declare (not safe)) (_g127521127636_)))))
                  (let () (declare (not safe)) (_g127521127636_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127528127856_))
                                                  (let ((___splice128673128674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127528127856_
                                                            '0))))
                                                    (let ((_tl127625127651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128673128674_
                                                              '1)))
                                                          (_target127623127649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128673128674_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127625127651_))
                                                          (___match128922128923_
                                                           _e127530127851_
                                                           _hd127529127854_
                                                           _tl127528127856_
                                                           ___splice128673128674_
                                                           _target127623127649_
                                                           _tl127625127651_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127521127636_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127521127636_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127528127856_))
                                          (let ((___splice128673128674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127528127856_
                                                    '0))))
                                            (let ((_tl127625127651_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128673128674_
                                                      '1)))
                                                  (_target127623127649_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128673128674_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127625127651_))
                                                  (___match128922128923_
                                                   _e127530127851_
                                                   _hd127529127854_
                                                   _tl127528127856_
                                                   ___splice128673128674_
                                                   _target127623127649_
                                                   _tl127625127651_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127521127636_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127521127636_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127528127856_))
                                      (let ((___splice128673128674_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127528127856_
                                                '0))))
                                        (let ((_tl127625127651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128673128674_
                                                  '1)))
                                              (_target127623127649_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128673128674_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127625127651_))
                                              (___match128922128923_
                                               _e127530127851_
                                               _hd127529127854_
                                               _tl127528127856_
                                               ___splice128673128674_
                                               _target127623127649_
                                               _tl127625127651_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127521127636_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127521127636_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127528127856_))
                                  (let ((___splice128673128674_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127528127856_
                                            '0))))
                                    (let ((_tl127625127651_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128673128674_
                                              '1)))
                                          (_target127623127649_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128673128674_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127625127651_))
                                          (___match128922128923_
                                           _e127530127851_
                                           _hd127529127854_
                                           _tl127528127856_
                                           ___splice128673128674_
                                           _target127623127649_
                                           _tl127625127651_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127521127636_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127521127636_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127528127856_))
                          (let ((___splice128673128674_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127528127856_
                                    '0))))
                            (let ((_tl127625127651_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128673128674_ '1)))
                                  (_target127623127649_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128673128674_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127625127651_))
                                  (___match128922128923_
                                   _e127530127851_
                                   _hd127529127854_
                                   _tl127528127856_
                                   ___splice128673128674_
                                   _target127623127649_
                                   _tl127625127651_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127521127636_)))))
                          (let () (declare (not safe)) (_g127521127636_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127528127856_))
                  (let ((___splice128673128674_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127528127856_ '0))))
                    (let ((_tl127625127651_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128673128674_ '1)))
                          (_target127623127649_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128673128674_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127625127651_))
                          (___match128922128923_
                           _e127530127851_
                           _hd127529127854_
                           _tl127528127856_
                           ___splice128673128674_
                           _target127623127649_
                           _tl127625127651_)
                          (let () (declare (not safe)) (_g127521127636_)))))
                  (let () (declare (not safe)) (_g127521127636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127528127856_))
                                                      (let ((___splice128673128674_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127528127856_ '0))))
                (let ((_tl127625127651_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128673128674_ '1)))
                      (_target127623127649_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128673128674_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127625127651_))
                      (___match128922128923_
                       _e127530127851_
                       _hd127529127854_
                       _tl127528127856_
                       ___splice128673128674_
                       _target127623127649_
                       _tl127625127651_)
                      (let () (declare (not safe)) (_g127521127636_)))))
              (let () (declare (not safe)) (_g127521127636_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127528127856_))
                                              (let ((___splice128673128674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127528127856_
                                                        '0))))
                                                (let ((_tl127625127651_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128673128674_
                                                          '1)))
                                                      (_target127623127649_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128673128674_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127625127651_))
                                                      (___match128922128923_
                                                       _e127530127851_
                                                       _hd127529127854_
                                                       _tl127528127856_
                                                       ___splice128673128674_
                                                       _target127623127649_
                                                       _tl127625127651_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127521127636_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127521127636_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127528127856_))
                                          (let ((___splice128673128674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127528127856_
                                                    '0))))
                                            (let ((_tl127625127651_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128673128674_
                                                      '1)))
                                                  (_target127623127649_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128673128674_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127625127651_))
                                                  (___match128922128923_
                                                   _e127530127851_
                                                   _hd127529127854_
                                                   _tl127528127856_
                                                   ___splice128673128674_
                                                   _target127623127649_
                                                   _tl127625127651_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127521127636_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127521127636_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127528127856_))
                                      (let ((___splice128673128674_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127528127856_
                                                '0))))
                                        (let ((_tl127625127651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128673128674_
                                                  '1)))
                                              (_target127623127649_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128673128674_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127625127651_))
                                              (___match128922128923_
                                               _e127530127851_
                                               _hd127529127854_
                                               _tl127528127856_
                                               ___splice128673128674_
                                               _target127623127649_
                                               _tl127625127651_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127521127636_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127521127636_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127528127856_))
                              (let ((___splice128673128674_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127528127856_
                                        '0))))
                                (let ((_tl127625127651_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128673128674_
                                          '1)))
                                      (_target127623127649_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128673128674_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127625127651_))
                                      (___match128922128923_
                                       _e127530127851_
                                       _hd127529127854_
                                       _tl127528127856_
                                       ___splice128673128674_
                                       _target127623127649_
                                       _tl127625127651_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127521127636_)))))
                              (let ()
                                (declare (not safe))
                                (_g127521127636_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127528127856_))
                      (let ((___splice128673128674_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127528127856_ '0))))
                        (let ((_tl127625127651_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128673128674_ '1)))
                              (_target127623127649_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128673128674_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127625127651_))
                              (___match128922128923_
                               _e127530127851_
                               _hd127529127854_
                               _tl127528127856_
                               ___splice128673128674_
                               _target127623127649_
                               _tl127625127651_)
                              (let ()
                                (declare (not safe))
                                (_g127521127636_)))))
                      (let () (declare (not safe)) (_g127521127636_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl127528127856_))
                  (let ((___splice128673128674_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl127528127856_ '0))))
                    (let ((_tl127625127651_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128673128674_ '1)))
                          (_target127623127649_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice128673128674_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127625127651_))
                          (___match128922128923_
                           _e127530127851_
                           _hd127529127854_
                           _tl127528127856_
                           ___splice128673128674_
                           _target127623127649_
                           _tl127625127651_)
                          (let () (declare (not safe)) (_g127521127636_)))))
                  (let () (declare (not safe)) (_g127521127636_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127528127856_))
                                                  (let ((___splice128673128674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127528127856_
                                                            '0))))
                                                    (let ((_tl127625127651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128673128674_
                                                              '1)))
                                                          (_target127623127649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128673128674_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127625127651_))
                                                          (___match128922128923_
                                                           _e127530127851_
                                                           _hd127529127854_
                                                           _tl127528127856_
                                                           ___splice128673128674_
                                                           _target127623127649_
                                                           _tl127625127651_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127521127636_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127521127636_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127528127856_))
                                              (let ((___splice128673128674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127528127856_
                                                        '0))))
                                                (let ((_tl127625127651_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128673128674_
                                                          '1)))
                                                      (_target127623127649_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128673128674_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127625127651_))
                                                      (___match128922128923_
                                                       _e127530127851_
                                                       _hd127529127854_
                                                       _tl127528127856_
                                                       ___splice128673128674_
                                                       _target127623127649_
                                                       _tl127625127651_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127521127636_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127521127636_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl127528127856_))
                                          (let ((___splice128673128674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl127528127856_
                                                    '0))))
                                            (let ((_tl127625127651_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128673128674_
                                                      '1)))
                                                  (_target127623127649_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice128673128674_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl127625127651_))
                                                  (___match128922128923_
                                                   _e127530127851_
                                                   _hd127529127854_
                                                   _tl127528127856_
                                                   ___splice128673128674_
                                                   _target127623127649_
                                                   _tl127625127651_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127521127636_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g127521127636_))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl127528127856_))
                                  (let ((___splice128673128674_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl127528127856_
                                            '0))))
                                    (let ((_tl127625127651_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128673128674_
                                              '1)))
                                          (_target127623127649_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice128673128674_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127625127651_))
                                          (___match128922128923_
                                           _e127530127851_
                                           _hd127529127854_
                                           _tl127528127856_
                                           ___splice128673128674_
                                           _target127623127649_
                                           _tl127625127651_)
                                          (let ()
                                            (declare (not safe))
                                            (_g127521127636_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g127521127636_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl127528127856_))
                          (let ((___splice128673128674_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl127528127856_
                                    '0))))
                            (let ((_tl127625127651_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice128673128674_ '1)))
                                  (_target127623127649_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice128673128674_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127625127651_))
                                  (___match128922128923_
                                   _e127530127851_
                                   _hd127529127854_
                                   _tl127528127856_
                                   ___splice128673128674_
                                   _target127623127649_
                                   _tl127625127651_)
                                  (let ()
                                    (declare (not safe))
                                    (_g127521127636_)))))
                          (let () (declare (not safe)) (_g127521127636_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl127528127856_))
                      (let ((___splice128673128674_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl127528127856_ '0))))
                        (let ((_tl127625127651_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128673128674_ '1)))
                              (_target127623127649_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice128673128674_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl127625127651_))
                              (___match128922128923_
                               _e127530127851_
                               _hd127529127854_
                               _tl127528127856_
                               ___splice128673128674_
                               _target127623127649_
                               _tl127625127651_)
                              (let ()
                                (declare (not safe))
                                (_g127521127636_)))))
                      (let () (declare (not safe)) (_g127521127636_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl127528127856_))
                                                      (let ((___splice128673128674_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl127528127856_ '0))))
                (let ((_tl127625127651_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128673128674_ '1)))
                      (_target127623127649_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice128673128674_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl127625127651_))
                      (___match128922128923_
                       _e127530127851_
                       _hd127529127854_
                       _tl127528127856_
                       ___splice128673128674_
                       _target127623127649_
                       _tl127625127651_)
                      (let () (declare (not safe)) (_g127521127636_)))))
              (let () (declare (not safe)) (_g127521127636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _tl127528127856_))
                                                  (let ((___splice128673128674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl127528127856_
                                                            '0))))
                                                    (let ((_tl127625127651_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128673128674_
                                                              '1)))
                                                          (_target127623127649_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128673128674_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl127625127651_))
                                                          (___match128922128923_
                                                           _e127530127851_
                                                           _hd127529127854_
                                                           _tl127528127856_
                                                           ___splice128673128674_
                                                           _target127623127649_
                                                           _tl127625127651_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g127521127636_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g127521127636_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl127528127856_))
                                              (let ((___splice128673128674_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl127528127856_
                                                        '0))))
                                                (let ((_tl127625127651_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128673128674_
                                                          '1)))
                                                      (_target127623127649_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice128673128674_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl127625127651_))
                                                      (___match128922128923_
                                                       _e127530127851_
                                                       _hd127529127854_
                                                       _tl127528127856_
                                                       ___splice128673128674_
                                                       _target127623127649_
                                                       _tl127625127651_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g127521127636_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g127521127636_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl127528127856_))
                                      (let ((___splice128673128674_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl127528127856_
                                                '0))))
                                        (let ((_tl127625127651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128673128674_
                                                  '1)))
                                              (_target127623127649_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice128673128674_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127625127651_))
                                              (___match128922128923_
                                               _e127530127851_
                                               _hd127529127854_
                                               _tl127528127856_
                                               ___splice128673128674_
                                               _target127623127649_
                                               _tl127625127651_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127521127636_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127521127636_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl127528127856_))
                              (let ((___splice128673128674_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl127528127856_
                                        '0))))
                                (let ((_tl127625127651_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128673128674_
                                          '1)))
                                      (_target127623127649_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice128673128674_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127625127651_))
                                      (___match128922128923_
                                       _e127530127851_
                                       _hd127529127854_
                                       _tl127528127856_
                                       ___splice128673128674_
                                       _target127623127649_
                                       _tl127625127651_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127521127636_)))))
                              (let ()
                                (declare (not safe))
                                (_g127521127636_))))))
                  (let () (declare (not safe)) (_g127521127636_))))))))
    (define gxc#current-compile-type-closure (make-parameter '#f))
    (define gxc#basic-expression-type-begin%
      (lambda (_self127455_ _stx127456_)
        (let* ((___stx128925128926_ _stx127456_)
               (_g127459127472_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128925128926_)))))
          (let ((___kont128927128928_
                 (lambda (_L127500_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self127455_ _L127500_))))
                (___kont128929128930_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx128925128926_))
                (let ((_e127464127484_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx128925128926_))))
                  (let ((_tl127462127489_
                         (let () (declare (not safe)) (##cdr _e127464127484_)))
                        (_hd127463127487_
                         (let ()
                           (declare (not safe))
                           (##car _e127464127484_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl127462127489_))
                        (let ((_e127467127492_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl127462127489_))))
                          (let ((_tl127465127497_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e127467127492_)))
                                (_hd127466127495_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e127467127492_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl127465127497_))
                                (___kont128927128928_ _hd127466127495_)
                                (___kont128929128930_))))
                        (___kont128929128930_))))
                (___kont128929128930_))))))
    (define gxc#basic-expression-type-annotations
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-begin-annotation%
      (lambda (_self127334_ _stx127335_)
        (let* ((_g127337127354_
                (lambda (_g127338127351_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127338127351_))))
               (_g127336127452_
                (lambda (_g127338127357_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127338127357_))
                      (let ((_e127343127359_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127338127357_))))
                        (let ((_hd127342127362_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127343127359_)))
                              (_tl127341127364_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127343127359_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127341127364_))
                              (let ((_e127346127367_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127341127364_))))
                                (let ((_hd127345127370_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127346127367_)))
                                      (_tl127344127372_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127346127367_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127344127372_))
                                      (let ((_e127349127375_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127344127372_))))
                                        (let ((_hd127348127378_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127349127375_)))
                                              (_tl127347127380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127349127375_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127347127380_))
                                              ((lambda (_L127383_ _L127384_)
                                                 (let* ((___stx128947128948_
                                                         _L127384_)
                                                        (_g127400127411_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx128947128948_)))))
                                                   (let ((___kont128949128950_
                                                          (lambda (_L127431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L127432_)
                    (let ((_$e127444_
                           (let ((__tmp130688
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _L127432_))))
                             (declare (not safe))
                             (hash-get
                              gxc#basic-expression-type-annotations
                              __tmp130688))))
                      (if _$e127444_
                          ((lambda (_type-e127447_)
                             (_type-e127447_ _stx127335_ _L127384_))
                           _$e127444_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__1 _self127334_ _L127383_))))))
                 (___kont128951128952_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self127334_ _L127383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((___match128958128959_
                                                            (lambda (_e127406127423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd127405127426_
                             _tl127404127428_)
                      (let ((_L127431_ _tl127404127428_)
                            (_L127432_ _hd127405127426_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L127432_))
                            (___kont128949128950_ _L127431_ _L127432_)
                            (___kont128951128952_))))))
               (if (let ()
                     (declare (not safe))
                     (gx#stx-pair? ___stx128947128948_))
                   (let ((_e127406127423_
                          (let ()
                            (declare (not safe))
                            (gx#stx-e ___stx128947128948_))))
                     (let ((_tl127404127428_
                            (let ()
                              (declare (not safe))
                              (##cdr _e127406127423_)))
                           (_hd127405127426_
                            (let ()
                              (declare (not safe))
                              (##car _e127406127423_))))
                       (___match128958128959_
                        _e127406127423_
                        _hd127405127426_
                        _tl127404127428_)))
                   (___kont128951128952_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd127348127378_
                                               _hd127345127370_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127337127354_
                                                 _g127338127357_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127337127354_ _g127338127357_)))))
                              (let ()
                                (declare (not safe))
                                (_g127337127354_ _g127338127357_)))))
                      (let ()
                        (declare (not safe))
                        (_g127337127354_ _g127338127357_))))))
          (declare (not safe))
          (_g127336127452_ _stx127335_))))
    (define gxc#basic-expression-type-annotation-mop.class
      (lambda (_stx127178_ _ann127179_)
        (let* ((_g127181127218_
                (lambda (_g127182127215_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127182127215_))))
               (_g127180127331_
                (lambda (_g127182127221_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127182127221_))
                      (let ((_e127192127223_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127182127221_))))
                        (let ((_hd127191127226_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127192127223_)))
                              (_tl127190127228_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127192127223_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127190127228_))
                              (let ((_e127195127231_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127190127228_))))
                                (let ((_hd127194127234_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127195127231_)))
                                      (_tl127193127236_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127195127231_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127193127236_))
                                      (let ((_e127198127239_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127193127236_))))
                                        (let ((_hd127197127242_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127198127239_)))
                                              (_tl127196127244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127198127239_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl127196127244_))
                                              (let ((_e127201127247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl127196127244_))))
                                                (let ((_hd127200127250_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e127201127247_)))
                                                      (_tl127199127252_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e127201127247_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl127199127252_))
                                                      (let ((_e127204127255_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl127199127252_))))
                (let ((_hd127203127258_
                       (let () (declare (not safe)) (##car _e127204127255_)))
                      (_tl127202127260_
                       (let () (declare (not safe)) (##cdr _e127204127255_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl127202127260_))
                      (let ((_e127207127263_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl127202127260_))))
                        (let ((_hd127206127266_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127207127263_)))
                              (_tl127205127268_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127207127263_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127205127268_))
                              (let ((_e127210127271_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127205127268_))))
                                (let ((_hd127209127274_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127210127271_)))
                                      (_tl127208127276_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127210127271_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127208127276_))
                                      (let ((_e127213127279_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127208127276_))))
                                        (let ((_hd127212127282_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127213127279_)))
                                              (_tl127211127284_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127213127279_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127211127284_))
                                              ((lambda (_L127287_
                                                        _L127288_
                                                        _L127289_
                                                        _L127290_
                                                        _L127291_
                                                        _L127292_
                                                        _L127293_)
                                                 (let ((_type-id127323_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127293_)))
                                                       (_super127324_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127292_)))
                                                       (_slots127325_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gx#stx-e
                                                           _L127291_)))
                                                       (_ctor-method127326_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127290_)))
                                                       (_struct?127327_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127289_)))
                                                       (_final?127328_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127288_)))
                                                       (_metaclass127329_
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _L127287_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#identifier-symbol
                                                               _L127287_))
                                                            '#f)))
                                                   (let ((__obj130640
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure
                                                             gxc#!class::t
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f))))
                                                     (gxc#!class:::init!
                                                      __obj130640
                                                      _type-id127323_
                                                      _super127324_
                                                      _slots127325_
                                                      _ctor-method127326_
                                                      _struct?127327_
                                                      _final?127328_
                                                      '#f
                                                      _metaclass127329_)
                                                     __obj130640)))
                                               _hd127212127282_
                                               _hd127209127274_
                                               _hd127206127266_
                                               _hd127203127258_
                                               _hd127200127250_
                                               _hd127197127242_
                                               _hd127194127234_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127181127218_
                                                 _g127182127221_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127181127218_ _g127182127221_)))))
                              (let ()
                                (declare (not safe))
                                (_g127181127218_ _g127182127221_)))))
                      (let ()
                        (declare (not safe))
                        (_g127181127218_ _g127182127221_)))))
              (let ()
                (declare (not safe))
                (_g127181127218_ _g127182127221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g127181127218_
                                                 _g127182127221_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127181127218_ _g127182127221_)))))
                              (let ()
                                (declare (not safe))
                                (_g127181127218_ _g127182127221_)))))
                      (let ()
                        (declare (not safe))
                        (_g127181127218_ _g127182127221_))))))
          (declare (not safe))
          (_g127180127331_ _ann127179_))))
    (define gxc#basic-expression-type-annotation-mop.system
      (lambda (_stx127107_ _ann127108_)
        (let* ((_g127110127127_
                (lambda (_g127111127124_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127111127124_))))
               (_g127109127175_
                (lambda (_g127111127130_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127111127130_))
                      (let ((_e127116127132_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127111127130_))))
                        (let ((_hd127115127135_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127116127132_)))
                              (_tl127114127137_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127116127132_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127114127137_))
                              (let ((_e127119127140_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127114127137_))))
                                (let ((_hd127118127143_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127119127140_)))
                                      (_tl127117127145_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127119127140_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl127117127145_))
                                      (let ((_e127122127148_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl127117127145_))))
                                        (let ((_hd127121127151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e127122127148_)))
                                              (_tl127120127153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e127122127148_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl127120127153_))
                                              ((lambda (_L127156_ _L127157_)
                                                 (let ((_type-id127172_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L127157_)))
                                                       (_super127173_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-map1
                                                           gxc#identifier-symbol
                                                           _L127156_))))
                                                   (let ((__obj130641
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure
                                                             gxc#!class::t
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f
                                                             '#f))))
                                                     (gxc#!class:::init!
                                                      __obj130641
                                                      _type-id127172_
                                                      _super127173_
                                                      '()
                                                      '#f
                                                      '#f
                                                      '#f
                                                      '#t
                                                      '#f)
                                                     __obj130641)))
                                               _hd127121127151_
                                               _hd127118127143_)
                                              (let ()
                                                (declare (not safe))
                                                (_g127110127127_
                                                 _g127111127130_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g127110127127_ _g127111127130_)))))
                              (let ()
                                (declare (not safe))
                                (_g127110127127_ _g127111127130_)))))
                      (let ()
                        (declare (not safe))
                        (_g127110127127_ _g127111127130_))))))
          (declare (not safe))
          (_g127109127175_ _ann127108_))))
    (define gxc#basic-expression-type-annotation-mop.constructor
      (lambda (_stx127055_ _ann127056_)
        (let* ((_g127058127071_
                (lambda (_g127059127068_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127059127068_))))
               (_g127057127104_
                (lambda (_g127059127074_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127059127074_))
                      (let ((_e127063127076_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127059127074_))))
                        (let ((_hd127062127079_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127063127076_)))
                              (_tl127061127081_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127063127076_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127061127081_))
                              (let ((_e127066127084_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127061127081_))))
                                (let ((_hd127065127087_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127066127084_)))
                                      (_tl127064127089_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127066127084_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127064127089_))
                                      ((lambda (_L127092_)
                                         (let ((__tmp130689
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L127092_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!constructor::t
                                            __tmp130689)))
                                       _hd127065127087_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127058127071_ _g127059127074_)))))
                              (let ()
                                (declare (not safe))
                                (_g127058127071_ _g127059127074_)))))
                      (let ()
                        (declare (not safe))
                        (_g127058127071_ _g127059127074_))))))
          (declare (not safe))
          (_g127057127104_ _ann127056_))))
    (define gxc#basic-expression-type-annotation-mop.predicate
      (lambda (_stx127003_ _ann127004_)
        (let* ((_g127006127019_
                (lambda (_g127007127016_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g127007127016_))))
               (_g127005127052_
                (lambda (_g127007127022_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g127007127022_))
                      (let ((_e127011127024_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g127007127022_))))
                        (let ((_hd127010127027_
                               (let ()
                                 (declare (not safe))
                                 (##car _e127011127024_)))
                              (_tl127009127029_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e127011127024_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127009127029_))
                              (let ((_e127014127032_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127009127029_))))
                                (let ((_hd127013127035_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127014127032_)))
                                      (_tl127012127037_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127014127032_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127012127037_))
                                      ((lambda (_L127040_)
                                         (let ((__tmp130690
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L127040_))))
                                           (declare (not safe))
                                           (##structure
                                            gxc#!predicate::t
                                            __tmp130690)))
                                       _hd127013127035_)
                                      (let ()
                                        (declare (not safe))
                                        (_g127006127019_ _g127007127022_)))))
                              (let ()
                                (declare (not safe))
                                (_g127006127019_ _g127007127022_)))))
                      (let ()
                        (declare (not safe))
                        (_g127006127019_ _g127007127022_))))))
          (declare (not safe))
          (_g127005127052_ _ann127004_))))
    (define gxc#basic-expression-type-annotation-mop.accessor
      (lambda (_stx126919_ _ann126920_)
        (let* ((_g126922126943_
                (lambda (_g126923126940_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126923126940_))))
               (_g126921127000_
                (lambda (_g126923126946_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126923126946_))
                      (let ((_e126929126948_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126923126946_))))
                        (let ((_hd126928126951_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126929126948_)))
                              (_tl126927126953_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126929126948_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126927126953_))
                              (let ((_e126932126956_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126927126953_))))
                                (let ((_hd126931126959_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126932126956_)))
                                      (_tl126930126961_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126932126956_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126930126961_))
                                      (let ((_e126935126964_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126930126961_))))
                                        (let ((_hd126934126967_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126935126964_)))
                                              (_tl126933126969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126935126964_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126933126969_))
                                              (let ((_e126938126972_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126933126969_))))
                                                (let ((_hd126937126975_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126938126972_)))
                                                      (_tl126936126977_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126938126972_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126936126977_))
                                                      ((lambda (_L126980_
                                                                _L126981_
                                                                _L126982_)
                                                         (let ((__tmp130693
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126982_)))
                       (__tmp130692
                        (let () (declare (not safe)) (gx#stx-e _L126981_)))
                       (__tmp130691
                        (let () (declare (not safe)) (gx#stx-e _L126980_))))
                   (declare (not safe))
                   (##structure
                    gxc#!accessor::t
                    __tmp130693
                    __tmp130692
                    __tmp130691)))
               _hd126937126975_
               _hd126934126967_
               _hd126931126959_)
              (let ()
                (declare (not safe))
                (_g126922126943_ _g126923126946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126922126943_
                                                 _g126923126946_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126922126943_ _g126923126946_)))))
                              (let ()
                                (declare (not safe))
                                (_g126922126943_ _g126923126946_)))))
                      (let ()
                        (declare (not safe))
                        (_g126922126943_ _g126923126946_))))))
          (declare (not safe))
          (_g126921127000_ _ann126920_))))
    (define gxc#basic-expression-type-annotation-mop.mutator
      (lambda (_stx126835_ _ann126836_)
        (let* ((_g126838126859_
                (lambda (_g126839126856_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g126839126856_))))
               (_g126837126916_
                (lambda (_g126839126862_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g126839126862_))
                      (let ((_e126845126864_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g126839126862_))))
                        (let ((_hd126844126867_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126845126864_)))
                              (_tl126843126869_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126845126864_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126843126869_))
                              (let ((_e126848126872_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126843126869_))))
                                (let ((_hd126847126875_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126848126872_)))
                                      (_tl126846126877_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126848126872_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126846126877_))
                                      (let ((_e126851126880_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126846126877_))))
                                        (let ((_hd126850126883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126851126880_)))
                                              (_tl126849126885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126851126880_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126849126885_))
                                              (let ((_e126854126888_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126849126885_))))
                                                (let ((_hd126853126891_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126854126888_)))
                                                      (_tl126852126893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126854126888_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126852126893_))
                                                      ((lambda (_L126896_
                                                                _L126897_
                                                                _L126898_)
                                                         (let ((__tmp130696
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#identifier-symbol _L126898_)))
                       (__tmp130695
                        (let () (declare (not safe)) (gx#stx-e _L126897_)))
                       (__tmp130694
                        (let () (declare (not safe)) (gx#stx-e _L126896_))))
                   (declare (not safe))
                   (##structure
                    gxc#!mutator::t
                    __tmp130696
                    __tmp130695
                    __tmp130694)))
               _hd126853126891_
               _hd126850126883_
               _hd126847126875_)
              (let ()
                (declare (not safe))
                (_g126838126859_ _g126839126862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g126838126859_
                                                 _g126839126862_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g126838126859_ _g126839126862_)))))
                              (let ()
                                (declare (not safe))
                                (_g126838126859_ _g126839126862_)))))
                      (let ()
                        (declare (not safe))
                        (_g126838126859_ _g126839126862_))))))
          (declare (not safe))
          (_g126837126916_ _ann126836_))))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.class
       gxc#basic-expression-type-annotation-mop.class))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.constructor
       gxc#basic-expression-type-annotation-mop.constructor))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.predicate
       gxc#basic-expression-type-annotation-mop.predicate))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.accessor
       gxc#basic-expression-type-annotation-mop.accessor))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.mutator
       gxc#basic-expression-type-annotation-mop.mutator))
    (let ()
      (declare (not safe))
      (hash-put!
       gxc#basic-expression-type-annotations
       '@mop.system
       gxc#basic-expression-type-annotation-mop.system))
    (define gxc#basic-expression-type-lambda%
      (lambda (_self125954_ _stx125955_)
        (let* ((___stx128961128962_ _stx125955_)
               (_g125961126157_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx128961128962_)))))
          (let ((___kont128963128964_
                 (lambda (_L126823_)
                   (let ((__obj130642
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130642
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126823_))
                      '#f)
                     __obj130642)))
                (___kont128965128966_
                 (lambda (_L126750_
                          _L126751_
                          _L126752_
                          _L126753_
                          _L126754_
                          _L126755_)
                   (let* ((_tab126805_
                           (let () (declare (not safe)) (gx#stx-e _L126752_)))
                          (_keys126807_
                           (if _tab126805_
                               (filter values (vector->list _tab126805_))
                               '#f)))
                     (let ((__tmp130697
                            (let ()
                              (declare (not safe))
                              (gxc#identifier-symbol _L126751_))))
                       (declare (not safe))
                       (##structure
                        gxc#!kw-lambda::t
                        'kw-lambda
                        _keys126807_
                        __tmp130697)))))
                (___kont128967128968_
                 (lambda (_L126483_
                          _L126484_
                          _L126485_
                          _L126486_
                          _L126487_
                          _L126488_
                          _L126489_
                          _L126490_
                          _L126491_
                          _L126492_)
                   (let ((__tmp130699
                          (map gx#stx-e
                               (let ((__tmp130700
                                      (lambda (_g126585126588_ _g126586126590_)
                                        (let ()
                                          (declare (not safe))
                                          (cons _g126585126588_
                                                _g126586126590_)))))
                                 (declare (not safe))
                                 (foldr1 __tmp130700 '() _L126485_))))
                         (__tmp130698
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _L126489_))))
                     (declare (not safe))
                     (##structure
                      gxc#!kw-lambda-primary::t
                      'kw-lambda-dispatch
                      __tmp130699
                      __tmp130698))))
                (___kont128971128972_
                 (lambda (_L126193_)
                   (let ((__obj130643
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130643
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126193_))
                      (let ()
                        (declare (not safe))
                        (gxc#dispatch-lambda-form-delegate _L126193_)))
                     __obj130643)))
                (___kont128973128974_
                 (lambda (_L126170_)
                   (let ((__obj130644
                          (let ()
                            (declare (not safe))
                            (##structure gxc#!lambda::t '#f '#f '#f '#f '#f))))
                     (gxc#!lambda:::init!
                      __obj130644
                      'lambda
                      (let ()
                        (declare (not safe))
                        (gxc#lambda-form-arity _L126170_))
                      '#f)
                     __obj130644))))
            (let* ((___match129280129281_
                    (lambda (_e126148126185_ _hd126147126188_ _tl126146126190_)
                      (let ((_L126193_ _tl126146126190_))
                        (if (let ()
                              (declare (not safe))
                              (gxc#dispatch-lambda-form? _L126193_))
                            (___kont128971128972_ _L126193_)
                            (___kont128973128974_ _tl126146126190_)))))
                   (___match129274129275_
                    (lambda (_e126042126207_
                             _hd126041126210_
                             _tl126040126212_
                             _e126045126215_
                             _hd126044126218_
                             _tl126043126220_
                             _e126048126223_
                             _hd126047126226_
                             _tl126046126228_
                             _e126051126231_
                             _hd126050126234_
                             _tl126049126236_
                             _e126054126239_
                             _hd126053126242_
                             _tl126052126244_
                             _e126057126247_
                             _hd126056126250_
                             _tl126055126252_
                             _e126060126255_
                             _hd126059126258_
                             _tl126058126260_
                             _e126063126263_
                             _hd126062126266_
                             _tl126061126268_
                             _e126066126271_
                             _hd126065126274_
                             _tl126064126276_
                             _e126069126279_
                             _hd126068126282_
                             _tl126067126284_
                             _e126072126287_
                             _hd126071126290_
                             _tl126070126292_
                             _e126075126295_
                             _hd126074126298_
                             _tl126073126300_
                             _e126078126303_
                             _hd126077126306_
                             _tl126076126308_
                             _e126081126311_
                             _hd126080126314_
                             _tl126079126316_
                             ___splice128969128970_
                             _target126082126319_
                             _tl126084126321_
                             _e126099126324_
                             _hd126098126327_
                             _tl126097126329_
                             _e126102126332_
                             _hd126101126335_
                             _tl126100126337_
                             _e126105126340_
                             _hd126104126343_
                             _tl126103126345_)
                      (letrec ((_loop126085126348_
                                (lambda (_hd126083126351_
                                         _-absent-value126089126353_
                                         _key126090126355_
                                         _-xkwvar126091126357_
                                         _-hash-ref126092126359_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd126083126351_))
                                      (let ((_e126086126362_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd126083126351_))))
                                        (let ((_lp-tl126088126367_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126086126362_)))
                                              (_lp-hd126087126365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126086126362_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _lp-hd126087126365_))
                                              (let ((_e126108126370_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _lp-hd126087126365_))))
                                                (let ((_tl126106126375_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126108126370_)))
                                                      (_hd126107126373_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126108126370_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd126107126373_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#call
                                                             _hd126107126373_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl126106126375_))
                      (let ((_e126111126378_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126106126375_))))
                        (let ((_tl126109126383_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126111126378_)))
                              (_hd126110126381_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126111126378_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd126110126381_))
                              (let ((_e126114126386_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd126110126381_))))
                                (let ((_tl126112126391_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126114126386_)))
                                      (_hd126113126389_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126114126386_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd126113126389_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd126113126389_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126112126391_))
                                              (let ((_e126117126394_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126112126391_))))
                                                (let ((_tl126115126399_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126117126394_)))
                                                      (_hd126116126397_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126117126394_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126115126399_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126109126383_))
                                                          (let ((_e126120126402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126109126383_))))
                    (let ((_tl126118126407_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126120126402_)))
                          (_hd126119126405_
                           (let ()
                             (declare (not safe))
                             (##car _e126120126402_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126119126405_))
                          (let ((_e126123126410_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126119126405_))))
                            (let ((_tl126121126415_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126123126410_)))
                                  (_hd126122126413_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126123126410_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126122126413_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126122126413_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126121126415_))
                                          (let ((_e126126126418_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126121126415_))))
                                            (let ((_tl126124126423_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126126126418_)))
                                                  (_hd126125126421_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126126126418_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126124126423_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126118126407_))
                                                      (let ((_e126129126426_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126118126407_))))
                (let ((_tl126127126431_
                       (let () (declare (not safe)) (##cdr _e126129126426_)))
                      (_hd126128126429_
                       (let () (declare (not safe)) (##car _e126129126426_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126128126429_))
                      (let ((_e126132126434_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126128126429_))))
                        (let ((_tl126130126439_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126132126434_)))
                              (_hd126131126437_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126132126434_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126131126437_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#quote _hd126131126437_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126130126439_))
                                      (let ((_e126135126442_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126130126439_))))
                                        (let ((_tl126133126447_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126135126442_)))
                                              (_hd126134126445_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126135126442_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126133126447_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126127126431_))
                                                  (let ((_e126138126450_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126127126431_))))
                                                    (let ((_tl126136126455_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126138126450_)))
                                                          (_hd126137126453_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126138126450_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126137126453_))
                                                          (let ((_e126141126458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126137126453_))))
                    (let ((_tl126139126463_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126141126458_)))
                          (_hd126140126461_
                           (let ()
                             (declare (not safe))
                             (##car _e126141126458_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126140126461_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd126140126461_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126139126463_))
                                  (let ((_e126144126466_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126139126463_))))
                                    (let ((_tl126142126471_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126144126466_)))
                                          (_hd126143126469_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126144126466_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126142126471_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126136126455_))
                                              (let ((__tmp130715
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126143126469_
                                                             _-absent-value126089126353_)))
                                                    (__tmp130714
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126134126445_
                                                             _key126090126355_)))
                                                    (__tmp130713
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126125126421_
                                                             _-xkwvar126091126357_)))
                                                    (__tmp130712
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd126116126397_
                                                             _-hash-ref126092126359_))))
                                                (declare (not safe))
                                                (_loop126085126348_
                                                 _lp-tl126088126367_
                                                 __tmp130715
                                                 __tmp130714
                                                 __tmp130713
                                                 __tmp130712))
                                              (___match129280129281_
                                               _e126042126207_
                                               _hd126041126210_
                                               _tl126040126212_))
                                          (___match129280129281_
                                           _e126042126207_
                                           _hd126041126210_
                                           _tl126040126212_))))
                                  (___match129280129281_
                                   _e126042126207_
                                   _hd126041126210_
                                   _tl126040126212_))
                              (___match129280129281_
                               _e126042126207_
                               _hd126041126210_
                               _tl126040126212_))
                          (___match129280129281_
                           _e126042126207_
                           _hd126041126210_
                           _tl126040126212_))))
                  (___match129280129281_
                   _e126042126207_
                   _hd126041126210_
                   _tl126040126212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129280129281_
                                                   _e126042126207_
                                                   _hd126041126210_
                                                   _tl126040126212_))
                                              (___match129280129281_
                                               _e126042126207_
                                               _hd126041126210_
                                               _tl126040126212_))))
                                      (___match129280129281_
                                       _e126042126207_
                                       _hd126041126210_
                                       _tl126040126212_))
                                  (___match129280129281_
                                   _e126042126207_
                                   _hd126041126210_
                                   _tl126040126212_))
                              (___match129280129281_
                               _e126042126207_
                               _hd126041126210_
                               _tl126040126212_))))
                      (___match129280129281_
                       _e126042126207_
                       _hd126041126210_
                       _tl126040126212_))))
              (___match129280129281_
               _e126042126207_
               _hd126041126210_
               _tl126040126212_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129280129281_
                                                   _e126042126207_
                                                   _hd126041126210_
                                                   _tl126040126212_))))
                                          (___match129280129281_
                                           _e126042126207_
                                           _hd126041126210_
                                           _tl126040126212_))
                                      (___match129280129281_
                                       _e126042126207_
                                       _hd126041126210_
                                       _tl126040126212_))
                                  (___match129280129281_
                                   _e126042126207_
                                   _hd126041126210_
                                   _tl126040126212_))))
                          (___match129280129281_
                           _e126042126207_
                           _hd126041126210_
                           _tl126040126212_))))
                  (___match129280129281_
                   _e126042126207_
                   _hd126041126210_
                   _tl126040126212_))
              (___match129280129281_
               _e126042126207_
               _hd126041126210_
               _tl126040126212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129280129281_
                                               _e126042126207_
                                               _hd126041126210_
                                               _tl126040126212_))
                                          (___match129280129281_
                                           _e126042126207_
                                           _hd126041126210_
                                           _tl126040126212_))
                                      (___match129280129281_
                                       _e126042126207_
                                       _hd126041126210_
                                       _tl126040126212_))))
                              (___match129280129281_
                               _e126042126207_
                               _hd126041126210_
                               _tl126040126212_))))
                      (___match129280129281_
                       _e126042126207_
                       _hd126041126210_
                       _tl126040126212_))
                  (___match129280129281_
                   _e126042126207_
                   _hd126041126210_
                   _tl126040126212_))
              (___match129280129281_
               _e126042126207_
               _hd126041126210_
               _tl126040126212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129280129281_
                                               _e126042126207_
                                               _hd126041126210_
                                               _tl126040126212_))))
                                      (let ((_-hash-ref126096126480_
                                             (reverse _-hash-ref126092126359_))
                                            (_-xkwvar126095126478_
                                             (reverse _-xkwvar126091126357_))
                                            (_key126094126476_
                                             (reverse _key126090126355_))
                                            (_-absent-value126093126474_
                                             (reverse _-absent-value126089126353_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl126049126236_))
                                            (let ((_L126483_ _hd126104126343_)
                                                  (_L126484_
                                                   _-absent-value126093126474_)
                                                  (_L126485_ _key126094126476_)
                                                  (_L126486_
                                                   _-xkwvar126095126478_)
                                                  (_L126487_
                                                   _-hash-ref126096126480_)
                                                  (_L126488_ _hd126080126314_)
                                                  (_L126489_ _hd126071126290_)
                                                  (_L126490_ _hd126062126266_)
                                                  (_L126491_ _tl126046126228_)
                                                  (_L126492_ _hd126047126226_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126492_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _L126491_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#runtime-identifier=?
                                                          _L126490_
                                                          'apply))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#free-identifier=?
                                                          _L126492_
                                                          _L126488_))
                                                       (let ((__tmp130710
                                                              (let ((__tmp130711
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g126545126548_ _g126546126550_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126545126548_ _g126546126550_)))))
                        (declare (not safe))
                        (foldr1 __tmp130711 '() _L126485_))))
                 (declare (not safe))
                 (andmap1 gx#stx-keyword? __tmp130710))
               (let ((__tmp130709
                      (lambda (_g126552126554_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126552126554_
                           'hash-ref))))
                     (__tmp130707
                      (let ((__tmp130708
                             (lambda (_g126556126559_ _g126557126561_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126556126559_ _g126557126561_)))))
                        (declare (not safe))
                        (foldr1 __tmp130708 '() _L126487_))))
                 (declare (not safe))
                 (andmap1 __tmp130709 __tmp130707))
               (let ((__tmp130706
                      (lambda (_g126563126565_)
                        (let ()
                          (declare (not safe))
                          (gxc#runtime-identifier=?
                           _g126563126565_
                           'absent-value))))
                     (__tmp130704
                      (let ((__tmp130705
                             (lambda (_g126567126570_ _g126568126572_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126567126570_ _g126568126572_)))))
                        (declare (not safe))
                        (foldr1 __tmp130705 '() _L126484_))))
                 (declare (not safe))
                 (andmap1 __tmp130706 __tmp130704))
               (let ((__tmp130703
                      (lambda (_g126574126576_)
                        (let ()
                          (declare (not safe))
                          (gx#free-identifier=? _g126574126576_ _L126492_))))
                     (__tmp130701
                      (let ((__tmp130702
                             (lambda (_g126578126581_ _g126579126583_)
                               (let ()
                                 (declare (not safe))
                                 (cons _g126578126581_ _g126579126583_)))))
                        (declare (not safe))
                        (foldr1 __tmp130702 '() _L126486_))))
                 (declare (not safe))
                 (andmap1 __tmp130703 __tmp130701)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont128967128968_
                                                   _L126483_
                                                   _L126484_
                                                   _L126485_
                                                   _L126486_
                                                   _L126487_
                                                   _L126488_
                                                   _L126489_
                                                   _L126490_
                                                   _L126491_
                                                   _L126492_)
                                                  (___match129280129281_
                                                   _e126042126207_
                                                   _hd126041126210_
                                                   _tl126040126212_)))
                                            (___match129280129281_
                                             _e126042126207_
                                             _hd126041126210_
                                             _tl126040126212_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop126085126348_
                           _target126082126319_
                           '()
                           '()
                           '()
                           '())))))
                   (___match129146129147_
                    (lambda (_e126042126207_
                             _hd126041126210_
                             _tl126040126212_
                             _e126045126215_
                             _hd126044126218_
                             _tl126043126220_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126044126218_))
                          (let ((_e126048126223_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126044126218_))))
                            (let ((_tl126046126228_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126048126223_)))
                                  (_hd126047126226_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126048126223_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126043126220_))
                                  (let ((_e126051126231_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126043126220_))))
                                    (let ((_tl126049126236_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126051126231_)))
                                          (_hd126050126234_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126051126231_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd126050126234_))
                                          (let ((_e126054126239_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd126050126234_))))
                                            (let ((_tl126052126244_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126054126239_)))
                                                  (_hd126053126242_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126054126239_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd126053126242_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd126053126242_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126052126244_))
                                                          (let ((_e126057126247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126052126244_))))
                    (let ((_tl126055126252_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126057126247_)))
                          (_hd126056126250_
                           (let ()
                             (declare (not safe))
                             (##car _e126057126247_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126056126250_))
                          (let ((_e126060126255_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126056126250_))))
                            (let ((_tl126058126260_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126060126255_)))
                                  (_hd126059126258_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126060126255_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126059126258_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126059126258_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126058126260_))
                                          (let ((_e126063126263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126058126260_))))
                                            (let ((_tl126061126268_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126063126263_)))
                                                  (_hd126062126266_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126063126263_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126061126268_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl126055126252_))
                                                      (let ((_e126066126271_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl126055126252_))))
                (let ((_tl126064126276_
                       (let () (declare (not safe)) (##cdr _e126066126271_)))
                      (_hd126065126274_
                       (let () (declare (not safe)) (##car _e126066126271_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd126065126274_))
                      (let ((_e126069126279_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd126065126274_))))
                        (let ((_tl126067126284_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126069126279_)))
                              (_hd126068126282_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126069126279_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd126068126282_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd126068126282_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl126067126284_))
                                      (let ((_e126072126287_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl126067126284_))))
                                        (let ((_tl126070126292_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126072126287_)))
                                              (_hd126071126290_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126072126287_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126070126292_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126064126276_))
                                                  (let ((_e126075126295_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126064126276_))))
                                                    (let ((_tl126073126300_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126075126295_)))
                                                          (_hd126074126298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126075126295_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126074126298_))
                                                          (let ((_e126078126303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126074126298_))))
                    (let ((_tl126076126308_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126078126303_)))
                          (_hd126077126306_
                           (let ()
                             (declare (not safe))
                             (##car _e126078126303_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126077126306_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd126077126306_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126076126308_))
                                  (let ((_e126081126311_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126076126308_))))
                                    (let ((_tl126079126316_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126081126311_)))
                                          (_hd126080126314_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126081126311_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126079126316_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl126073126300_))
                                              (if (fx>= (let ()
                                                          (declare (not safe))
                                                          (gx#stx-length
                                                           _tl126073126300_))
                                                        '1)
                                                  (let ((___splice128969128970_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _tl126073126300_
                                                            '1))))
                                                    (let ((_tl126084126321_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128969128970_
                                                              '1)))
                                                          (_target126082126319_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice128969128970_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126084126321_))
                                                          (let ((_e126099126324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126084126321_))))
                    (let ((_tl126097126329_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126099126324_)))
                          (_hd126098126327_
                           (let ()
                             (declare (not safe))
                             (##car _e126099126324_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126098126327_))
                          (let ((_e126102126332_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126098126327_))))
                            (let ((_tl126100126337_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126102126332_)))
                                  (_hd126101126335_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126102126332_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126101126335_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd126101126335_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126100126337_))
                                          (let ((_e126105126340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126100126337_))))
                                            (let ((_tl126103126345_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126105126340_)))
                                                  (_hd126104126343_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126105126340_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126103126345_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126097126329_))
                                                      (___match129274129275_
                                                       _e126042126207_
                                                       _hd126041126210_
                                                       _tl126040126212_
                                                       _e126045126215_
                                                       _hd126044126218_
                                                       _tl126043126220_
                                                       _e126048126223_
                                                       _hd126047126226_
                                                       _tl126046126228_
                                                       _e126051126231_
                                                       _hd126050126234_
                                                       _tl126049126236_
                                                       _e126054126239_
                                                       _hd126053126242_
                                                       _tl126052126244_
                                                       _e126057126247_
                                                       _hd126056126250_
                                                       _tl126055126252_
                                                       _e126060126255_
                                                       _hd126059126258_
                                                       _tl126058126260_
                                                       _e126063126263_
                                                       _hd126062126266_
                                                       _tl126061126268_
                                                       _e126066126271_
                                                       _hd126065126274_
                                                       _tl126064126276_
                                                       _e126069126279_
                                                       _hd126068126282_
                                                       _tl126067126284_
                                                       _e126072126287_
                                                       _hd126071126290_
                                                       _tl126070126292_
                                                       _e126075126295_
                                                       _hd126074126298_
                                                       _tl126073126300_
                                                       _e126078126303_
                                                       _hd126077126306_
                                                       _tl126076126308_
                                                       _e126081126311_
                                                       _hd126080126314_
                                                       _tl126079126316_
                                                       ___splice128969128970_
                                                       _target126082126319_
                                                       _tl126084126321_
                                                       _e126099126324_
                                                       _hd126098126327_
                                                       _tl126097126329_
                                                       _e126102126332_
                                                       _hd126101126335_
                                                       _tl126100126337_
                                                       _e126105126340_
                                                       _hd126104126343_
                                                       _tl126103126345_)
                                                      (___match129280129281_
                                                       _e126042126207_
                                                       _hd126041126210_
                                                       _tl126040126212_))
                                                  (___match129280129281_
                                                   _e126042126207_
                                                   _hd126041126210_
                                                   _tl126040126212_))))
                                          (___match129280129281_
                                           _e126042126207_
                                           _hd126041126210_
                                           _tl126040126212_))
                                      (___match129280129281_
                                       _e126042126207_
                                       _hd126041126210_
                                       _tl126040126212_))
                                  (___match129280129281_
                                   _e126042126207_
                                   _hd126041126210_
                                   _tl126040126212_))))
                          (___match129280129281_
                           _e126042126207_
                           _hd126041126210_
                           _tl126040126212_))))
                  (___match129280129281_
                   _e126042126207_
                   _hd126041126210_
                   _tl126040126212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129280129281_
                                                   _e126042126207_
                                                   _hd126041126210_
                                                   _tl126040126212_))
                                              (___match129280129281_
                                               _e126042126207_
                                               _hd126041126210_
                                               _tl126040126212_))
                                          (___match129280129281_
                                           _e126042126207_
                                           _hd126041126210_
                                           _tl126040126212_))))
                                  (___match129280129281_
                                   _e126042126207_
                                   _hd126041126210_
                                   _tl126040126212_))
                              (___match129280129281_
                               _e126042126207_
                               _hd126041126210_
                               _tl126040126212_))
                          (___match129280129281_
                           _e126042126207_
                           _hd126041126210_
                           _tl126040126212_))))
                  (___match129280129281_
                   _e126042126207_
                   _hd126041126210_
                   _tl126040126212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129280129281_
                                                   _e126042126207_
                                                   _hd126041126210_
                                                   _tl126040126212_))
                                              (___match129280129281_
                                               _e126042126207_
                                               _hd126041126210_
                                               _tl126040126212_))))
                                      (___match129280129281_
                                       _e126042126207_
                                       _hd126041126210_
                                       _tl126040126212_))
                                  (___match129280129281_
                                   _e126042126207_
                                   _hd126041126210_
                                   _tl126040126212_))
                              (___match129280129281_
                               _e126042126207_
                               _hd126041126210_
                               _tl126040126212_))))
                      (___match129280129281_
                       _e126042126207_
                       _hd126041126210_
                       _tl126040126212_))))
              (___match129280129281_
               _e126042126207_
               _hd126041126210_
               _tl126040126212_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129280129281_
                                                   _e126042126207_
                                                   _hd126041126210_
                                                   _tl126040126212_))))
                                          (___match129280129281_
                                           _e126042126207_
                                           _hd126041126210_
                                           _tl126040126212_))
                                      (___match129280129281_
                                       _e126042126207_
                                       _hd126041126210_
                                       _tl126040126212_))
                                  (___match129280129281_
                                   _e126042126207_
                                   _hd126041126210_
                                   _tl126040126212_))))
                          (___match129280129281_
                           _e126042126207_
                           _hd126041126210_
                           _tl126040126212_))))
                  (___match129280129281_
                   _e126042126207_
                   _hd126041126210_
                   _tl126040126212_))
              (___match129280129281_
               _e126042126207_
               _hd126041126210_
               _tl126040126212_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129280129281_
                                                   _e126042126207_
                                                   _hd126041126210_
                                                   _tl126040126212_))))
                                          (___match129280129281_
                                           _e126042126207_
                                           _hd126041126210_
                                           _tl126040126212_))))
                                  (___match129280129281_
                                   _e126042126207_
                                   _hd126041126210_
                                   _tl126040126212_))))
                          (___match129280129281_
                           _e126042126207_
                           _hd126041126210_
                           _tl126040126212_))))
                   (___match129134129135_
                    (lambda (_e125975126598_
                             _hd125974126601_
                             _tl125973126603_
                             _e125978126606_
                             _hd125977126609_
                             _tl125976126611_
                             _e125981126614_
                             _hd125980126617_
                             _tl125979126619_
                             _e125984126622_
                             _hd125983126625_
                             _tl125982126627_
                             _e125987126630_
                             _hd125986126633_
                             _tl125985126635_
                             _e125990126638_
                             _hd125989126641_
                             _tl125988126643_
                             _e125993126646_
                             _hd125992126649_
                             _tl125991126651_
                             _e125996126654_
                             _hd125995126657_
                             _tl125994126659_
                             _e125999126662_
                             _hd125998126665_
                             _tl125997126667_
                             _e126002126670_
                             _hd126001126673_
                             _tl126000126675_
                             _e126005126678_
                             _hd126004126681_
                             _tl126003126683_
                             _e126008126686_
                             _hd126007126689_
                             _tl126006126691_
                             _e126011126694_
                             _hd126010126697_
                             _tl126009126699_
                             _e126014126702_
                             _hd126013126705_
                             _tl126012126707_
                             _e126017126710_
                             _hd126016126713_
                             _tl126015126715_
                             _e126020126718_
                             _hd126019126721_
                             _tl126018126723_
                             _e126023126726_
                             _hd126022126729_
                             _tl126021126731_
                             _e126026126734_
                             _hd126025126737_
                             _tl126024126739_
                             _e126029126742_
                             _hd126028126745_
                             _tl126027126747_)
                      (let ((_L126750_ _hd126028126745_)
                            (_L126751_ _hd126019126721_)
                            (_L126752_ _hd126010126697_)
                            (_L126753_ _hd126001126673_)
                            (_L126754_ _hd125992126649_)
                            (_L126755_ _hd125977126609_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L126755_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L126754_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _L126753_
                                    'keyword-dispatch))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L126755_ _L126750_)))
                            (___kont128965128966_
                             _L126750_
                             _L126751_
                             _L126752_
                             _L126753_
                             _L126754_
                             _L126755_)
                            (___match129146129147_
                             _e125975126598_
                             _hd125974126601_
                             _tl125973126603_
                             _e125978126606_
                             _hd125977126609_
                             _tl125976126611_)))))
                   (___match128988128989_
                    (lambda (_e125975126598_ _hd125974126601_ _tl125973126603_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125973126603_))
                          (let ((_e125978126606_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125973126603_))))
                            (let ((_tl125976126611_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125978126606_)))
                                  (_hd125977126609_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125978126606_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125976126611_))
                                  (let ((_e125981126614_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125976126611_))))
                                    (let ((_tl125979126619_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125981126614_)))
                                          (_hd125980126617_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125981126614_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd125980126617_))
                                          (let ((_e125984126622_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd125980126617_))))
                                            (let ((_tl125982126627_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125984126622_)))
                                                  (_hd125983126625_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125984126622_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd125983126625_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-eq?
                                                         '%#call
                                                         _hd125983126625_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl125982126627_))
                                                          (let ((_e125987126630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl125982126627_))))
                    (let ((_tl125985126635_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125987126630_)))
                          (_hd125986126633_
                           (let ()
                             (declare (not safe))
                             (##car _e125987126630_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd125986126633_))
                          (let ((_e125990126638_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd125986126633_))))
                            (let ((_tl125988126643_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125990126638_)))
                                  (_hd125989126641_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125990126638_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd125989126641_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd125989126641_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl125988126643_))
                                          (let ((_e125993126646_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl125988126643_))))
                                            (let ((_tl125991126651_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e125993126646_)))
                                                  (_hd125992126649_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e125993126646_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl125991126651_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125985126635_))
                                                      (let ((_e125996126654_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125985126635_))))
                (let ((_tl125994126659_
                       (let () (declare (not safe)) (##cdr _e125996126654_)))
                      (_hd125995126657_
                       (let () (declare (not safe)) (##car _e125996126654_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125995126657_))
                      (let ((_e125999126662_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125995126657_))))
                        (let ((_tl125997126667_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125999126662_)))
                              (_hd125998126665_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125999126662_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125998126665_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125998126665_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125997126667_))
                                      (let ((_e126002126670_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125997126667_))))
                                        (let ((_tl126000126675_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126002126670_)))
                                              (_hd126001126673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126002126670_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126000126675_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125994126659_))
                                                  (let ((_e126005126678_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125994126659_))))
                                                    (let ((_tl126003126683_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126005126678_)))
                                                          (_hd126004126681_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126005126678_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd126004126681_))
                                                          (let ((_e126008126686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd126004126681_))))
                    (let ((_tl126006126691_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126008126686_)))
                          (_hd126007126689_
                           (let ()
                             (declare (not safe))
                             (##car _e126008126686_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd126007126689_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd126007126689_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl126006126691_))
                                  (let ((_e126011126694_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl126006126691_))))
                                    (let ((_tl126009126699_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126011126694_)))
                                          (_hd126010126697_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126011126694_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl126009126699_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126003126683_))
                                              (let ((_e126014126702_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126003126683_))))
                                                (let ((_tl126012126707_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126014126702_)))
                                                      (_hd126013126705_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126014126702_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd126013126705_))
                                                      (let ((_e126017126710_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd126013126705_))))
                (let ((_tl126015126715_
                       (let () (declare (not safe)) (##cdr _e126017126710_)))
                      (_hd126016126713_
                       (let () (declare (not safe)) (##car _e126017126710_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd126016126713_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd126016126713_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126015126715_))
                              (let ((_e126020126718_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126015126715_))))
                                (let ((_tl126018126723_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126020126718_)))
                                      (_hd126019126721_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126020126718_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126018126723_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126012126707_))
                                          (let ((_e126023126726_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126012126707_))))
                                            (let ((_tl126021126731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126023126726_)))
                                                  (_hd126022126729_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126023126726_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd126022126729_))
                                                  (let ((_e126026126734_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd126022126729_))))
                                                    (let ((_tl126024126739_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126026126734_)))
                                                          (_hd126025126737_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126026126734_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd126025126737_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _hd126025126737_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126024126739_))
                          (let ((_e126029126742_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126024126739_))))
                            (let ((_tl126027126747_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126029126742_)))
                                  (_hd126028126745_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126029126742_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126027126747_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126021126731_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125979126619_))
                                          (___match129134129135_
                                           _e125975126598_
                                           _hd125974126601_
                                           _tl125973126603_
                                           _e125978126606_
                                           _hd125977126609_
                                           _tl125976126611_
                                           _e125981126614_
                                           _hd125980126617_
                                           _tl125979126619_
                                           _e125984126622_
                                           _hd125983126625_
                                           _tl125982126627_
                                           _e125987126630_
                                           _hd125986126633_
                                           _tl125985126635_
                                           _e125990126638_
                                           _hd125989126641_
                                           _tl125988126643_
                                           _e125993126646_
                                           _hd125992126649_
                                           _tl125991126651_
                                           _e125996126654_
                                           _hd125995126657_
                                           _tl125994126659_
                                           _e125999126662_
                                           _hd125998126665_
                                           _tl125997126667_
                                           _e126002126670_
                                           _hd126001126673_
                                           _tl126000126675_
                                           _e126005126678_
                                           _hd126004126681_
                                           _tl126003126683_
                                           _e126008126686_
                                           _hd126007126689_
                                           _tl126006126691_
                                           _e126011126694_
                                           _hd126010126697_
                                           _tl126009126699_
                                           _e126014126702_
                                           _hd126013126705_
                                           _tl126012126707_
                                           _e126017126710_
                                           _hd126016126713_
                                           _tl126015126715_
                                           _e126020126718_
                                           _hd126019126721_
                                           _tl126018126723_
                                           _e126023126726_
                                           _hd126022126729_
                                           _tl126021126731_
                                           _e126026126734_
                                           _hd126025126737_
                                           _tl126024126739_
                                           _e126029126742_
                                           _hd126028126745_
                                           _tl126027126747_)
                                          (___match129146129147_
                                           _e125975126598_
                                           _hd125974126601_
                                           _tl125973126603_
                                           _e125978126606_
                                           _hd125977126609_
                                           _tl125976126611_))
                                      (___match129146129147_
                                       _e125975126598_
                                       _hd125974126601_
                                       _tl125973126603_
                                       _e125978126606_
                                       _hd125977126609_
                                       _tl125976126611_))
                                  (___match129146129147_
                                   _e125975126598_
                                   _hd125974126601_
                                   _tl125973126603_
                                   _e125978126606_
                                   _hd125977126609_
                                   _tl125976126611_))))
                          (___match129146129147_
                           _e125975126598_
                           _hd125974126601_
                           _tl125973126603_
                           _e125978126606_
                           _hd125977126609_
                           _tl125976126611_))
                      (___match129146129147_
                       _e125975126598_
                       _hd125974126601_
                       _tl125973126603_
                       _e125978126606_
                       _hd125977126609_
                       _tl125976126611_))
                  (___match129146129147_
                   _e125975126598_
                   _hd125974126601_
                   _tl125973126603_
                   _e125978126606_
                   _hd125977126609_
                   _tl125976126611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129146129147_
                                                   _e125975126598_
                                                   _hd125974126601_
                                                   _tl125973126603_
                                                   _e125978126606_
                                                   _hd125977126609_
                                                   _tl125976126611_))))
                                          (___match129146129147_
                                           _e125975126598_
                                           _hd125974126601_
                                           _tl125973126603_
                                           _e125978126606_
                                           _hd125977126609_
                                           _tl125976126611_))
                                      (___match129146129147_
                                       _e125975126598_
                                       _hd125974126601_
                                       _tl125973126603_
                                       _e125978126606_
                                       _hd125977126609_
                                       _tl125976126611_))))
                              (___match129146129147_
                               _e125975126598_
                               _hd125974126601_
                               _tl125973126603_
                               _e125978126606_
                               _hd125977126609_
                               _tl125976126611_))
                          (___match129146129147_
                           _e125975126598_
                           _hd125974126601_
                           _tl125973126603_
                           _e125978126606_
                           _hd125977126609_
                           _tl125976126611_))
                      (___match129146129147_
                       _e125975126598_
                       _hd125974126601_
                       _tl125973126603_
                       _e125978126606_
                       _hd125977126609_
                       _tl125976126611_))))
              (___match129146129147_
               _e125975126598_
               _hd125974126601_
               _tl125973126603_
               _e125978126606_
               _hd125977126609_
               _tl125976126611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match129146129147_
                                               _e125975126598_
                                               _hd125974126601_
                                               _tl125973126603_
                                               _e125978126606_
                                               _hd125977126609_
                                               _tl125976126611_))
                                          (___match129146129147_
                                           _e125975126598_
                                           _hd125974126601_
                                           _tl125973126603_
                                           _e125978126606_
                                           _hd125977126609_
                                           _tl125976126611_))))
                                  (___match129146129147_
                                   _e125975126598_
                                   _hd125974126601_
                                   _tl125973126603_
                                   _e125978126606_
                                   _hd125977126609_
                                   _tl125976126611_))
                              (___match129146129147_
                               _e125975126598_
                               _hd125974126601_
                               _tl125973126603_
                               _e125978126606_
                               _hd125977126609_
                               _tl125976126611_))
                          (___match129146129147_
                           _e125975126598_
                           _hd125974126601_
                           _tl125973126603_
                           _e125978126606_
                           _hd125977126609_
                           _tl125976126611_))))
                  (___match129146129147_
                   _e125975126598_
                   _hd125974126601_
                   _tl125973126603_
                   _e125978126606_
                   _hd125977126609_
                   _tl125976126611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129146129147_
                                                   _e125975126598_
                                                   _hd125974126601_
                                                   _tl125973126603_
                                                   _e125978126606_
                                                   _hd125977126609_
                                                   _tl125976126611_))
                                              (___match129146129147_
                                               _e125975126598_
                                               _hd125974126601_
                                               _tl125973126603_
                                               _e125978126606_
                                               _hd125977126609_
                                               _tl125976126611_))))
                                      (___match129146129147_
                                       _e125975126598_
                                       _hd125974126601_
                                       _tl125973126603_
                                       _e125978126606_
                                       _hd125977126609_
                                       _tl125976126611_))
                                  (___match129146129147_
                                   _e125975126598_
                                   _hd125974126601_
                                   _tl125973126603_
                                   _e125978126606_
                                   _hd125977126609_
                                   _tl125976126611_))
                              (___match129146129147_
                               _e125975126598_
                               _hd125974126601_
                               _tl125973126603_
                               _e125978126606_
                               _hd125977126609_
                               _tl125976126611_))))
                      (___match129146129147_
                       _e125975126598_
                       _hd125974126601_
                       _tl125973126603_
                       _e125978126606_
                       _hd125977126609_
                       _tl125976126611_))))
              (___match129146129147_
               _e125975126598_
               _hd125974126601_
               _tl125973126603_
               _e125978126606_
               _hd125977126609_
               _tl125976126611_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129146129147_
                                                   _e125975126598_
                                                   _hd125974126601_
                                                   _tl125973126603_
                                                   _e125978126606_
                                                   _hd125977126609_
                                                   _tl125976126611_))))
                                          (___match129146129147_
                                           _e125975126598_
                                           _hd125974126601_
                                           _tl125973126603_
                                           _e125978126606_
                                           _hd125977126609_
                                           _tl125976126611_))
                                      (___match129146129147_
                                       _e125975126598_
                                       _hd125974126601_
                                       _tl125973126603_
                                       _e125978126606_
                                       _hd125977126609_
                                       _tl125976126611_))
                                  (___match129146129147_
                                   _e125975126598_
                                   _hd125974126601_
                                   _tl125973126603_
                                   _e125978126606_
                                   _hd125977126609_
                                   _tl125976126611_))))
                          (___match129146129147_
                           _e125975126598_
                           _hd125974126601_
                           _tl125973126603_
                           _e125978126606_
                           _hd125977126609_
                           _tl125976126611_))))
                  (___match129146129147_
                   _e125975126598_
                   _hd125974126601_
                   _tl125973126603_
                   _e125978126606_
                   _hd125977126609_
                   _tl125976126611_))
              (___match129146129147_
               _e125975126598_
               _hd125974126601_
               _tl125973126603_
               _e125978126606_
               _hd125977126609_
               _tl125976126611_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129146129147_
                                                   _e125975126598_
                                                   _hd125974126601_
                                                   _tl125973126603_
                                                   _e125978126606_
                                                   _hd125977126609_
                                                   _tl125976126611_))))
                                          (___match129146129147_
                                           _e125975126598_
                                           _hd125974126601_
                                           _tl125973126603_
                                           _e125978126606_
                                           _hd125977126609_
                                           _tl125976126611_))))
                                  (___match129146129147_
                                   _e125975126598_
                                   _hd125974126601_
                                   _tl125973126603_
                                   _e125978126606_
                                   _hd125977126609_
                                   _tl125976126611_))))
                          (___match129280129281_
                           _e125975126598_
                           _hd125974126601_
                           _tl125973126603_)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx128961128962_))
                  (let ((_e125966126815_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx128961128962_))))
                    (let ((_tl125964126820_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125966126815_)))
                          (_hd125965126818_
                           (let ()
                             (declare (not safe))
                             (##car _e125966126815_))))
                      (if (gxc#current-compile-type-closure)
                          (let ((_L126823_ _tl125964126820_))
                            (___kont128963128964_ _L126823_))
                          (___match128988128989_
                           _e125966126815_
                           _hd125965126818_
                           _tl125964126820_))))
                  (let () (declare (not safe)) (_g125961126157_))))))))
    (define gxc#basic-expression-type-case-lambda%
      (lambda (_self125908_ _stx125909_)
        (letrec ((_clause-e125911_
                  (lambda (_form125952_)
                    (let ((__obj130645
                           (let ()
                             (declare (not safe))
                             (##structure
                              gxc#!lambda::t
                              '#f
                              '#f
                              '#f
                              '#f
                              '#f))))
                      (gxc#!lambda:::init!
                       __obj130645
                       'case-lambda-clause
                       (let ()
                         (declare (not safe))
                         (gxc#lambda-form-arity _form125952_))
                       (if (let ((__tmp130716
                                  (gxc#current-compile-type-closure)))
                             (declare (not safe))
                             (not __tmp130716))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form? _form125952_))
                               (let ()
                                 (declare (not safe))
                                 (gxc#dispatch-lambda-form-delegate
                                  _form125952_))
                               '#f)
                           '#f))
                      __obj130645))))
          (let* ((_g125913125923_
                  (lambda (_g125914125920_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g125914125920_))))
                 (_g125912125949_
                  (lambda (_g125914125926_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g125914125926_))
                        (let ((_e125918125928_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g125914125926_))))
                          (let ((_hd125917125931_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125918125928_)))
                                (_tl125916125933_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125918125928_))))
                            ((lambda (_L125936_)
                               (let ((_clauses125947_
                                      (map _clause-e125911_ _L125936_)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#!case-lambda::t
                                  'case-lambda
                                  _clauses125947_)))
                             _tl125916125933_)))
                        (let ()
                          (declare (not safe))
                          (_g125913125923_ _g125914125926_))))))
            (declare (not safe))
            (_g125912125949_ _stx125909_)))))
    (define gxc#basic-expression-type-let-values%
      (lambda (_self125839_ _stx125840_)
        (let* ((_g125842125859_
                (lambda (_g125843125856_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125843125856_))))
               (_g125841125905_
                (lambda (_g125843125862_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125843125862_))
                      (let ((_e125848125864_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125843125862_))))
                        (let ((_hd125847125867_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125848125864_)))
                              (_tl125846125869_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125848125864_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125846125869_))
                              (let ((_e125851125872_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125846125869_))))
                                (let ((_hd125850125875_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125851125872_)))
                                      (_tl125849125877_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125851125872_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125849125877_))
                                      (let ((_e125854125880_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125849125877_))))
                                        (let ((_hd125853125883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125854125880_)))
                                              (_tl125852125885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125854125880_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125852125885_))
                                              ((lambda (_L125888_ _L125889_)
                                                 (let ((__tmp130717
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self125839_
                                                             _L125888_)))))
                                                   (declare (not safe))
                                                   (call-with-parameters
                                                    __tmp130717
                                                    gxc#current-compile-type-closure
                                                    '#t)))
                                               _hd125853125883_
                                               _hd125850125875_)
                                              (let ()
                                                (declare (not safe))
                                                (_g125842125859_
                                                 _g125843125862_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g125842125859_ _g125843125862_)))))
                              (let ()
                                (declare (not safe))
                                (_g125842125859_ _g125843125862_)))))
                      (let ()
                        (declare (not safe))
                        (_g125842125859_ _g125843125862_))))))
          (declare (not safe))
          (_g125841125905_ _stx125840_))))
    (define gxc#basic-expression-type-builtin
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define gxc#basic-expression-type-call%
      (lambda (_self125743_ _stx125744_)
        (let* ((___stx129289129290_ _stx125744_)
               (_g125747125767_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129289129290_)))))
          (let ((___kont129291129292_
                 (lambda (_L125811_ _L125812_)
                   (let ((_type-e125829125831_
                          (let ((__tmp130718
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L125812_))))
                            (declare (not safe))
                            (hash-get
                             gxc#basic-expression-type-builtin
                             __tmp130718))))
                     (if _type-e125829125831_
                         (let ((_type-e125834_ _type-e125829125831_))
                           (_type-e125834_ _stx125744_ _L125811_))
                         '#f))))
                (___kont129293129294_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129289129290_))
                (let ((_e125753125779_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129289129290_))))
                  (let ((_tl125751125784_
                         (let () (declare (not safe)) (##cdr _e125753125779_)))
                        (_hd125752125782_
                         (let ()
                           (declare (not safe))
                           (##car _e125753125779_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125751125784_))
                        (let ((_e125756125787_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125751125784_))))
                          (let ((_tl125754125792_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125756125787_)))
                                (_hd125755125790_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125756125787_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125755125790_))
                                (let ((_e125759125795_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125755125790_))))
                                  (let ((_tl125757125800_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125759125795_)))
                                        (_hd125758125798_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125759125795_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125758125798_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125758125798_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125757125800_))
                                                (let ((_e125762125803_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125757125800_))))
                                                  (let ((_tl125760125808_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125762125803_)))
                                                        (_hd125761125806_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125762125803_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125760125808_))
                                                        (___kont129291129292_
                                                         _tl125754125792_
                                                         _hd125761125806_)
                                                        (___kont129293129294_))))
                                                (___kont129293129294_))
                                            (___kont129293129294_))
                                        (___kont129293129294_))))
                                (___kont129293129294_))))
                        (___kont129293129294_))))
                (___kont129293129294_))))))
    (define gxc#basic-expression-type-ref%
      (lambda (_self125691_ _stx125692_)
        (let* ((_g125694125707_
                (lambda (_g125695125704_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g125695125704_))))
               (_g125693125740_
                (lambda (_g125695125710_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g125695125710_))
                      (let ((_e125699125712_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g125695125710_))))
                        (let ((_hd125698125715_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125699125712_)))
                              (_tl125697125717_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125699125712_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125697125717_))
                              (let ((_e125702125720_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125697125717_))))
                                (let ((_hd125701125723_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125702125720_)))
                                      (_tl125700125725_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125702125720_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125700125725_))
                                      ((lambda (_L125728_)
                                         (let ((__tmp130719
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L125728_))))
                                           (declare (not safe))
                                           (gxc#optimizer-lookup-type
                                            __tmp130719)))
                                       _hd125701125723_)
                                      (let ()
                                        (declare (not safe))
                                        (_g125694125707_ _g125695125710_)))))
                              (let ()
                                (declare (not safe))
                                (_g125694125707_ _g125695125710_)))))
                      (let ()
                        (declare (not safe))
                        (_g125694125707_ _g125695125710_))))))
          (declare (not safe))
          (_g125693125740_ _stx125692_))))
    (define gxc#dispatch-lambda-form?
      (lambda (_form124925_)
        (let* ((___stx129327129328_ _form124925_)
               (_g124930125087_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129327129328_)))))
          (let ((___kont129329129330_
                 (lambda (_L125611_ _L125612_ _L125613_) '#t))
                (___kont129335129336_
                 (lambda (_L125399_
                          _L125400_
                          _L125401_
                          _L125402_
                          _L125403_
                          _L125404_)
                   '#t))
                (___kont129341129342_
                 (lambda (_L125195_ _L125196_ _L125197_ _L125198_) '#t))
                (___kont129343129344_ (lambda () '#f)))
            (let* ((___match129468129469_
                    (lambda (_e125049125099_
                             _hd125048125102_
                             _tl125047125104_
                             _e125052125107_
                             _hd125051125110_
                             _tl125050125112_
                             _e125055125115_
                             _hd125054125118_
                             _tl125053125120_
                             _e125058125123_
                             _hd125057125126_
                             _tl125056125128_
                             _e125061125131_
                             _hd125060125134_
                             _tl125059125136_
                             _e125064125139_
                             _hd125063125142_
                             _tl125062125144_
                             _e125067125147_
                             _hd125066125150_
                             _tl125065125152_
                             _e125070125155_
                             _hd125069125158_
                             _tl125068125160_
                             _e125073125163_
                             _hd125072125166_
                             _tl125071125168_
                             _e125076125171_
                             _hd125075125174_
                             _tl125074125176_
                             _e125079125179_
                             _hd125078125182_
                             _tl125077125184_
                             _e125082125187_
                             _hd125081125190_
                             _tl125080125192_)
                      (let ((_L125195_ _hd125081125190_)
                            (_L125196_ _hd125072125166_)
                            (_L125197_ _hd125063125142_)
                            (_L125198_ _hd125048125102_))
                        (if (and (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L125198_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L125197_ 'apply))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L125198_ _L125195_))
                                 (let ((__tmp130720
                                        (let ()
                                          (declare (not safe))
                                          (gx#free-identifier=?
                                           _L125196_
                                           _L125198_))))
                                   (declare (not safe))
                                   (not __tmp130720)))
                            (___kont129341129342_
                             _L125195_
                             _L125196_
                             _L125197_
                             _L125198_)
                            (___kont129343129344_)))))
                   (___match129440129441_
                    (lambda (_e125049125099_
                             _hd125048125102_
                             _tl125047125104_
                             _e125052125107_
                             _hd125051125110_
                             _tl125050125112_
                             _e125055125115_
                             _hd125054125118_
                             _tl125053125120_
                             _e125058125123_
                             _hd125057125126_
                             _tl125056125128_
                             _e125061125131_
                             _hd125060125134_
                             _tl125059125136_
                             _e125064125139_
                             _hd125063125142_
                             _tl125062125144_
                             _e125067125147_
                             _hd125066125150_
                             _tl125065125152_
                             _e125070125155_
                             _hd125069125158_
                             _tl125068125160_
                             _e125073125163_
                             _hd125072125166_
                             _tl125071125168_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl125065125152_))
                          (let ((_e125076125171_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl125065125152_))))
                            (let ((_tl125074125176_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e125076125171_)))
                                  (_hd125075125174_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e125076125171_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd125075125174_))
                                  (let ((_e125079125179_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd125075125174_))))
                                    (let ((_tl125077125184_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125079125179_)))
                                          (_hd125078125182_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125079125179_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd125078125182_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd125078125182_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125077125184_))
                                                  (let ((_e125082125187_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125077125184_))))
                                                    (let ((_tl125080125192_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125082125187_)))
                                                          (_hd125081125190_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125082125187_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl125080125192_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl125074125176_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl125050125112_))
                          (___match129468129469_
                           _e125049125099_
                           _hd125048125102_
                           _tl125047125104_
                           _e125052125107_
                           _hd125051125110_
                           _tl125050125112_
                           _e125055125115_
                           _hd125054125118_
                           _tl125053125120_
                           _e125058125123_
                           _hd125057125126_
                           _tl125056125128_
                           _e125061125131_
                           _hd125060125134_
                           _tl125059125136_
                           _e125064125139_
                           _hd125063125142_
                           _tl125062125144_
                           _e125067125147_
                           _hd125066125150_
                           _tl125065125152_
                           _e125070125155_
                           _hd125069125158_
                           _tl125068125160_
                           _e125073125163_
                           _hd125072125166_
                           _tl125071125168_
                           _e125076125171_
                           _hd125075125174_
                           _tl125074125176_
                           _e125079125179_
                           _hd125078125182_
                           _tl125077125184_
                           _e125082125187_
                           _hd125081125190_
                           _tl125080125192_)
                          (___kont129343129344_))
                      (___kont129343129344_))
                  (___kont129343129344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129343129344_))
                                              (___kont129343129344_))
                                          (___kont129343129344_))))
                                  (___kont129343129344_))))
                          (___kont129343129344_))))
                   (___match129370129371_
                    (lambda (_e124985125239_
                             _hd124984125242_
                             _tl124983125244_
                             ___splice129337129338_
                             _target124986125247_
                             _tl124988125249_)
                      (letrec ((_loop124989125252_
                                (lambda (_hd124987125255_ _arg124993125257_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124987125255_))
                                      (let ((_e124990125260_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124987125255_))))
                                        (let ((_lp-tl124992125265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124990125260_)))
                                              (_lp-hd124991125263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124990125260_))))
                                          (let ((__tmp130735
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124991125263_
                                                         _arg124993125257_))))
                                            (declare (not safe))
                                            (_loop124989125252_
                                             _lp-tl124992125265_
                                             __tmp130735))))
                                      (let ((_arg124994125268_
                                             (reverse _arg124993125257_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124983125244_))
                                            (let ((_e124997125271_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124983125244_))))
                                              (let ((_tl124995125276_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124997125271_)))
                                                    (_hd124996125274_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124997125271_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124996125274_))
                                                    (let ((_e125000125279_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124996125274_))))
                                                      (let ((_tl124998125284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125000125279_)))
                    (_hd124999125282_
                     (let () (declare (not safe)) (##car _e125000125279_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124999125282_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124999125282_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124998125284_))
                            (let ((_e125003125287_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124998125284_))))
                              (let ((_tl125001125292_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e125003125287_)))
                                    (_hd125002125290_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e125003125287_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd125002125290_))
                                    (let ((_e125006125295_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd125002125290_))))
                                      (let ((_tl125004125300_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e125006125295_)))
                                            (_hd125005125298_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e125006125295_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd125005125298_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd125005125298_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl125004125300_))
                                                    (let ((_e125009125303_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl125004125300_))))
                                                      (let ((_tl125007125308_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125009125303_)))
                    (_hd125008125306_
                     (let () (declare (not safe)) (##car _e125009125303_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl125007125308_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125001125292_))
                        (let ((_e125012125311_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125001125292_))))
                          (let ((_tl125010125316_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125012125311_)))
                                (_hd125011125314_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125012125311_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125011125314_))
                                (let ((_e125015125319_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125011125314_))))
                                  (let ((_tl125013125324_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125015125319_)))
                                        (_hd125014125322_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125015125319_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125014125322_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125014125322_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125013125324_))
                                                (let ((_e125018125327_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125013125324_))))
                                                  (let ((_tl125016125332_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125018125327_)))
                                                        (_hd125017125330_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125018125327_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125016125332_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _tl125010125316_))
                                                            (if (fx>= (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#stx-length _tl125010125316_))
                              '1)
                        (let ((___splice129339129340_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl125010125316_
                                  '1))))
                          (let ((_tl125021125337_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129339129340_ '1)))
                                (_target125019125335_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129339129340_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125021125337_))
                                (let ((_e125030125340_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125021125337_))))
                                  (let ((_tl125028125345_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125030125340_)))
                                        (_hd125029125343_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125030125340_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd125029125343_))
                                        (let ((_e125033125348_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd125029125343_))))
                                          (let ((_tl125031125353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e125033125348_)))
                                                (_hd125032125351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e125033125348_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd125032125351_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd125032125351_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl125031125353_))
                                                        (let ((_e125036125356_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl125031125353_))))
                  (let ((_tl125034125361_
                         (let () (declare (not safe)) (##cdr _e125036125356_)))
                        (_hd125035125359_
                         (let ()
                           (declare (not safe))
                           (##car _e125036125356_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl125034125361_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl125028125345_))
                            (letrec ((_loop125022125364_
                                      (lambda (_hd125020125367_
                                               _xarg125026125369_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd125020125367_))
                                            (let ((_e125023125372_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd125020125367_))))
                                              (let ((_lp-tl125025125377_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e125023125372_)))
                                                    (_lp-hd125024125375_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e125023125372_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _lp-hd125024125375_))
                                                    (let ((_e125039125380_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _lp-hd125024125375_))))
                                                      (let ((_tl125037125385_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125039125380_)))
                    (_hd125038125383_
                     (let () (declare (not safe)) (##car _e125039125380_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd125038125383_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd125038125383_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl125037125385_))
                            (let ((_e125042125388_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl125037125385_))))
                              (let ((_tl125040125393_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e125042125388_)))
                                    (_hd125041125391_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e125042125388_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl125040125393_))
                                    (let ((__tmp130734
                                           (let ()
                                             (declare (not safe))
                                             (cons _hd125041125391_
                                                   _xarg125026125369_))))
                                      (declare (not safe))
                                      (_loop125022125364_
                                       _lp-tl125025125377_
                                       __tmp130734))
                                    (___match129440129441_
                                     _e124985125239_
                                     _hd124984125242_
                                     _tl124983125244_
                                     _e124997125271_
                                     _hd124996125274_
                                     _tl124995125276_
                                     _e125000125279_
                                     _hd124999125282_
                                     _tl124998125284_
                                     _e125003125287_
                                     _hd125002125290_
                                     _tl125001125292_
                                     _e125006125295_
                                     _hd125005125298_
                                     _tl125004125300_
                                     _e125009125303_
                                     _hd125008125306_
                                     _tl125007125308_
                                     _e125012125311_
                                     _hd125011125314_
                                     _tl125010125316_
                                     _e125015125319_
                                     _hd125014125322_
                                     _tl125013125324_
                                     _e125018125327_
                                     _hd125017125330_
                                     _tl125016125332_))))
                            (___match129440129441_
                             _e124985125239_
                             _hd124984125242_
                             _tl124983125244_
                             _e124997125271_
                             _hd124996125274_
                             _tl124995125276_
                             _e125000125279_
                             _hd124999125282_
                             _tl124998125284_
                             _e125003125287_
                             _hd125002125290_
                             _tl125001125292_
                             _e125006125295_
                             _hd125005125298_
                             _tl125004125300_
                             _e125009125303_
                             _hd125008125306_
                             _tl125007125308_
                             _e125012125311_
                             _hd125011125314_
                             _tl125010125316_
                             _e125015125319_
                             _hd125014125322_
                             _tl125013125324_
                             _e125018125327_
                             _hd125017125330_
                             _tl125016125332_))
                        (___match129440129441_
                         _e124985125239_
                         _hd124984125242_
                         _tl124983125244_
                         _e124997125271_
                         _hd124996125274_
                         _tl124995125276_
                         _e125000125279_
                         _hd124999125282_
                         _tl124998125284_
                         _e125003125287_
                         _hd125002125290_
                         _tl125001125292_
                         _e125006125295_
                         _hd125005125298_
                         _tl125004125300_
                         _e125009125303_
                         _hd125008125306_
                         _tl125007125308_
                         _e125012125311_
                         _hd125011125314_
                         _tl125010125316_
                         _e125015125319_
                         _hd125014125322_
                         _tl125013125324_
                         _e125018125327_
                         _hd125017125330_
                         _tl125016125332_))
                    (___match129440129441_
                     _e124985125239_
                     _hd124984125242_
                     _tl124983125244_
                     _e124997125271_
                     _hd124996125274_
                     _tl124995125276_
                     _e125000125279_
                     _hd124999125282_
                     _tl124998125284_
                     _e125003125287_
                     _hd125002125290_
                     _tl125001125292_
                     _e125006125295_
                     _hd125005125298_
                     _tl125004125300_
                     _e125009125303_
                     _hd125008125306_
                     _tl125007125308_
                     _e125012125311_
                     _hd125011125314_
                     _tl125010125316_
                     _e125015125319_
                     _hd125014125322_
                     _tl125013125324_
                     _e125018125327_
                     _hd125017125330_
                     _tl125016125332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129440129441_
                                                     _e124985125239_
                                                     _hd124984125242_
                                                     _tl124983125244_
                                                     _e124997125271_
                                                     _hd124996125274_
                                                     _tl124995125276_
                                                     _e125000125279_
                                                     _hd124999125282_
                                                     _tl124998125284_
                                                     _e125003125287_
                                                     _hd125002125290_
                                                     _tl125001125292_
                                                     _e125006125295_
                                                     _hd125005125298_
                                                     _tl125004125300_
                                                     _e125009125303_
                                                     _hd125008125306_
                                                     _tl125007125308_
                                                     _e125012125311_
                                                     _hd125011125314_
                                                     _tl125010125316_
                                                     _e125015125319_
                                                     _hd125014125322_
                                                     _tl125013125324_
                                                     _e125018125327_
                                                     _hd125017125330_
                                                     _tl125016125332_))))
                                            (let ((_xarg125027125396_
                                                   (reverse _xarg125026125369_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl124995125276_))
                                                  (let ((_L125399_
                                                         _hd125035125359_)
                                                        (_L125400_
                                                         _xarg125027125396_)
                                                        (_L125401_
                                                         _hd125017125330_)
                                                        (_L125402_
                                                         _hd125008125306_)
                                                        (_L125403_
                                                         _tl124988125249_)
                                                        (_L125404_
                                                         _arg124994125268_))
                                                    (if (and (let ((__tmp130732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130733
                                   (lambda (_g125447125450_ _g125448125452_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125447125450_
                                             _g125448125452_)))))
                              (declare (not safe))
                              (foldr1 __tmp130733 '() _L125404_))))
                       (declare (not safe))
                       (gx#identifier-list? __tmp130732))
                     (let () (declare (not safe)) (gx#identifier? _L125403_))
                     (let ()
                       (declare (not safe))
                       (gxc#runtime-identifier=? _L125402_ 'apply))
                     (fx= (length (let ((__tmp130730
                                         (lambda (_g125454125457_
                                                  _g125455125459_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125454125457_
                                                   _g125455125459_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130730 '() _L125404_)))
                          (length (let ((__tmp130731
                                         (lambda (_g125461125464_
                                                  _g125462125466_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g125461125464_
                                                   _g125462125466_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp130731 '() _L125400_))))
                     (let ((__tmp130728
                            (let ((__tmp130729
                                   (lambda (_g125468125471_ _g125469125473_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125468125471_
                                             _g125469125473_)))))
                              (declare (not safe))
                              (foldr1 __tmp130729 '() _L125404_)))
                           (__tmp130726
                            (let ((__tmp130727
                                   (lambda (_g125475125478_ _g125476125480_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g125475125478_
                                             _g125476125480_)))))
                              (declare (not safe))
                              (foldr1 __tmp130727 '() _L125400_))))
                       (declare (not safe))
                       (andmap2 gx#free-identifier=? __tmp130728 __tmp130726))
                     (let ()
                       (declare (not safe))
                       (gx#free-identifier=? _L125403_ _L125399_))
                     (let ((__tmp130721
                            (let ((__tmp130725
                                   (lambda (_g125482125484_)
                                     (let ()
                                       (declare (not safe))
                                       (gx#free-identifier=?
                                        _g125482125484_
                                        _L125401_))))
                                  (__tmp130722
                                   (let ((__tmp130724
                                          (lambda (_g125486125489_
                                                   _g125487125491_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g125486125489_
                                                    _g125487125491_))))
                                         (__tmp130723
                                          (let ()
                                            (declare (not safe))
                                            (cons _L125403_ '()))))
                                     (declare (not safe))
                                     (foldr1 __tmp130724
                                             __tmp130723
                                             _L125404_))))
                              (declare (not safe))
                              (find __tmp130725 __tmp130722))))
                       (declare (not safe))
                       (not __tmp130721)))
                (___kont129335129336_
                 _L125399_
                 _L125400_
                 _L125401_
                 _L125402_
                 _L125403_
                 _L125404_)
                (___match129440129441_
                 _e124985125239_
                 _hd124984125242_
                 _tl124983125244_
                 _e124997125271_
                 _hd124996125274_
                 _tl124995125276_
                 _e125000125279_
                 _hd124999125282_
                 _tl124998125284_
                 _e125003125287_
                 _hd125002125290_
                 _tl125001125292_
                 _e125006125295_
                 _hd125005125298_
                 _tl125004125300_
                 _e125009125303_
                 _hd125008125306_
                 _tl125007125308_
                 _e125012125311_
                 _hd125011125314_
                 _tl125010125316_
                 _e125015125319_
                 _hd125014125322_
                 _tl125013125324_
                 _e125018125327_
                 _hd125017125330_
                 _tl125016125332_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match129440129441_
                                                   _e124985125239_
                                                   _hd124984125242_
                                                   _tl124983125244_
                                                   _e124997125271_
                                                   _hd124996125274_
                                                   _tl124995125276_
                                                   _e125000125279_
                                                   _hd124999125282_
                                                   _tl124998125284_
                                                   _e125003125287_
                                                   _hd125002125290_
                                                   _tl125001125292_
                                                   _e125006125295_
                                                   _hd125005125298_
                                                   _tl125004125300_
                                                   _e125009125303_
                                                   _hd125008125306_
                                                   _tl125007125308_
                                                   _e125012125311_
                                                   _hd125011125314_
                                                   _tl125010125316_
                                                   _e125015125319_
                                                   _hd125014125322_
                                                   _tl125013125324_
                                                   _e125018125327_
                                                   _hd125017125330_
                                                   _tl125016125332_)))))))
                              (let ()
                                (declare (not safe))
                                (_loop125022125364_ _target125019125335_ '())))
                            (___match129440129441_
                             _e124985125239_
                             _hd124984125242_
                             _tl124983125244_
                             _e124997125271_
                             _hd124996125274_
                             _tl124995125276_
                             _e125000125279_
                             _hd124999125282_
                             _tl124998125284_
                             _e125003125287_
                             _hd125002125290_
                             _tl125001125292_
                             _e125006125295_
                             _hd125005125298_
                             _tl125004125300_
                             _e125009125303_
                             _hd125008125306_
                             _tl125007125308_
                             _e125012125311_
                             _hd125011125314_
                             _tl125010125316_
                             _e125015125319_
                             _hd125014125322_
                             _tl125013125324_
                             _e125018125327_
                             _hd125017125330_
                             _tl125016125332_))
                        (___match129440129441_
                         _e124985125239_
                         _hd124984125242_
                         _tl124983125244_
                         _e124997125271_
                         _hd124996125274_
                         _tl124995125276_
                         _e125000125279_
                         _hd124999125282_
                         _tl124998125284_
                         _e125003125287_
                         _hd125002125290_
                         _tl125001125292_
                         _e125006125295_
                         _hd125005125298_
                         _tl125004125300_
                         _e125009125303_
                         _hd125008125306_
                         _tl125007125308_
                         _e125012125311_
                         _hd125011125314_
                         _tl125010125316_
                         _e125015125319_
                         _hd125014125322_
                         _tl125013125324_
                         _e125018125327_
                         _hd125017125330_
                         _tl125016125332_))))
                (___match129440129441_
                 _e124985125239_
                 _hd124984125242_
                 _tl124983125244_
                 _e124997125271_
                 _hd124996125274_
                 _tl124995125276_
                 _e125000125279_
                 _hd124999125282_
                 _tl124998125284_
                 _e125003125287_
                 _hd125002125290_
                 _tl125001125292_
                 _e125006125295_
                 _hd125005125298_
                 _tl125004125300_
                 _e125009125303_
                 _hd125008125306_
                 _tl125007125308_
                 _e125012125311_
                 _hd125011125314_
                 _tl125010125316_
                 _e125015125319_
                 _hd125014125322_
                 _tl125013125324_
                 _e125018125327_
                 _hd125017125330_
                 _tl125016125332_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129440129441_
                                                     _e124985125239_
                                                     _hd124984125242_
                                                     _tl124983125244_
                                                     _e124997125271_
                                                     _hd124996125274_
                                                     _tl124995125276_
                                                     _e125000125279_
                                                     _hd124999125282_
                                                     _tl124998125284_
                                                     _e125003125287_
                                                     _hd125002125290_
                                                     _tl125001125292_
                                                     _e125006125295_
                                                     _hd125005125298_
                                                     _tl125004125300_
                                                     _e125009125303_
                                                     _hd125008125306_
                                                     _tl125007125308_
                                                     _e125012125311_
                                                     _hd125011125314_
                                                     _tl125010125316_
                                                     _e125015125319_
                                                     _hd125014125322_
                                                     _tl125013125324_
                                                     _e125018125327_
                                                     _hd125017125330_
                                                     _tl125016125332_))
                                                (___match129440129441_
                                                 _e124985125239_
                                                 _hd124984125242_
                                                 _tl124983125244_
                                                 _e124997125271_
                                                 _hd124996125274_
                                                 _tl124995125276_
                                                 _e125000125279_
                                                 _hd124999125282_
                                                 _tl124998125284_
                                                 _e125003125287_
                                                 _hd125002125290_
                                                 _tl125001125292_
                                                 _e125006125295_
                                                 _hd125005125298_
                                                 _tl125004125300_
                                                 _e125009125303_
                                                 _hd125008125306_
                                                 _tl125007125308_
                                                 _e125012125311_
                                                 _hd125011125314_
                                                 _tl125010125316_
                                                 _e125015125319_
                                                 _hd125014125322_
                                                 _tl125013125324_
                                                 _e125018125327_
                                                 _hd125017125330_
                                                 _tl125016125332_))))
                                        (___match129440129441_
                                         _e124985125239_
                                         _hd124984125242_
                                         _tl124983125244_
                                         _e124997125271_
                                         _hd124996125274_
                                         _tl124995125276_
                                         _e125000125279_
                                         _hd124999125282_
                                         _tl124998125284_
                                         _e125003125287_
                                         _hd125002125290_
                                         _tl125001125292_
                                         _e125006125295_
                                         _hd125005125298_
                                         _tl125004125300_
                                         _e125009125303_
                                         _hd125008125306_
                                         _tl125007125308_
                                         _e125012125311_
                                         _hd125011125314_
                                         _tl125010125316_
                                         _e125015125319_
                                         _hd125014125322_
                                         _tl125013125324_
                                         _e125018125327_
                                         _hd125017125330_
                                         _tl125016125332_))))
                                (___match129440129441_
                                 _e124985125239_
                                 _hd124984125242_
                                 _tl124983125244_
                                 _e124997125271_
                                 _hd124996125274_
                                 _tl124995125276_
                                 _e125000125279_
                                 _hd124999125282_
                                 _tl124998125284_
                                 _e125003125287_
                                 _hd125002125290_
                                 _tl125001125292_
                                 _e125006125295_
                                 _hd125005125298_
                                 _tl125004125300_
                                 _e125009125303_
                                 _hd125008125306_
                                 _tl125007125308_
                                 _e125012125311_
                                 _hd125011125314_
                                 _tl125010125316_
                                 _e125015125319_
                                 _hd125014125322_
                                 _tl125013125324_
                                 _e125018125327_
                                 _hd125017125330_
                                 _tl125016125332_))))
                        (___match129440129441_
                         _e124985125239_
                         _hd124984125242_
                         _tl124983125244_
                         _e124997125271_
                         _hd124996125274_
                         _tl124995125276_
                         _e125000125279_
                         _hd124999125282_
                         _tl124998125284_
                         _e125003125287_
                         _hd125002125290_
                         _tl125001125292_
                         _e125006125295_
                         _hd125005125298_
                         _tl125004125300_
                         _e125009125303_
                         _hd125008125306_
                         _tl125007125308_
                         _e125012125311_
                         _hd125011125314_
                         _tl125010125316_
                         _e125015125319_
                         _hd125014125322_
                         _tl125013125324_
                         _e125018125327_
                         _hd125017125330_
                         _tl125016125332_))
                    (___match129440129441_
                     _e124985125239_
                     _hd124984125242_
                     _tl124983125244_
                     _e124997125271_
                     _hd124996125274_
                     _tl124995125276_
                     _e125000125279_
                     _hd124999125282_
                     _tl124998125284_
                     _e125003125287_
                     _hd125002125290_
                     _tl125001125292_
                     _e125006125295_
                     _hd125005125298_
                     _tl125004125300_
                     _e125009125303_
                     _hd125008125306_
                     _tl125007125308_
                     _e125012125311_
                     _hd125011125314_
                     _tl125010125316_
                     _e125015125319_
                     _hd125014125322_
                     _tl125013125324_
                     _e125018125327_
                     _hd125017125330_
                     _tl125016125332_))
                (___kont129343129344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129343129344_))
                                            (___kont129343129344_))
                                        (___kont129343129344_))))
                                (___kont129343129344_))))
                        (___kont129343129344_))
                    (___kont129343129344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129343129344_))
                                                (___kont129343129344_))
                                            (___kont129343129344_))))
                                    (___kont129343129344_))))
                            (___kont129343129344_))
                        (___kont129343129344_))
                    (___kont129343129344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129343129344_))))
                                            (___kont129343129344_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124989125252_ _target124986125247_ '())))))
                   (___match129358129359_
                    (lambda (_e124937125499_
                             _hd124936125502_
                             _tl124935125504_
                             ___splice129331129332_
                             _target124938125507_
                             _tl124940125509_)
                      (letrec ((_loop124941125512_
                                (lambda (_hd124939125515_ _arg124945125517_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124939125515_))
                                      (let ((_e124942125520_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124939125515_))))
                                        (let ((_lp-tl124944125525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124942125520_)))
                                              (_lp-hd124943125523_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124942125520_))))
                                          (let ((__tmp130749
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124943125523_
                                                         _arg124945125517_))))
                                            (declare (not safe))
                                            (_loop124941125512_
                                             _lp-tl124944125525_
                                             __tmp130749))))
                                      (let ((_arg124946125528_
                                             (reverse _arg124945125517_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124935125504_))
                                            (let ((_e124949125531_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124935125504_))))
                                              (let ((_tl124947125536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124949125531_)))
                                                    (_hd124948125534_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124949125531_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124948125534_))
                                                    (let ((_e124952125539_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124948125534_))))
                                                      (let ((_tl124950125544_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124952125539_)))
                    (_hd124951125542_
                     (let () (declare (not safe)) (##car _e124952125539_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124951125542_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124951125542_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124950125544_))
                            (let ((_e124955125547_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124950125544_))))
                              (let ((_tl124953125552_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124955125547_)))
                                    (_hd124954125550_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124955125547_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124954125550_))
                                    (let ((_e124958125555_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124954125550_))))
                                      (let ((_tl124956125560_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124958125555_)))
                                            (_hd124957125558_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124958125555_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124957125558_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124957125558_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124956125560_))
                                                    (let ((_e124961125563_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124956125560_))))
                                                      (let ((_tl124959125568_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124961125563_)))
                    (_hd124960125566_
                     (let () (declare (not safe)) (##car _e124961125563_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124959125568_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124953125552_))
                        (let ((___splice129333129334_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124953125552_
                                  '0))))
                          (let ((_tl124964125573_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129333129334_ '1)))
                                (_target124962125571_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129333129334_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124964125573_))
                                (letrec ((_loop124965125576_
                                          (lambda (_hd124963125579_
                                                   _xarg124969125581_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124963125579_))
                                                (let ((_e124966125584_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124963125579_))))
                                                  (let ((_lp-tl124968125589_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124966125584_)))
                                                        (_lp-hd124967125587_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124966125584_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124967125587_))
                                                        (let ((_e124973125592_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124967125587_))))
                  (let ((_tl124971125597_
                         (let () (declare (not safe)) (##cdr _e124973125592_)))
                        (_hd124972125595_
                         (let ()
                           (declare (not safe))
                           (##car _e124973125592_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124972125595_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124972125595_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124971125597_))
                                (let ((_e124976125600_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124971125597_))))
                                  (let ((_tl124974125605_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124976125600_)))
                                        (_hd124975125603_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124976125600_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124974125605_))
                                        (let ((__tmp130748
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124975125603_
                                                       _xarg124969125581_))))
                                          (declare (not safe))
                                          (_loop124965125576_
                                           _lp-tl124968125589_
                                           __tmp130748))
                                        (___match129370129371_
                                         _e124937125499_
                                         _hd124936125502_
                                         _tl124935125504_
                                         ___splice129331129332_
                                         _target124938125507_
                                         _tl124940125509_))))
                                (___match129370129371_
                                 _e124937125499_
                                 _hd124936125502_
                                 _tl124935125504_
                                 ___splice129331129332_
                                 _target124938125507_
                                 _tl124940125509_))
                            (___match129370129371_
                             _e124937125499_
                             _hd124936125502_
                             _tl124935125504_
                             ___splice129331129332_
                             _target124938125507_
                             _tl124940125509_))
                        (___match129370129371_
                         _e124937125499_
                         _hd124936125502_
                         _tl124935125504_
                         ___splice129331129332_
                         _target124938125507_
                         _tl124940125509_))))
                (___match129370129371_
                 _e124937125499_
                 _hd124936125502_
                 _tl124935125504_
                 ___splice129331129332_
                 _target124938125507_
                 _tl124940125509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124970125608_
                                                       (reverse _xarg124969125581_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124947125536_))
                                                      (let ((_L125611_
                                                             _xarg124970125608_)
                                                            (_L125612_
                                                             _hd124960125566_)
                                                            (_L125613_
                                                             _arg124946125528_))
                                                        (if (and (let ((__tmp130746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (let ((__tmp130747
                                       (lambda (_g125641125644_
                                                _g125642125646_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125641125644_
                                                 _g125642125646_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130747 '() _L125613_))))
                           (declare (not safe))
                           (gx#identifier-list? __tmp130746))
                         (fx= (length (let ((__tmp130744
                                             (lambda (_g125648125651_
                                                      _g125649125653_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125648125651_
                                                       _g125649125653_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130744 '() _L125613_)))
                              (length (let ((__tmp130745
                                             (lambda (_g125655125658_
                                                      _g125656125660_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g125655125658_
                                                       _g125656125660_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp130745 '() _L125611_))))
                         (let ((__tmp130742
                                (let ((__tmp130743
                                       (lambda (_g125662125665_
                                                _g125663125667_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125662125665_
                                                 _g125663125667_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130743 '() _L125613_)))
                               (__tmp130740
                                (let ((__tmp130741
                                       (lambda (_g125669125672_
                                                _g125670125674_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g125669125672_
                                                 _g125670125674_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp130741 '() _L125611_))))
                           (declare (not safe))
                           (andmap2 gx#free-identifier=?
                                    __tmp130742
                                    __tmp130740))
                         (let ((__tmp130736
                                (let ((__tmp130739
                                       (lambda (_g125676125678_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _g125676125678_
                                            _L125612_))))
                                      (__tmp130737
                                       (let ((__tmp130738
                                              (lambda (_g125680125683_
                                                       _g125681125685_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g125680125683_
                                                        _g125681125685_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp130738 '() _L125613_))))
                                  (declare (not safe))
                                  (find __tmp130739 __tmp130737))))
                           (declare (not safe))
                           (not __tmp130736)))
                    (___kont129329129330_ _L125611_ _L125612_ _L125613_)
                    (___match129370129371_
                     _e124937125499_
                     _hd124936125502_
                     _tl124935125504_
                     ___splice129331129332_
                     _target124938125507_
                     _tl124940125509_)))
              (___match129370129371_
               _e124937125499_
               _hd124936125502_
               _tl124935125504_
               ___splice129331129332_
               _target124938125507_
               _tl124940125509_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (let ()
                                    (declare (not safe))
                                    (_loop124965125576_
                                     _target124962125571_
                                     '())))
                                (___match129370129371_
                                 _e124937125499_
                                 _hd124936125502_
                                 _tl124935125504_
                                 ___splice129331129332_
                                 _target124938125507_
                                 _tl124940125509_))))
                        (___match129370129371_
                         _e124937125499_
                         _hd124936125502_
                         _tl124935125504_
                         ___splice129331129332_
                         _target124938125507_
                         _tl124940125509_))
                    (___match129370129371_
                     _e124937125499_
                     _hd124936125502_
                     _tl124935125504_
                     ___splice129331129332_
                     _target124938125507_
                     _tl124940125509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129370129371_
                                                     _e124937125499_
                                                     _hd124936125502_
                                                     _tl124935125504_
                                                     ___splice129331129332_
                                                     _target124938125507_
                                                     _tl124940125509_))
                                                (___match129370129371_
                                                 _e124937125499_
                                                 _hd124936125502_
                                                 _tl124935125504_
                                                 ___splice129331129332_
                                                 _target124938125507_
                                                 _tl124940125509_))
                                            (___match129370129371_
                                             _e124937125499_
                                             _hd124936125502_
                                             _tl124935125504_
                                             ___splice129331129332_
                                             _target124938125507_
                                             _tl124940125509_))))
                                    (___match129370129371_
                                     _e124937125499_
                                     _hd124936125502_
                                     _tl124935125504_
                                     ___splice129331129332_
                                     _target124938125507_
                                     _tl124940125509_))))
                            (___match129370129371_
                             _e124937125499_
                             _hd124936125502_
                             _tl124935125504_
                             ___splice129331129332_
                             _target124938125507_
                             _tl124940125509_))
                        (___match129370129371_
                         _e124937125499_
                         _hd124936125502_
                         _tl124935125504_
                         ___splice129331129332_
                         _target124938125507_
                         _tl124940125509_))
                    (___match129370129371_
                     _e124937125499_
                     _hd124936125502_
                     _tl124935125504_
                     ___splice129331129332_
                     _target124938125507_
                     _tl124940125509_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129370129371_
                                                     _e124937125499_
                                                     _hd124936125502_
                                                     _tl124935125504_
                                                     ___splice129331129332_
                                                     _target124938125507_
                                                     _tl124940125509_))))
                                            (___match129370129371_
                                             _e124937125499_
                                             _hd124936125502_
                                             _tl124935125504_
                                             ___splice129331129332_
                                             _target124938125507_
                                             _tl124940125509_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124941125512_ _target124938125507_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129327129328_))
                  (let ((_e124937125499_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129327129328_))))
                    (let ((_tl124935125504_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124937125499_)))
                          (_hd124936125502_
                           (let ()
                             (declare (not safe))
                             (##car _e124937125499_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124936125502_))
                          (let ((___splice129331129332_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124936125502_
                                    '0))))
                            (let ((_tl124940125509_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129331129332_ '1)))
                                  (_target124938125507_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129331129332_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124940125509_))
                                  (___match129358129359_
                                   _e124937125499_
                                   _hd124936125502_
                                   _tl124935125504_
                                   ___splice129331129332_
                                   _target124938125507_
                                   _tl124940125509_)
                                  (___match129370129371_
                                   _e124937125499_
                                   _hd124936125502_
                                   _tl124935125504_
                                   ___splice129331129332_
                                   _target124938125507_
                                   _tl124940125509_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124935125504_))
                              (let ((_e125052125107_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124935125504_))))
                                (let ((_tl125050125112_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125052125107_)))
                                      (_hd125051125110_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125052125107_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd125051125110_))
                                      (let ((_e125055125115_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd125051125110_))))
                                        (let ((_tl125053125120_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125055125115_)))
                                              (_hd125054125118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125055125115_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd125054125118_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd125054125118_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl125053125120_))
                                                      (let ((_e125058125123_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl125053125120_))))
                (let ((_tl125056125128_
                       (let () (declare (not safe)) (##cdr _e125058125123_)))
                      (_hd125057125126_
                       (let () (declare (not safe)) (##car _e125058125123_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd125057125126_))
                      (let ((_e125061125131_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd125057125126_))))
                        (let ((_tl125059125136_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e125061125131_)))
                              (_hd125060125134_
                               (let ()
                                 (declare (not safe))
                                 (##car _e125061125131_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd125060125134_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd125060125134_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl125059125136_))
                                      (let ((_e125064125139_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl125059125136_))))
                                        (let ((_tl125062125144_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e125064125139_)))
                                              (_hd125063125142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e125064125139_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125062125144_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl125056125128_))
                                                  (let ((_e125067125147_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl125056125128_))))
                                                    (let ((_tl125065125152_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e125067125147_)))
                                                          (_hd125066125150_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e125067125147_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd125066125150_))
                                                          (let ((_e125070125155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd125066125150_))))
                    (let ((_tl125068125160_
                           (let ()
                             (declare (not safe))
                             (##cdr _e125070125155_)))
                          (_hd125069125158_
                           (let ()
                             (declare (not safe))
                             (##car _e125070125155_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd125069125158_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd125069125158_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl125068125160_))
                                  (let ((_e125073125163_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl125068125160_))))
                                    (let ((_tl125071125168_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e125073125163_)))
                                          (_hd125072125166_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e125073125163_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125071125168_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl125065125152_))
                                              (let ((_e125076125171_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl125065125152_))))
                                                (let ((_tl125074125176_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e125076125171_)))
                                                      (_hd125075125174_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e125076125171_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd125075125174_))
                                                      (let ((_e125079125179_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd125075125174_))))
                (let ((_tl125077125184_
                       (let () (declare (not safe)) (##cdr _e125079125179_)))
                      (_hd125078125182_
                       (let () (declare (not safe)) (##car _e125079125179_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#identifier? _hd125078125182_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd125078125182_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl125077125184_))
                              (let ((_e125082125187_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl125077125184_))))
                                (let ((_tl125080125192_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e125082125187_)))
                                      (_hd125081125190_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e125082125187_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl125080125192_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl125074125176_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl125050125112_))
                                              (___match129468129469_
                                               _e124937125499_
                                               _hd124936125502_
                                               _tl124935125504_
                                               _e125052125107_
                                               _hd125051125110_
                                               _tl125050125112_
                                               _e125055125115_
                                               _hd125054125118_
                                               _tl125053125120_
                                               _e125058125123_
                                               _hd125057125126_
                                               _tl125056125128_
                                               _e125061125131_
                                               _hd125060125134_
                                               _tl125059125136_
                                               _e125064125139_
                                               _hd125063125142_
                                               _tl125062125144_
                                               _e125067125147_
                                               _hd125066125150_
                                               _tl125065125152_
                                               _e125070125155_
                                               _hd125069125158_
                                               _tl125068125160_
                                               _e125073125163_
                                               _hd125072125166_
                                               _tl125071125168_
                                               _e125076125171_
                                               _hd125075125174_
                                               _tl125074125176_
                                               _e125079125179_
                                               _hd125078125182_
                                               _tl125077125184_
                                               _e125082125187_
                                               _hd125081125190_
                                               _tl125080125192_)
                                              (___kont129343129344_))
                                          (___kont129343129344_))
                                      (___kont129343129344_))))
                              (___kont129343129344_))
                          (___kont129343129344_))
                      (___kont129343129344_))))
              (___kont129343129344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont129343129344_))
                                          (___kont129343129344_))))
                                  (___kont129343129344_))
                              (___kont129343129344_))
                          (___kont129343129344_))))
                  (___kont129343129344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129343129344_))
                                              (___kont129343129344_))))
                                      (___kont129343129344_))
                                  (___kont129343129344_))
                              (___kont129343129344_))))
                      (___kont129343129344_))))
              (___kont129343129344_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont129343129344_))
                                              (___kont129343129344_))))
                                      (___kont129343129344_))))
                              (___kont129343129344_)))))
                  (___kont129343129344_)))))))
    (define gxc#dispatch-lambda-form-delegate
      (lambda (_form124393_)
        (let* ((___stx129471129472_ _form124393_)
               (_g124397124521_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129471129472_)))))
          (let ((___kont129473129474_
                 (lambda (_L124891_ _L124892_ _L124893_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124892_))))
                (___kont129479129480_
                 (lambda (_L124739_ _L124740_ _L124741_ _L124742_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124739_))))
                (___kont129483129484_
                 (lambda (_L124606_ _L124607_ _L124608_)
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _L124606_)))))
            (let* ((___match129580129581_
                    (lambda (_e124489124526_
                             _hd124488124529_
                             _tl124487124531_
                             _e124492124534_
                             _hd124491124537_
                             _tl124490124539_
                             _e124495124542_
                             _hd124494124545_
                             _tl124493124547_
                             _e124498124550_
                             _hd124497124553_
                             _tl124496124555_
                             _e124501124558_
                             _hd124500124561_
                             _tl124499124563_
                             _e124504124566_
                             _hd124503124569_
                             _tl124502124571_
                             _e124507124574_
                             _hd124506124577_
                             _tl124505124579_
                             _e124510124582_
                             _hd124509124585_
                             _tl124508124587_
                             _e124513124590_
                             _hd124512124593_
                             _tl124511124595_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl124505124579_))
                          (let ((_e124516124598_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl124505124579_))))
                            (let ((_tl124514124603_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e124516124598_)))
                                  (_hd124515124601_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e124516124598_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124514124603_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124490124539_))
                                      (___kont129483129484_
                                       _hd124512124593_
                                       _hd124503124569_
                                       _hd124488124529_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124397124521_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124397124521_)))))
                          (let () (declare (not safe)) (_g124397124521_)))))
                   (___match129510129511_
                    (lambda (_e124450124643_
                             _hd124449124646_
                             _tl124448124648_
                             ___splice129481129482_
                             _target124451124651_
                             _tl124453124653_)
                      (letrec ((_loop124454124656_
                                (lambda (_hd124452124659_ _arg124458124661_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124452124659_))
                                      (let ((_e124455124664_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124452124659_))))
                                        (let ((_lp-tl124457124669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124455124664_)))
                                              (_lp-hd124456124667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124455124664_))))
                                          (let ((__tmp130750
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124456124667_
                                                         _arg124458124661_))))
                                            (declare (not safe))
                                            (_loop124454124656_
                                             _lp-tl124457124669_
                                             __tmp130750))))
                                      (let ((_arg124459124672_
                                             (reverse _arg124458124661_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124448124648_))
                                            (let ((_e124462124675_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124448124648_))))
                                              (let ((_tl124460124680_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124462124675_)))
                                                    (_hd124461124678_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124462124675_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124461124678_))
                                                    (let ((_e124465124683_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124461124678_))))
                                                      (let ((_tl124463124688_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124465124683_)))
                    (_hd124464124686_
                     (let () (declare (not safe)) (##car _e124465124683_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124464124686_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124464124686_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124463124688_))
                            (let ((_e124468124691_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124463124688_))))
                              (let ((_tl124466124696_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124468124691_)))
                                    (_hd124467124694_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124468124691_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124467124694_))
                                    (let ((_e124471124699_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124467124694_))))
                                      (let ((_tl124469124704_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124471124699_)))
                                            (_hd124470124702_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124471124699_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124470124702_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124470124702_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124469124704_))
                                                    (let ((_e124474124707_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124469124704_))))
                                                      (let ((_tl124472124712_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124474124707_)))
                    (_hd124473124710_
                     (let () (declare (not safe)) (##car _e124474124707_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124472124712_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl124466124696_))
                        (let ((_e124477124715_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl124466124696_))))
                          (let ((_tl124475124720_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e124477124715_)))
                                (_hd124476124718_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e124477124715_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd124476124718_))
                                (let ((_e124480124723_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd124476124718_))))
                                  (let ((_tl124478124728_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124480124723_)))
                                        (_hd124479124726_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124480124723_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd124479124726_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd124479124726_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl124478124728_))
                                                (let ((_e124483124731_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl124478124728_))))
                                                  (let ((_tl124481124736_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124483124731_)))
                                                        (_hd124482124734_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124483124731_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl124481124736_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl124460124680_))
                                                            (___kont129479129480_
                                                             _hd124482124734_
                                                             _hd124473124710_
                                                             _tl124453124653_
                                                             _arg124459124672_)
                                                            (___match129580129581_
                                                             _e124450124643_
                                                             _hd124449124646_
                                                             _tl124448124648_
                                                             _e124462124675_
                                                             _hd124461124678_
                                                             _tl124460124680_
                                                             _e124465124683_
                                                             _hd124464124686_
                                                             _tl124463124688_
                                                             _e124468124691_
                                                             _hd124467124694_
                                                             _tl124466124696_
                                                             _e124471124699_
                                                             _hd124470124702_
                                                             _tl124469124704_
                                                             _e124474124707_
                                                             _hd124473124710_
                                                             _tl124472124712_
                                                             _e124477124715_
                                                             _hd124476124718_
                                                             _tl124475124720_
                                                             _e124480124723_
                                                             _hd124479124726_
                                                             _tl124478124728_
                                                             _e124483124731_
                                                             _hd124482124734_
                                                             _tl124481124736_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g124397124521_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124397124521_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124397124521_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g124397124521_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g124397124521_)))))
                        (let () (declare (not safe)) (_g124397124521_)))
                    (let () (declare (not safe)) (_g124397124521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124397124521_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g124397124521_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g124397124521_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g124397124521_)))))
                            (let () (declare (not safe)) (_g124397124521_)))
                        (let () (declare (not safe)) (_g124397124521_)))
                    (let () (declare (not safe)) (_g124397124521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g124397124521_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g124397124521_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop124454124656_ _target124451124651_ '())))))
                   (___match129498129499_
                    (lambda (_e124404124779_
                             _hd124403124782_
                             _tl124402124784_
                             ___splice129475129476_
                             _target124405124787_
                             _tl124407124789_)
                      (letrec ((_loop124408124792_
                                (lambda (_hd124406124795_ _arg124412124797_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124406124795_))
                                      (let ((_e124409124800_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124406124795_))))
                                        (let ((_lp-tl124411124805_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124409124800_)))
                                              (_lp-hd124410124803_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124409124800_))))
                                          (let ((__tmp130752
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd124410124803_
                                                         _arg124412124797_))))
                                            (declare (not safe))
                                            (_loop124408124792_
                                             _lp-tl124411124805_
                                             __tmp130752))))
                                      (let ((_arg124413124808_
                                             (reverse _arg124412124797_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl124402124784_))
                                            (let ((_e124416124811_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl124402124784_))))
                                              (let ((_tl124414124816_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124416124811_)))
                                                    (_hd124415124814_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124416124811_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd124415124814_))
                                                    (let ((_e124419124819_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd124415124814_))))
                                                      (let ((_tl124417124824_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124419124819_)))
                    (_hd124418124822_
                     (let () (declare (not safe)) (##car _e124419124819_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd124418124822_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd124418124822_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl124417124824_))
                            (let ((_e124422124827_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl124417124824_))))
                              (let ((_tl124420124832_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e124422124827_)))
                                    (_hd124421124830_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e124422124827_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd124421124830_))
                                    (let ((_e124425124835_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd124421124830_))))
                                      (let ((_tl124423124840_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e124425124835_)))
                                            (_hd124424124838_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e124425124835_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd124424124838_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd124424124838_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl124423124840_))
                                                    (let ((_e124428124843_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl124423124840_))))
                                                      (let ((_tl124426124848_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e124428124843_)))
                    (_hd124427124846_
                     (let () (declare (not safe)) (##car _e124428124843_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl124426124848_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl124420124832_))
                        (let ((___splice129477129478_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl124420124832_
                                  '0))))
                          (let ((_tl124431124853_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129477129478_ '1)))
                                (_target124429124851_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice129477129478_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl124431124853_))
                                (letrec ((_loop124432124856_
                                          (lambda (_hd124430124859_
                                                   _xarg124436124861_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd124430124859_))
                                                (let ((_e124433124864_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd124430124859_))))
                                                  (let ((_lp-tl124435124869_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e124433124864_)))
                                                        (_lp-hd124434124867_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e124433124864_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _lp-hd124434124867_))
                                                        (let ((_e124440124872_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _lp-hd124434124867_))))
                  (let ((_tl124438124877_
                         (let () (declare (not safe)) (##cdr _e124440124872_)))
                        (_hd124439124875_
                         (let ()
                           (declare (not safe))
                           (##car _e124440124872_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124439124875_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd124439124875_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl124438124877_))
                                (let ((_e124443124880_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl124438124877_))))
                                  (let ((_tl124441124885_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e124443124880_)))
                                        (_hd124442124883_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e124443124880_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl124441124885_))
                                        (let ((__tmp130751
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd124442124883_
                                                       _xarg124436124861_))))
                                          (declare (not safe))
                                          (_loop124432124856_
                                           _lp-tl124435124869_
                                           __tmp130751))
                                        (___match129510129511_
                                         _e124404124779_
                                         _hd124403124782_
                                         _tl124402124784_
                                         ___splice129475129476_
                                         _target124405124787_
                                         _tl124407124789_))))
                                (___match129510129511_
                                 _e124404124779_
                                 _hd124403124782_
                                 _tl124402124784_
                                 ___splice129475129476_
                                 _target124405124787_
                                 _tl124407124789_))
                            (___match129510129511_
                             _e124404124779_
                             _hd124403124782_
                             _tl124402124784_
                             ___splice129475129476_
                             _target124405124787_
                             _tl124407124789_))
                        (___match129510129511_
                         _e124404124779_
                         _hd124403124782_
                         _tl124402124784_
                         ___splice129475129476_
                         _target124405124787_
                         _tl124407124789_))))
                (___match129510129511_
                 _e124404124779_
                 _hd124403124782_
                 _tl124402124784_
                 ___splice129475129476_
                 _target124405124787_
                 _tl124407124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_xarg124437124888_
                                                       (reverse _xarg124436124861_)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124414124816_))
                                                      (___kont129473129474_
                                                       _xarg124437124888_
                                                       _hd124427124846_
                                                       _arg124413124808_)
                                                      (___match129510129511_
                                                       _e124404124779_
                                                       _hd124403124782_
                                                       _tl124402124784_
                                                       ___splice129475129476_
                                                       _target124405124787_
                                                       _tl124407124789_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_loop124432124856_
                                     _target124429124851_
                                     '())))
                                (___match129510129511_
                                 _e124404124779_
                                 _hd124403124782_
                                 _tl124402124784_
                                 ___splice129475129476_
                                 _target124405124787_
                                 _tl124407124789_))))
                        (___match129510129511_
                         _e124404124779_
                         _hd124403124782_
                         _tl124402124784_
                         ___splice129475129476_
                         _target124405124787_
                         _tl124407124789_))
                    (___match129510129511_
                     _e124404124779_
                     _hd124403124782_
                     _tl124402124784_
                     ___splice129475129476_
                     _target124405124787_
                     _tl124407124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129510129511_
                                                     _e124404124779_
                                                     _hd124403124782_
                                                     _tl124402124784_
                                                     ___splice129475129476_
                                                     _target124405124787_
                                                     _tl124407124789_))
                                                (___match129510129511_
                                                 _e124404124779_
                                                 _hd124403124782_
                                                 _tl124402124784_
                                                 ___splice129475129476_
                                                 _target124405124787_
                                                 _tl124407124789_))
                                            (___match129510129511_
                                             _e124404124779_
                                             _hd124403124782_
                                             _tl124402124784_
                                             ___splice129475129476_
                                             _target124405124787_
                                             _tl124407124789_))))
                                    (___match129510129511_
                                     _e124404124779_
                                     _hd124403124782_
                                     _tl124402124784_
                                     ___splice129475129476_
                                     _target124405124787_
                                     _tl124407124789_))))
                            (___match129510129511_
                             _e124404124779_
                             _hd124403124782_
                             _tl124402124784_
                             ___splice129475129476_
                             _target124405124787_
                             _tl124407124789_))
                        (___match129510129511_
                         _e124404124779_
                         _hd124403124782_
                         _tl124402124784_
                         ___splice129475129476_
                         _target124405124787_
                         _tl124407124789_))
                    (___match129510129511_
                     _e124404124779_
                     _hd124403124782_
                     _tl124402124784_
                     ___splice129475129476_
                     _target124405124787_
                     _tl124407124789_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129510129511_
                                                     _e124404124779_
                                                     _hd124403124782_
                                                     _tl124402124784_
                                                     ___splice129475129476_
                                                     _target124405124787_
                                                     _tl124407124789_))))
                                            (___match129510129511_
                                             _e124404124779_
                                             _hd124403124782_
                                             _tl124402124784_
                                             ___splice129475129476_
                                             _target124405124787_
                                             _tl124407124789_)))))))
                        (let ()
                          (declare (not safe))
                          (_loop124408124792_ _target124405124787_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx129471129472_))
                  (let ((_e124404124779_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx129471129472_))))
                    (let ((_tl124402124784_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124404124779_)))
                          (_hd124403124782_
                           (let ()
                             (declare (not safe))
                             (##car _e124404124779_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _hd124403124782_))
                          (let ((___splice129475129476_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _hd124403124782_
                                    '0))))
                            (let ((_tl124407124789_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice129475129476_ '1)))
                                  (_target124405124787_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice129475129476_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl124407124789_))
                                  (___match129498129499_
                                   _e124404124779_
                                   _hd124403124782_
                                   _tl124402124784_
                                   ___splice129475129476_
                                   _target124405124787_
                                   _tl124407124789_)
                                  (___match129510129511_
                                   _e124404124779_
                                   _hd124403124782_
                                   _tl124402124784_
                                   ___splice129475129476_
                                   _target124405124787_
                                   _tl124407124789_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124402124784_))
                              (let ((_e124492124534_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124402124784_))))
                                (let ((_tl124490124539_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124492124534_)))
                                      (_hd124491124537_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124492124534_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd124491124537_))
                                      (let ((_e124495124542_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd124491124537_))))
                                        (let ((_tl124493124547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124495124542_)))
                                              (_hd124494124545_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124495124542_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#identifier?
                                                 _hd124494124545_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-eq?
                                                     '%#call
                                                     _hd124494124545_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl124493124547_))
                                                      (let ((_e124498124550_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl124493124547_))))
                (let ((_tl124496124555_
                       (let () (declare (not safe)) (##cdr _e124498124550_)))
                      (_hd124497124553_
                       (let () (declare (not safe)) (##car _e124498124550_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd124497124553_))
                      (let ((_e124501124558_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd124497124553_))))
                        (let ((_tl124499124563_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124501124558_)))
                              (_hd124500124561_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124501124558_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd124500124561_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd124500124561_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl124499124563_))
                                      (let ((_e124504124566_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl124499124563_))))
                                        (let ((_tl124502124571_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e124504124566_)))
                                              (_hd124503124569_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e124504124566_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl124502124571_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl124496124555_))
                                                  (let ((_e124507124574_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl124496124555_))))
                                                    (let ((_tl124505124579_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e124507124574_)))
                                                          (_hd124506124577_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e124507124574_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd124506124577_))
                                                          (let ((_e124510124582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd124506124577_))))
                    (let ((_tl124508124587_
                           (let ()
                             (declare (not safe))
                             (##cdr _e124510124582_)))
                          (_hd124509124585_
                           (let ()
                             (declare (not safe))
                             (##car _e124510124582_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd124509124585_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#ref _hd124509124585_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl124508124587_))
                                  (let ((_e124513124590_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl124508124587_))))
                                    (let ((_tl124511124595_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e124513124590_)))
                                          (_hd124512124593_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e124513124590_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl124511124595_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl124505124579_))
                                              (let ((_e124516124598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl124505124579_))))
                                                (let ((_tl124514124603_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e124516124598_)))
                                                      (_hd124515124601_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e124516124598_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl124514124603_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl124490124539_))
                                                          (___kont129483129484_
                                                           _hd124512124593_
                                                           _hd124503124569_
                                                           _hd124403124782_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g124397124521_)))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g124397124521_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g124397124521_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g124397124521_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g124397124521_)))
                              (let () (declare (not safe)) (_g124397124521_)))
                          (let () (declare (not safe)) (_g124397124521_)))))
                  (let () (declare (not safe)) (_g124397124521_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124397124521_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124397124521_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124397124521_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g124397124521_)))
                              (let ()
                                (declare (not safe))
                                (_g124397124521_)))))
                      (let () (declare (not safe)) (_g124397124521_)))))
              (let () (declare (not safe)) (_g124397124521_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g124397124521_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g124397124521_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g124397124521_)))))
                              (let ()
                                (declare (not safe))
                                (_g124397124521_))))))
                  (let () (declare (not safe)) (_g124397124521_))))))))
    (define gxc#lambda-form-arity
      (lambda (_form124197_)
        (let* ((_g124199124213_
                (lambda (_g124200124210_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g124200124210_))))
               (_g124198124390_
                (lambda (_g124200124216_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g124200124216_))
                      (let ((_e124205124218_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g124200124216_))))
                        (let ((_hd124204124221_
                               (let ()
                                 (declare (not safe))
                                 (##car _e124205124218_)))
                              (_tl124203124223_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e124205124218_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl124203124223_))
                              (let ((_e124208124226_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl124203124223_))))
                                (let ((_hd124207124229_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e124208124226_)))
                                      (_tl124206124231_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e124208124226_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl124206124231_))
                                      ((lambda (_L124234_ _L124235_)
                                         (let* ((___stx129593129594_ _L124235_)
                                                (_g124250124278_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx129593129594_)))))
                                           (let ((___kont129595129596_
                                                  (lambda (_L124369_)
                                                    (length (let ((__tmp130753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g124379124382_ _g124380124384_)
                             (let ()
                               (declare (not safe))
                               (cons _g124379124382_ _g124380124384_)))))
                      (declare (not safe))
                      (foldr1 __tmp130753 '() _L124369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129599129600_
                                                  (lambda (_L124320_ _L124321_)
                                                    (let ((__tmp130754
                                                           (length (let ((__tmp130755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g124332124335_ _g124333124337_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g124332124335_
                                            _g124333124337_)))))
                             (declare (not safe))
                             (foldr1 __tmp130755 '() _L124321_)))))
              (declare (not safe))
              (cons __tmp130754 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont129603129604_
                                                  (lambda (_L124283_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons '0 '())))))
                                             (let* ((___match129618129619_
                                                     (lambda (___splice129601129602_
                                                              _target124264124296_
                                                              _tl124266124298_)
                                                       (letrec ((_loop124267124301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd124265124304_ _arg124271124306_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd124265124304_))
                               (let ((_e124268124309_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd124265124304_))))
                                 (let ((_lp-tl124270124314_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e124268124309_)))
                                       (_lp-hd124269124312_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e124268124309_))))
                                   (let ((__tmp130756
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd124269124312_
                                                  _arg124271124306_))))
                                     (declare (not safe))
                                     (_loop124267124301_
                                      _lp-tl124270124314_
                                      __tmp130756))))
                               (let ((_arg124272124317_
                                      (reverse _arg124271124306_)))
                                 (___kont129599129600_
                                  _tl124266124298_
                                  _arg124272124317_))))))
                 (let ()
                   (declare (not safe))
                   (_loop124267124301_ _target124264124296_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match129612129613_
                                                     (lambda (___splice129597129598_
                                                              _target124253124345_
                                                              _tl124255124347_)
                                                       (letrec ((_loop124256124350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd124254124353_ _arg124260124355_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd124254124353_))
                               (let ((_e124257124358_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd124254124353_))))
                                 (let ((_lp-tl124259124363_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e124257124358_)))
                                       (_lp-hd124258124361_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e124257124358_))))
                                   (let ((__tmp130757
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd124258124361_
                                                  _arg124260124355_))))
                                     (declare (not safe))
                                     (_loop124256124350_
                                      _lp-tl124259124363_
                                      __tmp130757))))
                               (let ((_arg124261124366_
                                      (reverse _arg124260124355_)))
                                 (___kont129595129596_ _arg124261124366_))))))
                 (let ()
                   (declare (not safe))
                   (_loop124256124350_ _target124253124345_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair/null?
                                                      ___stx129593129594_))
                                                   (let ((___splice129597129598_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-split-splice
                                                             ___stx129593129594_
                                                             '0))))
                                                     (let ((_tl124255124347_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129597129598_
                                                               '1)))
                                                           (_target124253124345_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice129597129598_
                                                               '0))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl124255124347_))
                                                           (___match129612129613_
                                                            ___splice129597129598_
                                                            _target124253124345_
                                                            _tl124255124347_)
                                                           (___match129618129619_
                                                            ___splice129597129598_
                                                            _target124253124345_
                                                            _tl124255124347_))))
                                                   (___kont129603129604_
                                                    ___stx129593129594_))))))
                                       _hd124207124229_
                                       _hd124204124221_)
                                      (let ()
                                        (declare (not safe))
                                        (_g124199124213_ _g124200124216_)))))
                              (let ()
                                (declare (not safe))
                                (_g124199124213_ _g124200124216_)))))
                      (let ()
                        (declare (not safe))
                        (_g124199124213_ _g124200124216_))))))
          (declare (not safe))
          (_g124198124390_ _form124197_))))
    (define gxc#lambda-expr?
      (lambda (_expr124150_)
        (let* ((___stx129621129622_ _expr124150_)
               (_g124153124163_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129621129622_)))))
          (let ((___kont129623129624_ (lambda (_L124183_) '#t))
                (___kont129625129626_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129621129622_))
                (let ((_e124158124175_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129621129622_))))
                  (let ((_tl124156124180_
                         (let () (declare (not safe)) (##cdr _e124158124175_)))
                        (_hd124157124178_
                         (let ()
                           (declare (not safe))
                           (##car _e124158124175_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124157124178_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#lambda _hd124157124178_))
                            (___kont129623129624_ _tl124156124180_)
                            (___kont129625129626_))
                        (___kont129625129626_))))
                (___kont129625129626_))))))
    (define gxc#case-lambda-expr?
      (lambda (_expr124103_)
        (let* ((___stx129639129640_ _expr124103_)
               (_g124106124116_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129639129640_)))))
          (let ((___kont129641129642_ (lambda (_L124136_) '#t))
                (___kont129643129644_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129639129640_))
                (let ((_e124111124128_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129639129640_))))
                  (let ((_tl124109124133_
                         (let () (declare (not safe)) (##cdr _e124111124128_)))
                        (_hd124110124131_
                         (let ()
                           (declare (not safe))
                           (##car _e124111124128_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd124110124131_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#case-lambda _hd124110124131_))
                            (___kont129641129642_ _tl124109124133_)
                            (___kont129643129644_))
                        (___kont129643129644_))))
                (___kont129643129644_))))))
    (define gxc#opt-lambda-expr?
      (lambda (_expr123972_)
        (let* ((___stx129657129658_ _expr123972_)
               (_g123975124005_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129657129658_)))))
          (let ((___kont129659129660_
                 (lambda (_L124073_ _L124074_ _L124075_)
                   (if (let () (declare (not safe)) (gx#identifier? _L124075_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#lambda-expr? _L124074_))
                           (let ()
                             (declare (not safe))
                             (gxc#case-lambda-expr? _L124073_))
                           '#f)
                       '#f)))
                (___kont129661129662_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129657129658_))
                (let ((_e123982124017_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129657129658_))))
                  (let ((_tl123980124022_
                         (let () (declare (not safe)) (##cdr _e123982124017_)))
                        (_hd123981124020_
                         (let ()
                           (declare (not safe))
                           (##car _e123982124017_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123981124020_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123981124020_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123980124022_))
                                (let ((_e123985124025_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123980124022_))))
                                  (let ((_tl123983124030_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123985124025_)))
                                        (_hd123984124028_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123985124025_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123984124028_))
                                        (let ((_e123988124033_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123984124028_))))
                                          (let ((_tl123986124038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123988124033_)))
                                                (_hd123987124036_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123988124033_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123987124036_))
                                                (let ((_e123991124041_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123987124036_))))
                                                  (let ((_tl123989124046_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123991124041_)))
                                                        (_hd123990124044_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123991124041_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123990124044_))
                                                        (let ((_e123994124049_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123990124044_))))
                  (let ((_tl123992124054_
                         (let () (declare (not safe)) (##cdr _e123994124049_)))
                        (_hd123993124052_
                         (let ()
                           (declare (not safe))
                           (##car _e123994124049_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123992124054_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123989124046_))
                            (let ((_e123997124057_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123989124046_))))
                              (let ((_tl123995124062_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123997124057_)))
                                    (_hd123996124060_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123997124057_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123995124062_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123986124038_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123983124030_))
                                            (let ((_e124000124065_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123983124030_))))
                                              (let ((_tl123998124070_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e124000124065_)))
                                                    (_hd123999124068_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e124000124065_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123998124070_))
                                                    (___kont129659129660_
                                                     _hd123999124068_
                                                     _hd123996124060_
                                                     _hd123993124052_)
                                                    (___kont129661129662_))))
                                            (___kont129661129662_))
                                        (___kont129661129662_))
                                    (___kont129661129662_))))
                            (___kont129661129662_))
                        (___kont129661129662_))))
                (___kont129661129662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129661129662_))))
                                        (___kont129661129662_))))
                                (___kont129661129662_))
                            (___kont129661129662_))
                        (___kont129661129662_))))
                (___kont129661129662_))))))
    (define gxc#kw-lambda-expr?
      (lambda (_expr123297_)
        (let* ((___stx129719129720_ _expr123297_)
               (_g123300123458_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx129719129720_)))))
          (let ((___kont129721129722_
                 (lambda (_L123846_
                          _L123847_
                          _L123848_
                          _L123849_
                          _L123850_
                          _L123851_
                          _L123852_
                          _L123853_
                          _L123854_
                          _L123855_
                          _L123856_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#runtime-identifier=? _L123853_ 'apply))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=? _L123849_ 'apply))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#runtime-identifier=?
                                  _L123848_
                                  'keyword-dispatch))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L123856_
                                      _L123847_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L123855_
                                          _L123852_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123850_
                                              _L123846_))
                                           (let ()
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              _L123854_
                                              _L123851_))
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)))
                (___kont129723129724_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx129719129720_))
                (let ((_e123315123470_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx129719129720_))))
                  (let ((_tl123313123475_
                         (let () (declare (not safe)) (##cdr _e123315123470_)))
                        (_hd123314123473_
                         (let ()
                           (declare (not safe))
                           (##car _e123315123470_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123314123473_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#let-values _hd123314123473_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123313123475_))
                                (let ((_e123318123478_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123313123475_))))
                                  (let ((_tl123316123483_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123318123478_)))
                                        (_hd123317123481_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123318123478_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd123317123481_))
                                        (let ((_e123321123486_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd123317123481_))))
                                          (let ((_tl123319123491_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123321123486_)))
                                                (_hd123320123489_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123321123486_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123320123489_))
                                                (let ((_e123324123494_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123320123489_))))
                                                  (let ((_tl123322123499_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123324123494_)))
                                                        (_hd123323123497_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123324123494_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123323123497_))
                                                        (let ((_e123327123502_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123323123497_))))
                  (let ((_tl123325123507_
                         (let () (declare (not safe)) (##cdr _e123327123502_)))
                        (_hd123326123505_
                         (let ()
                           (declare (not safe))
                           (##car _e123327123502_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl123325123507_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123322123499_))
                            (let ((_e123330123510_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123322123499_))))
                              (let ((_tl123328123515_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123330123510_)))
                                    (_hd123329123513_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123330123510_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123329123513_))
                                    (let ((_e123333123518_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123329123513_))))
                                      (let ((_tl123331123523_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123333123518_)))
                                            (_hd123332123521_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123333123518_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123332123521_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#let-values
                                                   _hd123332123521_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123331123523_))
                                                    (let ((_e123336123526_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123331123523_))))
                                                      (let ((_tl123334123531_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123336123526_)))
                    (_hd123335123529_
                     (let () (declare (not safe)) (##car _e123336123526_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123335123529_))
                    (let ((_e123339123534_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123335123529_))))
                      (let ((_tl123337123539_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123339123534_)))
                            (_hd123338123537_
                             (let ()
                               (declare (not safe))
                               (##car _e123339123534_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123338123537_))
                            (let ((_e123342123542_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123338123537_))))
                              (let ((_tl123340123547_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123342123542_)))
                                    (_hd123341123545_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123342123542_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123341123545_))
                                    (let ((_e123345123550_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123341123545_))))
                                      (let ((_tl123343123555_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123345123550_)))
                                            (_hd123344123553_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123345123550_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123343123555_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123340123547_))
                                                (let ((_e123348123558_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123340123547_))))
                                                  (let ((_tl123346123563_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123348123558_)))
                                                        (_hd123347123561_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123348123558_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123346123563_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl123337123539_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123334123531_))
                        (let ((_e123351123566_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123334123531_))))
                          (let ((_tl123349123571_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123351123566_)))
                                (_hd123350123569_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123351123566_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123350123569_))
                                (let ((_e123354123574_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123350123569_))))
                                  (let ((_tl123352123579_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123354123574_)))
                                        (_hd123353123577_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123354123574_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123353123577_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#lambda
                                               _hd123353123577_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123352123579_))
                                                (let ((_e123357123582_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123352123579_))))
                                                  (let ((_tl123355123587_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123357123582_)))
                                                        (_hd123356123585_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123357123582_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123356123585_))
                                                        (let ((_e123360123590_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123356123585_))))
                  (let ((_tl123358123595_
                         (let () (declare (not safe)) (##cdr _e123360123590_)))
                        (_hd123359123593_
                         (let ()
                           (declare (not safe))
                           (##car _e123360123590_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123355123587_))
                        (let ((_e123363123598_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123355123587_))))
                          (let ((_tl123361123603_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123363123598_)))
                                (_hd123362123601_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123363123598_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123362123601_))
                                (let ((_e123366123606_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123362123601_))))
                                  (let ((_tl123364123611_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123366123606_)))
                                        (_hd123365123609_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123366123606_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123365123609_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#call
                                               _hd123365123609_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123364123611_))
                                                (let ((_e123369123614_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123364123611_))))
                                                  (let ((_tl123367123619_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123369123614_)))
                                                        (_hd123368123617_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123369123614_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd123368123617_))
                                                        (let ((_e123372123622_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd123368123617_))))
                  (let ((_tl123370123627_
                         (let () (declare (not safe)) (##cdr _e123372123622_)))
                        (_hd123371123625_
                         (let ()
                           (declare (not safe))
                           (##car _e123372123622_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _hd123371123625_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd123371123625_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl123370123627_))
                                (let ((_e123375123630_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl123370123627_))))
                                  (let ((_tl123373123635_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123375123630_)))
                                        (_hd123374123633_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123375123630_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123373123635_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123367123619_))
                                            (let ((_e123378123638_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123367123619_))))
                                              (let ((_tl123376123643_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123378123638_)))
                                                    (_hd123377123641_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123378123638_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123377123641_))
                                                    (let ((_e123381123646_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123377123641_))))
                                                      (let ((_tl123379123651_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123381123646_)))
                    (_hd123380123649_
                     (let () (declare (not safe)) (##car _e123381123646_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123380123649_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd123380123649_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123379123651_))
                            (let ((_e123384123654_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123379123651_))))
                              (let ((_tl123382123659_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123384123654_)))
                                    (_hd123383123657_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123384123654_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123382123659_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123376123643_))
                                        (let ((_e123387123662_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123376123643_))))
                                          (let ((_tl123385123667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123387123662_)))
                                                (_hd123386123665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123387123662_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd123386123665_))
                                                (let ((_e123390123670_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd123386123665_))))
                                                  (let ((_tl123388123675_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123390123670_)))
                                                        (_hd123389123673_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123390123670_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd123389123673_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd123389123673_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl123388123675_))
                        (let ((_e123393123678_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123388123675_))))
                          (let ((_tl123391123683_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123393123678_)))
                                (_hd123392123681_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123393123678_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl123391123683_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl123361123603_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl123349123571_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123328123515_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123319123491_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123316123483_))
                                                    (let ((_e123396123686_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123316123483_))))
                                                      (let ((_tl123394123691_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123396123686_)))
                    (_hd123395123689_
                     (let () (declare (not safe)) (##car _e123396123686_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123395123689_))
                    (let ((_e123399123694_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123395123689_))))
                      (let ((_tl123397123699_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123399123694_)))
                            (_hd123398123697_
                             (let ()
                               (declare (not safe))
                               (##car _e123399123694_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123398123697_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#lambda _hd123398123697_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123397123699_))
                                    (let ((_e123402123702_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123397123699_))))
                                      (let ((_tl123400123707_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123402123702_)))
                                            (_hd123401123705_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123402123702_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123400123707_))
                                            (let ((_e123405123710_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123400123707_))))
                                              (let ((_tl123403123715_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123405123710_)))
                                                    (_hd123404123713_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123405123710_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd123404123713_))
                                                    (let ((_e123408123718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd123404123713_))))
                                                      (let ((_tl123406123723_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123408123718_)))
                    (_hd123407123721_
                     (let () (declare (not safe)) (##car _e123408123718_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd123407123721_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#call _hd123407123721_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl123406123723_))
                            (let ((_e123411123726_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl123406123723_))))
                              (let ((_tl123409123731_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123411123726_)))
                                    (_hd123410123729_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123411123726_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd123410123729_))
                                    (let ((_e123414123734_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd123410123729_))))
                                      (let ((_tl123412123739_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123414123734_)))
                                            (_hd123413123737_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123414123734_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd123413123737_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd123413123737_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123412123739_))
                                                    (let ((_e123417123742_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123412123739_))))
                                                      (let ((_tl123415123747_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123417123742_)))
                    (_hd123416123745_
                     (let () (declare (not safe)) (##car _e123417123742_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl123415123747_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl123409123731_))
                        (let ((_e123420123750_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl123409123731_))))
                          (let ((_tl123418123755_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123420123750_)))
                                (_hd123419123753_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123420123750_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd123419123753_))
                                (let ((_e123423123758_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd123419123753_))))
                                  (let ((_tl123421123763_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e123423123758_)))
                                        (_hd123422123761_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e123423123758_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd123422123761_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd123422123761_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl123421123763_))
                                                (let ((_e123426123766_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl123421123763_))))
                                                  (let ((_tl123424123771_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e123426123766_)))
                                                        (_hd123425123769_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e123426123766_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123424123771_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl123418123755_))
                                                            (let ((_e123429123774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl123418123755_))))
                      (let ((_tl123427123779_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123429123774_)))
                            (_hd123428123777_
                             (let ()
                               (declare (not safe))
                               (##car _e123429123774_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd123428123777_))
                            (let ((_e123432123782_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd123428123777_))))
                              (let ((_tl123430123787_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e123432123782_)))
                                    (_hd123431123785_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e123432123782_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd123431123785_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd123431123785_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl123430123787_))
                                            (let ((_e123435123790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl123430123787_))))
                                              (let ((_tl123433123795_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e123435123790_)))
                                                    (_hd123434123793_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e123435123790_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123433123795_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl123427123779_))
                                                        (let ((_e123438123798_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl123427123779_))))
                  (let ((_tl123436123803_
                         (let () (declare (not safe)) (##cdr _e123438123798_)))
                        (_hd123437123801_
                         (let ()
                           (declare (not safe))
                           (##car _e123438123798_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd123437123801_))
                        (let ((_e123441123806_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd123437123801_))))
                          (let ((_tl123439123811_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e123441123806_)))
                                (_hd123440123809_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e123441123806_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd123440123809_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd123440123809_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl123439123811_))
                                        (let ((_e123444123814_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl123439123811_))))
                                          (let ((_tl123442123819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e123444123814_)))
                                                (_hd123443123817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e123444123814_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123442123819_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl123436123803_))
                                                    (let ((_e123447123822_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl123436123803_))))
                                                      (let ((_tl123445123827_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e123447123822_)))
                    (_hd123446123825_
                     (let () (declare (not safe)) (##car _e123447123822_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd123446123825_))
                    (let ((_e123450123830_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd123446123825_))))
                      (let ((_tl123448123835_
                             (let ()
                               (declare (not safe))
                               (##cdr _e123450123830_)))
                            (_hd123449123833_
                             (let ()
                               (declare (not safe))
                               (##car _e123450123830_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd123449123833_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#ref _hd123449123833_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl123448123835_))
                                    (let ((_e123453123838_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl123448123835_))))
                                      (let ((_tl123451123843_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e123453123838_)))
                                            (_hd123452123841_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e123453123838_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl123451123843_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl123445123827_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl123403123715_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl123394123691_))
                                                        (___kont129721129722_
                                                         _hd123452123841_
                                                         _hd123443123817_
                                                         _hd123425123769_
                                                         _hd123416123745_
                                                         _hd123401123705_
                                                         _hd123392123681_
                                                         _hd123383123657_
                                                         _hd123374123633_
                                                         _hd123359123593_
                                                         _hd123344123553_
                                                         _hd123326123505_)
                                                        (___kont129723129724_))
                                                    (___kont129723129724_))
                                                (___kont129723129724_))
                                            (___kont129723129724_))))
                                    (___kont129723129724_))
                                (___kont129723129724_))
                            (___kont129723129724_))))
                    (___kont129723129724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129723129724_))
                                                (___kont129723129724_))))
                                        (___kont129723129724_))
                                    (___kont129723129724_))
                                (___kont129723129724_))))
                        (___kont129723129724_))))
                (___kont129723129724_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129723129724_))))
                                            (___kont129723129724_))
                                        (___kont129723129724_))
                                    (___kont129723129724_))))
                            (___kont129723129724_))))
                    (___kont129723129724_))
                (___kont129723129724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129723129724_))
                                            (___kont129723129724_))
                                        (___kont129723129724_))))
                                (___kont129723129724_))))
                        (___kont129723129724_))
                    (___kont129723129724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129723129724_))
                                                (___kont129723129724_))
                                            (___kont129723129724_))))
                                    (___kont129723129724_))))
                            (___kont129723129724_))
                        (___kont129723129724_))
                    (___kont129723129724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129723129724_))))
                                            (___kont129723129724_))))
                                    (___kont129723129724_))
                                (___kont129723129724_))
                            (___kont129723129724_))))
                    (___kont129723129724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129723129724_))
                                                (___kont129723129724_))
                                            (___kont129723129724_))
                                        (___kont129723129724_))
                                    (___kont129723129724_))
                                (___kont129723129724_))))
                        (___kont129723129724_))
                    (___kont129723129724_))
                (___kont129723129724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129723129724_))))
                                        (___kont129723129724_))
                                    (___kont129723129724_))))
                            (___kont129723129724_))
                        (___kont129723129724_))
                    (___kont129723129724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129723129724_))))
                                            (___kont129723129724_))
                                        (___kont129723129724_))))
                                (___kont129723129724_))
                            (___kont129723129724_))
                        (___kont129723129724_))))
                (___kont129723129724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129723129724_))
                                            (___kont129723129724_))
                                        (___kont129723129724_))))
                                (___kont129723129724_))))
                        (___kont129723129724_))))
                (___kont129723129724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129723129724_))
                                            (___kont129723129724_))
                                        (___kont129723129724_))))
                                (___kont129723129724_))))
                        (___kont129723129724_))
                    (___kont129723129724_))
                (___kont129723129724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129723129724_))
                                            (___kont129723129724_))))
                                    (___kont129723129724_))))
                            (___kont129723129724_))))
                    (___kont129723129724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont129723129724_))
                                                (___kont129723129724_))
                                            (___kont129723129724_))))
                                    (___kont129723129724_))))
                            (___kont129723129724_))
                        (___kont129723129724_))))
                (___kont129723129724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont129723129724_))))
                                        (___kont129723129724_))))
                                (___kont129723129724_))
                            (___kont129723129724_))
                        (___kont129723129724_))))
                (___kont129723129724_))))))
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx123039_ _id123040_ _clauses123041_ _gensym?123042_)
        (let _lp123044_ ((_rest123046_ _clauses123041_)
                         (_ids123047_ '())
                         (_impls123048_ '())
                         (_clauses123049_ '()))
          (let* ((_rest123050123058_ _rest123046_)
                 (_else123052123066_
                  (lambda ()
                    (values (reverse _ids123047_)
                            (reverse _impls123048_)
                            (reverse _clauses123049_))))
                 (_K123054123271_
                  (lambda (_rest123069_ _clause123070_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#dispatch-lambda-form? _clause123070_))
                        (let ((__tmp130813
                               (let ()
                                 (declare (not safe))
                                 (cons _clause123070_ _clauses123049_))))
                          (declare (not safe))
                          (_lp123044_
                           _rest123069_
                           _ids123047_
                           _impls123048_
                           __tmp130813))
                        (let* ((_g123072123083_
                                (lambda (_g123073123080_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g123073123080_))))
                               (_g123071123268_
                                (lambda (_g123073123086_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _g123073123086_))
                                      (let ((_e123078123088_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _g123073123086_))))
                                        (let ((_hd123077123091_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e123078123088_)))
                                              (_tl123076123093_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e123078123088_))))
                                          ((lambda (_L123096_ _L123097_)
                                             (let* ((_id123114_
                                                     (let ((__tmp130760
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _id123040_)))
                                                           (__tmp130759
                                                            (length _clauses123049_))
                                                           (__tmp130758
                                                            (if _gensym?123042_
                                                                (gensym '__)
                                                                '"")))
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        __tmp130760
                                                        '"__"
                                                        __tmp130759
                                                        __tmp130758)))
                                                    (_id123116_
                                                     (let ((__tmp130761
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-source
                                                               _stx123039_))))
                                                       (declare (not safe))
                                                       (gx#core-quote-syntax__1
                                                        _id123114_
                                                        __tmp130761)))
                                                    (_impl123118_
                                                     (let ((__tmp130762
                                                            (let ((__tmp130764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '%#lambda)))
                          (__tmp130763
                           (let ()
                             (declare (not safe))
                             (cons _L123097_ _L123096_))))
                      (declare (not safe))
                      (cons __tmp130764 __tmp130763))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp130762 _stx123039_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause123265_
                                                     (let* ((___stx130103130104_
                                                             _L123097_)
                                                            (_g123122123150_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx130103130104_)))))
               (let ((___kont130105130106_
                      (lambda (_L123244_)
                        (let ((__tmp130765
                               (let ((__tmp130766
                                      (let ((__tmp130767
                                             (let ((__tmp130768
                                                    (let ((__tmp130774
                                                           (let ((__tmp130775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id123116_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130775)))
                  (__tmp130769
                   (let ((__tmp130770
                          (lambda (_g123254123257_ _g123255123259_)
                            (let ((__tmp130771
                                   (let ((__tmp130773
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f '%#ref)))
                                         (__tmp130772
                                          (let ()
                                            (declare (not safe))
                                            (cons _g123254123257_ '()))))
                                     (declare (not safe))
                                     (cons __tmp130773 __tmp130772))))
                              (declare (not safe))
                              (cons __tmp130771 _g123255123259_)))))
                     (declare (not safe))
                     (foldr1 __tmp130770 '() _L123244_))))
              (declare (not safe))
              (cons __tmp130774 __tmp130769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130768))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130767
                                         _stx123039_))))
                                 (declare (not safe))
                                 (cons __tmp130766 '()))))
                          (declare (not safe))
                          (cons _L123097_ __tmp130765))))
                     (___kont130109130110_
                      (lambda (_L123195_ _L123196_)
                        (let ((__tmp130776
                               (let ((__tmp130777
                                      (let ((__tmp130778
                                             (let ((__tmp130779
                                                    (let ((__tmp130793
                                                           (let ((__tmp130794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130794)))
                  (__tmp130780
                   (let ((__tmp130791
                          (let ((__tmp130792
                                 (let ()
                                   (declare (not safe))
                                   (cons _id123116_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130792)))
                         (__tmp130781
                          (let ((__tmp130787
                                 (let ((__tmp130788
                                        (let ((__tmp130790
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#ref)))
                                              (__tmp130789
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L123195_ '()))))
                                          (declare (not safe))
                                          (cons __tmp130790 __tmp130789))))
                                   (declare (not safe))
                                   (cons __tmp130788 '())))
                                (__tmp130782
                                 (let ((__tmp130783
                                        (lambda (_g123207123210_
                                                 _g123208123212_)
                                          (let ((__tmp130784
                                                 (let ((__tmp130786
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#ref)))
                                                       (__tmp130785
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g123207123210_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp130786
                                                         __tmp130785))))
                                            (declare (not safe))
                                            (cons __tmp130784
                                                  _g123208123212_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp130783 '() _L123196_))))
                            (declare (not safe))
                            (foldr1 cons __tmp130787 __tmp130782))))
                     (declare (not safe))
                     (cons __tmp130791 __tmp130781))))
              (declare (not safe))
              (cons __tmp130793 __tmp130780))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130779))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130778
                                         _stx123039_))))
                                 (declare (not safe))
                                 (cons __tmp130777 '()))))
                          (declare (not safe))
                          (cons _L123097_ __tmp130776))))
                     (___kont130113130114_
                      (lambda (_L123155_)
                        (let ((__tmp130795
                               (let ((__tmp130796
                                      (let ((__tmp130797
                                             (let ((__tmp130798
                                                    (let ((__tmp130806
                                                           (let ((__tmp130807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'apply '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp130807)))
                  (__tmp130799
                   (let ((__tmp130804
                          (let ((__tmp130805
                                 (let ()
                                   (declare (not safe))
                                   (cons _id123116_ '()))))
                            (declare (not safe))
                            (cons '%#ref __tmp130805)))
                         (__tmp130800
                          (let ((__tmp130801
                                 (let ((__tmp130803
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '%#ref)))
                                       (__tmp130802
                                        (let ()
                                          (declare (not safe))
                                          (cons _L123155_ '()))))
                                   (declare (not safe))
                                   (cons __tmp130803 __tmp130802))))
                            (declare (not safe))
                            (cons __tmp130801 '()))))
                     (declare (not safe))
                     (cons __tmp130804 __tmp130800))))
              (declare (not safe))
              (cons __tmp130806 __tmp130799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp130798))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp130797
                                         _stx123039_))))
                                 (declare (not safe))
                                 (cons __tmp130796 '()))))
                          (declare (not safe))
                          (cons _L123097_ __tmp130795)))))
                 (let* ((___match130128130129_
                         (lambda (___splice130111130112_
                                  _target123136123171_
                                  _tl123138123173_)
                           (letrec ((_loop123139123176_
                                     (lambda (_hd123137123179_
                                              _arg123143123181_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd123137123179_))
                                           (let ((_e123140123184_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd123137123179_))))
                                             (let ((_lp-tl123142123189_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e123140123184_)))
                                                   (_lp-hd123141123187_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e123140123184_))))
                                               (let ((__tmp130808
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd123141123187_
                                                              _arg123143123181_))))
                                                 (declare (not safe))
                                                 (_loop123139123176_
                                                  _lp-tl123142123189_
                                                  __tmp130808))))
                                           (let ((_arg123144123192_
                                                  (reverse _arg123143123181_)))
                                             (___kont130109130110_
                                              _tl123138123173_
                                              _arg123144123192_))))))
                             (let ()
                               (declare (not safe))
                               (_loop123139123176_
                                _target123136123171_
                                '())))))
                        (___match130122130123_
                         (lambda (___splice130107130108_
                                  _target123125123220_
                                  _tl123127123222_)
                           (letrec ((_loop123128123225_
                                     (lambda (_hd123126123228_
                                              _arg123132123230_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd123126123228_))
                                           (let ((_e123129123233_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd123126123228_))))
                                             (let ((_lp-tl123131123238_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e123129123233_)))
                                                   (_lp-hd123130123236_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e123129123233_))))
                                               (let ((__tmp130809
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd123130123236_
                                                              _arg123132123230_))))
                                                 (declare (not safe))
                                                 (_loop123128123225_
                                                  _lp-tl123131123238_
                                                  __tmp130809))))
                                           (let ((_arg123133123241_
                                                  (reverse _arg123132123230_)))
                                             (___kont130105130106_
                                              _arg123133123241_))))))
                             (let ()
                               (declare (not safe))
                               (_loop123128123225_
                                _target123125123220_
                                '()))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? ___stx130103130104_))
                       (let ((___splice130107130108_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 ___stx130103130104_
                                 '0))))
                         (let ((_tl123127123222_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice130107130108_ '1)))
                               (_target123125123220_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice130107130108_ '0))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl123127123222_))
                               (___match130122130123_
                                ___splice130107130108_
                                _target123125123220_
                                _tl123127123222_)
                               (___match130128130129_
                                ___splice130107130108_
                                _target123125123220_
                                _tl123127123222_))))
                       (___kont130113130114_ ___stx130103130104_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp130812
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _id123116_
                                                              _ids123047_)))
                                                     (__tmp130811
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _impl123118_
                                                              _impls123048_)))
                                                     (__tmp130810
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _clause123265_
                                                              _clauses123049_))))
                                                 (declare (not safe))
                                                 (_lp123044_
                                                  _rest123069_
                                                  __tmp130812
                                                  __tmp130811
                                                  __tmp130810))))
                                           _tl123076123093_
                                           _hd123077123091_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g123072123083_ _g123073123086_))))))
                          (declare (not safe))
                          (_g123071123268_ _clause123070_))))))
            (if (let () (declare (not safe)) (##pair? _rest123050123058_))
                (let ((_hd123055123274_
                       (let ()
                         (declare (not safe))
                         (##car _rest123050123058_)))
                      (_tl123056123276_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest123050123058_))))
                  (let* ((_clause123279_ _hd123055123274_)
                         (_rest123281_ _tl123056123276_))
                    (declare (not safe))
                    (_K123054123271_ _rest123281_ _clause123279_)))
                (let () (declare (not safe)) (_else123052123066_)))))))
    (define gxc#lift-case-lambda-clauses__0
      (lambda (_stx123286_ _id123287_ _clauses123288_)
        (let ((_gensym?123290_ '#f))
          (declare (not safe))
          (gxc#lift-case-lambda-clauses__%
           _stx123286_
           _id123287_
           _clauses123288_
           _gensym?123290_))))
    (define gxc#lift-case-lambda-clauses
      (lambda _g130815_
        (let ((_g130814_ (let () (declare (not safe)) (##length _g130815_))))
          (cond ((let () (declare (not safe)) (##fx= _g130814_ 3))
                 (apply (lambda (_stx123286_ _id123287_ _clauses123288_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__0
                             _stx123286_
                             _id123287_
                             _clauses123288_)))
                        _g130815_))
                ((let () (declare (not safe)) (##fx= _g130814_ 4))
                 (apply (lambda (_stx123292_
                                 _id123293_
                                 _clauses123294_
                                 _gensym?123295_)
                          (let ()
                            (declare (not safe))
                            (gxc#lift-case-lambda-clauses__%
                             _stx123292_
                             _id123293_
                             _clauses123294_
                             _gensym?123295_)))
                        _g130815_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#lift-case-lambda-clauses
                  _g130815_))))))
    (define gxc#lift-top-lambda-define-values%
      (lambda (_self122315_ _stx122316_)
        (letrec ((_case-lambda-clause-def122318_
                  (lambda (_id123035_ _impl123036_)
                    (let ((__tmp130816
                           (let ((__tmp130817
                                  (let ((__tmp130820
                                         (let ()
                                           (declare (not safe))
                                           (cons _id123035_ '())))
                                        (__tmp130818
                                         (let ((__tmp130819
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self122315_
                                                   _impl123036_))))
                                           (declare (not safe))
                                           (cons __tmp130819 '()))))
                                    (declare (not safe))
                                    (cons __tmp130820 __tmp130818))))
                             (declare (not safe))
                             (cons '%#define-values __tmp130817))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130816 _stx122316_))))
                 (_opt-lambda-dispatch-name122319_
                  (lambda (_id123031_)
                    (if (uninterned-symbol? _id123031_)
                        (let ((_str123033_ (symbol->string _id123031_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"opt-lambda" _str123033_))
                              '"%"
                              _id123031_))
                        _id123031_)))
                 (_kw-lambda-dispatch-name122320_
                  (lambda (_id123026_ _name123027_)
                    (if (uninterned-symbol? _id123026_)
                        (let ((_str123029_ (symbol->string _id123026_)))
                          (if (let ()
                                (declare (not safe))
                                (string-prefix? '"kw-lambda" _str123029_))
                              _name123027_
                              _id123026_))
                        _id123026_))))
          (let* ((___stx130151130152_ _stx122316_)
                 (_g122325122384_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130151130152_)))))
            (let ((___kont130153130154_
                   (lambda (_L122935_ _L122936_)
                     (let* ((___stx130131130132_ _L122935_)
                            (_g122953122967_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130131130132_)))))
                       (let ((___kont130133130134_
                              (lambda (_L123011_) _stx122316_))
                             (___kont130135130136_
                              (lambda (_L122980_)
                                (let ((_g130821_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#lift-case-lambda-clauses__0
                                          _stx122316_
                                          _L122936_
                                          _L122980_))))
                                  (begin
                                    (let ((_g130822_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g130821_)
                                                 (##vector-length _g130821_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g130822_ 3)))
                                          (error "Context expects 3 values"
                                                 _g130822_)))
                                    (let ((_ids122990_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130821_ 0)))
                                          (_impls122991_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130821_ 1)))
                                          (_clauses122992_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g130821_ 2))))
                                      (let* ((_g130823_
                                              (for-each
                                               gx#core-bind-runtime!
                                               _ids122990_))
                                             (_defs122995_
                                              (map _case-lambda-clause-def122318_
                                                   _ids122990_
                                                   _impls122991_)))
                                        (let ((__tmp130825
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L122936_)))
                                              (__tmp130824
                                               (map gxc#identifier-symbol
                                                    _ids122990_)))
                                          (declare (not safe))
                                          (gxc#verbose
                                           '"lift case-lambda clauses "
                                           __tmp130825
                                           '" => "
                                           __tmp130824))
                                        (let ((__tmp130826
                                               (let ((__tmp130827
                                                      (let ((__tmp130828
                                                             (let ((__tmp130829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp130830
                                   (let ((__tmp130831
                                          (let ((__tmp130836
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L122936_ '())))
                                                (__tmp130832
                                                 (let ((__tmp130833
                                                        (let ((__tmp130835
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '%#case-lambda _clauses122992_)))
                      (__tmp130834
                       (let ()
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'case-lambda-expr))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp130835 __tmp130834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130833 '()))))
                                            (declare (not safe))
                                            (cons __tmp130836 __tmp130832))))
                                     (declare (not safe))
                                     (cons '%#define-values __tmp130831))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130830
                               _stx122316_))))
                       (declare (not safe))
                       (cons __tmp130829 '()))))
                (declare (not safe))
                (foldr1 cons __tmp130828 _defs122995_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#begin __tmp130827))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp130826
                                           _stx122316_)))))))))
                         (let ((___match130142130143_
                                (lambda (_e122958123003_
                                         _hd122957123006_
                                         _tl122956123008_)
                                  (let ((_L123011_ _tl122956123008_))
                                    (if (let ()
                                          (declare (not safe))
                                          (andmap1 gxc#dispatch-lambda-form?
                                                   _L123011_))
                                        (___kont130133130134_ _L123011_)
                                        (___kont130135130136_
                                         _tl122956123008_))))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? ___stx130131130132_))
                               (let ((_e122958123003_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e ___stx130131130132_))))
                                 (let ((_tl122956123008_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122958123003_)))
                                       (_hd122957123006_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122958123003_))))
                                   (___match130142130143_
                                    _e122958123003_
                                    _hd122957123006_
                                    _tl122956123008_)))
                               (let ()
                                 (declare (not safe))
                                 (_g122953122967_))))))))
                  (___kont130155130156_
                   (lambda (_L122753_ _L122754_)
                     (let* ((_g122770122800_
                             (lambda (_g122771122797_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122771122797_))))
                            (_g122769122895_
                             (lambda (_g122771122803_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122771122803_))
                                   (let ((_e122777122805_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122771122803_))))
                                     (let ((_hd122776122808_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122777122805_)))
                                           (_tl122775122810_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122777122805_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122775122810_))
                                           (let ((_e122780122813_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122775122810_))))
                                             (let ((_hd122779122816_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122780122813_)))
                                                   (_tl122778122818_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122780122813_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122779122816_))
                                                   (let ((_e122783122821_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122779122816_))))
                                                     (let ((_hd122782122824_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122783122821_)))
                                                           (_tl122781122826_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122783122821_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122782122824_))
                                                           (let ((_e122786122829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122782122824_))))
                     (let ((_hd122785122832_
                            (let ()
                              (declare (not safe))
                              (##car _e122786122829_)))
                           (_tl122784122834_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122786122829_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122785122832_))
                           (let ((_e122789122837_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122785122832_))))
                             (let ((_hd122788122840_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122789122837_)))
                                   (_tl122787122842_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122789122837_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122787122842_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122784122834_))
                                       (let ((_e122792122845_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122784122834_))))
                                         (let ((_hd122791122848_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122792122845_)))
                                               (_tl122790122850_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122792122845_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122790122850_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl122781122826_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122778122818_))
                                                       (let ((_e122795122853_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122778122818_))))
                 (let ((_hd122794122856_
                        (let () (declare (not safe)) (##car _e122795122853_)))
                       (_tl122793122858_
                        (let () (declare (not safe)) (##cdr _e122795122853_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl122793122858_))
                       ((lambda (_L122861_ _L122862_ _L122863_)
                          (let* ((_lambda-id122887_
                                  (let ((__tmp130839
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L122754_)))
                                        (__tmp130837
                                         (let ((__tmp130838
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _L122863_))))
                                           (declare (not safe))
                                           (_opt-lambda-dispatch-name122319_
                                            __tmp130838))))
                                    (declare (not safe))
                                    (make-symbol__1
                                     __tmp130839
                                     '"__"
                                     __tmp130837)))
                                 (_lambda-id122889_
                                  (let ((__tmp130840
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-source _stx122316_))))
                                    (declare (not safe))
                                    (gx#core-quote-syntax__1
                                     _lambda-id122887_
                                     __tmp130840)))
                                 (_g130841_
                                  (let ()
                                    (declare (not safe))
                                    (gx#core-bind-runtime!__0
                                     _lambda-id122889_)))
                                 (_new-case-lambda-expr122892_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-expression-subst
                                     _L122861_
                                     'id:
                                     _L122863_
                                     'new-id:
                                     _lambda-id122889_))))
                            (let ((__tmp130843
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol _L122754_)))
                                  (__tmp130842
                                   (let ()
                                     (declare (not safe))
                                     (gxc#identifier-symbol
                                      _lambda-id122889_))))
                              (declare (not safe))
                              (gxc#verbose
                               '"lift opt-lambda dispatch "
                               __tmp130843
                               '" => "
                               __tmp130842))
                            (let ((__tmp130844
                                   (let ((__tmp130845
                                          (let ((__tmp130853
                                                 (let ((__tmp130854
                                                        (let ((__tmp130855
                                                               (let ((__tmp130858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _lambda-id122889_ '())))
                             (__tmp130856
                              (let ((__tmp130857
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self122315_
                                        _L122862_))))
                                (declare (not safe))
                                (cons __tmp130857 '()))))
                         (declare (not safe))
                         (cons __tmp130858 __tmp130856))))
                  (declare (not safe))
                  (cons '%#define-values __tmp130855))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp130854
                                                    _stx122316_)))
                                                (__tmp130846
                                                 (let ((__tmp130847
                                                        (let ((__tmp130848
                                                               (let ((__tmp130849
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp130850
                                     (let ((__tmp130852
                                            (let ()
                                              (declare (not safe))
                                              (cons _L122754_ '())))
                                           (__tmp130851
                                            (let ()
                                              (declare (not safe))
                                              (cons _new-case-lambda-expr122892_
                                                    '()))))
                                       (declare (not safe))
                                       (cons __tmp130852 __tmp130851))))
                                (declare (not safe))
                                (cons '%#define-values __tmp130850))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp130849 _stx122316_))))
                  (declare (not safe))
                  (gxc#lift-top-lambda-define-values%
                   _self122315_
                   __tmp130848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp130847 '()))))
                                            (declare (not safe))
                                            (cons __tmp130853 __tmp130846))))
                                     (declare (not safe))
                                     (cons '%#begin __tmp130845))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp130844
                               _stx122316_))))
                        _hd122794122856_
                        _hd122791122848_
                        _hd122788122840_)
                       (let ()
                         (declare (not safe))
                         (_g122770122800_ _g122771122803_)))))
               (let () (declare (not safe)) (_g122770122800_ _g122771122803_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122770122800_
                                                      _g122771122803_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122770122800_
                                                  _g122771122803_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122770122800_ _g122771122803_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122770122800_ _g122771122803_)))))
                           (let ()
                             (declare (not safe))
                             (_g122770122800_ _g122771122803_)))))
                   (let ()
                     (declare (not safe))
                     (_g122770122800_ _g122771122803_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122770122800_
                                                      _g122771122803_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122770122800_
                                              _g122771122803_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122770122800_ _g122771122803_))))))
                       (declare (not safe))
                       (_g122769122895_ _L122753_))))
                  (___kont130157130158_
                   (lambda (_L122467_ _L122468_)
                     (let* ((_g122484122537_
                             (lambda (_g122485122534_)
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g122485122534_))))
                            (_g122483122713_
                             (lambda (_g122485122540_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _g122485122540_))
                                   (let ((_e122493122542_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _g122485122540_))))
                                     (let ((_hd122492122545_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e122493122542_)))
                                           (_tl122491122547_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e122493122542_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl122491122547_))
                                           (let ((_e122496122550_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl122491122547_))))
                                             (let ((_hd122495122553_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e122496122550_)))
                                                   (_tl122494122555_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e122496122550_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd122495122553_))
                                                   (let ((_e122499122558_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd122495122553_))))
                                                     (let ((_hd122498122561_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122499122558_)))
                                                           (_tl122497122563_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122499122558_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd122498122561_))
                                                           (let ((_e122502122566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd122498122561_))))
                     (let ((_hd122501122569_
                            (let ()
                              (declare (not safe))
                              (##car _e122502122566_)))
                           (_tl122500122571_
                            (let ()
                              (declare (not safe))
                              (##cdr _e122502122566_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd122501122569_))
                           (let ((_e122505122574_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd122501122569_))))
                             (let ((_hd122504122577_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122505122574_)))
                                   (_tl122503122579_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122505122574_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122503122579_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _tl122500122571_))
                                       (let ((_e122508122582_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _tl122500122571_))))
                                         (let ((_hd122507122585_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122508122582_)))
                                               (_tl122506122587_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122508122582_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd122507122585_))
                                               (let ((_e122511122590_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd122507122585_))))
                                                 (let ((_hd122510122593_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122511122590_)))
                                                       (_tl122509122595_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122511122590_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl122509122595_))
                                                       (let ((_e122514122598_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl122509122595_))))
                 (let ((_hd122513122601_
                        (let () (declare (not safe)) (##car _e122514122598_)))
                       (_tl122512122603_
                        (let () (declare (not safe)) (##cdr _e122514122598_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _hd122513122601_))
                       (let ((_e122517122606_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _hd122513122601_))))
                         (let ((_hd122516122609_
                                (let ()
                                  (declare (not safe))
                                  (##car _e122517122606_)))
                               (_tl122515122611_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e122517122606_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd122516122609_))
                               (let ((_e122520122614_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd122516122609_))))
                                 (let ((_hd122519122617_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e122520122614_)))
                                       (_tl122518122619_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e122520122614_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd122519122617_))
                                       (let ((_e122523122622_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd122519122617_))))
                                         (let ((_hd122522122625_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e122523122622_)))
                                               (_tl122521122627_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e122523122622_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl122521122627_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl122518122619_))
                                                   (let ((_e122526122630_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl122518122619_))))
                                                     (let ((_hd122525122633_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e122526122630_)))
                                                           (_tl122524122635_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e122526122630_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl122524122635_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-null? _tl122515122611_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl122512122603_))
                           (let ((_e122529122638_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl122512122603_))))
                             (let ((_hd122528122641_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e122529122638_)))
                                   (_tl122527122643_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e122529122638_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl122527122643_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl122506122587_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl122497122563_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl122494122555_))
                                               (let ((_e122532122646_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl122494122555_))))
                                                 (let ((_hd122531122649_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e122532122646_)))
                                                       (_tl122530122651_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e122532122646_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl122530122651_))
                                                       ((lambda (_L122654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L122655_
                         _L122656_
                         _L122657_
                         _L122658_)
                  (let* ((_get-kws-id122698_
                          (let ((__tmp130861
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122468_)))
                                (__tmp130859
                                 (let ((__tmp130860
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122658_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122320_
                                    __tmp130860
                                    '"@"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130861 '"__" __tmp130859)))
                         (_get-kws-id122700_
                          (let ((__tmp130862
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122316_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _get-kws-id122698_
                             __tmp130862)))
                         (_main-id122702_
                          (let ((__tmp130865
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L122468_)))
                                (__tmp130863
                                 (let ((__tmp130864
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L122657_))))
                                   (declare (not safe))
                                   (_kw-lambda-dispatch-name122320_
                                    __tmp130864
                                    '"%"))))
                            (declare (not safe))
                            (make-symbol__1 __tmp130865 '"__" __tmp130863)))
                         (_main-id122704_
                          (let ((__tmp130866
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx122316_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _main-id122702_
                             __tmp130866)))
                         (_g130867_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _get-kws-id122700_)))
                         (_g130868_
                          (let ()
                            (declare (not safe))
                            (gx#core-bind-runtime!__0 _main-id122704_)))
                         (_new-kw-dispatch122708_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122654_
                             'id:
                             _L122658_
                             'new-id:
                             _get-kws-id122700_)))
                         (_new-get-kws122710_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-expression-subst
                             _L122655_
                             'id:
                             _L122657_
                             'new-id:
                             _main-id122704_))))
                    (let ((__tmp130871
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _L122468_)))
                          (__tmp130870
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _get-kws-id122700_)))
                          (__tmp130869
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _main-id122704_))))
                      (declare (not safe))
                      (gxc#verbose
                       '"lift kw-lambda dispatch "
                       __tmp130871
                       '" => "
                       __tmp130870
                       '" => "
                       __tmp130869))
                    (let ((__tmp130872
                           (let ((__tmp130873
                                  (let ((__tmp130886
                                         (let ((__tmp130887
                                                (let ((__tmp130888
                                                       (let ((__tmp130889
                                                              (let ((__tmp130891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _main-id122704_ '())))
                            (__tmp130890
                             (let ()
                               (declare (not safe))
                               (cons _L122656_ '()))))
                        (declare (not safe))
                        (cons __tmp130891 __tmp130890))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130888
                                                   _stx122316_))))
                                           (declare (not safe))
                                           (gxc#lift-top-lambda-define-values%
                                            _self122315_
                                            __tmp130887)))
                                        (__tmp130874
                                         (let ((__tmp130881
                                                (let ((__tmp130882
                                                       (let ((__tmp130883
                                                              (let ((__tmp130885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _get-kws-id122700_ '())))
                            (__tmp130884
                             (let ()
                               (declare (not safe))
                               (cons _new-get-kws122710_ '()))))
                        (declare (not safe))
                        (cons __tmp130885 __tmp130884))))
                 (declare (not safe))
                 (cons '%#define-values __tmp130883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130882
                                                   _stx122316_)))
                                               (__tmp130875
                                                (let ((__tmp130876
                                                       (let ((__tmp130877
                                                              (let ((__tmp130878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp130880
                                    (let ()
                                      (declare (not safe))
                                      (cons _L122468_ '())))
                                   (__tmp130879
                                    (let ()
                                      (declare (not safe))
                                      (cons _new-kw-dispatch122708_ '()))))
                               (declare (not safe))
                               (cons __tmp130880 __tmp130879))))
                        (declare (not safe))
                        (cons '%#define-values __tmp130878))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp130877 _stx122316_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp130876 '()))))
                                           (declare (not safe))
                                           (cons __tmp130881 __tmp130875))))
                                    (declare (not safe))
                                    (cons __tmp130886 __tmp130874))))
                             (declare (not safe))
                             (cons '%#begin __tmp130873))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp130872 _stx122316_))))
                _hd122531122649_
                _hd122528122641_
                _hd122525122633_
                _hd122522122625_
                _hd122504122577_)
               (let ()
                 (declare (not safe))
                 (_g122484122537_ _g122485122540_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122484122537_
                                                  _g122485122540_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g122484122537_
                                              _g122485122540_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g122484122537_ _g122485122540_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122484122537_ _g122485122540_)))))
                           (let ()
                             (declare (not safe))
                             (_g122484122537_ _g122485122540_)))
                       (let ()
                         (declare (not safe))
                         (_g122484122537_ _g122485122540_)))
                   (let ()
                     (declare (not safe))
                     (_g122484122537_ _g122485122540_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122484122537_
                                                      _g122485122540_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122484122537_
                                                  _g122485122540_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122484122537_ _g122485122540_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g122484122537_ _g122485122540_)))))
                       (let ()
                         (declare (not safe))
                         (_g122484122537_ _g122485122540_)))))
               (let ()
                 (declare (not safe))
                 (_g122484122537_ _g122485122540_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g122484122537_
                                                  _g122485122540_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g122484122537_ _g122485122540_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g122484122537_ _g122485122540_)))))
                           (let ()
                             (declare (not safe))
                             (_g122484122537_ _g122485122540_)))))
                   (let ()
                     (declare (not safe))
                     (_g122484122537_ _g122485122540_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g122484122537_
                                                      _g122485122540_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g122484122537_
                                              _g122485122540_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g122484122537_ _g122485122540_))))))
                       (declare (not safe))
                       (_g122483122713_ _L122467_))))
                  (___kont130159130160_
                   (lambda (_L122413_ _L122414_)
                     (let ((__tmp130892
                            (let ((__tmp130893
                                   (let ((__tmp130894
                                          (let ((__tmp130895
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self122315_
                                                    _L122413_))))
                                            (declare (not safe))
                                            (cons __tmp130895 '()))))
                                     (declare (not safe))
                                     (cons _L122414_ __tmp130894))))
                              (declare (not safe))
                              (cons '%#define-values __tmp130893))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp130892 _stx122316_)))))
              (let* ((___match130244130245_
                      (lambda (_e122359122435_
                               _hd122358122438_
                               _tl122357122440_
                               _e122362122443_
                               _hd122361122446_
                               _tl122360122448_
                               _e122365122451_
                               _hd122364122454_
                               _tl122363122456_
                               _e122368122459_
                               _hd122367122462_
                               _tl122366122464_)
                        (let ((_L122467_ _hd122367122462_)
                              (_L122468_ _hd122364122454_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122468_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L122467_)))
                              (___kont130157130158_ _L122467_ _L122468_)
                              (___kont130159130160_
                               _hd122367122462_
                               _hd122361122446_)))))
                     (___match130216130217_
                      (lambda (_e122345122721_
                               _hd122344122724_
                               _tl122343122726_
                               _e122348122729_
                               _hd122347122732_
                               _tl122346122734_
                               _e122351122737_
                               _hd122350122740_
                               _tl122349122742_
                               _e122354122745_
                               _hd122353122748_
                               _tl122352122750_)
                        (let ((_L122753_ _hd122353122748_)
                              (_L122754_ _hd122350122740_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122754_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr? _L122753_)))
                              (___kont130155130156_ _L122753_ _L122754_)
                              (___match130244130245_
                               _e122345122721_
                               _hd122344122724_
                               _tl122343122726_
                               _e122348122729_
                               _hd122347122732_
                               _tl122346122734_
                               _e122351122737_
                               _hd122350122740_
                               _tl122349122742_
                               _e122354122745_
                               _hd122353122748_
                               _tl122352122750_)))))
                     (___match130188130189_
                      (lambda (_e122331122903_
                               _hd122330122906_
                               _tl122329122908_
                               _e122334122911_
                               _hd122333122914_
                               _tl122332122916_
                               _e122337122919_
                               _hd122336122922_
                               _tl122335122924_
                               _e122340122927_
                               _hd122339122930_
                               _tl122338122932_)
                        (let ((_L122935_ _hd122339122930_)
                              (_L122936_ _hd122336122922_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#identifier? _L122936_))
                                   (let ()
                                     (declare (not safe))
                                     (gxc#case-lambda-expr? _L122935_)))
                              (___kont130153130154_ _L122935_ _L122936_)
                              (___match130216130217_
                               _e122331122903_
                               _hd122330122906_
                               _tl122329122908_
                               _e122334122911_
                               _hd122333122914_
                               _tl122332122916_
                               _e122337122919_
                               _hd122336122922_
                               _tl122335122924_
                               _e122340122927_
                               _hd122339122930_
                               _tl122338122932_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130151130152_))
                    (let ((_e122331122903_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130151130152_))))
                      (let ((_tl122329122908_
                             (let ()
                               (declare (not safe))
                               (##cdr _e122331122903_)))
                            (_hd122330122906_
                             (let ()
                               (declare (not safe))
                               (##car _e122331122903_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl122329122908_))
                            (let ((_e122334122911_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl122329122908_))))
                              (let ((_tl122332122916_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e122334122911_)))
                                    (_hd122333122914_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e122334122911_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd122333122914_))
                                    (let ((_e122337122919_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd122333122914_))))
                                      (let ((_tl122335122924_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e122337122919_)))
                                            (_hd122336122922_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e122337122919_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl122335122924_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122332122916_))
                                                (let ((_e122340122927_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122332122916_))))
                                                  (let ((_tl122338122932_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122340122927_)))
                                                        (_hd122339122930_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122340122927_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122338122932_))
                                                        (___match130188130189_
                                                         _e122331122903_
                                                         _hd122330122906_
                                                         _tl122329122908_
                                                         _e122334122911_
                                                         _hd122333122914_
                                                         _tl122332122916_
                                                         _e122337122919_
                                                         _hd122336122922_
                                                         _tl122335122924_
                                                         _e122340122927_
                                                         _hd122339122930_
                                                         _tl122338122932_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122325122384_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122325122384_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl122332122916_))
                                                (let ((_e122379122405_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl122332122916_))))
                                                  (let ((_tl122377122410_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e122379122405_)))
                                                        (_hd122378122408_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e122379122405_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl122377122410_))
                                                        (___kont130159130160_
                                                         _hd122378122408_
                                                         _hd122333122914_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g122325122384_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122325122384_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl122332122916_))
                                        (let ((_e122379122405_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl122332122916_))))
                                          (let ((_tl122377122410_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e122379122405_)))
                                                (_hd122378122408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e122379122405_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl122377122410_))
                                                (___kont130159130160_
                                                 _hd122378122408_
                                                 _hd122333122914_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g122325122384_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g122325122384_))))))
                            (let () (declare (not safe)) (_g122325122384_)))))
                    (let () (declare (not safe)) (_g122325122384_)))))))))
    (define gxc#lift-top-lambda-let-values%
      (lambda (_self121246_ _stx121247_)
        (letrec* ((_bind-e__128547128548_
                   (lambda (_id122299_ _expr122300_ _compile?122301_)
                     (let ((__tmp130898
                            (let ()
                              (declare (not safe))
                              (cons _id122299_ '())))
                           (__tmp130896
                            (let ((__tmp130897
                                   (if _compile?122301_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self121246_
                                          _expr122300_))
                                       _expr122300_)))
                              (declare (not safe))
                              (cons __tmp130897 '()))))
                       (declare (not safe))
                       (cons __tmp130898 __tmp130896))))
                  (_bind-e__0__128549128550_
                   (lambda (_id122306_ _expr122307_)
                     (let ((_compile?122309_ '#t))
                       (declare (not safe))
                       (_bind-e__128547128548_
                        _id122306_
                        _expr122307_
                        _compile?122309_))))
                  (_bind-e121249_
                   (lambda _g130900_
                     (let ((_g130899_
                            (let ()
                              (declare (not safe))
                              (##length _g130900_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130899_ 2))
                              (apply (lambda (_id122306_ _expr122307_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128549128550_
                                          _id122306_
                                          _expr122307_)))
                                     _g130900_))
                             ((let () (declare (not safe)) (##fx= _g130899_ 3))
                              (apply (lambda (_id122311_
                                              _expr122312_
                                              _compile?122313_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128547128548_
                                          _id122311_
                                          _expr122312_
                                          _compile?122313_)))
                                     _g130900_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130900_))))))
                  (_compile-bindings121250_
                   (lambda (_bindings121883_)
                     (let _lp121885_ ((_rest121887_ _bindings121883_)
                                      (_lift1121888_ '())
                                      (_lift2121889_ '())
                                      (_bind121890_ '()))
                       (let* ((_rest121891121899_ _rest121887_)
                              (_else121893121907_
                               (lambda ()
                                 (values (reverse _lift1121888_)
                                         (reverse _lift2121889_)
                                         (reverse _bind121890_))))
                              (_K121895122286_
                               (lambda (_rest121910_ _hd121911_)
                                 (let* ((___stx130287130288_ _hd121911_)
                                        (_g121915121951_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130287130288_)))))
                                   (let ((___kont130289130290_
                                          (lambda (_L122193_ _L122194_)
                                            (let* ((___stx130267130268_
                                                    _L122193_)
                                                   (_g122209122223_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130267130268_)))))
                                              (let ((___kont130269130270_
                                                     (lambda (_L122271_)
                                                       (let ((__tmp130901
                                                              (let ((__tmp130902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128547128548_
                                _L122194_
                                _L122193_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130902 _bind121890_))))
                 (declare (not safe))
                 (_lp121885_
                  _rest121910_
                  _lift1121888_
                  _lift2121889_
                  __tmp130901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130271130272_
                                                     (lambda (_L122236_)
                                                       (let ((_g130903_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx121247_
                         _L122194_
                         _L122236_
                         '#t))))
                 (begin
                   (let ((_g130904_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130903_)
                                (##vector-length _g130903_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130904_ 3)))
                         (error "Context expects 3 values" _g130904_)))
                   (let ((_ids122246_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130903_ 0)))
                         (_impls122247_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130903_ 1)))
                         (_clauses122248_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130903_ 2))))
                     (let* ((_g130905_
                             (for-each gx#core-bind-runtime! _ids122246_))
                            (_xbind122251_
                             (map _bind-e121249_ _ids122246_ _impls122247_))
                            (_expr*122253_
                             (let ((__tmp130907
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses122248_)))
                                   (__tmp130906
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130907
                                __tmp130906)))
                            (_bind*122255_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128547128548_
                                _L122194_
                                _expr*122253_
                                '#f))))
                       (let ((__tmp130909
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L122194_)))
                             (__tmp130908
                              (map gxc#identifier-symbol _ids122246_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130909
                          '" => "
                          __tmp130908))
                       (let ((__tmp130911
                              (let ()
                                (declare (not safe))
                                (foldl1 cons _lift2121889_ _xbind122251_)))
                             (__tmp130910
                              (let ()
                                (declare (not safe))
                                (cons _bind*122255_ _bind121890_))))
                         (declare (not safe))
                         (_lp121885_
                          _rest121910_
                          _lift1121888_
                          __tmp130911
                          __tmp130910)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130278130279_
                                                       (lambda (_e122214122263_
                                                                _hd122213122266_
                                                                _tl122212122268_)
                                                         (let ((_L122271_
                                                                _tl122212122268_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L122271_))
                       (___kont130269130270_ _L122271_)
                       (___kont130271130272_ _tl122212122268_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130267130268_))
                                                      (let ((_e122214122263_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130267130268_))))
                (let ((_tl122212122268_
                       (let () (declare (not safe)) (##cdr _e122214122263_)))
                      (_hd122213122266_
                       (let () (declare (not safe)) (##car _e122214122263_))))
                  (___match130278130279_
                   _e122214122263_
                   _hd122213122266_
                   _tl122212122268_)))
              (let () (declare (not safe)) (_g122209122223_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130291130292_
                                          (lambda (_L122021_ _L122022_)
                                            (let* ((_g122036122066_
                                                    (lambda (_g122037122063_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g122037122063_))))
                                                   (_g122035122161_
                                                    (lambda (_g122037122069_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g122037122069_))
                                                          (let ((_e122043122071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g122037122069_))))
                    (let ((_hd122042122074_
                           (let ()
                             (declare (not safe))
                             (##car _e122043122071_)))
                          (_tl122041122076_
                           (let ()
                             (declare (not safe))
                             (##cdr _e122043122071_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl122041122076_))
                          (let ((_e122046122079_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl122041122076_))))
                            (let ((_hd122045122082_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e122046122079_)))
                                  (_tl122044122084_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e122046122079_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd122045122082_))
                                  (let ((_e122049122087_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd122045122082_))))
                                    (let ((_hd122048122090_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e122049122087_)))
                                          (_tl122047122092_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e122049122087_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd122048122090_))
                                          (let ((_e122052122095_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd122048122090_))))
                                            (let ((_hd122051122098_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e122052122095_)))
                                                  (_tl122050122100_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e122052122095_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd122051122098_))
                                                  (let ((_e122055122103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd122051122098_))))
                                                    (let ((_hd122054122106_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e122055122103_)))
                                                          (_tl122053122108_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e122055122103_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl122053122108_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl122050122100_))
                      (let ((_e122058122111_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl122050122100_))))
                        (let ((_hd122057122114_
                               (let ()
                                 (declare (not safe))
                                 (##car _e122058122111_)))
                              (_tl122056122116_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e122058122111_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl122056122116_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl122047122092_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl122044122084_))
                                      (let ((_e122061122119_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl122044122084_))))
                                        (let ((_hd122060122122_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e122061122119_)))
                                              (_tl122059122124_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e122061122119_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl122059122124_))
                                              ((lambda (_L122127_
                                                        _L122128_
                                                        _L122129_)
                                                 (let* ((_lambda-id122153_
                                                         (let ((__tmp130913
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L122022_)))
                       (__tmp130912 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130913 __tmp130912)))
                (_lambda-id122155_
                 (let ((__tmp130914
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx121247_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id122153_ __tmp130914)))
                (_g130915_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id122155_)))
                (_new-case-lambda-expr122158_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L122127_
                    'id:
                    _L122129_
                    'new-id:
                    _lambda-id122155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp130917
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L122022_)))
                                                         (__tmp130916
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id122155_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp130917
                                                      '" => "
                                                      __tmp130916))
                                                   (let ((__tmp130920
                                                          (let ((__tmp130921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128547128548_
                            _L122022_
                            _new-case-lambda-expr122158_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp130921 _rest121910_)))
                 (__tmp130918
                  (let ((__tmp130919
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128549128550_
                            _lambda-id122155_
                            _L122128_))))
                    (declare (not safe))
                    (cons __tmp130919 _lift1121888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp121885_
                                                      __tmp130920
                                                      __tmp130918
                                                      _lift2121889_
                                                      _bind121890_))))
                                               _hd122060122122_
                                               _hd122057122114_
                                               _hd122054122106_)
                                              (let ()
                                                (declare (not safe))
                                                (_g122036122066_
                                                 _g122037122069_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g122036122066_ _g122037122069_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g122036122066_ _g122037122069_)))
                              (let ()
                                (declare (not safe))
                                (_g122036122066_ _g122037122069_)))))
                      (let ()
                        (declare (not safe))
                        (_g122036122066_ _g122037122069_)))
                  (let ()
                    (declare (not safe))
                    (_g122036122066_ _g122037122069_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g122036122066_
                                                     _g122037122069_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g122036122066_
                                             _g122037122069_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g122036122066_ _g122037122069_)))))
                          (let ()
                            (declare (not safe))
                            (_g122036122066_ _g122037122069_)))))
                  (let ()
                    (declare (not safe))
                    (_g122036122066_ _g122037122069_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g122035122161_ _L122021_))))
                                         (___kont130293130294_
                                          (lambda (_L121972_ _L121973_)
                                            (let ((__tmp130922
                                                   (let ((__tmp130923
                                                          (let ((__tmp130924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp130925
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self121246_ _L121972_))))
                           (declare (not safe))
                           (cons __tmp130925 '()))))
                    (declare (not safe))
                    (cons _L121973_ __tmp130924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130923
                                                           _bind121890_))))
                                              (declare (not safe))
                                              (_lp121885_
                                               _rest121910_
                                               _lift1121888_
                                               _lift2121889_
                                               __tmp130922)))))
                                     (let* ((___match130338130339_
                                             (lambda (_e121932121997_
                                                      _hd121931122000_
                                                      _tl121930122002_
                                                      _e121935122005_
                                                      _hd121934122008_
                                                      _tl121933122010_
                                                      _e121938122013_
                                                      _hd121937122016_
                                                      _tl121936122018_)
                                               (let ((_L122021_
                                                      _hd121937122016_)
                                                     (_L122022_
                                                      _hd121934122008_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L122022_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L122021_)))
                                                     (___kont130291130292_
                                                      _L122021_
                                                      _L122022_)
                                                     (___kont130293130294_
                                                      _hd121937122016_
                                                      _hd121931122000_)))))
                                            (___match130316130317_
                                             (lambda (_e121921122169_
                                                      _hd121920122172_
                                                      _tl121919122174_
                                                      _e121924122177_
                                                      _hd121923122180_
                                                      _tl121922122182_
                                                      _e121927122185_
                                                      _hd121926122188_
                                                      _tl121925122190_)
                                               (let ((_L122193_
                                                      _hd121926122188_)
                                                     (_L122194_
                                                      _hd121923122180_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L122194_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L122193_)))
                                                     (___kont130289130290_
                                                      _L122193_
                                                      _L122194_)
                                                     (___match130338130339_
                                                      _e121921122169_
                                                      _hd121920122172_
                                                      _tl121919122174_
                                                      _e121924122177_
                                                      _hd121923122180_
                                                      _tl121922122182_
                                                      _e121927122185_
                                                      _hd121926122188_
                                                      _tl121925122190_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130287130288_))
                                           (let ((_e121921122169_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130287130288_))))
                                             (let ((_tl121919122174_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121921122169_)))
                                                   (_hd121920122172_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121921122169_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121920122172_))
                                                   (let ((_e121924122177_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121920122172_))))
                                                     (let ((_tl121922122182_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121924122177_)))
                                                           (_hd121923122180_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121924122177_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121922122182_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121919122174_))
                       (let ((_e121927122185_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121919122174_))))
                         (let ((_tl121925122190_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121927122185_)))
                               (_hd121926122188_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121927122185_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121925122190_))
                               (___match130316130317_
                                _e121921122169_
                                _hd121920122172_
                                _tl121919122174_
                                _e121924122177_
                                _hd121923122180_
                                _tl121922122182_
                                _e121927122185_
                                _hd121926122188_
                                _tl121925122190_)
                               (let ()
                                 (declare (not safe))
                                 (_g121915121951_)))))
                       (let () (declare (not safe)) (_g121915121951_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121919122174_))
                       (let ((_e121946121964_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121919122174_))))
                         (let ((_tl121944121969_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121946121964_)))
                               (_hd121945121967_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121946121964_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121944121969_))
                               (___kont130293130294_
                                _hd121945121967_
                                _hd121920122172_)
                               (let ()
                                 (declare (not safe))
                                 (_g121915121951_)))))
                       (let () (declare (not safe)) (_g121915121951_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121919122174_))
                                                       (let ((_e121946121964_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121919122174_))))
                 (let ((_tl121944121969_
                        (let () (declare (not safe)) (##cdr _e121946121964_)))
                       (_hd121945121967_
                        (let () (declare (not safe)) (##car _e121946121964_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121944121969_))
                       (___kont130293130294_ _hd121945121967_ _hd121920122172_)
                       (let () (declare (not safe)) (_g121915121951_)))))
               (let () (declare (not safe)) (_g121915121951_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121915121951_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121891121899_))
                             (let ((_hd121896122289_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121891121899_)))
                                   (_tl121897122291_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121891121899_))))
                               (let* ((_hd122294_ _hd121896122289_)
                                      (_rest122296_ _tl121897122291_))
                                 (declare (not safe))
                                 (_K121895122286_ _rest122296_ _hd122294_)))
                             (let ()
                               (declare (not safe))
                               (_else121893121907_)))))))
                  (_lift-kw-lambda?121251_
                   (lambda (_bind121807_)
                     (let* ((___stx130355130356_ _bind121807_)
                            (_g121810121827_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  ___stx130355130356_)))))
                       (let ((___kont130357130358_
                              (lambda (_L121863_ _L121864_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _L121864_))
                                    (let ()
                                      (declare (not safe))
                                      (gxc#kw-lambda-expr? _L121863_))
                                    '#f)))
                             (___kont130359130360_ (lambda () '#f)))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? ___stx130355130356_))
                             (let ((_e121816121839_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e ___stx130355130356_))))
                               (let ((_tl121814121844_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e121816121839_)))
                                     (_hd121815121842_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e121816121839_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd121815121842_))
                                     (let ((_e121819121847_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd121815121842_))))
                                       (let ((_tl121817121852_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e121819121847_)))
                                             (_hd121818121850_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e121819121847_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null? _tl121817121852_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl121814121844_))
                                                 (let ((_e121822121855_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl121814121844_))))
                                                   (let ((_tl121820121860_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e121822121855_)))
                                                         (_hd121821121858_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e121822121855_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl121820121860_))
                                                         (___kont130357130358_
                                                          _hd121821121858_
                                                          _hd121818121850_)
                                                         (___kont130359130360_))))
                                                 (___kont130359130360_))
                                             (___kont130359130360_))))
                                     (___kont130359130360_))))
                             (___kont130359130360_))))))
                  (_lift-kw-lambda-bindings121252_
                   (lambda (_bindings121419_)
                     (let _lp121421_ ((_rest121423_ _bindings121419_)
                                      (_lift1121424_ '())
                                      (_lift2121425_ '())
                                      (_bind121426_ '()))
                       (let* ((_rest121427121435_ _rest121423_)
                              (_else121429121443_
                               (lambda ()
                                 (values (reverse _lift1121424_)
                                         (reverse _lift2121425_)
                                         (reverse _bind121426_))))
                              (_K121431121795_
                               (lambda (_rest121446_ _hd121447_)
                                 (let* ((___stx130385130386_ _hd121447_)
                                        (_g121450121475_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130385130386_)))))
                                   (let ((___kont130387130388_
                                          (lambda (_L121545_ _L121546_)
                                            (let* ((_g121560121613_
                                                    (lambda (_g121561121610_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g121561121610_))))
                                                   (_g121559121789_
                                                    (lambda (_g121561121616_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g121561121616_))
                                                          (let ((_e121569121618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g121561121616_))))
                    (let ((_hd121568121621_
                           (let ()
                             (declare (not safe))
                             (##car _e121569121618_)))
                          (_tl121567121623_
                           (let ()
                             (declare (not safe))
                             (##cdr _e121569121618_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl121567121623_))
                          (let ((_e121572121626_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl121567121623_))))
                            (let ((_hd121571121629_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e121572121626_)))
                                  (_tl121570121631_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e121572121626_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd121571121629_))
                                  (let ((_e121575121634_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd121571121629_))))
                                    (let ((_hd121574121637_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121575121634_)))
                                          (_tl121573121639_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121575121634_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd121574121637_))
                                          (let ((_e121578121642_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd121574121637_))))
                                            (let ((_hd121577121645_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e121578121642_)))
                                                  (_tl121576121647_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e121578121642_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd121577121645_))
                                                  (let ((_e121581121650_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd121577121645_))))
                                                    (let ((_hd121580121653_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121581121650_)))
                                                          (_tl121579121655_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121581121650_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121579121655_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl121576121647_))
                      (let ((_e121584121658_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl121576121647_))))
                        (let ((_hd121583121661_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121584121658_)))
                              (_tl121582121663_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121584121658_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd121583121661_))
                              (let ((_e121587121666_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd121583121661_))))
                                (let ((_hd121586121669_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121587121666_)))
                                      (_tl121585121671_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121587121666_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl121585121671_))
                                      (let ((_e121590121674_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl121585121671_))))
                                        (let ((_hd121589121677_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e121590121674_)))
                                              (_tl121588121679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e121590121674_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd121589121677_))
                                              (let ((_e121593121682_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd121589121677_))))
                                                (let ((_hd121592121685_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e121593121682_)))
                                                      (_tl121591121687_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e121593121682_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd121592121685_))
                                                      (let ((_e121596121690_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd121592121685_))))
                (let ((_hd121595121693_
                       (let () (declare (not safe)) (##car _e121596121690_)))
                      (_tl121594121695_
                       (let () (declare (not safe)) (##cdr _e121596121690_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd121595121693_))
                      (let ((_e121599121698_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd121595121693_))))
                        (let ((_hd121598121701_
                               (let ()
                                 (declare (not safe))
                                 (##car _e121599121698_)))
                              (_tl121597121703_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e121599121698_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl121597121703_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl121594121695_))
                                  (let ((_e121602121706_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl121594121695_))))
                                    (let ((_hd121601121709_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e121602121706_)))
                                          (_tl121600121711_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e121602121706_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl121600121711_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl121591121687_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl121588121679_))
                                                  (let ((_e121605121714_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl121588121679_))))
                                                    (let ((_hd121604121717_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e121605121714_)))
                                                          (_tl121603121719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e121605121714_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl121603121719_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl121582121663_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl121573121639_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl121570121631_))
                              (let ((_e121608121722_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl121570121631_))))
                                (let ((_hd121607121725_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e121608121722_)))
                                      (_tl121606121727_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e121608121722_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl121606121727_))
                                      ((lambda (_L121730_
                                                _L121731_
                                                _L121732_
                                                _L121733_
                                                _L121734_)
                                         (let* ((_get-kws-id121774_
                                                 (let ((__tmp130927
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121546_)))
                                                       (__tmp130926
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130927
                                                    __tmp130926)))
                                                (_get-kws-id121776_
                                                 (let ((__tmp130928
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx121247_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id121774_
                                                    __tmp130928)))
                                                (_main-id121778_
                                                 (let ((__tmp130930
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L121546_)))
                                                       (__tmp130929
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp130930
                                                    __tmp130929)))
                                                (_main-id121780_
                                                 (let ((__tmp130931
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx121247_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id121778_
                                                    __tmp130931)))
                                                (_g130932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id121776_)))
                                                (_g130933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id121780_)))
                                                (_new-kw-dispatch121784_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121730_
                                                    'id:
                                                    _L121734_
                                                    'new-id:
                                                    _get-kws-id121776_)))
                                                (_new-get-kws121786_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L121731_
                                                    'id:
                                                    _L121733_
                                                    'new-id:
                                                    _main-id121780_))))
                                           (let ((__tmp130936
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L121546_)))
                                                 (__tmp130935
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id121776_)))
                                                 (__tmp130934
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id121780_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp130936
                                              '" => "
                                              __tmp130935
                                              '" => "
                                              __tmp130934))
                                           (let ((__tmp130941
                                                  (let ((__tmp130942
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128547128548_
                                                            _main-id121780_
                                                            _L121732_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130942
                                                          _lift1121424_)))
                                                 (__tmp130939
                                                  (let ((__tmp130940
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128547128548_
                                                            _get-kws-id121776_
                                                            _new-get-kws121786_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130940
                                                          _lift2121425_)))
                                                 (__tmp130937
                                                  (let ((__tmp130938
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128547128548_
                                                            _L121546_
                                                            _new-kw-dispatch121784_
                                                            '#f))))
                                                    (declare (not safe))
                                                    (cons __tmp130938
                                                          _bind121426_))))
                                             (declare (not safe))
                                             (_lp121421_
                                              _rest121446_
                                              __tmp130941
                                              __tmp130939
                                              __tmp130937))))
                                       _hd121607121725_
                                       _hd121604121717_
                                       _hd121601121709_
                                       _hd121598121701_
                                       _hd121580121653_)
                                      (let ()
                                        (declare (not safe))
                                        (_g121560121613_ _g121561121616_)))))
                              (let ()
                                (declare (not safe))
                                (_g121560121613_ _g121561121616_)))
                          (let ()
                            (declare (not safe))
                            (_g121560121613_ _g121561121616_)))
                      (let ()
                        (declare (not safe))
                        (_g121560121613_ _g121561121616_)))
                  (let ()
                    (declare (not safe))
                    (_g121560121613_ _g121561121616_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121560121613_
                                                     _g121561121616_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g121560121613_
                                                 _g121561121616_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g121560121613_
                                             _g121561121616_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121560121613_ _g121561121616_)))
                              (let ()
                                (declare (not safe))
                                (_g121560121613_ _g121561121616_)))))
                      (let ()
                        (declare (not safe))
                        (_g121560121613_ _g121561121616_)))))
              (let ()
                (declare (not safe))
                (_g121560121613_ _g121561121616_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g121560121613_
                                                 _g121561121616_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g121560121613_ _g121561121616_)))))
                              (let ()
                                (declare (not safe))
                                (_g121560121613_ _g121561121616_)))))
                      (let ()
                        (declare (not safe))
                        (_g121560121613_ _g121561121616_)))
                  (let ()
                    (declare (not safe))
                    (_g121560121613_ _g121561121616_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g121560121613_
                                                     _g121561121616_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g121560121613_
                                             _g121561121616_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g121560121613_ _g121561121616_)))))
                          (let ()
                            (declare (not safe))
                            (_g121560121613_ _g121561121616_)))))
                  (let ()
                    (declare (not safe))
                    (_g121560121613_ _g121561121616_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g121559121789_ _L121545_))))
                                         (___kont130389130390_
                                          (lambda (_L121496_ _L121497_)
                                            (let ((__tmp130943
                                                   (let ((__tmp130944
                                                          (let ((__tmp130945
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L121496_ '()))))
                    (declare (not safe))
                    (cons _L121497_ __tmp130945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp130944
                                                           _bind121426_))))
                                              (declare (not safe))
                                              (_lp121421_
                                               _rest121446_
                                               _lift1121424_
                                               _lift2121425_
                                               __tmp130943)))))
                                     (let ((___match130412130413_
                                            (lambda (_e121456121521_
                                                     _hd121455121524_
                                                     _tl121454121526_
                                                     _e121459121529_
                                                     _hd121458121532_
                                                     _tl121457121534_
                                                     _e121462121537_
                                                     _hd121461121540_
                                                     _tl121460121542_)
                                              (let ((_L121545_
                                                     _hd121461121540_)
                                                    (_L121546_
                                                     _hd121458121532_))
                                                (if (and (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _L121546_))
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#kw-lambda-expr?
                                                            _L121545_)))
                                                    (___kont130387130388_
                                                     _L121545_
                                                     _L121546_)
                                                    (___kont130389130390_
                                                     _hd121461121540_
                                                     _hd121455121524_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130385130386_))
                                           (let ((_e121456121521_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130385130386_))))
                                             (let ((_tl121454121526_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e121456121521_)))
                                                   (_hd121455121524_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e121456121521_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd121455121524_))
                                                   (let ((_e121459121529_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd121455121524_))))
                                                     (let ((_tl121457121534_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e121459121529_)))
                                                           (_hd121458121532_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e121459121529_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl121457121534_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl121454121526_))
                       (let ((_e121462121537_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121454121526_))))
                         (let ((_tl121460121542_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121462121537_)))
                               (_hd121461121540_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121462121537_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121460121542_))
                               (___match130412130413_
                                _e121456121521_
                                _hd121455121524_
                                _tl121454121526_
                                _e121459121529_
                                _hd121458121532_
                                _tl121457121534_
                                _e121462121537_
                                _hd121461121540_
                                _tl121460121542_)
                               (let ()
                                 (declare (not safe))
                                 (_g121450121475_)))))
                       (let () (declare (not safe)) (_g121450121475_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl121454121526_))
                       (let ((_e121470121488_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl121454121526_))))
                         (let ((_tl121468121493_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121470121488_)))
                               (_hd121469121491_
                                (let ()
                                  (declare (not safe))
                                  (##car _e121470121488_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl121468121493_))
                               (___kont130389130390_
                                _hd121469121491_
                                _hd121455121524_)
                               (let ()
                                 (declare (not safe))
                                 (_g121450121475_)))))
                       (let () (declare (not safe)) (_g121450121475_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl121454121526_))
                                                       (let ((_e121470121488_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl121454121526_))))
                 (let ((_tl121468121493_
                        (let () (declare (not safe)) (##cdr _e121470121488_)))
                       (_hd121469121491_
                        (let () (declare (not safe)) (##car _e121470121488_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl121468121493_))
                       (___kont130389130390_ _hd121469121491_ _hd121455121524_)
                       (let () (declare (not safe)) (_g121450121475_)))))
               (let () (declare (not safe)) (_g121450121475_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g121450121475_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest121427121435_))
                             (let ((_hd121432121798_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest121427121435_)))
                                   (_tl121433121800_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest121427121435_))))
                               (let* ((_hd121803_ _hd121432121798_)
                                      (_rest121805_ _tl121433121800_))
                                 (declare (not safe))
                                 (_K121431121795_ _rest121805_ _hd121803_)))
                             (let ()
                               (declare (not safe))
                               (_else121429121443_))))))))
          (let* ((___stx130429130430_ _stx121247_)
                 (_g121255121281_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130429130430_)))))
            (let ((___kont130431130432_
                   (lambda (_L121341_ _L121342_)
                     (let ((__tmp130947
                            (lambda ()
                              (if (let ((__tmp130974
                                         (let ((__tmp130975
                                                (lambda (_g121370121373_
                                                         _g121371121375_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g121370121373_
                                                          _g121371121375_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp130975
                                                   '()
                                                   _L121342_))))
                                    (declare (not safe))
                                    (ormap1 _lift-kw-lambda?121251_
                                            __tmp130974))
                                  (let ((_g130961_
                                         (let ((__tmp130963
                                                (let ((__tmp130964
                                                       (lambda (_g121377121380_
                                                                _g121378121382_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121377121380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121378121382_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130964
                                                          '()
                                                          _L121342_))))
                                           (declare (not safe))
                                           (_lift-kw-lambda-bindings121252_
                                            __tmp130963))))
                                    (begin
                                      (let ((_g130962_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130961_)
                                                   (##vector-length _g130961_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130962_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130962_)))
                                      (let ((_lift1121385_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130961_ 0)))
                                            (_lift2121386_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130961_ 1)))
                                            (_hd121387_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130961_ 2))))
                                        (let* ((_expr121389_
                                                (let ((__tmp130965
                                                       (let ((__tmp130966
                                                              (let ((__tmp130967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L121341_ '()))))
                        (declare (not safe))
                        (cons _hd121387_ __tmp130967))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130965
                                                   _stx121247_)))
                                               (_expr121391_
                                                (let ((__tmp130968
                                                       (let ((__tmp130969
                                                              (let ((__tmp130970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121389_ '()))))
                        (declare (not safe))
                        (cons _lift2121386_ __tmp130970))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130969))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130968
                                                   _stx121247_)))
                                               (_expr121393_
                                                (let ((__tmp130971
                                                       (let ((__tmp130972
                                                              (let ((__tmp130973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _expr121391_ '()))))
                        (declare (not safe))
                        (cons _lift1121385_ __tmp130973))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130971
                                                   _stx121247_))))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#lift-top-lambda-let-values%
                                             _self121246_
                                             _expr121393_))))))
                                  (let ((_g130948_
                                         (let ((__tmp130950
                                                (let ((__tmp130951
                                                       (lambda (_g121395121398_
                                                                _g121396121400_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g121395121398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g121396121400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp130951
                                                          '()
                                                          _L121342_))))
                                           (declare (not safe))
                                           (_compile-bindings121250_
                                            __tmp130950))))
                                    (begin
                                      (let ((_g130949_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g130948_)
                                                   (##vector-length _g130948_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g130949_ 3)))
                                            (error "Context expects 3 values"
                                                   _g130949_)))
                                      (let ((_lift1121403_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130948_ 0)))
                                            (_lift2121404_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130948_ 1)))
                                            (_hd121405_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g130948_ 2))))
                                        (let* ((_body121407_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self121246_
                                                   _L121341_)))
                                               (_expr121409_
                                                (let ((__tmp130952
                                                       (let ((__tmp130953
                                                              (let ((__tmp130954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _body121407_ '()))))
                        (declare (not safe))
                        (cons _hd121405_ __tmp130954))))
                 (declare (not safe))
                 (cons '%#let-values __tmp130953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp130952
                                                   _stx121247_)))
                                               (_expr121411_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift2121404_))
                                                    _expr121409_
                                                    (let ((__tmp130955
                                                           (let ((__tmp130956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130957
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121409_ '()))))
                            (declare (not safe))
                            (cons _lift2121404_ __tmp130957))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130956))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130955 _stx121247_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_expr121413_
                                                (if (let ()
                                                      (declare (not safe))
                                                      (null? _lift1121403_))
                                                    _expr121411_
                                                    (let ((__tmp130958
                                                           (let ((__tmp130959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130960
                                 (let ()
                                   (declare (not safe))
                                   (cons _expr121411_ '()))))
                            (declare (not safe))
                            (cons _lift1121403_ __tmp130960))))
                     (declare (not safe))
                     (cons '%#let-values __tmp130959))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp130958 _stx121247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _expr121413_)))))))
                           (__tmp130946
                            (let ((__obj130646
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130646)
                              __obj130646)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp130947
                        gx#current-expander-context
                        __tmp130946))))
                  (___kont130435130436_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self121246_ _stx121247_)))))
              (let ((___match130456130457_
                     (lambda (_e121261121293_
                              _hd121260121296_
                              _tl121259121298_
                              _e121264121301_
                              _hd121263121304_
                              _tl121262121306_
                              ___splice130433130434_
                              _target121265121309_
                              _tl121267121311_)
                       (letrec ((_loop121268121314_
                                 (lambda (_hd121266121317_ _bind121272121319_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd121266121317_))
                                       (let ((_e121269121322_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd121266121317_))))
                                         (let ((_lp-tl121271121327_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e121269121322_)))
                                               (_lp-hd121270121325_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e121269121322_))))
                                           (let ((__tmp130978
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd121270121325_
                                                          _bind121272121319_))))
                                             (declare (not safe))
                                             (_loop121268121314_
                                              _lp-tl121271121327_
                                              __tmp130978))))
                                       (let ((_bind121273121330_
                                              (reverse _bind121272121319_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl121262121306_))
                                             (let ((_e121276121333_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl121262121306_))))
                                               (let ((_tl121274121338_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e121276121333_)))
                                                     (_hd121275121336_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e121276121333_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl121274121338_))
                                                     (let ((_L121341_
                                                            _hd121275121336_)
                                                           (_L121342_
                                                            _bind121273121330_))
                                                       (if (let ((__tmp130976
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp130977
                                 (lambda (_g121362121365_ _g121363121367_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g121362121365_ _g121363121367_)))))
                            (declare (not safe))
                            (foldr1 __tmp130977 '() _L121342_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp130976))
                   (___kont130431130432_ _L121341_ _L121342_)
                   (___kont130435130436_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130435130436_))))
                                             (___kont130435130436_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop121268121314_ _target121265121309_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130429130430_))
                    (let ((_e121261121293_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130429130430_))))
                      (let ((_tl121259121298_
                             (let ()
                               (declare (not safe))
                               (##cdr _e121261121293_)))
                            (_hd121260121296_
                             (let ()
                               (declare (not safe))
                               (##car _e121261121293_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl121259121298_))
                            (let ((_e121264121301_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl121259121298_))))
                              (let ((_tl121262121306_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e121264121301_)))
                                    (_hd121263121304_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e121264121301_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd121263121304_))
                                    (let ((___splice130433130434_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd121263121304_
                                              '0))))
                                      (let ((_tl121267121311_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130433130434_
                                                '1)))
                                            (_target121265121309_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130433130434_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl121267121311_))
                                            (___match130456130457_
                                             _e121261121293_
                                             _hd121260121296_
                                             _tl121259121298_
                                             _e121264121301_
                                             _hd121263121304_
                                             _tl121262121306_
                                             ___splice130433130434_
                                             _target121265121309_
                                             _tl121267121311_)
                                            (___kont130435130436_))))
                                    (___kont130435130436_))))
                            (___kont130435130436_))))
                    (___kont130435130436_))))))))
    (define gxc#lift-top-lambda-letrec-values%
      (lambda (_self120389_ _stx120390_)
        (letrec* ((_bind-e__128552128553_
                   (lambda (_id121230_ _expr121231_ _compile?121232_)
                     (let ((__tmp130981
                            (let ()
                              (declare (not safe))
                              (cons _id121230_ '())))
                           (__tmp130979
                            (let ((__tmp130980
                                   (if _compile?121232_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self120389_
                                          _expr121231_))
                                       _expr121231_)))
                              (declare (not safe))
                              (cons __tmp130980 '()))))
                       (declare (not safe))
                       (cons __tmp130981 __tmp130979))))
                  (_bind-e__0__128554128555_
                   (lambda (_id121237_ _expr121238_)
                     (let ((_compile?121240_ '#t))
                       (declare (not safe))
                       (_bind-e__128552128553_
                        _id121237_
                        _expr121238_
                        _compile?121240_))))
                  (_bind-e120392_
                   (lambda _g130983_
                     (let ((_g130982_
                            (let ()
                              (declare (not safe))
                              (##length _g130983_))))
                       (cond ((let () (declare (not safe)) (##fx= _g130982_ 2))
                              (apply (lambda (_id121237_ _expr121238_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__0__128554128555_
                                          _id121237_
                                          _expr121238_)))
                                     _g130983_))
                             ((let () (declare (not safe)) (##fx= _g130982_ 3))
                              (apply (lambda (_id121242_
                                              _expr121243_
                                              _compile?121244_)
                                       (let ()
                                         (declare (not safe))
                                         (_bind-e__128552128553_
                                          _id121242_
                                          _expr121243_
                                          _compile?121244_)))
                                     _g130983_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g130983_))))))
                  (_compile-bindings120393_
                   (lambda (_rest120528_)
                     (let _lp120530_ ((_rest120532_ _rest120528_)
                                      (_bind120533_ '()))
                       (let* ((_rest120534120542_ _rest120532_)
                              (_else120536120550_
                               (lambda () (reverse _bind120533_)))
                              (_K120538121217_
                               (lambda (_rest120553_ _hd120554_)
                                 (let* ((___stx130479130480_ _hd120554_)
                                        (_g120559120606_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx130479130480_)))))
                                   (let ((___kont130481130482_
                                          (lambda (_L121124_ _L121125_)
                                            (let* ((___stx130459130460_
                                                    _L121124_)
                                                   (_g121140121154_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx130459130460_)))))
                                              (let ((___kont130461130462_
                                                     (lambda (_L121202_)
                                                       (let ((__tmp130984
                                                              (let ((__tmp130985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_bind-e__128552128553_
                                _L121125_
                                _L121124_
                                '#f))))
                        (declare (not safe))
                        (cons __tmp130985 _bind120533_))))
                 (declare (not safe))
                 (_lp120530_ _rest120553_ __tmp130984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont130463130464_
                                                     (lambda (_L121167_)
                                                       (let ((_g130986_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#lift-case-lambda-clauses__%
                         _stx120390_
                         _L121125_
                         _L121167_
                         '#t))))
                 (begin
                   (let ((_g130987_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g130986_)
                                (##vector-length _g130986_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g130987_ 3)))
                         (error "Context expects 3 values" _g130987_)))
                   (let ((_ids121177_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130986_ 0)))
                         (_impls121178_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130986_ 1)))
                         (_clauses121179_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g130986_ 2))))
                     (let* ((_g130988_
                             (for-each gx#core-bind-runtime! _ids121177_))
                            (_xbind121182_
                             (map _bind-e120392_ _ids121177_ _impls121178_))
                            (_expr*121184_
                             (let ((__tmp130990
                                    (let ()
                                      (declare (not safe))
                                      (cons '%#case-lambda _clauses121179_)))
                                   (__tmp130989
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'case-lambda-expr))))
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp130990
                                __tmp130989)))
                            (_bind*121186_
                             (let ()
                               (declare (not safe))
                               (_bind-e__128552128553_
                                _L121125_
                                _expr*121184_
                                '#f))))
                       (let ((__tmp130992
                              (let ()
                                (declare (not safe))
                                (gxc#identifier-symbol _L121125_)))
                             (__tmp130991
                              (map gxc#identifier-symbol _ids121177_)))
                         (declare (not safe))
                         (gxc#verbose
                          '"lift case-lambda clauses "
                          __tmp130992
                          '" => "
                          __tmp130991))
                       (let ((__tmp130993
                              (let ((__tmp130994
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _bind120533_
                                               _xbind121182_))))
                                (declare (not safe))
                                (cons _bind*121186_ __tmp130994))))
                         (declare (not safe))
                         (_lp120530_ _rest120553_ __tmp130993)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___match130470130471_
                                                       (lambda (_e121145121194_
                                                                _hd121144121197_
                                                                _tl121143121199_)
                                                         (let ((_L121202_
                                                                _tl121143121199_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (andmap1 gxc#dispatch-lambda-form? _L121202_))
                       (___kont130461130462_ _L121202_)
                       (___kont130463130464_ _tl121143121199_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         ___stx130459130460_))
                                                      (let ((_e121145121194_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e ___stx130459130460_))))
                (let ((_tl121143121199_
                       (let () (declare (not safe)) (##cdr _e121145121194_)))
                      (_hd121144121197_
                       (let () (declare (not safe)) (##car _e121145121194_))))
                  (___match130470130471_
                   _e121145121194_
                   _hd121144121197_
                   _tl121143121199_)))
              (let () (declare (not safe)) (_g121140121154_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (___kont130483130484_
                                          (lambda (_L120952_ _L120953_)
                                            (let* ((_g120967120997_
                                                    (lambda (_g120968120994_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120968120994_))))
                                                   (_g120966121092_
                                                    (lambda (_g120968121000_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120968121000_))
                                                          (let ((_e120974121002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120968121000_))))
                    (let ((_hd120973121005_
                           (let ()
                             (declare (not safe))
                             (##car _e120974121002_)))
                          (_tl120972121007_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120974121002_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120972121007_))
                          (let ((_e120977121010_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120972121007_))))
                            (let ((_hd120976121013_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120977121010_)))
                                  (_tl120975121015_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120977121010_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120976121013_))
                                  (let ((_e120980121018_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120976121013_))))
                                    (let ((_hd120979121021_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120980121018_)))
                                          (_tl120978121023_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120980121018_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120979121021_))
                                          (let ((_e120983121026_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120979121021_))))
                                            (let ((_hd120982121029_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120983121026_)))
                                                  (_tl120981121031_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120983121026_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120982121029_))
                                                  (let ((_e120986121034_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120982121029_))))
                                                    (let ((_hd120985121037_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120986121034_)))
                                                          (_tl120984121039_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120986121034_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120984121039_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120981121031_))
                      (let ((_e120989121042_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120981121031_))))
                        (let ((_hd120988121045_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120989121042_)))
                              (_tl120987121047_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120989121042_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120987121047_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl120978121023_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120975121015_))
                                      (let ((_e120992121050_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120975121015_))))
                                        (let ((_hd120991121053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120992121050_)))
                                              (_tl120990121055_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120992121050_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120990121055_))
                                              ((lambda (_L121058_
                                                        _L121059_
                                                        _L121060_)
                                                 (let* ((_lambda-id121084_
                                                         (let ((__tmp130996
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L120953_)))
                       (__tmp130995 (gensym '__)))
                   (declare (not safe))
                   (make-symbol__1 __tmp130996 __tmp130995)))
                (_lambda-id121086_
                 (let ((__tmp130997
                        (let ()
                          (declare (not safe))
                          (gx#stx-source _stx120390_))))
                   (declare (not safe))
                   (gx#core-quote-syntax__1 _lambda-id121084_ __tmp130997)))
                (_g130998_
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _lambda-id121086_)))
                (_new-case-lambda-expr121089_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-expression-subst
                    _L121058_
                    'id:
                    _L121060_
                    'new-id:
                    _lambda-id121086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp131000
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _L120953_)))
                                                         (__tmp130999
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#identifier-symbol
                                                             _lambda-id121086_))))
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"lift opt-lambda dispatch "
                                                      __tmp131000
                                                      '" => "
                                                      __tmp130999))
                                                   (let ((__tmp131003
                                                          (let ((__tmp131004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (_bind-e__128552128553_
                            _L120953_
                            _new-case-lambda-expr121089_
                            '#f))))
                    (declare (not safe))
                    (cons __tmp131004 _rest120553_)))
                 (__tmp131001
                  (let ((__tmp131002
                         (let ()
                           (declare (not safe))
                           (_bind-e__0__128554128555_
                            _lambda-id121086_
                            _L121059_))))
                    (declare (not safe))
                    (cons __tmp131002 _bind120533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_lp120530_
                                                      __tmp131003
                                                      __tmp131001))))
                                               _hd120991121053_
                                               _hd120988121045_
                                               _hd120985121037_)
                                              (let ()
                                                (declare (not safe))
                                                (_g120967120997_
                                                 _g120968121000_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120967120997_ _g120968121000_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g120967120997_ _g120968121000_)))
                              (let ()
                                (declare (not safe))
                                (_g120967120997_ _g120968121000_)))))
                      (let ()
                        (declare (not safe))
                        (_g120967120997_ _g120968121000_)))
                  (let ()
                    (declare (not safe))
                    (_g120967120997_ _g120968121000_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120967120997_
                                                     _g120968121000_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120967120997_
                                             _g120968121000_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120967120997_ _g120968121000_)))))
                          (let ()
                            (declare (not safe))
                            (_g120967120997_ _g120968121000_)))))
                  (let ()
                    (declare (not safe))
                    (_g120967120997_ _g120968121000_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120966121092_ _L120952_))))
                                         (___kont130485130486_
                                          (lambda (_L120676_ _L120677_)
                                            (let* ((_g120691120744_
                                                    (lambda (_g120692120741_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g120692120741_))))
                                                   (_g120690120920_
                                                    (lambda (_g120692120747_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _g120692120747_))
                                                          (let ((_e120700120749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _g120692120747_))))
                    (let ((_hd120699120752_
                           (let ()
                             (declare (not safe))
                             (##car _e120700120749_)))
                          (_tl120698120754_
                           (let ()
                             (declare (not safe))
                             (##cdr _e120700120749_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl120698120754_))
                          (let ((_e120703120757_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl120698120754_))))
                            (let ((_hd120702120760_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e120703120757_)))
                                  (_tl120701120762_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e120703120757_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd120702120760_))
                                  (let ((_e120706120765_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd120702120760_))))
                                    (let ((_hd120705120768_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120706120765_)))
                                          (_tl120704120770_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120706120765_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd120705120768_))
                                          (let ((_e120709120773_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd120705120768_))))
                                            (let ((_hd120708120776_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e120709120773_)))
                                                  (_tl120707120778_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e120709120773_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd120708120776_))
                                                  (let ((_e120712120781_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd120708120776_))))
                                                    (let ((_hd120711120784_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120712120781_)))
                                                          (_tl120710120786_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120712120781_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120710120786_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl120707120778_))
                      (let ((_e120715120789_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl120707120778_))))
                        (let ((_hd120714120792_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120715120789_)))
                              (_tl120713120794_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120715120789_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd120714120792_))
                              (let ((_e120718120797_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd120714120792_))))
                                (let ((_hd120717120800_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120718120797_)))
                                      (_tl120716120802_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120718120797_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl120716120802_))
                                      (let ((_e120721120805_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl120716120802_))))
                                        (let ((_hd120720120808_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e120721120805_)))
                                              (_tl120719120810_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e120721120805_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd120720120808_))
                                              (let ((_e120724120813_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd120720120808_))))
                                                (let ((_hd120723120816_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e120724120813_)))
                                                      (_tl120722120818_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e120724120813_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd120723120816_))
                                                      (let ((_e120727120821_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd120723120816_))))
                (let ((_hd120726120824_
                       (let () (declare (not safe)) (##car _e120727120821_)))
                      (_tl120725120826_
                       (let () (declare (not safe)) (##cdr _e120727120821_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd120726120824_))
                      (let ((_e120730120829_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd120726120824_))))
                        (let ((_hd120729120832_
                               (let ()
                                 (declare (not safe))
                                 (##car _e120730120829_)))
                              (_tl120728120834_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e120730120829_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl120728120834_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl120725120826_))
                                  (let ((_e120733120837_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl120725120826_))))
                                    (let ((_hd120732120840_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e120733120837_)))
                                          (_tl120731120842_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e120733120837_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl120731120842_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl120722120818_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl120719120810_))
                                                  (let ((_e120736120845_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl120719120810_))))
                                                    (let ((_hd120735120848_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e120736120845_)))
                                                          (_tl120734120850_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e120736120845_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl120734120850_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-null? _tl120713120794_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl120704120770_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl120701120762_))
                              (let ((_e120739120853_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl120701120762_))))
                                (let ((_hd120738120856_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e120739120853_)))
                                      (_tl120737120858_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e120739120853_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl120737120858_))
                                      ((lambda (_L120861_
                                                _L120862_
                                                _L120863_
                                                _L120864_
                                                _L120865_)
                                         (let* ((_get-kws-id120905_
                                                 (let ((__tmp131006
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120677_)))
                                                       (__tmp131005
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp131006
                                                    __tmp131005)))
                                                (_get-kws-id120907_
                                                 (let ((__tmp131007
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120390_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _get-kws-id120905_
                                                    __tmp131007)))
                                                (_main-id120909_
                                                 (let ((__tmp131009
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _L120677_)))
                                                       (__tmp131008
                                                        (gensym '__)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    __tmp131009
                                                    __tmp131008)))
                                                (_main-id120911_
                                                 (let ((__tmp131010
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-source
                                                           _stx120390_))))
                                                   (declare (not safe))
                                                   (gx#core-quote-syntax__1
                                                    _main-id120909_
                                                    __tmp131010)))
                                                (_g131011_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _get-kws-id120907_)))
                                                (_g131012_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-bind-runtime!__0
                                                    _main-id120911_)))
                                                (_new-kw-dispatch120915_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120861_
                                                    'id:
                                                    _L120865_
                                                    'new-id:
                                                    _get-kws-id120907_)))
                                                (_new-get-kws120917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#apply-expression-subst
                                                    _L120862_
                                                    'id:
                                                    _L120864_
                                                    'new-id:
                                                    _main-id120911_))))
                                           (let ((__tmp131015
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L120677_)))
                                                 (__tmp131014
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _get-kws-id120907_)))
                                                 (__tmp131013
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _main-id120911_))))
                                             (declare (not safe))
                                             (gxc#verbose
                                              '"lift kw-lambda dispatch "
                                              __tmp131015
                                              '" => "
                                              __tmp131014
                                              '" => "
                                              __tmp131013))
                                           (let ((__tmp131016
                                                  (let ((__tmp131021
                                                         (let ()
                                                           (declare (not safe))
                                                           (_bind-e__128552128553_
                                                            _main-id120911_
                                                            _L120863_
                                                            '#f)))
                                                        (__tmp131017
                                                         (let ((__tmp131020
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_bind-e__128552128553_
                           _get-kws-id120907_
                           _new-get-kws120917_
                           '#f)))
                       (__tmp131018
                        (let ((__tmp131019
                               (let ()
                                 (declare (not safe))
                                 (_bind-e__128552128553_
                                  _L120677_
                                  _new-kw-dispatch120915_
                                  '#f))))
                          (declare (not safe))
                          (cons __tmp131019 _rest120553_))))
                   (declare (not safe))
                   (cons __tmp131020 __tmp131018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp131021
                                                          __tmp131017))))
                                             (declare (not safe))
                                             (_lp120530_
                                              __tmp131016
                                              _bind120533_))))
                                       _hd120738120856_
                                       _hd120735120848_
                                       _hd120732120840_
                                       _hd120729120832_
                                       _hd120711120784_)
                                      (let ()
                                        (declare (not safe))
                                        (_g120691120744_ _g120692120747_)))))
                              (let ()
                                (declare (not safe))
                                (_g120691120744_ _g120692120747_)))
                          (let ()
                            (declare (not safe))
                            (_g120691120744_ _g120692120747_)))
                      (let ()
                        (declare (not safe))
                        (_g120691120744_ _g120692120747_)))
                  (let ()
                    (declare (not safe))
                    (_g120691120744_ _g120692120747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120691120744_
                                                     _g120692120747_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g120691120744_
                                                 _g120692120747_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g120691120744_
                                             _g120692120747_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120691120744_ _g120692120747_)))
                              (let ()
                                (declare (not safe))
                                (_g120691120744_ _g120692120747_)))))
                      (let ()
                        (declare (not safe))
                        (_g120691120744_ _g120692120747_)))))
              (let ()
                (declare (not safe))
                (_g120691120744_ _g120692120747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g120691120744_
                                                 _g120692120747_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g120691120744_ _g120692120747_)))))
                              (let ()
                                (declare (not safe))
                                (_g120691120744_ _g120692120747_)))))
                      (let ()
                        (declare (not safe))
                        (_g120691120744_ _g120692120747_)))
                  (let ()
                    (declare (not safe))
                    (_g120691120744_ _g120692120747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g120691120744_
                                                     _g120692120747_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g120691120744_
                                             _g120692120747_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g120691120744_ _g120692120747_)))))
                          (let ()
                            (declare (not safe))
                            (_g120691120744_ _g120692120747_)))))
                  (let ()
                    (declare (not safe))
                    (_g120691120744_ _g120692120747_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g120690120920_ _L120676_))))
                                         (___kont130487130488_
                                          (lambda (_L120627_ _L120628_)
                                            (let ((__tmp131022
                                                   (let ((__tmp131023
                                                          (let ((__tmp131024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp131025
                                (let ()
                                  (declare (not safe))
                                  (gxc#compile-e__1 _self120389_ _L120627_))))
                           (declare (not safe))
                           (cons __tmp131025 '()))))
                    (declare (not safe))
                    (cons _L120628_ __tmp131024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp131023
                                                           _bind120533_))))
                                              (declare (not safe))
                                              (_lp120530_
                                               _rest120553_
                                               __tmp131022)))))
                                     (let* ((___match130554130555_
                                             (lambda (_e120587120652_
                                                      _hd120586120655_
                                                      _tl120585120657_
                                                      _e120590120660_
                                                      _hd120589120663_
                                                      _tl120588120665_
                                                      _e120593120668_
                                                      _hd120592120671_
                                                      _tl120591120673_)
                                               (let ((_L120676_
                                                      _hd120592120671_)
                                                     (_L120677_
                                                      _hd120589120663_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120677_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#kw-lambda-expr?
                                                             _L120676_)))
                                                     (___kont130485130486_
                                                      _L120676_
                                                      _L120677_)
                                                     (___kont130487130488_
                                                      _hd120592120671_
                                                      _hd120586120655_)))))
                                            (___match130532130533_
                                             (lambda (_e120576120928_
                                                      _hd120575120931_
                                                      _tl120574120933_
                                                      _e120579120936_
                                                      _hd120578120939_
                                                      _tl120577120941_
                                                      _e120582120944_
                                                      _hd120581120947_
                                                      _tl120580120949_)
                                               (let ((_L120952_
                                                      _hd120581120947_)
                                                     (_L120953_
                                                      _hd120578120939_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L120953_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#opt-lambda-expr?
                                                             _L120952_)))
                                                     (___kont130483130484_
                                                      _L120952_
                                                      _L120953_)
                                                     (___match130554130555_
                                                      _e120576120928_
                                                      _hd120575120931_
                                                      _tl120574120933_
                                                      _e120579120936_
                                                      _hd120578120939_
                                                      _tl120577120941_
                                                      _e120582120944_
                                                      _hd120581120947_
                                                      _tl120580120949_)))))
                                            (___match130510130511_
                                             (lambda (_e120565121100_
                                                      _hd120564121103_
                                                      _tl120563121105_
                                                      _e120568121108_
                                                      _hd120567121111_
                                                      _tl120566121113_
                                                      _e120571121116_
                                                      _hd120570121119_
                                                      _tl120569121121_)
                                               (let ((_L121124_
                                                      _hd120570121119_)
                                                     (_L121125_
                                                      _hd120567121111_))
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L121125_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#case-lambda-expr?
                                                             _L121124_)))
                                                     (___kont130481130482_
                                                      _L121124_
                                                      _L121125_)
                                                     (___match130532130533_
                                                      _e120565121100_
                                                      _hd120564121103_
                                                      _tl120563121105_
                                                      _e120568121108_
                                                      _hd120567121111_
                                                      _tl120566121113_
                                                      _e120571121116_
                                                      _hd120570121119_
                                                      _tl120569121121_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx130479130480_))
                                           (let ((_e120565121100_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx130479130480_))))
                                             (let ((_tl120563121105_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e120565121100_)))
                                                   (_hd120564121103_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e120565121100_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd120564121103_))
                                                   (let ((_e120568121108_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd120564121103_))))
                                                     (let ((_tl120566121113_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e120568121108_)))
                                                           (_hd120567121111_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e120568121108_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl120566121113_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl120563121105_))
                       (let ((_e120571121116_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120563121105_))))
                         (let ((_tl120569121121_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120571121116_)))
                               (_hd120570121119_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120571121116_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120569121121_))
                               (___match130510130511_
                                _e120565121100_
                                _hd120564121103_
                                _tl120563121105_
                                _e120568121108_
                                _hd120567121111_
                                _tl120566121113_
                                _e120571121116_
                                _hd120570121119_
                                _tl120569121121_)
                               (let ()
                                 (declare (not safe))
                                 (_g120559120606_)))))
                       (let () (declare (not safe)) (_g120559120606_)))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl120563121105_))
                       (let ((_e120601120619_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl120563121105_))))
                         (let ((_tl120599120624_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e120601120619_)))
                               (_hd120600120622_
                                (let ()
                                  (declare (not safe))
                                  (##car _e120601120619_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl120599120624_))
                               (___kont130487130488_
                                _hd120600120622_
                                _hd120564121103_)
                               (let ()
                                 (declare (not safe))
                                 (_g120559120606_)))))
                       (let () (declare (not safe)) (_g120559120606_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl120563121105_))
                                                       (let ((_e120601120619_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl120563121105_))))
                 (let ((_tl120599120624_
                        (let () (declare (not safe)) (##cdr _e120601120619_)))
                       (_hd120600120622_
                        (let () (declare (not safe)) (##car _e120601120619_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl120599120624_))
                       (___kont130487130488_ _hd120600120622_ _hd120564121103_)
                       (let () (declare (not safe)) (_g120559120606_)))))
               (let () (declare (not safe)) (_g120559120606_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g120559120606_)))))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest120534120542_))
                             (let ((_hd120539121220_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest120534120542_)))
                                   (_tl120540121222_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest120534120542_))))
                               (let* ((_hd121225_ _hd120539121220_)
                                      (_rest121227_ _tl120540121222_))
                                 (declare (not safe))
                                 (_K120538121217_ _rest121227_ _hd121225_)))
                             (let ()
                               (declare (not safe))
                               (_else120536120550_))))))))
          (let* ((___stx130571130572_ _stx120390_)
                 (_g120396120423_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130571130572_)))))
            (let ((___kont130573130574_
                   (lambda (_L120483_ _L120484_ _L120485_)
                     (let ((__tmp131027
                            (lambda ()
                              (let ((_hd120522_
                                     (let ((__tmp131028
                                            (let ((__tmp131029
                                                   (lambda (_g120514120517_
                                                            _g120515120519_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g120514120517_
                                                             _g120515120519_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp131029
                                                      '()
                                                      _L120484_))))
                                       (declare (not safe))
                                       (_compile-bindings120393_ __tmp131028)))
                                    (_body120523_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self120389_
                                        _L120483_))))
                                (let ((__tmp131030
                                       (let ((__tmp131031
                                              (let ((__tmp131032
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body120523_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _hd120522_
                                                      __tmp131032))))
                                         (declare (not safe))
                                         (cons _L120485_ __tmp131031))))
                                  (declare (not safe))
                                  (gxc#xform-wrap-source
                                   __tmp131030
                                   _stx120390_)))))
                           (__tmp131026
                            (let ((__obj130647
                                   (let ()
                                     (declare (not safe))
                                     (##structure
                                      gx#local-context::t
                                      '#f
                                      '#f
                                      '#f
                                      '#f
                                      '#f))))
                              (gx#local-context:::init! __obj130647)
                              __obj130647)))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp131027
                        gx#current-expander-context
                        __tmp131026))))
                  (___kont130577130578_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-let-values% _self120389_ _stx120390_)))))
              (let ((___match130598130599_
                     (lambda (_e120403120435_
                              _hd120402120438_
                              _tl120401120440_
                              _e120406120443_
                              _hd120405120446_
                              _tl120404120448_
                              ___splice130575130576_
                              _target120407120451_
                              _tl120409120453_)
                       (letrec ((_loop120410120456_
                                 (lambda (_hd120408120459_ _bind120414120461_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd120408120459_))
                                       (let ((_e120411120464_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd120408120459_))))
                                         (let ((_lp-tl120413120469_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e120411120464_)))
                                               (_lp-hd120412120467_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e120411120464_))))
                                           (let ((__tmp131035
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd120412120467_
                                                          _bind120414120461_))))
                                             (declare (not safe))
                                             (_loop120410120456_
                                              _lp-tl120413120469_
                                              __tmp131035))))
                                       (let ((_bind120415120472_
                                              (reverse _bind120414120461_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl120404120448_))
                                             (let ((_e120418120475_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl120404120448_))))
                                               (let ((_tl120416120480_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e120418120475_)))
                                                     (_hd120417120478_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e120418120475_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl120416120480_))
                                                     (let ((_L120483_
                                                            _hd120417120478_)
                                                           (_L120484_
                                                            _bind120415120472_)
                                                           (_L120485_
                                                            _hd120402120438_))
                                                       (if (let ((__tmp131033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131034
                                 (lambda (_g120506120509_ _g120507120511_)
                                   (let ()
                                     (declare (not safe))
                                     (cons _g120506120509_ _g120507120511_)))))
                            (declare (not safe))
                            (foldr1 __tmp131034 '() _L120484_))))
                     (declare (not safe))
                     (ormap1 gxc#lift-top-lambda-binding? __tmp131033))
                   (___kont130573130574_ _L120483_ _L120484_ _L120485_)
                   (___kont130577130578_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130577130578_))))
                                             (___kont130577130578_)))))))
                         (let ()
                           (declare (not safe))
                           (_loop120410120456_ _target120407120451_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130571130572_))
                    (let ((_e120403120435_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130571130572_))))
                      (let ((_tl120401120440_
                             (let ()
                               (declare (not safe))
                               (##cdr _e120403120435_)))
                            (_hd120402120438_
                             (let ()
                               (declare (not safe))
                               (##car _e120403120435_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl120401120440_))
                            (let ((_e120406120443_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl120401120440_))))
                              (let ((_tl120404120448_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e120406120443_)))
                                    (_hd120405120446_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e120406120443_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _hd120405120446_))
                                    (let ((___splice130575130576_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _hd120405120446_
                                              '0))))
                                      (let ((_tl120409120453_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130575130576_
                                                '1)))
                                            (_target120407120451_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice130575130576_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120409120453_))
                                            (___match130598130599_
                                             _e120403120435_
                                             _hd120402120438_
                                             _tl120401120440_
                                             _e120406120443_
                                             _hd120405120446_
                                             _tl120404120448_
                                             ___splice130575130576_
                                             _target120407120451_
                                             _tl120409120453_)
                                            (___kont130577130578_))))
                                    (___kont130577130578_))))
                            (___kont130577130578_))))
                    (___kont130577130578_))))))))
    (define gxc#lift-top-lambda-binding?
      (lambda (_bind120307_)
        (let* ((___stx130601130602_ _bind120307_)
               (_g120310120327_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx130601130602_)))))
          (let ((___kont130603130604_
                 (lambda (_L120363_ _L120364_)
                   (if (let () (declare (not safe)) (gx#identifier? _L120364_))
                       (let ((_$e120380_
                              (let ()
                                (declare (not safe))
                                (gxc#case-lambda-expr? _L120363_))))
                         (if _$e120380_
                             _$e120380_
                             (let ((_$e120383_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#opt-lambda-expr? _L120363_))))
                               (if _$e120383_
                                   _$e120383_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#kw-lambda-expr? _L120363_))))))
                       '#f)))
                (___kont130605130606_ (lambda () '#f)))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx130601130602_))
                (let ((_e120316120339_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx130601130602_))))
                  (let ((_tl120314120344_
                         (let () (declare (not safe)) (##cdr _e120316120339_)))
                        (_hd120315120342_
                         (let ()
                           (declare (not safe))
                           (##car _e120316120339_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd120315120342_))
                        (let ((_e120319120347_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd120315120342_))))
                          (let ((_tl120317120352_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e120319120347_)))
                                (_hd120318120350_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e120319120347_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl120317120352_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl120314120344_))
                                    (let ((_e120322120355_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl120314120344_))))
                                      (let ((_tl120320120360_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e120322120355_)))
                                            (_hd120321120358_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e120322120355_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl120320120360_))
                                            (___kont130603130604_
                                             _hd120321120358_
                                             _hd120318120350_)
                                            (___kont130605130606_))))
                                    (___kont130605130606_))
                                (___kont130605130606_))))
                        (___kont130605130606_))))
                (___kont130605130606_))))))))
