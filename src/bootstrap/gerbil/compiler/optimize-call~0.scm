(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712269051)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp191091 (list gxc#::basic-xform::t))
            (__tmp191090 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp191091
         '()
         __tmp191090
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args190640%_
        (apply make-instance gxc#::optimize-call::t _%$args190640%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp191092
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-promise __tmp191092)))
    (define gxc#apply-optimize-call
      (lambda (_%stx190632%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self190635%_
                (let ((__obj191082
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj191082))
               (__tmp191093
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190635%_ _%stx190632%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191093
           gxc#current-compile-method
           _%self190635%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp191095 (list gxc#::void::t))
            (__tmp191094 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp191095
         '()
         __tmp191094
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args190629%_
        (apply make-instance gxc#::check-return-type::t _%$args190629%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp191096
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-annotation
                  gxc#apply-check-return-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::check-return-type::t)))))
        (declare (not safe))
        (__make-promise __tmp191096)))
    (define gxc#apply-check-return-type
      (lambda (_%stx190621%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self190624%_
                (let ((__obj191084
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj191084))
               (__tmp191097
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self190624%_ _%stx190621%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp191097
           gxc#current-compile-method
           _%self190624%_))))
    (define gxc#optimize-call%
      (lambda (_%self190231%_ _%stx190232%_)
        (let* ((_%__stx190695190696%_ _%stx190232%_)
               (_%g190235190281%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190695190696%_)))))
          (let ((_%__kont190697190698%_
                 (lambda (_%L190424%_ _%L190425%_)
                   (let* ((_%rator-id190445%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L190425%_)))
                          (_%rator-type190447%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id190445%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type190447%_))
                             (eq? (##structure-ref
                                   _%rator-type190447%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self190231%_ _%stx190232%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type190447%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp191098
                                      (##structure-ref
                                       _%rator-type190447%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id190445%_
                                  '" => "
                                  _%rator-type190447%_
                                  '" "
                                  __tmp191098))
                               (let* ((_%optimized190462%_
                                       (let ((__method191085
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type190447%_
                                                 'optimize-call))))
                                         (if __method191085
                                             (__method191085
                                              _%rator-type190447%_
                                              _%self190231%_
                                              _%stx190232%_
                                              (let ((__tmp191099
                                                     (lambda (_%g190454190457%_
                                                              _%g190455190459%_)
                                                       (cons _%g190454190457%_
                                                             _%g190455190459%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp191099
                                                 '()
                                                 _%L190424%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type190447%_
                                                      'optimize-call)))))
                                      (_%__stx190643190644%_
                                       _%optimized190462%_)
                                      (_%g190465190494%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx190643190644%_)))))
                                 (let ((_%__kont190645190646%_
                                        (lambda (_%L190562%_ _%L190563%_)
                                          (let ((_%optimized-rator-id190590%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L190563%_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _%rator-type190447%_))
                                                         (eq? _%optimized-rator-id190590%_
                                                              _%rator-id190445%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id190590%_
                                                              gxc#checked-primitives)))
                                                _%optimized190462%_
                                                (let ((__tmp191100
                                                       (let ((__tmp191101
                                                              (let ((__tmp191104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L190563%_ '())))
                            (__tmp191102
                             (let ((__tmp191103
                                    (lambda (_%g190594190597%_
                                             _%g190595190599%_)
                                      (cons _%g190594190597%_
                                            _%g190595190599%_))))
                               (declare (not safe))
                               (__foldr1 __tmp191103 '() _%L190562%_))))
                        (declare (not safe))
                        (cons __tmp191104 __tmp191102))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp191101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp191100
                                                   _%stx190232%_))))))
                                       (_%__kont190649190650%_
                                        (lambda () _%optimized190462%_)))
                                   (let ((_%__match190692190693%_
                                          (lambda (_%e190471190506%_
                                                   _%hd190470190509%_
                                                   _%tl190469190511%_
                                                   _%e190474190514%_
                                                   _%hd190473190517%_
                                                   _%tl190472190519%_
                                                   _%e190477190522%_
                                                   _%hd190476190525%_
                                                   _%tl190475190527%_
                                                   _%e190480190530%_
                                                   _%hd190479190533%_
                                                   _%tl190478190535%_
                                                   _%__splice190647190648%_
                                                   _%target190481190538%_
                                                   _%tl190483190540%_)
                                            (letrec ((_%loop190484190543%_
                                                      (lambda (_%hd190482190546%_
                                                               _%arg190488190548%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd190482190546%_))
                                                            (let ((_%e190485190551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd190482190546%_))))
                      (let ((_%lp-tl190487190556%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e190485190551%_)))
                            (_%lp-hd190486190554%_
                             (let ()
                               (declare (not safe))
                               (##car _%e190485190551%_))))
                        (let ((__tmp191105
                               (cons _%lp-hd190486190554%_
                                     _%arg190488190548%_)))
                          (declare (not safe))
                          (_%loop190484190543%_
                           _%lp-tl190487190556%_
                           __tmp191105))))
                    (let ((_%arg190489190559%_ (reverse _%arg190488190548%_)))
                      (_%__kont190645190646%_
                       _%arg190489190559%_
                       _%hd190479190533%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop190484190543%_
                                                 _%target190481190538%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx190643190644%_))
                                         (let ((_%e190471190506%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx190643190644%_))))
                                           (let ((_%tl190469190511%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190471190506%_)))
                                                 (_%hd190470190509%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190471190506%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd190470190509%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd190470190509%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl190469190511%_))
                                                         (let ((_%e190474190514%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl190469190511%_))))
                   (let ((_%tl190472190519%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e190474190514%_)))
                         (_%hd190473190517%_
                          (let ()
                            (declare (not safe))
                            (##car _%e190474190514%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd190473190517%_))
                         (let ((_%e190477190522%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd190473190517%_))))
                           (let ((_%tl190475190527%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e190477190522%_)))
                                 (_%hd190476190525%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e190477190522%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd190476190525%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd190476190525%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl190475190527%_))
                                         (let ((_%e190480190530%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl190475190527%_))))
                                           (let ((_%tl190478190535%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e190480190530%_)))
                                                 (_%hd190479190533%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e190480190530%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl190478190535%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl190472190519%_))
                                                     (let ((_%__splice190647190648%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl190472190519%_
                                                               '0))))
                                                       (let ((_%tl190483190540%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice190647190648%_ '1)))
                     (_%target190481190538%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice190647190648%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl190483190540%_))
                     (_%__match190692190693%_
                      _%e190471190506%_
                      _%hd190470190509%_
                      _%tl190469190511%_
                      _%e190474190514%_
                      _%hd190473190517%_
                      _%tl190472190519%_
                      _%e190477190522%_
                      _%hd190476190525%_
                      _%tl190475190527%_
                      _%e190480190530%_
                      _%hd190479190533%_
                      _%tl190478190535%_
                      _%__splice190647190648%_
                      _%target190481190538%_
                      _%tl190483190540%_)
                     (_%__kont190649190650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190649190650%_))
                                                 (_%__kont190649190650%_))))
                                         (_%__kont190649190650%_))
                                     (_%__kont190649190650%_))
                                 (_%__kont190649190650%_))))
                         (_%__kont190649190650%_))))
                 (_%__kont190649190650%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont190649190650%_))
                                                 (_%__kont190649190650%_))))
                                         (_%__kont190649190650%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type190447%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type190447%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ((__tmp191106
                                        (let ((__tmp191107
                                               (let ((__tmp191110
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#ref))
                                                            (cons _%L190425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191108
                                                      (map (lambda (_%g190605190607%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%self190231%_ _%g190605190607%_)))
                   (let ((__tmp191109
                          (lambda (_%g190609190612%_ _%g190610190614%_)
                            (cons _%g190609190612%_ _%g190610190614%_))))
                     (declare (not safe))
                     (__foldr1 __tmp191109 '() _%L190424%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp191110
                                                       __tmp191108))))
                                          (declare (not safe))
                                          (cons '%#call-unchecked
                                                __tmp191107))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191106
                                    _%stx190232%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"illegal application; not a procedure"
                                    _%stx190232%_
                                    _%rator-type190447%_))))))))
                (_%__kont190701190702%_
                 (lambda (_%L190326%_ _%L190327%_)
                   (let ((_%rator-type190344%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L190327%_))))
                     (if (and _%rator-type190344%_
                              (eq? (##structure-ref
                                    _%rator-type190344%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp191111
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type190344%_))))
                                (declare (not safe))
                                (not __tmp191111)))
                         (let ((__tmp191112
                                (let ((__tmp191113
                                       (let ((__tmp191116
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self190231%_
                                                 _%L190327%_)))
                                             (__tmp191114
                                              (map (lambda (_%g190346190348%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self190231%_
                                                        _%g190346190348%_)))
                                                   (let ((__tmp191115
                                                          (lambda (_%g190350190353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g190351190355%_)
                    (cons _%g190350190353%_ _%g190351190355%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp191115
                                                      '()
                                                      _%L190326%_)))))
                                         (declare (not safe))
                                         (cons __tmp191116 __tmp191114))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp191113))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp191112 _%stx190232%_))
                         (if (or (let ()
                                   (declare (not safe))
                                   (not _%rator-type190344%_))
                                 (let ((__tmp191117
                                        (##structure-ref
                                         _%rator-type190344%_
                                         '1
                                         gxc#!type::t
                                         '#f)))
                                   (declare (not safe))
                                   (##memq __tmp191117 '(t procedure))))
                             (let ()
                               (declare (not safe))
                               (gxc#xform-call% _%self190231%_ _%stx190232%_))
                             (let ()
                               (declare (not safe))
                               (gxc#raise-compile-error
                                '"illegal application; not a procedure"
                                _%stx190232%_
                                _%rator-type190344%_))))))))
            (let* ((_%__match190762190763%_
                    (lambda (_%e190264190286%_
                             _%hd190263190289%_
                             _%tl190262190291%_
                             _%e190267190294%_
                             _%hd190266190297%_
                             _%tl190265190299%_
                             _%__splice190703190704%_
                             _%target190268190302%_
                             _%tl190270190304%_)
                      (letrec ((_%loop190271190307%_
                                (lambda (_%hd190269190310%_
                                         _%rand190275190312%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190269190310%_))
                                      (let ((_%e190272190315%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190269190310%_))))
                                        (let ((_%lp-tl190274190320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190272190315%_)))
                                              (_%lp-hd190273190318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190272190315%_))))
                                          (let ((__tmp191118
                                                 (cons _%lp-hd190273190318%_
                                                       _%rand190275190312%_)))
                                            (declare (not safe))
                                            (_%loop190271190307%_
                                             _%lp-tl190274190320%_
                                             __tmp191118))))
                                      (let ((_%rand190276190323%_
                                             (reverse _%rand190275190312%_)))
                                        (_%__kont190701190702%_
                                         _%rand190276190323%_
                                         _%hd190266190297%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop190271190307%_ _%target190268190302%_ '())))))
                   (_%__match190742190743%_
                    (lambda (_%e190241190368%_
                             _%hd190240190371%_
                             _%tl190239190373%_
                             _%e190244190376%_
                             _%hd190243190379%_
                             _%tl190242190381%_
                             _%e190247190384%_
                             _%hd190246190387%_
                             _%tl190245190389%_
                             _%e190250190392%_
                             _%hd190249190395%_
                             _%tl190248190397%_
                             _%__splice190699190700%_
                             _%target190251190400%_
                             _%tl190253190402%_)
                      (letrec ((_%loop190254190405%_
                                (lambda (_%hd190252190408%_
                                         _%rand190258190410%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd190252190408%_))
                                      (let ((_%e190255190413%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd190252190408%_))))
                                        (let ((_%lp-tl190257190418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e190255190413%_)))
                                              (_%lp-hd190256190416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e190255190413%_))))
                                          (let ((__tmp191119
                                                 (cons _%lp-hd190256190416%_
                                                       _%rand190258190410%_)))
                                            (declare (not safe))
                                            (_%loop190254190405%_
                                             _%lp-tl190257190418%_
                                             __tmp191119))))
                                      (let ((_%rand190259190421%_
                                             (reverse _%rand190258190410%_)))
                                        (_%__kont190697190698%_
                                         _%rand190259190421%_
                                         _%hd190249190395%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop190254190405%_
                           _%target190251190400%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190695190696%_))
                  (let ((_%e190241190368%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190695190696%_))))
                    (let ((_%tl190239190373%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e190241190368%_)))
                          (_%hd190240190371%_
                           (let ()
                             (declare (not safe))
                             (##car _%e190241190368%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl190239190373%_))
                          (let ((_%e190244190376%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl190239190373%_))))
                            (let ((_%tl190242190381%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e190244190376%_)))
                                  (_%hd190243190379%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e190244190376%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd190243190379%_))
                                  (let ((_%e190247190384%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd190243190379%_))))
                                    (let ((_%tl190245190389%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e190247190384%_)))
                                          (_%hd190246190387%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e190247190384%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd190246190387%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd190246190387%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl190245190389%_))
                                                  (let ((_%e190250190392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl190245190389%_))))
                                                    (let ((_%tl190248190397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e190250190392%_)))
                                                          (_%hd190249190395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e190250190392%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190248190397%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl190242190381%_))
                      (let ((_%__splice190699190700%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190242190381%_
                                '0))))
                        (let ((_%tl190253190402%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190699190700%_ '1)))
                              (_%target190251190400%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190699190700%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190253190402%_))
                              (_%__match190742190743%_
                               _%e190241190368%_
                               _%hd190240190371%_
                               _%tl190239190373%_
                               _%e190244190376%_
                               _%hd190243190379%_
                               _%tl190242190381%_
                               _%e190247190384%_
                               _%hd190246190387%_
                               _%tl190245190389%_
                               _%e190250190392%_
                               _%hd190249190395%_
                               _%tl190248190397%_
                               _%__splice190699190700%_
                               _%target190251190400%_
                               _%tl190253190402%_)
                              (let ()
                                (declare (not safe))
                                (_%g190235190281%_)))))
                      (let () (declare (not safe)) (_%g190235190281%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl190242190381%_))
                      (let ((_%__splice190703190704%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl190242190381%_
                                '0))))
                        (let ((_%tl190270190304%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190703190704%_ '1)))
                              (_%target190268190302%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice190703190704%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl190270190304%_))
                              (_%__match190762190763%_
                               _%e190241190368%_
                               _%hd190240190371%_
                               _%tl190239190373%_
                               _%e190244190376%_
                               _%hd190243190379%_
                               _%tl190242190381%_
                               _%__splice190703190704%_
                               _%target190268190302%_
                               _%tl190270190304%_)
                              (let ()
                                (declare (not safe))
                                (_%g190235190281%_)))))
                      (let () (declare (not safe)) (_%g190235190281%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl190242190381%_))
                                                      (let ((_%__splice190703190704%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl190242190381%_ '0))))
                (let ((_%tl190270190304%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190703190704%_ '1)))
                      (_%target190268190302%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice190703190704%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl190270190304%_))
                      (_%__match190762190763%_
                       _%e190241190368%_
                       _%hd190240190371%_
                       _%tl190239190373%_
                       _%e190244190376%_
                       _%hd190243190379%_
                       _%tl190242190381%_
                       _%__splice190703190704%_
                       _%target190268190302%_
                       _%tl190270190304%_)
                      (let () (declare (not safe)) (_%g190235190281%_)))))
              (let () (declare (not safe)) (_%g190235190281%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl190242190381%_))
                                                  (let ((_%__splice190703190704%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl190242190381%_
                                                            '0))))
                                                    (let ((_%tl190270190304%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190703190704%_
                                                              '1)))
                                                          (_%target190268190302%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice190703190704%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl190270190304%_))
                                                          (_%__match190762190763%_
                                                           _%e190241190368%_
                                                           _%hd190240190371%_
                                                           _%tl190239190373%_
                                                           _%e190244190376%_
                                                           _%hd190243190379%_
                                                           _%tl190242190381%_
                                                           _%__splice190703190704%_
                                                           _%target190268190302%_
                                                           _%tl190270190304%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g190235190281%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g190235190281%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl190242190381%_))
                                              (let ((_%__splice190703190704%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl190242190381%_
                                                        '0))))
                                                (let ((_%tl190270190304%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190703190704%_
                                                          '1)))
                                                      (_%target190268190302%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice190703190704%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl190270190304%_))
                                                      (_%__match190762190763%_
                                                       _%e190241190368%_
                                                       _%hd190240190371%_
                                                       _%tl190239190373%_
                                                       _%e190244190376%_
                                                       _%hd190243190379%_
                                                       _%tl190242190381%_
                                                       _%__splice190703190704%_
                                                       _%target190268190302%_
                                                       _%tl190270190304%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g190235190281%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g190235190281%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl190242190381%_))
                                      (let ((_%__splice190703190704%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl190242190381%_
                                                '0))))
                                        (let ((_%tl190270190304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190703190704%_
                                                  '1)))
                                              (_%target190268190302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190703190704%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl190270190304%_))
                                              (_%__match190762190763%_
                                               _%e190241190368%_
                                               _%hd190240190371%_
                                               _%tl190239190373%_
                                               _%e190244190376%_
                                               _%hd190243190379%_
                                               _%tl190242190381%_
                                               _%__splice190703190704%_
                                               _%target190268190302%_
                                               _%tl190270190304%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g190235190281%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g190235190281%_))))))
                          (let () (declare (not safe)) (_%g190235190281%_)))))
                  (let () (declare (not safe)) (_%g190235190281%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self190193%_ _%ctx190194%_ _%stx190195%_ _%args190196%_)
        (let ((_%self190199%_ _%self190193%_))
          (if (let ((__method191086
                     (let ()
                       (declare (not safe))
                       (__method-ref _%self190199%_ 'check-arguments))))
                (if __method191086
                    (__method191086
                     _%self190199%_
                     _%ctx190194%_
                     _%stx190195%_
                     _%args190196%_)
                    (let ()
                      (declare (not safe))
                      (error '"Missing method"
                             _%self190199%_
                             'check-arguments))))
              (let* ((_%signature190209%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190199%_ '2 '#f '#f)))
                     (_%signature190211%_ _%signature190209%_)
                     (_%$e190221%_
                      (if _%signature190211%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature190211%_
                             '4
                             '#f
                             '#f))
                          '#f)))
                (if _%$e190221%_
                    ((lambda (_%unchecked190224%_)
                       (if (let ()
                             (declare (not safe))
                             (gxc#symbol-in-local-scope? _%unchecked190224%_))
                           (let ((__tmp191120
                                  (let ((__tmp191121
                                         (let ((__tmp191123
                                                (cons '%#ref
                                                      (cons _%unchecked190224%_
                                                            '())))
                                               (__tmp191122
                                                (map (lambda (_%g190225190227%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%ctx190194%_
                                                          _%g190225190227%_)))
                                                     _%args190196%_)))
                                           (declare (not safe))
                                           (cons __tmp191123 __tmp191122))))
                                    (declare (not safe))
                                    (cons '%#call __tmp191121))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp191120 _%stx190195%_))
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%ctx190194%_ _%stx190195%_))))
                     _%$e190221%_)
                    (let ()
                      (declare (not safe))
                      (gxc#xform-call% _%ctx190194%_ _%stx190195%_))))
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx190194%_ _%stx190195%_))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self189944%_ _%ctx189945%_ _%stx189946%_ _%args189947%_)
        (let ()
          (let* ((_%self189950%_ _%self189944%_)
                 (_%signature189959189961%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%self189950%_ '2 '#f '#f))))
            (if _%signature189959189961%_
                (let* ((_%signature189964%_ _%signature189959189961%_)
                       (_%argument-types189965189967%_
                        (##direct-structure-ref
                         _%signature189964%_
                         '3
                         gxc#!signature::t
                         '#f)))
                  (if _%argument-types189965189967%_
                      (let* ((_%argument-types189970%_
                              _%argument-types189965189967%_)
                             (_%argument-types189975%_
                              (let ((__tmp191124
                                     (lambda (_%t189973%_)
                                       (if _%t189973%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189946%_
                                              _%t189973%_))
                                           '#f))))
                                (declare (not safe))
                                (gxc#map*
                                 __tmp191124
                                 _%argument-types189970%_))))
                        (let _%loop189977%_ ((_%rest-args189979%_
                                              _%args189947%_)
                                             (_%rest-types189980%_
                                              _%argument-types189975%_)
                                             (_%result189981%_ '#t))
                          (let* ((_%rest-args189982189990%_
                                  _%rest-args189979%_)
                                 (_%else189984189998%_
                                  (lambda () _%result189981%_))
                                 (_%K189986190059%_
                                  (lambda (_%rest-args190001%_ _%arg190002%_)
                                    (let* ((_%rest-types190003190014%_
                                            _%rest-types189980%_)
                                           (_%E190007190018%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%rest-types190003190014%_
                                                       '([type . rest-types])
                                                       '([])
                                                       '(tail-type)))
                                              '#!void)))
                                      (let ((_%K190010190047%_
                                             (lambda (_%rest-types190044%_
                                                      _%type190045%_)
                                               (let ((__tmp191125
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#check-expression-type!
                                                             _%stx189946%_
                                                             _%arg190002%_
                                                             _%type190045%_))
                                                          _%result189981%_
                                                          '#f)))
                                                 (declare (not safe))
                                                 (_%loop189977%_
                                                  _%rest-args190001%_
                                                  _%rest-types190044%_
                                                  __tmp191125))))
                                            (_%K190009190038%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"signature arity mismatch"
                                                  _%stx189946%_
                                                  _%argument-types189975%_))))
                                            (_%K190008190028%_
                                             (lambda (_%tail-type190022%_)
                                               (if (let ((__tmp191126
                                                          (lambda (_%g190023190025%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#check-expression-type!
                                                               _%stx189946%_
                                                               _%g190023190025%_
                                                               _%tail-type190022%_)))))
                                                     (declare (not safe))
                                                     (__andmap1
                                                      __tmp191126
                                                      _%rest-args190001%_))
                                                   _%result189981%_
                                                   '#f))))
                                        (let ((_%try-match190005190041%_
                                               (lambda ()
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##null? _%rest-types190003190014%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K190009190038%_))
                                                     (let ((_%tail-type190031%_
                                                            _%rest-types190003190014%_))
                                                       (declare (not safe))
                                                       (_%K190008190028%_
                                                        _%tail-type190031%_))))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%rest-types190003190014%_))
                                              (let ((_%tl190012190052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%rest-types190003190014%_)))
                                                    (_%hd190011190050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%rest-types190003190014%_))))
                                                (let ((_%type190055%_
                                                       _%hd190011190050%_)
                                                      (_%rest-types190057%_
                                                       _%tl190012190052%_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%K190010190047%_
                                                     _%rest-types190057%_
                                                     _%type190055%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%try-match190005190041%_)))))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest-args189982189990%_))
                                (let ((_%hd189987190062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest-args189982189990%_)))
                                      (_%tl189988190064%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest-args189982189990%_))))
                                  (let* ((_%arg190067%_ _%hd189987190062%_)
                                         (_%rest-args190069%_
                                          _%tl189988190064%_))
                                    (declare (not safe))
                                    (_%K189986190059%_
                                     _%rest-args190069%_
                                     _%arg190067%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else189984189998%_))))))
                      '#f))
                '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self189755%_ _%ctx189756%_ _%stx189757%_ _%args189758%_)
        (let ((_%self189761%_ _%self189755%_))
          (let* ((_%g189771189781%_
                  (lambda (_%g189772189778%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189772189778%_))))
                 (_%g189770189819%_
                  (lambda (_%g189772189784%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189772189784%_))
                        (let ((_%e189776189786%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189772189784%_))))
                          (let ((_%hd189775189789%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189776189786%_)))
                                (_%tl189774189791%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189776189786%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189774189791%_))
                                ((lambda (_%L189794%_)
                                   (let* ((_%klass189806%_
                                           (let ((__tmp191127
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189761%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189757%_
                                              __tmp191127)))
                                          (_%object189808%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189756%_
                                              _%L189794%_)))
                                          (_%instance?189813%_
                                           (let ((_%$e189810%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object189808%_
                                                     _%klass189806%_))))
                                             (if _%$e189810%_
                                                 _%$e189810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L189794%_
                                                    _%klass189806%_))))))
                                     (if _%instance?189813%_
                                         (let ((__tmp191128
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object189808%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L189794%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object189808%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191128
                                            _%stx189757%_))
                                         (let ()
                                           (declare (not safe))
                                           (gxc#xform-call%
                                            _%ctx189756%_
                                            _%stx189757%_)))))
                                 _%hd189775189789%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189771189781%_ _%g189772189784%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189771189781%_ _%g189772189784%_))))))
            (declare (not safe))
            (_%g189770189819%_ _%args189758%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self189551%_ _%ctx189552%_ _%stx189553%_ _%args189554%_)
        (let ((_%self189557%_ _%self189551%_))
          (let* ((_%g189567189577%_
                  (lambda (_%g189568189574%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g189568189574%_))))
                 (_%g189566189630%_
                  (lambda (_%g189568189580%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g189568189580%_))
                        (let ((_%e189572189582%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g189568189580%_))))
                          (let ((_%hd189571189585%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e189572189582%_)))
                                (_%tl189570189587%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e189572189582%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl189570189587%_))
                                ((lambda (_%L189590%_)
                                   (let* ((_%klass189602%_
                                           (let ((__tmp191129
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self189557%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx189553%_
                                              __tmp191129)))
                                          (_%object189604%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx189552%_
                                              _%L189590%_)))
                                          (_%instance?189609%_
                                           (let ((_%$e189606%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#expression-type?
                                                     _%object189604%_
                                                     _%klass189602%_))))
                                             (if _%$e189606%_
                                                 _%$e189606%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#expression-type?
                                                    _%L189590%_
                                                    _%klass189602%_)))))
                                          (_%klass189612%_ _%klass189602%_))
                                     (if _%instance?189609%_
                                         (let ((__tmp191130
                                                (if (or (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%object189604%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#expression-no-side-effects?
                                                           _%L189590%_)))
                                                    (cons '%#quote
                                                          (cons '#t '()))
                                                    (cons '%#begin
                                                          (cons _%object189604%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191130
                                            _%stx189553%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass189612%_
                                                '8
                                                '#f
                                                '#f))
                                             (let ((__tmp191131
                                                    (cons '%#struct-direct-instance?
                                                          (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass189612%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons _%object189604%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp191131
                                                _%stx189553%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass189612%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp191132
                                                        (cons '%#struct-instance?
                                                              (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%klass189612%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%object189604%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191132
                                                    _%stx189553%_))
                                                 (let ((__tmp191133
                                                        (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'class-instance? '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189557%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons _%object189604%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191133
                                                    _%stx189553%_)))))))
                                 _%hd189571189585%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g189567189577%_ _%g189568189580%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g189567189577%_ _%g189568189580%_))))))
            (declare (not safe))
            (_%g189566189630%_ _%args189554%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx189214%_)
        (let* ((_%__stx190772190773%_ _%stx189214%_)
               (_%g189219189260%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx190772190773%_)))))
          (let ((_%__kont190774190775%_ (lambda () '#t))
                (_%__kont190776190777%_ (lambda () '#t))
                (_%__kont190778190779%_
                 (lambda (_%L189328%_ _%L189329%_)
                   (let ((_%rator-type189350189352%_
                          (let ((__tmp191134
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L189329%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp191134))))
                     (if _%rator-type189350189352%_
                         (let* ((_%rator-type189355%_
                                 _%rator-type189350189352%_)
                                (_%rator-signature189356189358%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type189355%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type189355%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature189356189358%_
                               (let* ((_%rator-signature189361%_
                                       _%rator-signature189356189358%_)
                                      (_%rator-effect189362189364%_
                                       (if _%rator-signature189361%_
                                           (##direct-structure-ref
                                            _%rator-signature189361%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect189362189364%_
                                     (let ((_%rator-effect189367%_
                                            _%rator-effect189362189364%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect189367%_)
                                               (equal? '(alloc)
                                                       _%rator-effect189367%_))
                                           (let ((__tmp191135
                                                  (let ((__tmp191136
                                                         (lambda (_%g189372189375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g189373189377%_)
                   (cons _%g189372189375%_ _%g189373189377%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp191136
                                                     '()
                                                     _%L189328%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp191135))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont190782190783%_ (lambda () '#f)))
            (let ((_%__match190861190862%_
                   (lambda (_%e189237189272%_
                            _%hd189236189275%_
                            _%tl189235189277%_
                            _%e189240189280%_
                            _%hd189239189283%_
                            _%tl189238189285%_
                            _%e189243189288%_
                            _%hd189242189291%_
                            _%tl189241189293%_
                            _%e189246189296%_
                            _%hd189245189299%_
                            _%tl189244189301%_
                            _%__splice190780190781%_
                            _%target189247189304%_
                            _%tl189249189306%_)
                     (letrec ((_%loop189250189309%_
                               (lambda (_%hd189248189312%_
                                        _%rand189254189314%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd189248189312%_))
                                     (let ((_%e189251189317%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd189248189312%_))))
                                       (let ((_%lp-tl189253189322%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e189251189317%_)))
                                             (_%lp-hd189252189320%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e189251189317%_))))
                                         (let ((__tmp191137
                                                (cons _%lp-hd189252189320%_
                                                      _%rand189254189314%_)))
                                           (declare (not safe))
                                           (_%loop189250189309%_
                                            _%lp-tl189253189322%_
                                            __tmp191137))))
                                     (let ((_%rand189255189325%_
                                            (reverse _%rand189254189314%_)))
                                       (_%__kont190778190779%_
                                        _%rand189255189325%_
                                        _%hd189245189299%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop189250189309%_ _%target189247189304%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx190772190773%_))
                  (let ((_%e189223189408%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx190772190773%_))))
                    (let ((_%tl189221189413%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e189223189408%_)))
                          (_%hd189222189411%_
                           (let ()
                             (declare (not safe))
                             (##car _%e189223189408%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd189222189411%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd189222189411%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl189221189413%_))
                                  (let ((_%e189226189416%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl189221189413%_))))
                                    (let ((_%tl189224189421%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e189226189416%_)))
                                          (_%hd189225189419%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e189226189416%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl189224189421%_))
                                          (_%__kont190774190775%_)
                                          (_%__kont190782190783%_))))
                                  (_%__kont190782190783%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd189222189411%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189221189413%_))
                                      (let ((_%e189232189393%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189221189413%_))))
                                        (let ((_%tl189230189398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189232189393%_)))
                                              (_%hd189231189396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189232189393%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189230189398%_))
                                              (_%__kont190776190777%_)
                                              (_%__kont190782190783%_))))
                                      (_%__kont190782190783%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd189222189411%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl189221189413%_))
                                          (let ((_%e189240189280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl189221189413%_))))
                                            (let ((_%tl189238189285%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189240189280%_)))
                                                  (_%hd189239189283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189240189280%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189239189283%_))
                                                  (let ((_%e189243189288%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189239189283%_))))
                                                    (let ((_%tl189241189293%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189243189288%_)))
                                                          (_%hd189242189291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189243189288%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189242189291%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd189242189291%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189241189293%_))
                          (let ((_%e189246189296%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189241189293%_))))
                            (let ((_%tl189244189301%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189246189296%_)))
                                  (_%hd189245189299%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189246189296%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189244189301%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl189238189285%_))
                                      (let ((_%__splice190780190781%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl189238189285%_
                                                '0))))
                                        (let ((_%tl189249189306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190780190781%_
                                                  '1)))
                                              (_%target189247189304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice190780190781%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl189249189306%_))
                                              (_%__match190861190862%_
                                               _%e189223189408%_
                                               _%hd189222189411%_
                                               _%tl189221189413%_
                                               _%e189240189280%_
                                               _%hd189239189283%_
                                               _%tl189238189285%_
                                               _%e189243189288%_
                                               _%hd189242189291%_
                                               _%tl189241189293%_
                                               _%e189246189296%_
                                               _%hd189245189299%_
                                               _%tl189244189301%_
                                               _%__splice190780190781%_
                                               _%target189247189304%_
                                               _%tl189249189306%_)
                                              (_%__kont190782190783%_))))
                                      (_%__kont190782190783%_))
                                  (_%__kont190782190783%_))))
                          (_%__kont190782190783%_))
                      (_%__kont190782190783%_))
                  (_%__kont190782190783%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190782190783%_))))
                                          (_%__kont190782190783%_))
                                      (_%__kont190782190783%_))))
                          (_%__kont190782190783%_))))
                  (_%__kont190782190783%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx189209%_ _%klass189210%_)
        (let ((_%expr-type189212%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx189209%_))))
          (if _%expr-type189212%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type189212%_ _%klass189210%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx189187%_ _%expr189188%_ _%type189189%_)
        (if (let () (declare (not safe)) (not _%type189189%_))
            (let () '#f)
            (let ((_%$e189192%_
                   (eq? (##structure-ref _%type189189%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e189192%_
                  _%$e189192%_
                  (let ((_%expr-type189196%_
                         (let ()
                           (declare (not safe))
                           (gxc#apply-basic-expression-type _%expr189188%_))))
                    (if (let () (declare (not safe)) (not _%expr-type189196%_))
                        (let () '#f)
                        (if (eq? 't
                                 (##structure-ref
                                  _%expr-type189196%_
                                  '1
                                  gxc#!type::t
                                  '#f))
                            (let () '#f)
                            (let ((_%$e189200%_
                                   (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%expr-type189196%_
                                      'gxc#!abort::t))))
                              (if _%$e189200%_
                                  _%$e189200%_
                                  (let ((_%$e189203%_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!type-subtype?
                                            _%expr-type189196%_
                                            _%type189189%_))))
                                    (if _%$e189203%_
                                        _%$e189203%_
                                        (if (let ()
                                              (declare (not safe))
                                              (gxc#!interface-instance?
                                               _%type189189%_))
                                            (let () '#f)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gxc#!type-subtype?
                                                   _%type189189%_
                                                   _%expr-type189196%_))
                                                (let () '#f)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#raise-compile-error
                                                   '"signature type mismatch"
                                                   _%stx189187%_
                                                   _%expr189188%_
                                                   _%expr-type189196%_
                                                   _%type189189%_))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self189001%_ _%ctx189002%_ _%stx189003%_ _%args189004%_)
        (let ((_%self189007%_ _%self189001%_))
          (let* ((_%klass189017%_
                  (let ((__tmp191138
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189007%_
                            '1
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#optimizer-resolve-class _%stx189003%_ __tmp191138)))
                 (_%fields189019%_
                  (length (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass189017%_
                             '5
                             '#f
                             '#f))))
                 (_%args189025%_
                  (map (lambda (_%g189020189022%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%ctx189002%_ _%g189020189022%_)))
                       _%args189004%_))
                 (_%inline-make-object189027%_
                  (cons '%#begin-annotation
                        (cons (cons '@type
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self189007%_
                                             '1
                                             '#f
                                             '#f))
                                          '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons '##structure '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self189007%_
                             '1
                             '#f
                             '#f))
                          '()))
              (make-list _%fields189019%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
            (let* ((_%klass189030%_ _%klass189017%_)
                   (_%$e189044%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass189030%_ '6 '#f '#f))))
              (if _%$e189044%_
                  ((lambda (_%ctor189047%_)
                     (let ((_%$obj189049%_
                            (let ((__tmp191139
                                   (let ()
                                     (declare (not safe))
                                     (##gensym '__obj))))
                              (declare (not safe))
                              (make-symbol__0 __tmp191139)))
                           (_%ctor-impl189050%_
                            (let ()
                              (declare (not safe))
                              (gxc#!class-lookup-method
                               _%klass189030%_
                               _%ctor189047%_))))
                       (let ((__tmp191140
                              (cons '%#let-values
                                    (cons (cons (cons (cons _%$obj189049%_ '())
                                                      (cons _%inline-make-object189027%_
                                                            '()))
                                                '())
                                          (cons (cons '%#begin
                                                      (cons (if _%ctor-impl189050%_
                                                                (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref
                                          (cons _%ctor-impl189050%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%$obj189049%_ '()))
                                          _%args189025%_)))
                        (let ((_%$ctor189052%_
                               (let ((__tmp191141
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__constructor))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp191141))))
                          (cons '%#let-values
                                (cons (cons (cons (cons _%$ctor189052%_ '())
                                                  (cons (cons '%#call
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons 'direct-method-ref '()))
                            (cons (cons '%#ref
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self189007%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj189049%_ '()))
                                        (cons (cons '%#quote
                                                    (cons _%ctor189047%_ '()))
                                              '())))))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())
                                      (cons (cons '%#if
                                                  (cons (cons '%#ref
                                                              (cons _%$ctor189052%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#call
                            (cons (cons '%#ref (cons _%$ctor189052%_ '()))
                                  (cons (cons '%#ref (cons _%$obj189049%_ '()))
                                        _%args189025%_)))
                      (cons (cons '%#call
                                  (cons (cons '%#ref (cons 'error '()))
                                        (cons (cons '%#quote
                                                    (cons '"missing constructor method implementation"
                                                          '()))
                                              (cons (cons '%#quote
                                                          (cons 'class: '()))
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self189007%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (cons (cons '%#quote (cons 'method: '()))
                        (cons (cons '%#quote (cons _%ctor189047%_ '()))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                    (cons (cons '%#ref (cons _%$obj189049%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191140 _%stx189003%_))))
                   _%$e189044%_)
                  (let ((_%$e189054%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass189030%_
                            '10
                            '#f
                            '#f))))
                    (if _%$e189054%_
                        ((lambda (_%metaclass189057%_)
                           (let* ((_%$obj189059%_
                                   (let ((__tmp191142
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191142)))
                                  (_%metakons189061%_
                                   (let ((__tmp191143
                                          (let ()
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-class
                                             _%stx189003%_
                                             _%metaclass189057%_))))
                                     (declare (not safe))
                                     (gxc#!class-lookup-method
                                      __tmp191143
                                      'instance-init!)))
                                  (__tmp191144
                                   (cons '%#let-values
                                         (cons (cons (cons (cons _%$obj189059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons _%inline-make-object189027%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons (cons '%#begin
                                                           (cons (if _%metakons189061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '%#call
                                   (cons (cons '%#ref
                                               (cons _%metakons189061%_ '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189007%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$obj189059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%args189025%_))))
                             (cons '%#call
                                   (cons (cons '%#ref (cons 'call-method '()))
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self189007%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons 'instance-init!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$obj189059%_ '()))
                   _%args189025%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (cons '%#ref (cons _%$obj189059%_ '())) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp191144
                              _%stx189003%_)))
                         _%$e189054%_)
                        (if (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass189030%_
                               '7
                               '#f
                               '#f))
                            (let ()
                              (if (let ((__tmp191145
                                         (let ()
                                           (declare (not safe))
                                           (##length _%args189025%_))))
                                    (declare (not safe))
                                    (##fx= __tmp191145 _%fields189019%_))
                                  (let ((__tmp191146
                                         (cons '%#begin-annotation
                                               (cons (cons '@type
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self189007%_
                            '1
                            '#f
                            '#f))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons '##structure '()))
                               (cons (cons '%#ref
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self189007%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 '()))
                                     _%args189025%_)))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp191146
                                     _%stx189003%_))
                                  (let ((__tmp191148
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self189007%_
                                            '1
                                            '#f
                                            '#f)))
                                        (__tmp191147
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass189030%_
                                            '5
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"illegal struct constructor application; arity mismatch"
                                     _%stx189003%_
                                     __tmp191148
                                     __tmp191147))))
                            (let ((_%$obj189066%_
                                   (let ((__tmp191149
                                          (let ()
                                            (declare (not safe))
                                            (##gensym '__obj))))
                                     (declare (not safe))
                                     (make-symbol__0 __tmp191149))))
                              (let _%lp189068%_ ((_%rest189070%_
                                                  _%args189025%_)
                                                 (_%initializers189071%_ '()))
                                (let* ((_%__stx190864190865%_ _%rest189070%_)
                                       (_%g189075189096%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx190864190865%_)))))
                                  (let ((_%__kont190866190867%_
                                         (lambda (_%L189150%_
                                                  _%L189151%_
                                                  _%L189152%_)
                                           (let* ((_%slot189179%_
                                                   (let ((__tmp191150
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%L189152%_))))
                                                     (declare (not safe))
                                                     (keyword->symbol
                                                      __tmp191150)))
                                                  (_%off189181%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass189030%_
                                                      _%slot189179%_))))
                                             (if _%off189181%_
                                                 (let ((__tmp191151
                                                        (cons (cons _%off189181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L189151%_)
                      _%initializers189071%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp189068%_
                                                    _%L189150%_
                                                    __tmp191151))
                                                 (let ((__tmp191152
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self189007%_
                                                           '1
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (gxc#raise-compile-error
                                                    '"unknown slot"
                                                    _%stx189003%_
                                                    __tmp191152
                                                    _%slot189179%_))))))
                                        (_%__kont190868190869%_
                                         (lambda ()
                                           (let ((__tmp191153
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj189066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object189027%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (let ((__tmp191156
                                         (cons (cons '%#ref
                                                     (cons _%$obj189066%_ '()))
                                               '()))
                                        (__tmp191154
                                         (let ((__tmp191155
                                                (lambda (_%i189110%_
                                                         _%r189111%_)
                                                  (cons (cons '%#struct-unchecked-set!
                                                              (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self189007%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons (car _%i189110%_) '()))
                                  (cons (cons '%#ref (cons _%$obj189066%_ '()))
                                        (cons (cdr _%i189110%_) '())))))
                _%r189111%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            __tmp191155
                                            '()
                                            _%initializers189071%_))))
                                    (declare (not safe))
                                    (__foldr1 cons __tmp191156 __tmp191154)))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191153
                                              _%stx189003%_))))
                                        (_%__kont190870190871%_
                                         (lambda ()
                                           (let ((__tmp191157
                                                  (cons '%#let-values
                                                        (cons (cons (cons (cons _%$obj189066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '())
                                  (cons _%inline-make-object189027%_ '()))
                            '())
                      (cons (cons '%#begin
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'class-instance-init!
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons _%$obj189066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%args189025%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons '%#ref
                                                    (cons _%$obj189066%_ '()))
                                              '())))
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (gxc#xform-wrap-source
                                              __tmp191157
                                              _%stx189003%_)))))
                                    (let* ((_%g189073189113%_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%__stx190864190865%_))
                                                  (_%__kont190868190869%_)
                                                  (_%__kont190870190871%_))))
                                           (_%__match190901190902%_
                                            (lambda (_%e189082189118%_
                                                     _%hd189081189121%_
                                                     _%tl189080189123%_
                                                     _%e189085189126%_
                                                     _%hd189084189129%_
                                                     _%tl189083189131%_
                                                     _%e189088189134%_
                                                     _%hd189087189137%_
                                                     _%tl189086189139%_
                                                     _%e189091189142%_
                                                     _%hd189090189145%_
                                                     _%tl189089189147%_)
                                              (let ((_%L189150%_
                                                     _%tl189089189147%_)
                                                    (_%L189151%_
                                                     _%hd189090189145%_)
                                                    (_%L189152%_
                                                     _%hd189087189137%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-keyword?
                                                       _%L189152%_))
                                                    (_%__kont190866190867%_
                                                     _%L189150%_
                                                     _%L189151%_
                                                     _%L189152%_)
                                                    (_%__kont190870190871%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%__stx190864190865%_))
                                          (let ((_%e189082189118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%__stx190864190865%_))))
                                            (let ((_%tl189080189123%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e189082189118%_)))
                                                  (_%hd189081189121%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e189082189118%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd189081189121%_))
                                                  (let ((_%e189085189126%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd189081189121%_))))
                                                    (let ((_%tl189083189131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e189085189126%_)))
                                                          (_%hd189084189129%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e189085189126%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd189084189129%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd189084189129%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl189083189131%_))
                          (let ((_%e189088189134%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl189083189131%_))))
                            (let ((_%tl189086189139%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e189088189134%_)))
                                  (_%hd189087189137%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e189088189134%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl189086189139%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl189080189123%_))
                                      (let ((_%e189091189142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl189080189123%_))))
                                        (let ((_%tl189089189147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e189091189142%_)))
                                              (_%hd189090189145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e189091189142%_))))
                                          (_%__match190901190902%_
                                           _%e189082189118%_
                                           _%hd189081189121%_
                                           _%tl189080189123%_
                                           _%e189085189126%_
                                           _%hd189084189129%_
                                           _%tl189083189131%_
                                           _%e189088189134%_
                                           _%hd189087189137%_
                                           _%tl189086189139%_
                                           _%e189091189142%_
                                           _%hd189090189145%_
                                           _%tl189089189147%_)))
                                      (_%__kont190870190871%_))
                                  (_%__kont190870190871%_))))
                          (_%__kont190870190871%_))
                      (_%__kont190870190871%_))
                  (_%__kont190870190871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont190870190871%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g189073189113%_)))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self188784%_ _%ctx188785%_ _%stx188786%_ _%args188787%_)
        (let ((_%self188790%_ _%self188784%_))
          (let* ((_%arguments-ok?188800%_
                  (let ((__method191087
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188790%_ 'check-arguments))))
                    (if __method191087
                        (__method191087
                         _%self188790%_
                         _%ctx188785%_
                         _%stx188786%_
                         _%args188787%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188790%_
                                 'check-arguments)))))
                 (_%g188802188812%_
                  (lambda (_%g188803188809%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188803188809%_))))
                 (_%g188801188876%_
                  (lambda (_%g188803188815%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188803188815%_))
                        (let ((_%e188807188817%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188803188815%_))))
                          (let ((_%hd188806188820%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188807188817%_)))
                                (_%tl188805188822%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188807188817%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl188805188822%_))
                                ((lambda (_%L188825%_)
                                   (let* ((_%klass188838%_
                                           (let ((__tmp191158
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188790%_
                                                     '1
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-class
                                              _%stx188786%_
                                              __tmp191158)))
                                          (_%field188840%_
                                           (let ((__tmp191159
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188790%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (gxc#!class-slot->field-offset
                                              _%klass188838%_
                                              __tmp191159)))
                                          (_%object188842%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%ctx188785%_
                                              _%L188825%_)))
                                          (_%klass188845%_ _%klass188838%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%klass188845%_
                                            '8
                                            '#f
                                            '#f))
                                         (let ((__tmp191160
                                                (cons (if (or _%arguments-ok?188800%_
                                                              (let ((__tmp191161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self188790%_
                                '4
                                '#f
                                '#f))))
                        (declare (not safe))
                        (not __tmp191161)))
                  '%#struct-unchecked-ref
                  '%#struct-direct-ref)
              (cons (cons '%#ref
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188790%_
                                   '1
                                   '#f
                                   '#f))
                                '()))
                    (cons (cons '%#quote (cons _%field188840%_ '()))
                          (cons _%object188842%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp191160
                                            _%stx188786%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%klass188845%_
                                                '7
                                                '#f
                                                '#f))
                                             (let ((__tmp191162
                                                    (cons (if (or _%arguments-ok?188800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp191163
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self188790%_
                                    '4
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (not __tmp191163)))
                      '%#struct-unchecked-ref
                      '%#struct-ref)
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self188790%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons _%field188840%_ '()))
                              (cons _%object188842%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp191162
                                                _%stx188786%_))
                                             (let ((_%$e188864%_
                                                    (let ((__tmp191164
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self188790%_
                                                              '3
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (gxc#!class-slot-find-struct
                                                       _%klass188845%_
                                                       __tmp191164))))
                                               (if _%$e188864%_
                                                   ((lambda (_%klass188867%_)
                                                      (let ((__tmp191165
                                                             (cons (if (or _%arguments-ok?188800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (let ((__tmp191166
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self188790%_
                                             '4
                                             '#f
                                             '#f))))
                                     (declare (not safe))
                                     (not __tmp191166)))
                               '%#struct-unchecked-ref
                               '%#struct-ref)
                           (cons (cons '%#ref
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self188790%_
                                                '1
                                                '#f
                                                '#f))
                                             '()))
                                 (cons (cons '%#quote
                                             (cons _%field188840%_ '()))
                                       (cons _%object188842%_ '()))))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp191165 _%stx188786%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$e188864%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self188790%_
                                                          '4
                                                          '#f
                                                          '#f))
                                                       (let ((__tmp191167
                                                              (let ((_%$obj188873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp191168
                                    (let ()
                                      (declare (not safe))
                                      (##gensym '__obj))))
                               (declare (not safe))
                               (make-symbol__0 __tmp191168))))
                        (cons '%#let-values
                              (cons (cons (cons (cons _%$obj188873%_ '())
                                                (cons _%object188842%_ '()))
                                          '())
                                    (cons (cons '%#if
                                                (cons (cons '%#struct-direct-instance?
                                                            (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%klass188845%_
                                         '1
                                         '#f
                                         '#f))
                                      '()))
                          (cons (cons '%#ref (cons _%$obj188873%_ '())) '())))
              (cons (cons '%#struct-unchecked-ref
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188790%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field188840%_ '()))
                                      (cons (cons '%#ref
                                                  (cons _%$obj188873%_ '()))
                                            '()))))
                    (cons (if _%arguments-ok?188800%_
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj188873%_
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188790%_
                             '3
                             '#f
                             '#f))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'class-slot-ref '()))
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self188790%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons _%$obj188873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self188790%_
                                   '3
                                   '#f
                                   '#f))
                                '()))
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191167 _%stx188786%_))
               (let ((__tmp191169
                      (cons '%#call
                            (cons (cons '%#ref (cons 'unchecked-slot-ref '()))
                                  (cons _%object188842%_
                                        (cons (cons '%#quote
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188790%_
                                                             '3
                                                             '#f
                                                             '#f))
                                                          '()))
                                              '()))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191169 _%stx188786%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%hd188806188820%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g188802188812%_ _%g188803188815%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188802188812%_ _%g188803188815%_))))))
            (declare (not safe))
            (_%g188801188876%_ _%args188787%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self188548%_ _%ctx188549%_ _%stx188550%_ _%args188551%_)
        (let ((_%self188554%_ _%self188548%_))
          (let* ((_%arguments-ok?188564%_
                  (let ((__method191088
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188554%_ 'check-arguments))))
                    (if __method191088
                        (__method191088
                         _%self188554%_
                         _%ctx188549%_
                         _%stx188550%_
                         _%args188551%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188554%_
                                 'check-arguments)))))
                 (_%g188566188580%_
                  (lambda (_%g188567188577%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g188567188577%_))))
                 (_%g188565188659%_
                  (lambda (_%g188567188583%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g188567188583%_))
                        (let ((_%e188572188585%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g188567188583%_))))
                          (let ((_%hd188571188588%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e188572188585%_)))
                                (_%tl188570188590%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e188572188585%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl188570188590%_))
                                (let ((_%e188575188593%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl188570188590%_))))
                                  (let ((_%hd188574188596%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e188575188593%_)))
                                        (_%tl188573188598%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e188575188593%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl188573188598%_))
                                        ((lambda (_%L188601%_ _%L188602%_)
                                           (let* ((_%klass188618%_
                                                   (let ((__tmp191170
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188554%_
                                                             '1
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#optimizer-resolve-class
                                                      _%stx188550%_
                                                      __tmp191170)))
                                                  (_%field188620%_
                                                   (let ((__tmp191171
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%self188554%_
                                                             '3
                                                             '#f
                                                             '#f))))
                                                     (declare (not safe))
                                                     (gxc#!class-slot->field-offset
                                                      _%klass188618%_
                                                      __tmp191171)))
                                                  (_%object188622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx188549%_
                                                      _%L188602%_)))
                                                  (_%value188624%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%ctx188549%_
                                                      _%L188601%_)))
                                                  (_%klass188627%_
                                                   _%klass188618%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%klass188627%_
                                                    '8
                                                    '#f
                                                    '#f))
                                                 (let ((__tmp191172
                                                        (cons (if (or _%arguments-ok?188564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp191173
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self188554%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp191173)))
                          '%#struct-unchecked-set!
                          '%#struct-direct-set!)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188554%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field188620%_ '()))
                                  (cons _%object188622%_
                                        (cons _%value188624%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp191172
                                                    _%stx188550%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%klass188627%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     (let ((__tmp191174
                                                            (cons (if (or _%arguments-ok?188564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp191175
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self188554%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp191175)))
                              '%#struct-unchecked-set!
                              '%#struct-set!)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self188554%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field188620%_ '()))
                                      (cons _%object188622%_
                                            (cons _%value188624%_ '())))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp191174 _%stx188550%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e188647%_
                                                            (let ((__tmp191176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self188554%_
                              '3
                              '#f
                              '#f))))
                      (declare (not safe))
                      (gxc#!class-slot-find-struct
                       _%klass188627%_
                       __tmp191176))))
               (if _%$e188647%_
                   ((lambda (_%klass188650%_)
                      (let ((__tmp191177
                             (cons (if (or _%arguments-ok?188564%_
                                           (let ((__tmp191178
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%self188554%_
                                                     '3
                                                     '#f
                                                     '#f))))
                                             (declare (not safe))
                                             (not __tmp191178)))
                                       '%#struct-unchecked-set!
                                       '%#struct-set!)
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%self188554%_
                                                        '1
                                                        '#f
                                                        '#f))
                                                     '()))
                                         (cons (cons '%#quote
                                                     (cons _%field188620%_
                                                           '()))
                                               (cons _%object188622%_
                                                     (cons _%value188624%_
                                                           '())))))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp191177 _%stx188550%_)))
                    _%$e188647%_)
                   (if (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%self188554%_ '4 '#f '#f))
                       (let ((__tmp191179
                              (let ((_%$obj188656%_
                                     (let ((__tmp191180
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp191180))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj188656%_
                                                              '())
                                                        (cons _%object188622%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass188627%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj188656%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-set!
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self188554%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field188620%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj188656%_
                                                                '()))
                                                    (cons _%value188624%_
                                                          '())))))
                            (cons (if _%arguments-ok?188564%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj188656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self188554%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value188624%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'class-slot-set!
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self188554%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj188656%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self188554%_
                                           '3
                                           '#f
                                           '#f))
                                        '()))
                            (cons _%value188624%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp191179 _%stx188550%_))
                       (let ((__tmp191181
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-set!
                                                      '()))
                                          (cons _%object188622%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188554%_
                             '3
                             '#f
                             '#f))
                          '()))
              (cons _%value188624%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp191181
                          _%stx188550%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd188574188596%_
                                         _%hd188571188588%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g188566188580%_
                                           _%g188567188583%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g188566188580%_ _%g188567188583%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g188566188580%_ _%g188567188583%_))))))
            (declare (not safe))
            (_%g188565188659%_ _%args188551%_)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self188363%_ _%ctx188364%_ _%stx188365%_ _%args188366%_)
        (let ((_%self188369%_ _%self188363%_))
          (let* ((_%self188378188388%_ _%self188369%_)
                 (_%E188380188392%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self188378188388%_
                             '((!lambda _ _ arity dispatch inline))))
                    '#!void))
                 (_%K188381188402%_
                  (lambda (_%inline188395%_ _%dispatch188396%_ _%arity188397%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#!lambda-arity-match?
                           _%self188369%_
                           _%args188366%_))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (gxc#raise-compile-error
                           '"Illegal lambda application; arity mismatch"
                           _%stx188365%_
                           _%arity188397%_)))
                    (if _%inline188395%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose '"inline lambda"))
                          (let ((__tmp191182
                                 (let ((__tmp191183
                                        (_%inline188395%_ _%stx188365%_)))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp191183
                                    _%stx188365%_))))
                            (declare (not safe))
                            (gxc#compile-e__1 _%ctx188364%_ __tmp191182)))
                        (if (and _%dispatch188396%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%dispatch188396%_)))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose
                                 '"dispatch lambda => "
                                 _%dispatch188396%_))
                              (let ((__tmp191184
                                     (let ((__tmp191185
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _%dispatch188396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%args188366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp191185
                                        _%stx188365%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx188364%_ __tmp191184)))
                            (let ()
                              (declare (not safe))
                              (gxc#!procedure::optimize-call
                               _%self188369%_
                               _%ctx188364%_
                               _%stx188365%_
                               _%args188366%_)))))))
            (if '#t
                (let* ((_%e188382188405%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188378188388%_
                           '1
                           '#f
                           '#f)))
                       (_%e188383188408%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188378188388%_
                           '2
                           '#f
                           '#f)))
                       (_%e188384188411%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188378188388%_
                           '3
                           '#f
                           '#f)))
                       (_%arity188414%_ _%e188384188411%_)
                       (_%e188385188416%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188378188388%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch188419%_ _%e188385188416%_)
                       (_%e188386188421%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self188378188388%_
                           '5
                           '#f
                           '#f)))
                       (_%inline188424%_ _%e188386188421%_))
                  (declare (not safe))
                  (_%K188381188402%_
                   _%inline188424%_
                   _%dispatch188419%_
                   _%arity188414%_))
                (let () (declare (not safe)) (_%E188380188392%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self188215%_ _%ctx188216%_ _%stx188217%_ _%args188218%_)
        (let ()
          (let* ((_%self188221%_ _%self188215%_)
                 (_%$e188235%_
                  (let ((__tmp191187
                         (lambda (_%g188230188232%_)
                           (let ()
                             (declare (not safe))
                             (gxc#!lambda-arity-match?
                              _%g188230188232%_
                              _%args188218%_))))
                        (__tmp191186
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self188221%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__find __tmp191187 __tmp191186))))
            (if _%$e188235%_
                ((lambda (_%clause188238%_)
                   (let ((__method191089
                          (let ()
                            (declare (not safe))
                            (__method-ref _%clause188238%_ 'optimize-call))))
                     (if __method191089
                         (__method191089
                          _%clause188238%_
                          _%ctx188216%_
                          _%stx188217%_
                          _%args188218%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%clause188238%_
                                  'optimize-call)))))
                 _%$e188235%_)
                (let ((__tmp191188
                       (map gxc#!lambda-arity
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self188221%_
                               '3
                               '#f
                               '#f)))))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"Illegal case-lambda application; arity mismatch"
                   _%stx188217%_
                   __tmp191188)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self187955%_ _%ctx187956%_ _%stx187957%_ _%args187958%_)
        (let ((_%self187961%_ _%self187955%_))
          (let* ((_%self187970187979%_ _%self187961%_)
                 (_%E187972187983%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self187970187979%_
                             '((!kw-lambda _ _ table dispatch))))
                    '#!void))
                 (_%K187973188074%_
                  (lambda (_%dispatch187986%_ _%table187987%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#symbol-in-local-scope? _%dispatch187986%_))
                        (let* ((_%g187988187998%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type
                                   _%dispatch187986%_)))
                               (_%else187990188006%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"unknown keyword dispatch lambda "
                                     _%dispatch187986%_))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#xform-call%
                                     _%ctx187956%_
                                     _%stx187957%_))))
                               (_%K187992188055%_
                                (lambda (_%main188009%_ _%keys188010%_)
                                  (let ((_g191189_
                                         (let ()
                                           (declare (not safe))
                                           (gxc#!kw-lambda-split-args
                                            _%stx187957%_
                                            _%args187958%_))))
                                    (begin
                                      (let ((_g191190_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g191189_)
                                                   (##vector-length _g191189_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g191190_ 2)))
                                            (error "Context expects 2 values"
                                                   _g191190_)))
                                      (let ((_%pargs188012%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g191189_ 0)))
                                            (_%kwargs188013%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g191189_ 1))))
                                        (begin
                                          (let ()
                                            (declare (not safe))
                                            (gxc#verbose
                                             '"dispatch kw-lambda => "
                                             _%main188009%_))
                                          (if _%table187987%_
                                              (let ((_%xargs188021%_
                                                     (map (lambda (_%key188015%_)
                                                            (let ((_%$e188017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (agetq__0 _%key188015%_ _%kwargs188013%_))))
                      (if _%$e188017%_
                          _%$e188017%_
                          (let () '(%#ref absent-value)))))
                  _%keys188010%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (for-each
                                                 (lambda (_%kw188023%_)
                                                   (if (memq (car _%kw188023%_)
                                                             _%keys188010%_)
                                                       '#!void
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#raise-compile-error
                                                          '"Illegal keyword lambda application; unexpected keyword"
                                                          _%stx187957%_
                                                          _%keys188010%_
                                                          _%kw188023%_))))
                                                 _%kwargs188013%_)
                                                (let ((__tmp191191
                                                       (let ((__tmp191192
                                                              (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons _%main188009%_ '()))
                                  (cons (cons '%#quote (cons '#f '()))
                                        (let ()
                                          (declare (not safe))
                                          (__foldr1
                                           cons
                                           _%pargs188012%_
                                           _%xargs188021%_)))))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp191192 _%stx187957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%ctx187956%_
                                                   __tmp191191)))
                                              (let* ((_%kwt188025%_
                                                      (let ((__tmp191193
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__kwt))))
                (declare (not safe))
                (make-symbol__0 __tmp191193)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwvars188029%_
                                                      (map (lambda (_%_188027%_)
                                                             (let ((__tmp191194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (##gensym '__kw))))
                       (declare (not safe))
                       (make-symbol__0 __tmp191194)))
                   _%kwargs188013%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwbind188034%_
                                                      (map (lambda (_%kw188031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188032%_)
                     (cons (cons _%kwvar188032%_ '())
                           (cons (cdr _%kw188031%_) '())))
                   _%kwargs188013%_
                   _%kwvars188029%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%kwset188039%_
                                                      (map (lambda (_%kw188036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188037%_)
                     (cons '%#call
                           (cons '(%#ref symbolic-table-set!)
                                 (cons (cons '%#ref (cons _%kwt188025%_ '()))
                                       (cons (cons '%#quote
                                                   (cons (car _%kw188036%_)
                                                         '()))
                                             (cons (cons '%#ref
                                                         (cons _%kwvar188037%_
                                                               '()))
                                                   '()))))))
                   _%kwargs188013%_
                   _%kwvars188029%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xkwargs188044%_
                                                      (map (lambda (_%kw188041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%kwvar188042%_)
                     (cons (car _%kw188041%_)
                           (cons '%#ref (cons _%kwvar188042%_ '()))))
                   _%kwargs188013%_
                   _%kwvars188029%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%xargs188052%_
                                                      (map (lambda (_%key188046%_)
                                                             (let ((_%$e188048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (agetq__0 _%key188046%_ _%xkwargs188044%_))))
                       (if _%$e188048%_
                           _%$e188048%_
                           (let () '(%#ref absent-value)))))
                   _%keys188010%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp191195
                                                      (let ((__tmp191196
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%kwbind188034%_
                                 (cons (cons '%#let-values
                                             (cons (cons (cons (cons _%kwt188025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (let ((__tmp191197
                                    (cons '%#call
                                          (cons '(%#ref make-symbolic-table)
                                                (cons (cons '%#quote
                                                            (cons (length _%kwargs188013%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons '(%#quote (length kwvars)) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp191197
                                _%stx187957%_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#begin
                                                               (let ((__tmp191198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (let ((__tmp191199
                                           (cons '%#call
                                                 (cons (cons '%#ref
                                                             (cons _%main188009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons '%#ref (cons _%kwt188025%_ '()))
                     (let ()
                       (declare (not safe))
                       (__foldr1 cons _%pargs188012%_ _%xargs188052%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (gxc#xform-wrap-source
                                       __tmp191199
                                       _%stx187957%_))
                                    '())))
                         (declare (not safe))
                         (__foldr1 cons __tmp191198 _%kwset188039%_)))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp191196 _%stx187957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%ctx187956%_
                                                 __tmp191195))))))))))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%g187988187998%_
                                 'gxc#!kw-lambda-primary::t))
                              (let* ((_%e187993188058%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g187988187998%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e187994188061%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g187988187998%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e187995188064%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g187988187998%_
                                         '3
                                         '#f
                                         '#f)))
                                     (_%keys188067%_ _%e187995188064%_)
                                     (_%e187996188069%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g187988187998%_
                                         '4
                                         '#f
                                         '#f)))
                                     (_%main188072%_ _%e187996188069%_))
                                (declare (not safe))
                                (_%K187992188055%_
                                 _%main188072%_
                                 _%keys188067%_))
                              (let ()
                                (declare (not safe))
                                (_%else187990188006%_))))
                        (let ()
                          (declare (not safe))
                          (gxc#xform-call% _%ctx187956%_ _%stx187957%_))))))
            (if '#t
                (let* ((_%e187974188077%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187970187979%_
                           '1
                           '#f
                           '#f)))
                       (_%e187975188080%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187970187979%_
                           '2
                           '#f
                           '#f)))
                       (_%e187976188083%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187970187979%_
                           '3
                           '#f
                           '#f)))
                       (_%table188086%_ _%e187976188083%_)
                       (_%e187977188088%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187970187979%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch188091%_ _%e187977188088%_))
                  (declare (not safe))
                  (_%K187973188074%_ _%dispatch188091%_ _%table188086%_))
                (let () (declare (not safe)) (_%E187972187983%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx187568%_ _%args187569%_)
        (let _%lp187571%_ ((_%rest187573%_ _%args187569%_)
                           (_%pargs187574%_ '())
                           (_%kwargs187575%_ '()))
          (let* ((_%__stx190906190907%_ _%rest187573%_)
                 (_%g187581187633%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx190906190907%_)))))
            (let ((_%__kont190908190909%_
                   (lambda (_%L187812%_ _%L187813%_)
                     (let ((__tmp191200 (cons _%L187813%_ _%pargs187574%_)))
                       (declare (not safe))
                       (_%lp187571%_
                        _%L187812%_
                        __tmp191200
                        _%kwargs187575%_))))
                  (_%__kont190910190911%_
                   (lambda (_%L187758%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L187758%_ _%pargs187574%_))
                             (reverse _%kwargs187575%_))))
                  (_%__kont190912190913%_
                   (lambda (_%L187705%_ _%L187706%_ _%L187707%_)
                     (let ((_%kw187724%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L187707%_))))
                       (if (assq _%kw187724%_ _%kwargs187575%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx187568%_
                              _%kw187724%_))
                           (let ((__tmp191201
                                  (cons (cons _%kw187724%_ _%L187706%_)
                                        _%kwargs187575%_)))
                             (declare (not safe))
                             (_%lp187571%_
                              _%L187705%_
                              _%pargs187574%_
                              __tmp191201))))))
                  (_%__kont190914190915%_
                   (lambda (_%L187653%_ _%L187654%_)
                     (let ((__tmp191202 (cons _%L187654%_ _%pargs187574%_)))
                       (declare (not safe))
                       (_%lp187571%_
                        _%L187653%_
                        __tmp191202
                        _%kwargs187575%_))))
                  (_%__kont190916190917%_
                   (lambda ()
                     (values (reverse _%pargs187574%_)
                             (reverse _%kwargs187575%_)))))
              (let ((_%__match191013191014%_
                     (lambda (_%e187614187673%_
                              _%hd187613187676%_
                              _%tl187612187678%_
                              _%e187617187681%_
                              _%hd187616187684%_
                              _%tl187615187686%_
                              _%e187620187689%_
                              _%hd187619187692%_
                              _%tl187618187694%_
                              _%e187623187697%_
                              _%hd187622187700%_
                              _%tl187621187702%_)
                       (let ((_%L187705%_ _%tl187621187702%_)
                             (_%L187706%_ _%hd187622187700%_)
                             (_%L187707%_ _%hd187619187692%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L187707%_))
                             (_%__kont190912190913%_
                              _%L187705%_
                              _%L187706%_
                              _%L187707%_)
                             (_%__kont190914190915%_
                              _%tl187612187678%_
                              _%hd187613187676%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx190906190907%_))
                    (let ((_%e187587187777%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx190906190907%_))))
                      (let ((_%tl187585187782%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187587187777%_)))
                            (_%hd187586187780%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187587187777%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd187586187780%_))
                            (let ((_%e187590187785%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd187586187780%_))))
                              (let ((_%tl187588187790%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187590187785%_)))
                                    (_%hd187589187788%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187590187785%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd187589187788%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd187589187788%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl187588187790%_))
                                            (let ((_%e187593187793%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl187588187790%_))))
                                              (let ((_%tl187591187798%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e187593187793%_)))
                                                    (_%hd187592187796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e187593187793%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd187592187796%_))
                                                    (let ((_%e187594187801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd187592187796%_))))
                                                      (if (equal? _%e187594187801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187591187798%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187585187782%_))
                          (let ((_%e187597187804%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187585187782%_))))
                            (let ((_%tl187595187809%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187597187804%_)))
                                  (_%hd187596187807%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187597187804%_))))
                              (_%__kont190908190909%_
                               _%tl187595187809%_
                               _%hd187596187807%_)))
                          (_%__kont190914190915%_
                           _%tl187585187782%_
                           _%hd187586187780%_))
                      (_%__kont190914190915%_
                       _%tl187585187782%_
                       _%hd187586187780%_))
                  (if (equal? _%e187594187801%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187591187798%_))
                          (_%__kont190910190911%_ _%tl187585187782%_)
                          (_%__kont190914190915%_
                           _%tl187585187782%_
                           _%hd187586187780%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl187591187798%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl187585187782%_))
                              (let ((_%e187623187697%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl187585187782%_))))
                                (let ((_%tl187621187702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e187623187697%_)))
                                      (_%hd187622187700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e187623187697%_))))
                                  (_%__match191013191014%_
                                   _%e187587187777%_
                                   _%hd187586187780%_
                                   _%tl187585187782%_
                                   _%e187590187785%_
                                   _%hd187589187788%_
                                   _%tl187588187790%_
                                   _%e187593187793%_
                                   _%hd187592187796%_
                                   _%tl187591187798%_
                                   _%e187623187697%_
                                   _%hd187622187700%_
                                   _%tl187621187702%_)))
                              (_%__kont190914190915%_
                               _%tl187585187782%_
                               _%hd187586187780%_))
                          (_%__kont190914190915%_
                           _%tl187585187782%_
                           _%hd187586187780%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl187591187798%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl187585187782%_))
                                                            (let ((_%e187623187697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl187585187782%_))))
                      (let ((_%tl187621187702%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e187623187697%_)))
                            (_%hd187622187700%_
                             (let ()
                               (declare (not safe))
                               (##car _%e187623187697%_))))
                        (_%__match191013191014%_
                         _%e187587187777%_
                         _%hd187586187780%_
                         _%tl187585187782%_
                         _%e187590187785%_
                         _%hd187589187788%_
                         _%tl187588187790%_
                         _%e187593187793%_
                         _%hd187592187796%_
                         _%tl187591187798%_
                         _%e187623187697%_
                         _%hd187622187700%_
                         _%tl187621187702%_)))
                    (_%__kont190914190915%_
                     _%tl187585187782%_
                     _%hd187586187780%_))
                (_%__kont190914190915%_
                 _%tl187585187782%_
                 _%hd187586187780%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont190914190915%_
                                             _%tl187585187782%_
                                             _%hd187586187780%_))
                                        (_%__kont190914190915%_
                                         _%tl187585187782%_
                                         _%hd187586187780%_))
                                    (_%__kont190914190915%_
                                     _%tl187585187782%_
                                     _%hd187586187780%_))))
                            (_%__kont190914190915%_
                             _%tl187585187782%_
                             _%hd187586187780%_))))
                    (_%__kont190916190917%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self187552%_ _%ctx187553%_ _%stx187554%_ _%args187555%_)
        (let ((_%self187558%_ _%self187552%_))
          (declare (not safe))
          (gxc#xform-call% _%ctx187553%_ _%stx187554%_))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self187240%_ _%stx187241%_)
        (let* ((_%__stx191022191023%_ _%stx187241%_)
               (_%g187244187284%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx191022191023%_)))))
          (let ((_%__kont191024191025%_
                 (lambda (_%L187390%_ _%L187391%_)
                   (let ((_%$e187418%_
                          (member 'return:
                                  (let ((__tmp191203
                                         (lambda (_%g187410187413%_
                                                  _%g187411187415%_)
                                           (cons _%g187410187413%_
                                                 _%g187411187415%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp191203 '() _%L187391%_))
                                  gx#stx-eq?)))
                     (if _%$e187418%_
                         ((lambda (_%tail187421%_)
                            (let ((_%type187423%_
                                   (let ((__tmp191204
                                          (let ((__tmp191205
                                                 (cadr _%tail187421%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp191205))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx187241%_
                                      __tmp191204))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx187241%_
                                 _%L187390%_
                                 _%type187423%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self187240%_
                                 _%L187390%_))))
                          _%$e187418%_)
                         (let ()
                           (declare (not safe))
                           (gxc#compile-e__1 _%self187240%_ _%L187390%_))))))
                (_%__kont191028191029%_
                 (lambda (_%L187313%_ _%L187314%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self187240%_ _%L187313%_)))))
            (let ((_%__match191059191060%_
                   (lambda (_%e187250187334%_
                            _%hd187249187337%_
                            _%tl187248187339%_
                            _%e187253187342%_
                            _%hd187252187345%_
                            _%tl187251187347%_
                            _%e187256187350%_
                            _%hd187255187353%_
                            _%tl187254187355%_
                            _%__splice191026191027%_
                            _%target187257187358%_
                            _%tl187259187360%_)
                     (letrec ((_%loop187260187363%_
                               (lambda (_%hd187258187366%_
                                        _%signature187264187368%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187258187366%_))
                                     (let ((_%e187261187371%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187258187366%_))))
                                       (let ((_%lp-tl187263187376%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187261187371%_)))
                                             (_%lp-hd187262187374%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187261187371%_))))
                                         (let ((__tmp191206
                                                (cons _%lp-hd187262187374%_
                                                      _%signature187264187368%_)))
                                           (declare (not safe))
                                           (_%loop187260187363%_
                                            _%lp-tl187263187376%_
                                            __tmp191206))))
                                     (let ((_%signature187265187379%_
                                            (reverse _%signature187264187368%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl187251187347%_))
                                           (let ((_%e187268187382%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl187251187347%_))))
                                             (let ((_%tl187266187387%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e187268187382%_)))
                                                   (_%hd187267187385%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e187268187382%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl187266187387%_))
                                                   (_%__kont191024191025%_
                                                    _%hd187267187385%_
                                                    _%signature187265187379%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g187244187284%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g187244187284%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop187260187363%_ _%target187257187358%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx191022191023%_))
                  (let ((_%e187250187334%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx191022191023%_))))
                    (let ((_%tl187248187339%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187250187334%_)))
                          (_%hd187249187337%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187250187334%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187248187339%_))
                          (let ((_%e187253187342%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187248187339%_))))
                            (let ((_%tl187251187347%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187253187342%_)))
                                  (_%hd187252187345%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187253187342%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd187252187345%_))
                                  (let ((_%e187256187350%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd187252187345%_))))
                                    (let ((_%tl187254187355%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187256187350%_)))
                                          (_%hd187255187353%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187256187350%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd187255187353%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd187255187353%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl187254187355%_))
                                                  (let ((_%__splice191026191027%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl187254187355%_
                                                            '0))))
                                                    (let ((_%tl187259187360%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191026191027%_
                                                              '1)))
                                                          (_%target187257187358%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice191026191027%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187259187360%_))
                                                          (_%__match191059191060%_
                                                           _%e187250187334%_
                                                           _%hd187249187337%_
                                                           _%tl187248187339%_
                                                           _%e187253187342%_
                                                           _%hd187252187345%_
                                                           _%tl187251187347%_
                                                           _%e187256187350%_
                                                           _%hd187255187353%_
                                                           _%tl187254187355%_
                                                           _%__splice191026191027%_
                                                           _%target187257187358%_
                                                           _%tl187259187360%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl187251187347%_))
                      (let ((_%e187279187305%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl187251187347%_))))
                        (let ((_%tl187277187310%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e187279187305%_)))
                              (_%hd187278187308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e187279187305%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl187277187310%_))
                              (_%__kont191028191029%_
                               _%hd187278187308%_
                               _%hd187252187345%_)
                              (let ()
                                (declare (not safe))
                                (_%g187244187284%_)))))
                      (let () (declare (not safe)) (_%g187244187284%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl187251187347%_))
                                                      (let ((_%e187279187305%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl187251187347%_))))
                (let ((_%tl187277187310%_
                       (let () (declare (not safe)) (##cdr _%e187279187305%_)))
                      (_%hd187278187308%_
                       (let ()
                         (declare (not safe))
                         (##car _%e187279187305%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl187277187310%_))
                      (_%__kont191028191029%_
                       _%hd187278187308%_
                       _%hd187252187345%_)
                      (let () (declare (not safe)) (_%g187244187284%_)))))
              (let () (declare (not safe)) (_%g187244187284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl187251187347%_))
                                                  (let ((_%e187279187305%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl187251187347%_))))
                                                    (let ((_%tl187277187310%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187279187305%_)))
                                                          (_%hd187278187308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187279187305%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl187277187310%_))
                                                          (_%__kont191028191029%_
                                                           _%hd187278187308%_
                                                           _%hd187252187345%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g187244187284%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g187244187284%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187251187347%_))
                                              (let ((_%e187279187305%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187251187347%_))))
                                                (let ((_%tl187277187310%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187279187305%_)))
                                                      (_%hd187278187308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187279187305%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl187277187310%_))
                                                      (_%__kont191028191029%_
                                                       _%hd187278187308%_
                                                       _%hd187252187345%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g187244187284%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g187244187284%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187251187347%_))
                                      (let ((_%e187279187305%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187251187347%_))))
                                        (let ((_%tl187277187310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187279187305%_)))
                                              (_%hd187278187308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187279187305%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187277187310%_))
                                              (_%__kont191028191029%_
                                               _%hd187278187308%_
                                               _%hd187252187345%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g187244187284%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g187244187284%_))))))
                          (let () (declare (not safe)) (_%g187244187284%_)))))
                  (let () (declare (not safe)) (_%g187244187284%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx187218%_ _%expr187219%_ _%type187220%_)
        (let ((_%$e187222%_
               (let () (declare (not safe)) (not _%type187220%_))))
          (if _%$e187222%_
              _%$e187222%_
              (let ((_%$e187225%_
                     (eq? (##structure-ref _%type187220%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e187225%_
                    _%$e187225%_
                    (let ((_%expr-type187229%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr187219%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type187229%_))
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot verify procedure return type; no type information"
                             _%stx187218%_
                             _%type187220%_))
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type187229%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; unspecific type"
                                 _%stx187218%_
                                 _%type187220%_
                                 _%expr-type187229%_))
                              (let ((_%$e187233%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type187229%_
                                        'gxc#!abort::t))))
                                (if _%$e187233%_
                                    _%$e187233%_
                                    (let ((_%$e187236%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type187229%_
                                              _%type187220%_))))
                                      (if _%$e187236%_
                                          _%$e187236%_
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"procedure return type does not match signature"
                                             _%stx187218%_
                                             _%type187220%_
                                             _%expr-type187229%_)))))))))))))))))
