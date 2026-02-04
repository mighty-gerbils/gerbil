(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1770243154)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp200183 (list gxc#::identity::t))
            (__tmp200182 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp200183
         '()
         __tmp200182
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args198980%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args198980%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp200184
             (lambda ()
               (force gxc#::identity-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#begin-syntax
                  gxc#xform-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#module
                  gxc#xform-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#define-values
                  gxc#generate-method-specializers-define-values%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-method-specializers::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp200184)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx198972%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self198975%_
                (let ((__obj200175
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj200175))
               (__tmp200185
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self198975%_ _%stx198972%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp200185
           gxc#current-compile-method
           _%self198975%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp200187 (list gxc#::false::t))
            (__tmp200186 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp200187
         '()
         __tmp200186
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args198969%_
        (apply make-instance gxc#::extract-receiver::t _%$args198969%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp200188
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#begin
                  gxc#apply-last-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#begin-annotation
                  gxc#extract-receiver-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#let-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#letrec-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#letrec*-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#if
                  gxc#extract-receiver-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::extract-receiver::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp200188)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx198961%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self198964%_
                (let ((__obj200177
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj200177))
               (__tmp200189
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self198964%_ _%stx198961%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp200189
           gxc#current-compile-method
           _%self198964%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp200191 (list gxc#::void::t))
            (__tmp200190 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp200191
         '(receiver methods slots)
         __tmp200190
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args198958%_
        (apply make-instance gxc#::collect-object-refs::t _%$args198958%_)))
    (define gxc#::collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'receiver)))
    (define gxc#::collect-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'methods)))
    (define gxc#::collect-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'slots)))
    (define gxc#::collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'receiver)))
    (define gxc#::collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'methods)))
    (define gxc#::collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'slots)))
    (define gxc#&::collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'receiver)))
    (define gxc#&::collect-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'methods)))
    (define gxc#&::collect-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'slots)))
    (define gxc#&::collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'receiver)))
    (define gxc#&::collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'methods)))
    (define gxc#&::collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'slots)))
    (define gxc#::collect-object-refs-bind-methods!
      (let ((__tmp200192
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#call
                  gxc#collect-object-refs-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-direct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-direct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-unchecked-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-unchecked-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-object-refs::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp200192)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords198927%_
               _%receiver198922198928%_
               _%methods198923198929%_
               _%slots198924198930%_
               _%stx198931%_)
        (let* ((_%receiver198934%_
                (if (eq? _%receiver198922198928%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver198922198928%_))
               (_%methods198936%_
                (if (eq? _%methods198923198929%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods198923198929%_))
               (_%slots198938%_
                (if (eq? _%slots198924198930%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots198924198930%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self198940%_
                  (let ((__obj200179
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-object-refs::t
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj200179
                       _%receiver198934%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj200179
                       _%methods198936%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj200179
                       _%slots198938%_
                       '3
                       '#f
                       '#f))
                    __obj200179))
                 (__tmp200193
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self198940%_ _%stx198931%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp200193
             gxc#current-compile-method
             _%self198940%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords198947%_ . _%args198948%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords198947%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198947%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198947%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198947%_
                  'slots:
                  absent-value))
               _%args198948%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args198925198954%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args198925198954%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp200195 (list gxc#::basic-xform-expression::t))
            (__tmp200194 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp200195
         '(receiver klass methods slots)
         __tmp200194
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args198918%_
        (apply make-instance gxc#::subst-object-refs::t _%$args198918%_)))
    (define gxc#::subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'receiver)))
    (define gxc#::subst-object-refs-klass
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'klass)))
    (define gxc#::subst-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'methods)))
    (define gxc#::subst-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'slots)))
    (define gxc#::subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'receiver)))
    (define gxc#::subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'klass)))
    (define gxc#::subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'methods)))
    (define gxc#::subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'slots)))
    (define gxc#&::subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'receiver)))
    (define gxc#&::subst-object-refs-klass
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'klass)))
    (define gxc#&::subst-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'methods)))
    (define gxc#&::subst-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'slots)))
    (define gxc#&::subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'receiver)))
    (define gxc#&::subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'klass)))
    (define gxc#&::subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'methods)))
    (define gxc#&::subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'slots)))
    (define gxc#::subst-object-refs-bind-methods!
      (let ((__tmp200196
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::subst-object-refs::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::subst-object-refs::t
                  '%#call
                  gxc#subst-object-refs-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::subst-object-refs::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp200196)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords198884%_
               _%receiver198878198885%_
               _%klass198879198886%_
               _%methods198880198887%_
               _%slots198881198888%_
               _%stx198889%_)
        (let* ((_%receiver198892%_
                (if (eq? _%receiver198878198885%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver198878198885%_))
               (_%klass198894%_
                (if (eq? _%klass198879198886%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass198879198886%_))
               (_%methods198896%_
                (if (eq? _%methods198880198887%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods198880198887%_))
               (_%slots198898%_
                (if (eq? _%slots198881198888%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots198881198888%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self198900%_
                  (let ((__obj200181
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::subst-object-refs::t
                            '#f
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj200181
                       _%receiver198892%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj200181
                       _%klass198894%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj200181
                       _%methods198896%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj200181
                       _%slots198898%_
                       '4
                       '#f
                       '#f))
                    __obj200181))
                 (__tmp200197
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self198900%_ _%stx198889%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp200197
             gxc#current-compile-method
             _%self198900%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords198907%_ . _%args198908%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords198907%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198907%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198907%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198907%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198907%_
                  'slots:
                  absent-value))
               _%args198908%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args198882198914%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args198882198914%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self196009%_ _%stx196010%_)
        (letrec ((_%generate-method-bind196012%_
                  (lambda (_%$klass198870%_
                           _%$method-table198871%_
                           _%id198872%_
                           _%$id198873%_)
                    (let ((_%$tmp198875%_
                           (let ((__tmp200198
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp200198))))
                      (cons (cons _%$id198873%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp198875%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table198871%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id198872%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp198875%_ '()))
                    (cons (cons '%#ref (cons _%$tmp198875%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id198872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-slot-bind196013%_
                  (lambda (_%$klass198864%_ _%id198865%_ _%$id198866%_)
                    (let ((_%$tmp198868%_
                           (let ((__tmp200199
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp200199))))
                      (cons (cons _%$id198866%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp198868%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass198864%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id198865%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp198868%_ '()))
                        (cons (cons '%#ref (cons _%$tmp198868%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id198865%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl196014%_
                  (lambda (_%$klass198858%_
                           _%$method-table198859%_
                           _%methods-bind198860%_
                           _%slots-bind198861%_
                           _%specializer-impl198862%_)
                    (let ((__tmp200200
                           (cons '%#lambda
                                 (cons (cons _%$klass198858%_
                                             (cons _%$method-table198859%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind198861%_
                                                            _%methods-bind198860%_))
                                                         (cons _%specializer-impl198862%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp200200 _%stx196010%_))))
                 (_%generate-specializer-def196015%_
                  (lambda (_%id198854%_
                           _%specializer-id198855%_
                           _%specializer-impl198856%_)
                    (let ((__tmp200201
                           (cons '%#begin
                                 (cons _%stx196010%_
                                       (cons (let ((__tmp200202
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id198855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl198856%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp200202
                                                _%stx196010%_))
                                             (cons (let ((__tmp200203
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id198854%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id198855%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp200203
                                                      _%stx196010%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp200201 _%stx196010%_)))))
          (let* ((_%__stx199069199070%_ _%stx196010%_)
                 (_%g196018196038%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx199069199070%_)))))
            (let ((_%__kont199071199072%_
                   (lambda (_%g196020196082%_ _%g196021196083%_)
                     (let ((_%method-calls196102%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs196103%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty196104%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?196106%_
                                 (lambda ()
                                   (if (let ((__tmp200204
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls196102%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp200204))
                                       (let ((__tmp200205
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs196103%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp200205))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%g196020196082%_))
                             (let* ((_%__stx198983198984%_ _%g196020196082%_)
                                    (_%g196490196508%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx198983198984%_)))))
                               (let ((_%__kont198985198986%_
                                      (lambda (_%g196492196544%_
                                               _%g196493196545%_
                                               _%g196494196546%_)
                                        (let ((_%receiver196566%_
                                               (let ((_%$e196563%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%g196492196544%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e196563%_
                                                     _%$e196563%_
                                                     _%g196494196546%_))))
                                          (for-each
                                           (lambda (_%g196567196569%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver196566%_
                                              _%method-calls196102%_
                                              _%slot-refs196103%_
                                              _%g196567196569%_))
                                           _%g196492196544%_)
                                          (if (_%no-specializer?196106%_)
                                              _%stx196010%_
                                              (let* ((_%specializer-id196578%_
                                                      (let* ((_%id196572%_
                                                              (let ((__tmp200206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196021196083%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp200206 '"::specialize")))
                     (_%specializer-id196575%_
                      (let ((__tmp200207
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx196010%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id196572%_ __tmp200207))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id196575%_))
                _%specializer-id196575%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass196580%_
                                                      (let ((__tmp200208
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp200208)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table196582%_
                                                      (let ((__tmp200209
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp200209)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods196584%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls196102%_)))
                                                     (_%$methods196588%_
                                                      (let ((__tmp200210
                                                             (lambda (_%id196586%_)
                                                               (let ((__tmp200211
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id196586%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp200211)))))
                (declare (not safe))
                (##map __tmp200210 _%methods196584%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_196597%_
                                                      (let ((__tmp200212
                                                             (lambda (_%g196589196592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g196590196594%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls196102%_
                          _%g196589196592%_
                          _%g196590196594%_)))))
                (declare (not safe))
                (##for-each __tmp200212 _%methods196584%_ _%$methods196588%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind196607%_
                                                      (let ((__tmp200213
                                                             (lambda (_%g196599196602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g196600196604%_)
                       (_%generate-method-bind196012%_
                        _%$klass196580%_
                        _%$method-table196582%_
                        _%g196599196602%_
                        _%g196600196604%_))))
                (declare (not safe))
                (##map __tmp200213 _%methods196584%_ _%$methods196588%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots196609%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs196103%_)))
                                                     (_%$slots196613%_
                                                      (let ((__tmp200214
                                                             (lambda (_%id196611%_)
                                                               (let ((__tmp200215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id196611%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp200215)))))
                (declare (not safe))
                (##map __tmp200214 _%slots196609%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_196622%_
                                                      (let ((__tmp200216
                                                             (lambda (_%g196614196617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g196615196619%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs196103%_
                          _%g196614196617%_
                          _%g196615196619%_)))))
                (declare (not safe))
                (##for-each __tmp200216 _%slots196609%_ _%$slots196613%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind196631%_
                                                      (let ((__tmp200217
                                                             (lambda (_%g196623196626%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g196624196628%_)
                       (_%generate-slot-bind196013%_
                        _%$klass196580%_
                        _%g196623196626%_
                        _%g196624196628%_))))
                (declare (not safe))
                (##map __tmp200217 _%slots196609%_ _%$slots196613%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body196637%_
                                                      (map (lambda (_%g196632196634%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver196566%_
                                                              _%$klass196580%_
                                                              _%method-calls196102%_
                                                              _%slot-refs196103%_
                                                              _%g196632196634%_))
                                                           _%g196492196544%_))
                                                     (_%specializer-impl196639%_
                                                      (let ((__tmp200218
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%g196494196546%_ _%g196493196545%_)
                                 _%specializer-body196637%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp200218 _%stx196010%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl196641%_
                                                      (_%generate-specializer-impl196014%_
                                                       _%$klass196580%_
                                                       _%$method-table196582%_
                                                       _%methods-bind196607%_
                                                       _%slots-bind196631%_
                                                       _%specializer-impl196639%_)))
                                                (let ((__tmp200220
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g196021196083%_)))
                                                      (__tmp200219
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id196578%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp200220
                                                   '" => "
                                                   __tmp200219))
                                                (_%generate-specializer-def196015%_
                                                 _%g196021196083%_
                                                 _%specializer-id196578%_
                                                 _%specializer-impl196641%_))))))
                                     (_%__kont198987198988%_
                                      (lambda () _%stx196010%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx198983198984%_))
                                     (let ((_%e196495196520%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx198983198984%_))))
                                       (let ((_%tl196497196525%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e196495196520%_)))
                                             (_%hd196496196523%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e196495196520%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl196497196525%_))
                                             (let ((_%e196498196528%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl196497196525%_))))
                                               (let ((_%tl196500196533%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e196498196528%_)))
                                                     (_%hd196499196531%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e196498196528%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd196499196531%_))
                                                     (let ((_%e196501196536%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd196499196531%_))))
                                                       (let ((_%tl196503196541%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e196501196536%_)))
                     (_%hd196502196539%_
                      (let () (declare (not safe)) (##car _%e196501196536%_))))
                 (_%__kont198985198986%_
                  _%tl196500196533%_
                  _%tl196503196541%_
                  _%hd196502196539%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont198987198988%_))))
                                             (_%__kont198987198988%_))))
                                     (_%__kont198987198988%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%g196020196082%_))
                                 (let* ((_%g196648196667%_
                                         (lambda (_%g196649196664%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g196649196664%_))))
                                        (_%g196647196963%_
                                         (lambda (_%g196649196670%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g196649196670%_))
                                               (let ((_%e196651196672%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g196649196670%_))))
                                                 (let ((_%hd196652196675%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e196651196672%_)))
                                                       (_%tl196653196677%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e196651196672%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl196653196677%_))
                                                       (let ((_g200221_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl196653196677%_ '0))))
                 (begin
                   (let ((_g200222_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g200221_)
                                (##values-length _g200221_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g200222_ 2)))
                         (error "Context expects 2 values" _g200222_)))
                   (let ((_%target196654196680%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g200221_ 0)))
                         (_%tl196656196682%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g200221_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl196656196682%_))
                         (letrec ((_%loop196657196685%_
                                   (lambda (_%hd196655196688%_
                                            _%clause196661196690%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd196655196688%_))
                                         (let ((_%e196658196692%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd196655196688%_))))
                                           (let ((_%lp-hd196659196695%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196658196692%_)))
                                                 (_%lp-tl196660196697%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196658196692%_))))
                                             (_%loop196657196685%_
                                              _%lp-tl196660196697%_
                                              (cons _%lp-hd196659196695%_
                                                    _%clause196661196690%_))))
                                         (let ((_%clause196662196700%_
                                                (reverse _%clause196661196690%_)))
                                           ((lambda (_%g196650196702%_)
                                              (for-each
                                               (lambda (_%clause196716%_)
                                                 (let* ((_%__stx199009199010%_
                                                         _%clause196716%_)
                                                        (_%g196719196734%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx199009199010%_)))))
                                                   (let ((_%__kont199011199012%_
                                                          (lambda (_%g196721196762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g196722196763%_
                           _%g196723196764%_)
                    (let ((_%receiver196783%_
                           (let ((_%$e196780%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%g196721196762%_))))
                             (if _%$e196780%_
                                 _%$e196780%_
                                 _%g196723196764%_))))
                      (for-each
                       (lambda (_%g196784196786%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver196783%_
                          _%method-calls196102%_
                          _%slot-refs196103%_
                          _%g196784196786%_))
                       _%g196721196762%_))))
                 (_%__kont199013199014%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx199009199010%_))
                                                         (let ((_%e196724196746%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx199009199010%_))))
                   (let ((_%tl196726196751%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e196724196746%_)))
                         (_%hd196725196749%_
                          (let ()
                            (declare (not safe))
                            (##car _%e196724196746%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd196725196749%_))
                         (let ((_%e196727196754%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd196725196749%_))))
                           (let ((_%tl196729196759%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e196727196754%_)))
                                 (_%hd196728196757%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e196727196754%_))))
                             (_%__kont199011199012%_
                              _%tl196726196751%_
                              _%tl196729196759%_
                              _%hd196728196757%_)))
                         (_%__kont199013199014%_))))
                 (_%__kont199013199014%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp200223
                                                      (lambda (_%g196791196794%_
                                                               _%g196792196796%_)
                                                        (cons _%g196791196794%_
                                                              _%g196792196796%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp200223
                                                  '()
                                                  _%g196650196702%_)))
                                              (if (_%no-specializer?196106%_)
                                                  _%stx196010%_
                                                  (let* ((_%specializer-id196805%_
                                                          (let* ((_%id196799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp200224
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g196021196083%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp200224 '"::specialize")))
                         (_%specializer-id196802%_
                          (let ((__tmp200225
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx196010%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id196799%_
                             __tmp200225))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id196802%_))
                    _%specializer-id196802%_))
                 (_%$klass196807%_
                  (let ((__tmp200226
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp200226)))
                 (_%$method-table196809%_
                  (let ((__tmp200227
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp200227)))
                 (_%methods196811%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls196102%_)))
                 (_%$methods196815%_
                  (let ((__tmp200228
                         (lambda (_%id196813%_)
                           (let ((__tmp200229 (gensym _%id196813%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp200229)))))
                    (declare (not safe))
                    (##map __tmp200228 _%methods196811%_)))
                 (_%_196824%_
                  (let ((__tmp200230
                         (lambda (_%g196816196819%_ _%g196817196821%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls196102%_
                              _%g196816196819%_
                              _%g196817196821%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp200230
                     _%methods196811%_
                     _%$methods196815%_)))
                 (_%methods-bind196834%_
                  (let ((__tmp200231
                         (lambda (_%g196826196829%_ _%g196827196831%_)
                           (_%generate-method-bind196012%_
                            _%$klass196807%_
                            _%$method-table196809%_
                            _%g196826196829%_
                            _%g196827196831%_))))
                    (declare (not safe))
                    (##map __tmp200231 _%methods196811%_ _%$methods196815%_)))
                 (_%slots196836%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs196103%_)))
                 (_%$slots196840%_
                  (let ((__tmp200232
                         (lambda (_%id196838%_)
                           (let ((__tmp200233 (gensym _%id196838%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp200233)))))
                    (declare (not safe))
                    (##map __tmp200232 _%slots196836%_)))
                 (_%_196849%_
                  (let ((__tmp200234
                         (lambda (_%g196841196844%_ _%g196842196846%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs196103%_
                              _%g196841196844%_
                              _%g196842196846%_)))))
                    (declare (not safe))
                    (##for-each __tmp200234 _%slots196836%_ _%$slots196840%_)))
                 (_%slots-bind196858%_
                  (let ((__tmp200235
                         (lambda (_%g196850196853%_ _%g196851196855%_)
                           (_%generate-slot-bind196013%_
                            _%$klass196807%_
                            _%g196850196853%_
                            _%g196851196855%_))))
                    (declare (not safe))
                    (##map __tmp200235 _%slots196836%_ _%$slots196840%_)))
                 (_%specializer-clauses196956%_
                  (map (lambda (_%clause196860%_)
                         (let* ((_%__stx199029199030%_ _%clause196860%_)
                                (_%g196863196878%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx199029199030%_)))))
                           (let ((_%__kont199031199032%_
                                  (lambda (_%g196865196906%_
                                           _%g196866196907%_
                                           _%g196867196908%_)
                                    (let* ((_%receiver196937%_
                                            (let ((_%$e196934%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%g196865196906%_))))
                                              (if _%$e196934%_
                                                  _%$e196934%_
                                                  _%g196867196908%_)))
                                           (_%body196943%_
                                            (map (lambda (_%g196938196940%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver196937%_
                                                    _%$klass196807%_
                                                    _%method-calls196102%_
                                                    _%slot-refs196103%_
                                                    _%g196938196940%_))
                                                 _%g196865196906%_)))
                                      (cons (cons _%g196867196908%_
                                                  _%g196866196907%_)
                                            _%body196943%_))))
                                 (_%__kont199033199034%_
                                  (lambda () _%clause196860%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx199029199030%_))
                                 (let ((_%e196868196890%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx199029199030%_))))
                                   (let ((_%tl196870196895%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e196868196890%_)))
                                         (_%hd196869196893%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e196868196890%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd196869196893%_))
                                         (let ((_%e196871196898%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd196869196893%_))))
                                           (let ((_%tl196873196903%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e196871196898%_)))
                                                 (_%hd196872196901%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e196871196898%_))))
                                             (_%__kont199031199032%_
                                              _%tl196870196895%_
                                              _%tl196873196903%_
                                              _%hd196872196901%_)))
                                         (_%__kont199033199034%_))))
                                 (_%__kont199033199034%_)))))
                       (let ((__tmp200236
                              (lambda (_%g196948196951%_ _%g196949196953%_)
                                (cons _%g196948196951%_ _%g196949196953%_))))
                         (declare (not safe))
                         (__foldr1 __tmp200236 '() _%g196650196702%_))))
                 (_%specializer-impl196958%_
                  (let ((__tmp200237
                         (cons '%#case-lambda _%specializer-clauses196956%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp200237 _%stx196010%_)))
                 (_%specializer-impl196960%_
                  (_%generate-specializer-impl196014%_
                   _%$klass196807%_
                   _%$method-table196809%_
                   _%methods-bind196834%_
                   _%slots-bind196858%_
                   _%specializer-impl196958%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp200239
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g196021196083%_)))
                                                          (__tmp200238
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id196805%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp200239
                                                       '" => "
                                                       __tmp200238))
                                                    (_%generate-specializer-def196015%_
                                                     _%g196021196083%_
                                                     _%specializer-id196805%_
                                                     _%specializer-impl196960%_))))
                                            _%clause196662196700%_))))))
                           (_%loop196657196685%_ _%target196654196680%_ '()))
                         (_%g196648196667%_ _%g196649196670%_)))))
               (_%g196648196667%_ _%g196649196670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g196648196667%_
                                                _%g196649196670%_)))))
                                   (_%g196647196963%_ _%g196020196082%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%g196020196082%_))
                                     (let* ((_%g196967196997%_
                                             (lambda (_%g196968196994%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g196968196994%_))))
                                            (_%g196966197624%_
                                             (lambda (_%g196968197000%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g196968197000%_))
                                                   (let ((_%e196972197002%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g196968197000%_))))
                                                     (let ((_%hd196973197005%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e196972197002%_)))
                                                           (_%tl196974197007%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e196972197002%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl196974197007%_))
                                                           (let ((_%e196975197010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl196974197007%_))))
                     (let ((_%hd196976197013%_
                            (let ()
                              (declare (not safe))
                              (##car _%e196975197010%_)))
                           (_%tl196977197015%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e196975197010%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd196976197013%_))
                           (let ((_%e196978197018%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd196976197013%_))))
                             (let ((_%hd196979197021%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e196978197018%_)))
                                   (_%tl196980197023%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e196978197018%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd196979197021%_))
                                   (let ((_%e196981197026%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd196979197021%_))))
                                     (let ((_%hd196982197029%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e196981197026%_)))
                                           (_%tl196983197031%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e196981197026%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd196982197029%_))
                                           (let ((_%e196984197034%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd196982197029%_))))
                                             (let ((_%hd196985197037%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e196984197034%_)))
                                                   (_%tl196986197039%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e196984197034%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl196986197039%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl196983197031%_))
                                                       (let ((_%e196987197042%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl196983197031%_))))
                 (let ((_%hd196988197045%_
                        (let ()
                          (declare (not safe))
                          (##car _%e196987197042%_)))
                       (_%tl196989197047%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e196987197042%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl196989197047%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl196980197023%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl196977197015%_))
                               (let ((_%e196990197050%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl196977197015%_))))
                                 (let ((_%hd196991197053%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e196990197050%_)))
                                       (_%tl196992197055%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e196990197050%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl196992197055%_))
                                       ((lambda (_%g196969197058%_
                                                 _%g196970197059%_
                                                 _%g196971197060%_)
                                          (let* ((_%g197084197102%_
                                                  (lambda (_%g197085197099%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g197085197099%_))))
                                                 (_%g197083197158%_
                                                  (lambda (_%g197085197105%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g197085197105%_))
                                                        (let ((_%e197089197107%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g197085197105%_))))
                  (let ((_%hd197090197110%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197089197107%_)))
                        (_%tl197091197112%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197089197107%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197091197112%_))
                        (let ((_%e197092197115%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197091197112%_))))
                          (let ((_%hd197093197118%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197092197115%_)))
                                (_%tl197094197120%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197092197115%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197093197118%_))
                                (let ((_%e197095197123%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197093197118%_))))
                                  (let ((_%hd197096197126%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197095197123%_)))
                                        (_%tl197097197128%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197095197123%_))))
                                    ((lambda (_%g197086197131%_
                                              _%g197087197132%_
                                              _%g197088197133%_)
                                       (let ((_%receiver197152%_
                                              (let ((_%$e197149%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%g197086197131%_))))
                                                (if _%$e197149%_
                                                    _%$e197149%_
                                                    _%g197088197133%_))))
                                         (for-each
                                          (lambda (_%g197153197155%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver197152%_
                                             _%method-calls196102%_
                                             _%slot-refs196103%_
                                             _%g197153197155%_))
                                          _%g197086197131%_)))
                                     _%tl197094197120%_
                                     _%tl197097197128%_
                                     _%hd197096197126%_)))
                                (_%g197084197102%_ _%g197085197105%_))))
                        (_%g197084197102%_ _%g197085197105%_))))
                (_%g197084197102%_ _%g197085197105%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g197083197158%_
                                             _%g196970197059%_))
                                          (let* ((_%g197161197180%_
                                                  (lambda (_%g197162197177%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g197162197177%_))))
                                                 (_%g197160197302%_
                                                  (lambda (_%g197162197183%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g197162197183%_))
                                                        (let ((_%e197164197185%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g197162197183%_))))
                  (let ((_%hd197165197188%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197164197185%_)))
                        (_%tl197166197190%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197164197185%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl197166197190%_))
                        (let ((_g200240_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl197166197190%_
                                  '0))))
                          (begin
                            (let ((_g200241_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g200240_)
                                         (##values-length _g200240_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g200241_ 2)))
                                  (error "Context expects 2 values"
                                         _g200241_)))
                            (let ((_%target197167197193%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g200240_ 0)))
                                  (_%tl197169197195%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g200240_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197169197195%_))
                                  (letrec ((_%loop197170197198%_
                                            (lambda (_%hd197168197201%_
                                                     _%clause197174197203%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd197168197201%_))
                                                  (let ((_%e197171197205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd197168197201%_))))
                                                    (let ((_%lp-hd197172197208%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197171197205%_)))
                                                          (_%lp-tl197173197210%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197171197205%_))))
                                                      (_%loop197170197198%_
                                                       _%lp-tl197173197210%_
                                                       (cons _%lp-hd197172197208%_
                                                             _%clause197174197203%_))))
                                                  (let ((_%clause197175197213%_
                                                         (reverse _%clause197174197203%_)))
                                                    ((lambda (_%g197163197215%_)
                                                       (for-each
                                                        (lambda (_%clause197228%_)
                                                          (let* ((_%g197230197245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g197231197242%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g197231197242%_))))
                         (_%g197229197292%_
                          (lambda (_%g197231197248%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g197231197248%_))
                                (let ((_%e197235197250%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g197231197248%_))))
                                  (let ((_%hd197236197253%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197235197250%_)))
                                        (_%tl197237197255%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197235197250%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd197236197253%_))
                                        (let ((_%e197238197258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd197236197253%_))))
                                          (let ((_%hd197239197261%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197238197258%_)))
                                                (_%tl197240197263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197238197258%_))))
                                            ((lambda (_%g197232197266%_
                                                      _%g197233197267%_
                                                      _%g197234197268%_)
                                               (let ((_%receiver197286%_
                                                      (let ((_%$e197283%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%g197232197266%_))))
                (if _%$e197283%_ _%$e197283%_ _%g197234197268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g197287197289%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver197286%_
                                                     _%method-calls196102%_
                                                     _%slot-refs196103%_
                                                     _%g197287197289%_))
                                                  _%g197232197266%_)))
                                             _%tl197237197255%_
                                             _%tl197240197263%_
                                             _%hd197239197261%_)))
                                        (_%g197230197245%_
                                         _%g197231197248%_))))
                                (_%g197230197245%_ _%g197231197248%_)))))
                    (_%g197229197292%_ _%clause197228%_)))
                (let ((__tmp200242
                       (lambda (_%g197294197297%_ _%g197295197299%_)
                         (cons _%g197294197297%_ _%g197295197299%_))))
                  (declare (not safe))
                  (__foldr1 __tmp200242 '() _%g197163197215%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause197175197213%_))))))
                                    (_%loop197170197198%_
                                     _%target197167197193%_
                                     '()))
                                  (_%g197161197180%_ _%g197162197183%_)))))
                        (_%g197161197180%_ _%g197162197183%_))))
                (_%g197161197180%_ _%g197162197183%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g197160197302%_
                                             _%g196969197058%_))
                                          (if (_%no-specializer?196106%_)
                                              _%stx196010%_
                                              (let* ((_%specializer-id197311%_
                                                      (let* ((_%id197305%_
                                                              (let ((__tmp200243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196021196083%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp200243 '"::specialize")))
                     (_%specializer-id197308%_
                      (let ((__tmp200244
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx196010%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id197305%_ __tmp200244))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id197308%_))
                _%specializer-id197308%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass197313%_
                                                      (let ((__tmp200245
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp200245)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table197315%_
                                                      (let ((__tmp200246
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp200246)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods197317%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls196102%_)))
                                                     (_%$methods197321%_
                                                      (let ((__tmp200247
                                                             (lambda (_%id197319%_)
                                                               (let ((__tmp200248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id197319%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp200248)))))
                (declare (not safe))
                (##map __tmp200247 _%methods197317%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_197330%_
                                                      (let ((__tmp200249
                                                             (lambda (_%g197322197325%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g197323197327%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls196102%_
                          _%g197322197325%_
                          _%g197323197327%_)))))
                (declare (not safe))
                (##for-each __tmp200249 _%methods197317%_ _%$methods197321%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind197340%_
                                                      (let ((__tmp200250
                                                             (lambda (_%g197332197335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g197333197337%_)
                       (_%generate-method-bind196012%_
                        _%$klass197313%_
                        _%$method-table197315%_
                        _%g197332197335%_
                        _%g197333197337%_))))
                (declare (not safe))
                (##map __tmp200250 _%methods197317%_ _%$methods197321%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots197342%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs196103%_)))
                                                     (_%$slots197346%_
                                                      (let ((__tmp200251
                                                             (lambda (_%id197344%_)
                                                               (let ((__tmp200252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id197344%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp200252)))))
                (declare (not safe))
                (##map __tmp200251 _%slots197342%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_197355%_
                                                      (let ((__tmp200253
                                                             (lambda (_%g197347197350%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g197348197352%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs196103%_
                          _%g197347197350%_
                          _%g197348197352%_)))))
                (declare (not safe))
                (##for-each __tmp200253 _%slots197342%_ _%$slots197346%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind197364%_
                                                      (let ((__tmp200254
                                                             (lambda (_%g197356197359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g197357197361%_)
                       (_%generate-slot-bind196013%_
                        _%$klass197313%_
                        _%g197356197359%_
                        _%g197357197361%_))))
                (declare (not safe))
                (##map __tmp200254 _%slots197342%_ _%$slots197346%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr197456%_
                                                      (let* ((_%g197366197384%_
                                                              (lambda (_%g197367197381%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g197367197381%_))))
                     (_%g197365197453%_
                      (lambda (_%g197367197387%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g197367197387%_))
                            (let ((_%e197371197389%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g197367197387%_))))
                              (let ((_%hd197372197392%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197371197389%_)))
                                    (_%tl197373197394%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197371197389%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197373197394%_))
                                    (let ((_%e197374197397%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197373197394%_))))
                                      (let ((_%hd197375197400%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197374197397%_)))
                                            (_%tl197376197402%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197374197397%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd197375197400%_))
                                            (let ((_%e197377197405%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd197375197400%_))))
                                              (let ((_%hd197378197408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197377197405%_)))
                                                    (_%tl197379197410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197377197405%_))))
                                                ((lambda (_%g197368197413%_
                                                          _%g197369197414%_
                                                          _%g197370197415%_)
                                                   (let* ((_%receiver197444%_
                                                           (let ((_%$e197441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%g197368197413%_))))
                     (if _%$e197441%_ _%$e197441%_ _%g197370197415%_)))
                  (_%body197450%_
                   (map (lambda (_%g197445197447%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver197444%_
                           _%$klass197313%_
                           _%method-calls196102%_
                           _%slot-refs196103%_
                           _%g197445197447%_))
                        _%g197368197413%_))
                  (__tmp200255
                   (cons '%#lambda
                         (cons (cons _%g197370197415%_ _%g197369197414%_)
                               _%body197450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp200255
                                                      _%g196970197059%_)))
                                                 _%tl197376197402%_
                                                 _%tl197379197410%_
                                                 _%hd197378197408%_)))
                                            (_%g197366197384%_
                                             _%g197367197387%_))))
                                    (_%g197366197384%_ _%g197367197387%_))))
                            (_%g197366197384%_ _%g197367197387%_)))))
                (_%g197365197453%_ _%g196970197059%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr197617%_
                                                      (let* ((_%g197458197477%_
                                                              (lambda (_%g197459197474%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g197459197474%_))))
                     (_%g197457197614%_
                      (lambda (_%g197459197480%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g197459197480%_))
                            (let ((_%e197461197482%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g197459197480%_))))
                              (let ((_%hd197462197485%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197461197482%_)))
                                    (_%tl197463197487%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197461197482%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl197463197487%_))
                                    (let ((_g200256_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl197463197487%_
                                              '0))))
                                      (begin
                                        (let ((_g200257_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g200256_)
                                                     (##values-length
                                                      _g200256_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g200257_ 2)))
                                              (error "Context expects 2 values"
                                                     _g200257_)))
                                        (let ((_%target197464197490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g200256_ 0)))
                                              (_%tl197466197492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g200256_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197466197492%_))
                                              (letrec ((_%loop197467197495%_
                                                        (lambda (_%hd197465197498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause197471197500%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd197465197498%_))
                      (let ((_%e197468197502%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197465197498%_))))
                        (let ((_%lp-hd197469197505%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197468197502%_)))
                              (_%lp-tl197470197507%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197468197502%_))))
                          (_%loop197467197495%_
                           _%lp-tl197470197507%_
                           (cons _%lp-hd197469197505%_
                                 _%clause197471197500%_))))
                      (let ((_%clause197472197510%_
                             (reverse _%clause197471197500%_)))
                        ((lambda (_%g197460197512%_)
                           (let* ((_%clauses197612%_
                                   (map (lambda (_%clause197526%_)
                                          (let* ((_%__stx199049199050%_
                                                  _%clause197526%_)
                                                 (_%g197529197544%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx199049199050%_)))))
                                            (let ((_%__kont199051199052%_
                                                   (lambda (_%g197531197572%_
                                                            _%g197532197573%_
                                                            _%g197533197574%_)
                                                     (let* ((_%receiver197593%_
                                                             (let ((_%$e197590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%g197531197572%_))))
                       (if _%$e197590%_ _%$e197590%_ _%g197533197574%_)))
                    (_%body197599%_
                     (map (lambda (_%g197594197596%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver197593%_
                             _%$klass197313%_
                             _%method-calls196102%_
                             _%slot-refs196103%_
                             _%g197594197596%_))
                          _%g197531197572%_)))
               (cons (cons _%g197533197574%_ _%g197532197573%_)
                     _%body197599%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont199053199054%_
                                                   (lambda ()
                                                     _%clause197526%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx199049199050%_))
                                                  (let ((_%e197534197556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx199049199050%_))))
                                                    (let ((_%tl197536197561%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197534197556%_)))
                                                          (_%hd197535197559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197534197556%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197535197559%_))
                                                          (let ((_%e197537197564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd197535197559%_))))
                    (let ((_%tl197539197569%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197537197564%_)))
                          (_%hd197538197567%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197537197564%_))))
                      (_%__kont199051199052%_
                       _%tl197536197561%_
                       _%tl197539197569%_
                       _%hd197538197567%_)))
                  (_%__kont199053199054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont199053199054%_)))))
                                        (let ((__tmp200258
                                               (lambda (_%g197604197607%_
                                                        _%g197605197609%_)
                                                 (cons _%g197604197607%_
                                                       _%g197605197609%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp200258
                                           '()
                                           _%g197460197512%_))))
                                  (__tmp200259
                                   (cons '%#case-lambda _%clauses197612%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp200259
                              _%g196969197058%_)))
                         _%clause197472197510%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop197467197495%_
                                                 _%target197464197490%_
                                                 '()))
                                              (_%g197458197477%_
                                               _%g197459197480%_)))))
                                    (_%g197458197477%_ _%g197459197480%_))))
                            (_%g197458197477%_ _%g197459197480%_)))))
                (_%g197457197614%_ _%g196969197058%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl197619%_
                                                      (let ((__tmp200260
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%g196971197060%_ '())
                                             (cons _%specializer-lambda-expr197456%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr197617%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp200260 _%stx196010%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl197621%_
                                                      (_%generate-specializer-impl196014%_
                                                       _%$klass197313%_
                                                       _%$method-table197315%_
                                                       _%methods-bind197340%_
                                                       _%slots-bind197364%_
                                                       _%specializer-impl197619%_)))
                                                (let ((__tmp200262
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g196021196083%_)))
                                                      (__tmp200261
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id197311%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp200262
                                                   '" => "
                                                   __tmp200261))
                                                (_%generate-specializer-def196015%_
                                                 _%g196021196083%_
                                                 _%specializer-id197311%_
                                                 _%specializer-impl197621%_))))
                                        _%hd196991197053%_
                                        _%hd196988197045%_
                                        _%hd196985197037%_)
                                       (_%g196967196997%_ _%g196968197000%_))))
                               (_%g196967196997%_ _%g196968197000%_))
                           (_%g196967196997%_ _%g196968197000%_))
                       (_%g196967196997%_ _%g196968197000%_))))
               (_%g196967196997%_ _%g196968197000%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g196967196997%_
                                                    _%g196968197000%_))))
                                           (_%g196967196997%_
                                            _%g196968197000%_))))
                                   (_%g196967196997%_ _%g196968197000%_))))
                           (_%g196967196997%_ _%g196968197000%_))))
                   (_%g196967196997%_ _%g196968197000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g196967196997%_
                                                    _%g196968197000%_)))))
                                       (_%g196966197624%_ _%g196020196082%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%g196020196082%_))
                                         (let* ((_%g197628197681%_
                                                 (lambda (_%g197629197678%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g197629197678%_))))
                                                (_%g197627198846%_
                                                 (lambda (_%g197629197684%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g197629197684%_))
                                                       (let ((_%e197635197686%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g197629197684%_))))
                 (let ((_%hd197636197689%_
                        (let ()
                          (declare (not safe))
                          (##car _%e197635197686%_)))
                       (_%tl197637197691%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e197635197686%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd197636197689%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd197636197689%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl197637197691%_))
                               (let ((_%e197638197694%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl197637197691%_))))
                                 (let ((_%hd197639197697%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e197638197694%_)))
                                       (_%tl197640197699%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e197638197694%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd197639197697%_))
                                       (let ((_%e197641197702%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd197639197697%_))))
                                         (let ((_%hd197642197705%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e197641197702%_)))
                                               (_%tl197643197707%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e197641197702%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd197642197705%_))
                                               (let ((_%e197644197710%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd197642197705%_))))
                                                 (let ((_%hd197645197713%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e197644197710%_)))
                                                       (_%tl197646197715%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e197644197710%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd197645197713%_))
                                                       (let ((_%e197647197718%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd197645197713%_))))
                 (let ((_%hd197648197721%_
                        (let ()
                          (declare (not safe))
                          (##car _%e197647197718%_)))
                       (_%tl197649197723%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e197647197718%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl197649197723%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl197646197715%_))
                           (let ((_%e197650197726%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl197646197715%_))))
                             (let ((_%hd197651197729%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e197650197726%_)))
                                   (_%tl197652197731%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e197650197726%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd197651197729%_))
                                   (let ((_%e197653197734%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd197651197729%_))))
                                     (let ((_%hd197654197737%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e197653197734%_)))
                                           (_%tl197655197739%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e197653197734%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd197654197737%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd197654197737%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl197655197739%_))
                                                   (let ((_%e197656197742%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl197655197739%_))))
                                                     (let ((_%hd197657197745%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e197656197742%_)))
                                                           (_%tl197658197747%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e197656197742%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd197657197745%_))
                                                           (let ((_%e197659197750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd197657197745%_))))
                     (let ((_%hd197660197753%_
                            (let ()
                              (declare (not safe))
                              (##car _%e197659197750%_)))
                           (_%tl197661197755%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e197659197750%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd197660197753%_))
                           (let ((_%e197662197758%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd197660197753%_))))
                             (let ((_%hd197663197761%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e197662197758%_)))
                                   (_%tl197664197763%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e197662197758%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd197663197761%_))
                                   (let ((_%e197665197766%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd197663197761%_))))
                                     (let ((_%hd197666197769%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e197665197766%_)))
                                           (_%tl197667197771%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e197665197766%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl197667197771%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl197664197763%_))
                                               (let ((_%e197668197774%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl197664197763%_))))
                                                 (let ((_%hd197669197777%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e197668197774%_)))
                                                       (_%tl197670197779%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e197668197774%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl197670197779%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl197661197755%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl197658197747%_))
                       (let ((_%e197671197782%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl197658197747%_))))
                         (let ((_%hd197672197785%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e197671197782%_)))
                               (_%tl197673197787%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e197671197782%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl197673197787%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl197652197731%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl197643197707%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl197640197699%_))
                                           (let ((_%e197674197790%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl197640197699%_))))
                                             (let ((_%hd197675197793%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e197674197790%_)))
                                                   (_%tl197676197795%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e197674197790%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl197676197795%_))
                                                   ((lambda (_%g197630197798%_
                                                             _%g197631197799%_
                                                             _%g197632197800%_
                                                             _%g197633197801%_
                                                             _%g197634197802%_)
                                                      (let* ((_%g197842197904%_
                                                              (lambda (_%g197843197901%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g197843197901%_))))
                     (_%g197841198843%_
                      (lambda (_%g197843197907%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g197843197907%_))
                            (let ((_%e197849197909%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g197843197907%_))))
                              (let ((_%hd197850197912%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197849197909%_)))
                                    (_%tl197851197914%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197849197909%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd197850197912%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd197850197912%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197851197914%_))
                                            (let ((_%e197852197917%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197851197914%_))))
                                              (let ((_%hd197853197920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197852197917%_)))
                                                    (_%tl197854197922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197852197917%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197854197922%_))
                                                    (let ((_%e197855197925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197854197922%_))))
                                                      (let ((_%hd197856197928%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e197855197925%_)))
                    (_%tl197857197930%_
                     (let () (declare (not safe)) (##cdr _%e197855197925%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd197856197928%_))
                    (let ((_%e197858197933%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd197856197928%_))))
                      (let ((_%hd197859197936%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197858197933%_)))
                            (_%tl197860197938%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197858197933%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd197859197936%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd197859197936%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197860197938%_))
                                    (let ((_%e197861197941%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197860197938%_))))
                                      (let ((_%hd197862197944%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197861197941%_)))
                                            (_%tl197863197946%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197861197941%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd197862197944%_))
                                            (let ((_%e197864197949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd197862197944%_))))
                                              (let ((_%hd197865197952%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197864197949%_)))
                                                    (_%tl197866197954%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197864197949%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd197865197952%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd197865197952%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197866197954%_))
                                                            (let ((_%e197867197957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197866197954%_))))
                      (let ((_%hd197868197960%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197867197957%_)))
                            (_%tl197869197962%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197867197957%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197869197962%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197863197946%_))
                                (let ((_%e197870197965%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197863197946%_))))
                                  (let ((_%hd197871197968%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197870197965%_)))
                                        (_%tl197872197970%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197870197965%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd197871197968%_))
                                        (let ((_%e197873197973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd197871197968%_))))
                                          (let ((_%hd197874197976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197873197973%_)))
                                                (_%tl197875197978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197873197973%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd197874197976%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd197874197976%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl197875197978%_))
                                                        (let ((_%e197876197981%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl197875197978%_))))
                  (let ((_%hd197877197984%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197876197981%_)))
                        (_%tl197878197986%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197876197981%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197878197986%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197872197970%_))
                            (let ((_%e197879197989%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl197872197970%_))))
                              (let ((_%hd197880197992%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197879197989%_)))
                                    (_%tl197881197994%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197879197989%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197880197992%_))
                                    (let ((_%e197882197997%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd197880197992%_))))
                                      (let ((_%hd197883198000%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197882197997%_)))
                                            (_%tl197884198002%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197882197997%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd197883198000%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd197883198000%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197884198002%_))
                                                    (let ((_%e197885198005%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197884198002%_))))
                                                      (let ((_%hd197886198008%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e197885198005%_)))
                    (_%tl197887198010%_
                     (let () (declare (not safe)) (##cdr _%e197885198005%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197887198010%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl197881197994%_))
                        (if (let ((__tmp200263
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl197881197994%_))))
                              (declare (not safe))
                              (##fx>= __tmp200263 '1))
                            (let ((_g200264_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl197881197994%_
                                      '1))))
                              (begin
                                (let ((_g200265_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g200264_)
                                             (##values-length _g200264_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g200265_ 2)))
                                      (error "Context expects 2 values"
                                             _g200265_)))
                                (let ((_%target197888198013%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g200264_ 0)))
                                      (_%tl197890198015%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g200264_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197890198015%_))
                                      (let ((_%e197897198018%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197890198015%_))))
                                        (let ((_%hd197898198021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197897198018%_)))
                                              (_%tl197899198023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197897198018%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197899198023%_))
                                              (letrec ((_%loop197891198026%_
                                                        (lambda (_%hd197889198029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref197895198031%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd197889198029%_))
                      (let ((_%e197892198033%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197889198029%_))))
                        (let ((_%lp-hd197893198036%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197892198033%_)))
                              (_%lp-tl197894198038%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197892198033%_))))
                          (_%loop197891198026%_
                           _%lp-tl197894198038%_
                           (cons _%lp-hd197893198036%_
                                 _%kw-ref197895198031%_))))
                      (let ((_%kw-ref197896198041%_
                             (reverse _%kw-ref197895198031%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197857197930%_))
                            ((lambda (_%g197844198043%_
                                      _%g197845198044%_
                                      _%g197846198045%_
                                      _%g197847198046%_
                                      _%g197848198047%_)
                               (let* ((_%kw-count198098%_
                                       (length (let ((__tmp200266
                                                      (lambda (_%g198090198093%_
                                                               _%g198091198095%_)
                                                        (cons _%g198090198093%_
                                                              _%g198091198095%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp200266
                                                  '()
                                                  _%g197845198044%_))))
                                      (_%self-index198100%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count198098%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%g197632197800%_))
                                     (let* ((_%g198104198118%_
                                             (lambda (_%g198105198115%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g198105198115%_))))
                                            (_%g198103198241%_
                                             (lambda (_%g198105198121%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g198105198121%_))
                                                   (let ((_%e198108198123%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g198105198121%_))))
                                                     (let ((_%hd198109198126%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e198108198123%_)))
                                                           (_%tl198110198128%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e198108198123%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl198110198128%_))
                                                           (let ((_%e198111198131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl198110198128%_))))
                     (let ((_%hd198112198134%_
                            (let ()
                              (declare (not safe))
                              (##car _%e198111198131%_)))
                           (_%tl198113198136%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e198111198131%_))))
                       ((lambda (_%g198106198139%_ _%g198107198140%_)
                          (let* ((_%self198157%_
                                  (list-ref
                                   _%g198107198140%_
                                   _%self-index198100%_))
                                 (_%receiver198162%_
                                  (let ((_%$e198159%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%g198106198139%_))))
                                    (if _%$e198159%_
                                        _%$e198159%_
                                        _%self198157%_))))
                            (for-each
                             (lambda (_%g198164198166%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver198162%_
                                _%method-calls196102%_
                                _%slot-refs196103%_
                                _%g198164198166%_))
                             _%g198106198139%_)
                            (if (_%no-specializer?196106%_)
                                _%stx196010%_
                                (let* ((_%specializer-id198175%_
                                        (let* ((_%id198169%_
                                                (let ((__tmp200267
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%g196021196083%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp200267
                                                   '"::specialize")))
                                               (_%specializer-id198172%_
                                                (let ((__tmp200268
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx196010%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id198169%_
                                                   __tmp200268))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id198172%_))
                                          _%specializer-id198172%_))
                                       (_%$klass198177%_
                                        (let ((__tmp200269
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp200269)))
                                       (_%$method-table198179%_
                                        (let ((__tmp200270
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp200270)))
                                       (_%methods198181%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys
                                           _%method-calls196102%_)))
                                       (_%$methods198185%_
                                        (let ((__tmp200271
                                               (lambda (_%id198183%_)
                                                 (let ((__tmp200272
                                                        (gensym _%id198183%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp200272)))))
                                          (declare (not safe))
                                          (##map __tmp200271
                                                 _%methods198181%_)))
                                       (_%_198194%_
                                        (let ((__tmp200273
                                               (lambda (_%g198186198189%_
                                                        _%g198187198191%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%method-calls196102%_
                                                    _%g198186198189%_
                                                    _%g198187198191%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp200273
                                           _%methods198181%_
                                           _%$methods198185%_)))
                                       (_%methods-bind198204%_
                                        (let ((__tmp200274
                                               (lambda (_%g198196198199%_
                                                        _%g198197198201%_)
                                                 (_%generate-method-bind196012%_
                                                  _%$klass198177%_
                                                  _%$method-table198179%_
                                                  _%g198196198199%_
                                                  _%g198197198201%_))))
                                          (declare (not safe))
                                          (##map __tmp200274
                                                 _%methods198181%_
                                                 _%$methods198185%_)))
                                       (_%slots198206%_
                                        (let ()
                                          (declare (not safe))
                                          (__hash-keys _%slot-refs196103%_)))
                                       (_%$slots198210%_
                                        (let ((__tmp200275
                                               (lambda (_%id198208%_)
                                                 (let ((__tmp200276
                                                        (gensym _%id198208%_)))
                                                   (declare (not safe))
                                                   (make-symbol__1
                                                    '"__"
                                                    __tmp200276)))))
                                          (declare (not safe))
                                          (##map __tmp200275 _%slots198206%_)))
                                       (_%_198219%_
                                        (let ((__tmp200277
                                               (lambda (_%g198211198214%_
                                                        _%g198212198216%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%slot-refs196103%_
                                                    _%g198211198214%_
                                                    _%g198212198216%_)))))
                                          (declare (not safe))
                                          (##for-each
                                           __tmp200277
                                           _%slots198206%_
                                           _%$slots198210%_)))
                                       (_%slots-bind198228%_
                                        (let ((__tmp200278
                                               (lambda (_%g198220198223%_
                                                        _%g198221198225%_)
                                                 (_%generate-slot-bind196013%_
                                                  _%$klass198177%_
                                                  _%g198220198223%_
                                                  _%g198221198225%_))))
                                          (declare (not safe))
                                          (##map __tmp200278
                                                 _%slots198206%_
                                                 _%$slots198210%_)))
                                       (_%specializer-impl198236%_
                                        (let* ((_%specializer-body198234%_
                                                (map (lambda (_%g198229198231%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver198162%_
                                                        _%$klass198177%_
                                                        _%method-calls196102%_
                                                        _%slot-refs196103%_
                                                        _%g198229198231%_))
                                                     _%g198106198139%_))
                                               (__tmp200279
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%g197634197802%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%g197633197801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp200280
                                   (cons '%#lambda
                                         (cons _%g198107198140%_
                                               _%specializer-body198234%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp200280
                               _%g197632197800%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%g197631197799%_
                                                        '())))
                                      '()))
                          '())
                    (cons _%g197630197798%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp200279
                                           _%stx196010%_)))
                                       (_%specializer-impl198238%_
                                        (_%generate-specializer-impl196014%_
                                         _%$klass198177%_
                                         _%$method-table198179%_
                                         _%methods-bind198204%_
                                         _%slots-bind198228%_
                                         _%specializer-impl198236%_)))
                                  (let ((__tmp200282
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%g196021196083%_)))
                                        (__tmp200281
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id198175%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp200282
                                     '" => "
                                     __tmp200281))
                                  (_%generate-specializer-def196015%_
                                   _%g196021196083%_
                                   _%specializer-id198175%_
                                   _%specializer-impl198238%_)))))
                        _%tl198113198136%_
                        _%hd198112198134%_)))
                   (_%g198104198118%_ _%g198105198121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g198104198118%_
                                                    _%g198105198121%_)))))
                                       (_%g198103198241%_ _%g197632197800%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr?
                                            _%g197632197800%_))
                                         (let* ((_%g198245198275%_
                                                 (lambda (_%g198246198272%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g198246198272%_))))
                                                (_%g198244198839%_
                                                 (lambda (_%g198246198278%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g198246198278%_))
                                                       (let ((_%e198250198280%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g198246198278%_))))
                 (let ((_%hd198251198283%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198250198280%_)))
                       (_%tl198252198285%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198250198280%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl198252198285%_))
                       (let ((_%e198253198288%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl198252198285%_))))
                         (let ((_%hd198254198291%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e198253198288%_)))
                               (_%tl198255198293%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e198253198288%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd198254198291%_))
                               (let ((_%e198256198296%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd198254198291%_))))
                                 (let ((_%hd198257198299%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e198256198296%_)))
                                       (_%tl198258198301%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e198256198296%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd198257198299%_))
                                       (let ((_%e198259198304%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd198257198299%_))))
                                         (let ((_%hd198260198307%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e198259198304%_)))
                                               (_%tl198261198309%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e198259198304%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd198260198307%_))
                                               (let ((_%e198262198312%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd198260198307%_))))
                                                 (let ((_%hd198263198315%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e198262198312%_)))
                                                       (_%tl198264198317%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e198262198312%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl198264198317%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl198261198309%_))
                                                           (let ((_%e198265198320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl198261198309%_))))
                     (let ((_%hd198266198323%_
                            (let ()
                              (declare (not safe))
                              (##car _%e198265198320%_)))
                           (_%tl198267198325%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e198265198320%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl198267198325%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl198258198301%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl198255198293%_))
                                   (let ((_%e198268198328%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl198255198293%_))))
                                     (let ((_%hd198269198331%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e198268198328%_)))
                                           (_%tl198270198333%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e198268198328%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl198270198333%_))
                                           ((lambda (_%g198247198336%_
                                                     _%g198248198337%_
                                                     _%g198249198338%_)
                                              (let* ((_%g198362198376%_
                                                      (lambda (_%g198363198373%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g198363198373%_))))
                                                     (_%g198361198423%_
                                                      (lambda (_%g198363198379%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g198363198379%_))
                                                            (let ((_%e198366198381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g198363198379%_))))
                      (let ((_%hd198367198384%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198366198381%_)))
                            (_%tl198368198386%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198366198381%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198368198386%_))
                            (let ((_%e198369198389%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl198368198386%_))))
                              (let ((_%hd198370198392%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198369198389%_)))
                                    (_%tl198371198394%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198369198389%_))))
                                ((lambda (_%g198364198397%_ _%g198365198398%_)
                                   (let* ((_%self198411%_
                                           (list-ref
                                            _%g198365198398%_
                                            _%self-index198100%_))
                                          (_%receiver198416%_
                                           (let ((_%$e198413%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%g198364198397%_))))
                                             (if _%$e198413%_
                                                 _%$e198413%_
                                                 _%self198411%_))))
                                     (for-each
                                      (lambda (_%g198418198420%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver198416%_
                                         _%method-calls196102%_
                                         _%slot-refs196103%_
                                         _%g198418198420%_))
                                      _%g198364198397%_)))
                                 _%tl198371198394%_
                                 _%hd198370198392%_)))
                            (_%g198362198376%_ _%g198363198379%_))))
                    (_%g198362198376%_ _%g198363198379%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198361198423%_
                                                 _%g198248198337%_))
                                              (let* ((_%g198426198445%_
                                                      (lambda (_%g198427198442%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g198427198442%_))))
                                                     (_%g198425198554%_
                                                      (lambda (_%g198427198448%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g198427198448%_))
                                                            (let ((_%e198429198450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g198427198448%_))))
                      (let ((_%hd198430198453%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198429198450%_)))
                            (_%tl198431198455%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198429198450%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl198431198455%_))
                            (let ((_g200283_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl198431198455%_
                                      '0))))
                              (begin
                                (let ((_g200284_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g200283_)
                                             (##values-length _g200283_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g200284_ 2)))
                                      (error "Context expects 2 values"
                                             _g200284_)))
                                (let ((_%target198432198458%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g200283_ 0)))
                                      (_%tl198434198460%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g200283_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198434198460%_))
                                      (letrec ((_%loop198435198463%_
                                                (lambda (_%hd198433198466%_
                                                         _%clause198439198468%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd198433198466%_))
                                                      (let ((_%e198436198470%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd198433198466%_))))
                (let ((_%lp-hd198437198473%_
                       (let () (declare (not safe)) (##car _%e198436198470%_)))
                      (_%lp-tl198438198475%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198436198470%_))))
                  (_%loop198435198463%_
                   _%lp-tl198438198475%_
                   (cons _%lp-hd198437198473%_ _%clause198439198468%_))))
              (let ((_%clause198440198478%_ (reverse _%clause198439198468%_)))
                ((lambda (_%g198428198480%_)
                   (for-each
                    (lambda (_%clause198493%_)
                      (let* ((_%g198495198506%_
                              (lambda (_%g198496198503%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g198496198503%_))))
                             (_%g198494198544%_
                              (lambda (_%g198496198509%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g198496198509%_))
                                    (let ((_%e198499198511%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g198496198509%_))))
                                      (let ((_%hd198500198514%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198499198511%_)))
                                            (_%tl198501198516%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198499198511%_))))
                                        ((lambda (_%g198497198519%_
                                                  _%g198498198520%_)
                                           (let* ((_%self198532%_
                                                   (list-ref
                                                    _%g198498198520%_
                                                    _%self-index198100%_))
                                                  (_%receiver198537%_
                                                   (let ((_%$e198534%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%g198497198519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e198534%_
                                                         _%$e198534%_
                                                         _%self198532%_))))
                                             (for-each
                                              (lambda (_%g198539198541%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver198537%_
                                                 _%method-calls196102%_
                                                 _%slot-refs196103%_
                                                 _%g198539198541%_))
                                              _%g198497198519%_)))
                                         _%tl198501198516%_
                                         _%hd198500198514%_)))
                                    (_%g198495198506%_ _%g198496198509%_)))))
                        (_%g198494198544%_ _%clause198493%_)))
                    (let ((__tmp200285
                           (lambda (_%g198546198549%_ _%g198547198551%_)
                             (cons _%g198546198549%_ _%g198547198551%_))))
                      (declare (not safe))
                      (__foldr1 __tmp200285 '() _%g198428198480%_))))
                 _%clause198440198478%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop198435198463%_
                                         _%target198432198458%_
                                         '()))
                                      (_%g198426198445%_ _%g198427198448%_)))))
                            (_%g198426198445%_ _%g198427198448%_))))
                    (_%g198426198445%_ _%g198427198448%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198425198554%_
                                                 _%g198247198336%_))
                                              (if (_%no-specializer?196106%_)
                                                  _%stx196010%_
                                                  (let* ((_%specializer-id198563%_
                                                          (let* ((_%id198557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp200286
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%g196021196083%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp200286 '"::specialize")))
                         (_%specializer-id198560%_
                          (let ((__tmp200287
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx196010%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id198557%_
                             __tmp200287))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id198560%_))
                    _%specializer-id198560%_))
                 (_%$klass198565%_
                  (let ((__tmp200288
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp200288)))
                 (_%$method-table198567%_
                  (let ((__tmp200289
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp200289)))
                 (_%methods198569%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%method-calls196102%_)))
                 (_%$methods198573%_
                  (let ((__tmp200290
                         (lambda (_%id198571%_)
                           (let ((__tmp200291 (gensym _%id198571%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp200291)))))
                    (declare (not safe))
                    (##map __tmp200290 _%methods198569%_)))
                 (_%_198582%_
                  (let ((__tmp200292
                         (lambda (_%g198574198577%_ _%g198575198579%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%method-calls196102%_
                              _%g198574198577%_
                              _%g198575198579%_)))))
                    (declare (not safe))
                    (##for-each
                     __tmp200292
                     _%methods198569%_
                     _%$methods198573%_)))
                 (_%methods-bind198592%_
                  (let ((__tmp200293
                         (lambda (_%g198584198587%_ _%g198585198589%_)
                           (_%generate-method-bind196012%_
                            _%$klass198565%_
                            _%$method-table198567%_
                            _%g198584198587%_
                            _%g198585198589%_))))
                    (declare (not safe))
                    (##map __tmp200293 _%methods198569%_ _%$methods198573%_)))
                 (_%slots198594%_
                  (let ()
                    (declare (not safe))
                    (__hash-keys _%slot-refs196103%_)))
                 (_%$slots198598%_
                  (let ((__tmp200294
                         (lambda (_%id198596%_)
                           (let ((__tmp200295 (gensym _%id198596%_)))
                             (declare (not safe))
                             (make-symbol__1 '"__" __tmp200295)))))
                    (declare (not safe))
                    (##map __tmp200294 _%slots198594%_)))
                 (_%_198607%_
                  (let ((__tmp200296
                         (lambda (_%g198599198602%_ _%g198600198604%_)
                           (let ()
                             (declare (not safe))
                             (__hash-put!
                              _%slot-refs196103%_
                              _%g198599198602%_
                              _%g198600198604%_)))))
                    (declare (not safe))
                    (##for-each __tmp200296 _%slots198594%_ _%$slots198598%_)))
                 (_%slots-bind198616%_
                  (let ((__tmp200297
                         (lambda (_%g198608198611%_ _%g198609198613%_)
                           (_%generate-slot-bind196013%_
                            _%$klass198565%_
                            _%g198608198611%_
                            _%g198609198613%_))))
                    (declare (not safe))
                    (##map __tmp200297 _%slots198594%_ _%$slots198598%_)))
                 (_%specializer-lambda-expr198694%_
                  (let* ((_%g198618198632%_
                          (lambda (_%g198619198629%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g198619198629%_))))
                         (_%g198617198691%_
                          (lambda (_%g198619198635%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g198619198635%_))
                                (let ((_%e198622198637%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g198619198635%_))))
                                  (let ((_%hd198623198640%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198622198637%_)))
                                        (_%tl198624198642%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198622198637%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198624198642%_))
                                        (let ((_%e198625198645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl198624198642%_))))
                                          (let ((_%hd198626198648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198625198645%_)))
                                                (_%tl198627198650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198625198645%_))))
                                            ((lambda (_%g198620198653%_
                                                      _%g198621198654%_)
                                               (let* ((_%self198677%_
                                                       (list-ref
                                                        _%g198621198654%_
                                                        _%self-index198100%_))
                                                      (_%receiver198682%_
                                                       (let ((_%$e198679%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%g198620198653%_))))
                 (if _%$e198679%_ _%$e198679%_ _%self198677%_)))
              (_%body198688%_
               (map (lambda (_%g198683198685%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver198682%_
                       _%$klass198565%_
                       _%method-calls196102%_
                       _%slot-refs196103%_
                       _%g198683198685%_))
                    _%g198620198653%_))
              (__tmp200298
               (cons '%#lambda (cons _%g198621198654%_ _%body198688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp200298
                                                  _%g198248198337%_)))
                                             _%tl198627198650%_
                                             _%hd198626198648%_)))
                                        (_%g198618198632%_
                                         _%g198619198635%_))))
                                (_%g198618198632%_ _%g198619198635%_)))))
                    (_%g198617198691%_ _%g198248198337%_)))
                 (_%specializer-case-lambda-expr198832%_
                  (let* ((_%g198696198715%_
                          (lambda (_%g198697198712%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g198697198712%_))))
                         (_%g198695198829%_
                          (lambda (_%g198697198718%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g198697198718%_))
                                (let ((_%e198699198720%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g198697198718%_))))
                                  (let ((_%hd198700198723%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198699198720%_)))
                                        (_%tl198701198725%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198699198720%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl198701198725%_))
                                        (let ((_g200299_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl198701198725%_
                                                  '0))))
                                          (begin
                                            (let ((_g200300_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g200299_)
                                                         (##values-length
                                                          _g200299_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g200300_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g200300_)))
                                            (let ((_%target198702198728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g200299_
                                                      0)))
                                                  (_%tl198704198730%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g200299_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl198704198730%_))
                                                  (letrec ((_%loop198705198733%_
                                                            (lambda (_%hd198703198736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause198709198738%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd198703198736%_))
                          (let ((_%e198706198740%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198703198736%_))))
                            (let ((_%lp-hd198707198743%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198706198740%_)))
                                  (_%lp-tl198708198745%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198706198740%_))))
                              (_%loop198705198733%_
                               _%lp-tl198708198745%_
                               (cons _%lp-hd198707198743%_
                                     _%clause198709198738%_))))
                          (let ((_%clause198710198748%_
                                 (reverse _%clause198709198738%_)))
                            ((lambda (_%g198698198750%_)
                               (let* ((_%clauses198827%_
                                       (map (lambda (_%clause198764%_)
                                              (let* ((_%g198766198777%_
                                                      (lambda (_%g198767198774%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g198767198774%_))))
                                                     (_%g198765198817%_
                                                      (lambda (_%g198767198780%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g198767198780%_))
                                                            (let ((_%e198770198782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g198767198780%_))))
                      (let ((_%hd198771198785%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198770198782%_)))
                            (_%tl198772198787%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198770198782%_))))
                        ((lambda (_%g198768198790%_ _%g198769198791%_)
                           (let* ((_%self198803%_
                                   (list-ref
                                    _%g198769198791%_
                                    _%self-index198100%_))
                                  (_%receiver198808%_
                                   (let ((_%$e198805%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%g198768198790%_))))
                                     (if _%$e198805%_
                                         _%$e198805%_
                                         _%self198803%_)))
                                  (_%body198814%_
                                   (map (lambda (_%g198809198811%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver198808%_
                                           _%$klass198565%_
                                           _%method-calls196102%_
                                           _%slot-refs196103%_
                                           _%g198809198811%_))
                                        _%g198768198790%_)))
                             (cons _%g198769198791%_ _%body198814%_)))
                         _%tl198772198787%_
                         _%hd198771198785%_)))
                    (_%g198766198777%_ _%g198767198780%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198765198817%_
                                                 _%clause198764%_)))
                                            (let ((__tmp200301
                                                   (lambda (_%g198819198822%_
                                                            _%g198820198824%_)
                                                     (cons _%g198819198822%_
                                                           _%g198820198824%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp200301
                                               '()
                                               _%g198698198750%_))))
                                      (__tmp200302
                                       (cons '%#case-lambda
                                             _%clauses198827%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp200302
                                  _%g198247198336%_)))
                             _%clause198710198748%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop198705198733%_
                                                     _%target198702198728%_
                                                     '()))
                                                  (_%g198696198715%_
                                                   _%g198697198718%_)))))
                                        (_%g198696198715%_
                                         _%g198697198718%_))))
                                (_%g198696198715%_ _%g198697198718%_)))))
                    (_%g198695198829%_ _%g198247198336%_)))
                 (_%specializer-impl198834%_
                  (let ((__tmp200303
                         (cons '%#let-values
                               (cons (cons (cons (cons _%g197634197802%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%g197633197801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp200304
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%g198249198338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr198694%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr198832%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp200304
                                                _%stx196010%_))
                                             '()))
                                 '())
                           (cons _%g197631197799%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%g197630197798%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp200303 _%stx196010%_)))
                 (_%specializer-impl198836%_
                  (_%generate-specializer-impl196014%_
                   _%$klass198565%_
                   _%$method-table198567%_
                   _%methods-bind198592%_
                   _%slots-bind198616%_
                   _%specializer-impl198834%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp200306
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%g196021196083%_)))
                                                          (__tmp200305
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id198563%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp200306
                                                       '" => "
                                                       __tmp200305))
                                                    (_%generate-specializer-def196015%_
                                                     _%g196021196083%_
                                                     _%specializer-id198563%_
                                                     _%specializer-impl198836%_))))
                                            _%hd198269198331%_
                                            _%hd198266198323%_
                                            _%hd198263198315%_)
                                           (_%g198245198275%_
                                            _%g198246198278%_))))
                                   (_%g198245198275%_ _%g198246198278%_))
                               (_%g198245198275%_ _%g198246198278%_))
                           (_%g198245198275%_ _%g198246198278%_))))
                   (_%g198245198275%_ _%g198246198278%_))
               (_%g198245198275%_ _%g198246198278%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198245198275%_
                                                _%g198246198278%_))))
                                       (_%g198245198275%_ _%g198246198278%_))))
                               (_%g198245198275%_ _%g198246198278%_))))
                       (_%g198245198275%_ _%g198246198278%_))))
               (_%g198245198275%_ _%g198246198278%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g198244198839%_
                                            _%g197632197800%_))
                                         _%stx196010%_))))
                             _%hd197898198021%_
                             _%kw-ref197896198041%_
                             _%hd197886198008%_
                             _%hd197877197984%_
                             _%hd197868197960%_)
                            (_%g197842197904%_ _%g197843197907%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop197891198026%_
                                                 _%target197888198013%_
                                                 '()))
                                              (_%g197842197904%_
                                               _%g197843197907%_))))
                                      (_%g197842197904%_ _%g197843197907%_)))))
                            (_%g197842197904%_ _%g197843197907%_))
                        (_%g197842197904%_ _%g197843197907%_))
                    (_%g197842197904%_ _%g197843197907%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g197842197904%_
                                                     _%g197843197907%_))
                                                (_%g197842197904%_
                                                 _%g197843197907%_))
                                            (_%g197842197904%_
                                             _%g197843197907%_))))
                                    (_%g197842197904%_ _%g197843197907%_))))
                            (_%g197842197904%_ _%g197843197907%_))
                        (_%g197842197904%_ _%g197843197907%_))))
                (_%g197842197904%_ _%g197843197907%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g197842197904%_
                                                     _%g197843197907%_))
                                                (_%g197842197904%_
                                                 _%g197843197907%_))))
                                        (_%g197842197904%_
                                         _%g197843197907%_))))
                                (_%g197842197904%_ _%g197843197907%_))
                            (_%g197842197904%_ _%g197843197907%_))))
                    (_%g197842197904%_ _%g197843197907%_))
                (_%g197842197904%_ _%g197843197907%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g197842197904%_
                                                     _%g197843197907%_))))
                                            (_%g197842197904%_
                                             _%g197843197907%_))))
                                    (_%g197842197904%_ _%g197843197907%_))
                                (_%g197842197904%_ _%g197843197907%_))
                            (_%g197842197904%_ _%g197843197907%_))))
                    (_%g197842197904%_ _%g197843197907%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g197842197904%_
                                                     _%g197843197907%_))))
                                            (_%g197842197904%_
                                             _%g197843197907%_))
                                        (_%g197842197904%_ _%g197843197907%_))
                                    (_%g197842197904%_ _%g197843197907%_))))
                            (_%g197842197904%_ _%g197843197907%_)))))
                (_%g197841198843%_ _%g197631197799%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd197675197793%_
                                                    _%hd197672197785%_
                                                    _%hd197669197777%_
                                                    _%hd197666197769%_
                                                    _%hd197648197721%_)
                                                   (_%g197628197681%_
                                                    _%g197629197684%_))))
                                           (_%g197628197681%_
                                            _%g197629197684%_))
                                       (_%g197628197681%_ _%g197629197684%_))
                                   (_%g197628197681%_ _%g197629197684%_))
                               (_%g197628197681%_ _%g197629197684%_))))
                       (_%g197628197681%_ _%g197629197684%_))
                   (_%g197628197681%_ _%g197629197684%_))
               (_%g197628197681%_ _%g197629197684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g197628197681%_
                                                _%g197629197684%_))
                                           (_%g197628197681%_
                                            _%g197629197684%_))))
                                   (_%g197628197681%_ _%g197629197684%_))))
                           (_%g197628197681%_ _%g197629197684%_))))
                   (_%g197628197681%_ _%g197629197684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g197628197681%_
                                                    _%g197629197684%_))
                                               (_%g197628197681%_
                                                _%g197629197684%_))
                                           (_%g197628197681%_
                                            _%g197629197684%_))))
                                   (_%g197628197681%_ _%g197629197684%_))))
                           (_%g197628197681%_ _%g197629197684%_))
                       (_%g197628197681%_ _%g197629197684%_))))
               (_%g197628197681%_ _%g197629197684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g197628197681%_
                                                _%g197629197684%_))))
                                       (_%g197628197681%_ _%g197629197684%_))))
                               (_%g197628197681%_ _%g197629197684%_))
                           (_%g197628197681%_ _%g197629197684%_))
                       (_%g197628197681%_ _%g197629197684%_))))
               (_%g197628197681%_ _%g197629197684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g197627198846%_
                                            _%g196020196082%_))
                                         _%stx196010%_))))))))
                  (_%__kont199073199074%_ (lambda () _%stx196010%_)))
              (let ((_%__match199102199103%_
                     (lambda (_%e196022196050%_
                              _%hd196023196053%_
                              _%tl196024196055%_
                              _%e196025196058%_
                              _%hd196026196061%_
                              _%tl196027196063%_
                              _%e196028196066%_
                              _%hd196029196069%_
                              _%tl196030196071%_
                              _%e196031196074%_
                              _%hd196032196077%_
                              _%tl196033196079%_)
                       (let ((_%g196020196082%_ _%hd196032196077%_)
                             (_%g196021196083%_ _%hd196029196069%_))
                         (if (let ((__tmp200307
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g196021196083%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp200307))
                             (_%__kont199071199072%_
                              _%g196020196082%_
                              _%g196021196083%_)
                             (_%__kont199073199074%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx199069199070%_))
                    (let ((_%e196022196050%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx199069199070%_))))
                      (let ((_%tl196024196055%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e196022196050%_)))
                            (_%hd196023196053%_
                             (let ()
                               (declare (not safe))
                               (##car _%e196022196050%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl196024196055%_))
                            (let ((_%e196025196058%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl196024196055%_))))
                              (let ((_%tl196027196063%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e196025196058%_)))
                                    (_%hd196026196061%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e196025196058%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd196026196061%_))
                                    (let ((_%e196028196066%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd196026196061%_))))
                                      (let ((_%tl196030196071%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e196028196066%_)))
                                            (_%hd196029196069%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e196028196066%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl196030196071%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl196027196063%_))
                                                (let ((_%e196031196074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl196027196063%_))))
                                                  (let ((_%tl196033196079%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e196031196074%_)))
                                                        (_%hd196032196077%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e196031196074%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl196033196079%_))
                                                        (_%__match199102199103%_
                                                         _%e196022196050%_
                                                         _%hd196023196053%_
                                                         _%tl196024196055%_
                                                         _%e196025196058%_
                                                         _%hd196026196061%_
                                                         _%tl196027196063%_
                                                         _%e196028196066%_
                                                         _%hd196029196069%_
                                                         _%tl196030196071%_
                                                         _%e196031196074%_
                                                         _%hd196032196077%_
                                                         _%tl196033196079%_)
                                                        (_%__kont199073199074%_))))
                                                (_%__kont199073199074%_))
                                            (_%__kont199073199074%_))))
                                    (_%__kont199073199074%_))))
                            (_%__kont199073199074%_))))
                    (_%__kont199073199074%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self195862%_ _%stx195863%_)
        (let* ((_%__stx199105199106%_ _%stx195863%_)
               (_%g195866195899%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx199105199106%_)))))
          (let ((_%__kont199107199108%_
                 (lambda (_%g195868195989%_) _%g195868195989%_))
                (_%__kont199109199110%_
                 (lambda (_%g195884195928%_ _%g195885195929%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self195862%_ _%g195884195928%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx199105199106%_))
                (let ((_%e195869195949%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx199105199106%_))))
                  (let ((_%tl195871195954%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195869195949%_)))
                        (_%hd195870195952%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195869195949%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl195871195954%_))
                        (let ((_%e195872195957%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl195871195954%_))))
                          (let ((_%tl195874195962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195872195957%_)))
                                (_%hd195873195960%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195872195957%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd195873195960%_))
                                (let ((_%e195875195965%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd195873195960%_))))
                                  (let ((_%tl195877195970%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195875195965%_)))
                                        (_%hd195876195968%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195875195965%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd195876195968%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd195876195968%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl195877195970%_))
                                                (let ((_%e195878195973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl195877195970%_))))
                                                  (let ((_%tl195880195978%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e195878195973%_)))
                                                        (_%hd195879195976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e195878195973%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl195880195978%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl195874195962%_))
                                                            (let ((_%e195881195981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl195874195962%_))))
                      (let ((_%tl195883195986%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195881195981%_)))
                            (_%hd195882195984%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195881195981%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195883195986%_))
                            (_%__kont199107199108%_ _%hd195879195976%_)
                            (let ()
                              (declare (not safe))
                              (_%g195866195899%_)))))
                    (let () (declare (not safe)) (_%g195866195899%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl195874195962%_))
                    (let ((_%e195892195920%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl195874195962%_))))
                      (let ((_%tl195894195925%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e195892195920%_)))
                            (_%hd195893195923%_
                             (let ()
                               (declare (not safe))
                               (##car _%e195892195920%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl195894195925%_))
                            (_%__kont199109199110%_
                             _%hd195893195923%_
                             _%hd195873195960%_)
                            (let ()
                              (declare (not safe))
                              (_%g195866195899%_)))))
                    (let () (declare (not safe)) (_%g195866195899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl195874195962%_))
                                                    (let ((_%e195892195920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl195874195962%_))))
                                                      (let ((_%tl195894195925%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e195892195920%_)))
                    (_%hd195893195923%_
                     (let () (declare (not safe)) (##car _%e195892195920%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl195894195925%_))
                    (_%__kont199109199110%_
                     _%hd195893195923%_
                     _%hd195873195960%_)
                    (let () (declare (not safe)) (_%g195866195899%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g195866195899%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl195874195962%_))
                                                (let ((_%e195892195920%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl195874195962%_))))
                                                  (let ((_%tl195894195925%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e195892195920%_)))
                                                        (_%hd195893195923%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e195892195920%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl195894195925%_))
                                                        (_%__kont199109199110%_
                                                         _%hd195893195923%_
                                                         _%hd195873195960%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g195866195899%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g195866195899%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl195874195962%_))
                                            (let ((_%e195892195920%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl195874195962%_))))
                                              (let ((_%tl195894195925%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e195892195920%_)))
                                                    (_%hd195893195923%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e195892195920%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl195894195925%_))
                                                    (_%__kont199109199110%_
                                                     _%hd195893195923%_
                                                     _%hd195873195960%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g195866195899%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g195866195899%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl195874195962%_))
                                    (let ((_%e195892195920%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl195874195962%_))))
                                      (let ((_%tl195894195925%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e195892195920%_)))
                                            (_%hd195893195923%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e195892195920%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl195894195925%_))
                                            (_%__kont199109199110%_
                                             _%hd195893195923%_
                                             _%hd195873195960%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g195866195899%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g195866195899%_))))))
                        (let () (declare (not safe)) (_%g195866195899%_)))))
                (let () (declare (not safe)) (_%g195866195899%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self195778%_ _%stx195779%_)
        (let* ((_%g195781195802%_
                (lambda (_%g195782195799%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195782195799%_))))
               (_%g195780195859%_
                (lambda (_%g195782195805%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195782195805%_))
                      (let ((_%e195786195807%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g195782195805%_))))
                        (let ((_%hd195787195810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195786195807%_)))
                              (_%tl195788195812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195786195807%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195788195812%_))
                              (let ((_%e195789195815%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl195788195812%_))))
                                (let ((_%hd195790195818%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195789195815%_)))
                                      (_%tl195791195820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195789195815%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195791195820%_))
                                      (let ((_%e195792195823%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl195791195820%_))))
                                        (let ((_%hd195793195826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195792195823%_)))
                                              (_%tl195794195828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195792195823%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195794195828%_))
                                              (let ((_%e195795195831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl195794195828%_))))
                                                (let ((_%hd195796195834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195795195831%_)))
                                                      (_%tl195797195836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195795195831%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195797195836%_))
                                                      ((lambda (_%g195783195839%_
                                                                _%g195784195840%_
                                                                _%g195785195841%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self195778%_
                                                            _%g195784195840%_)))
                                                       _%hd195796195834%_
                                                       _%hd195793195826%_
                                                       _%hd195790195818%_)
                                                      (_%g195781195802%_
                                                       _%g195782195805%_))))
                                              (_%g195781195802%_
                                               _%g195782195805%_))))
                                      (_%g195781195802%_ _%g195782195805%_))))
                              (_%g195781195802%_ _%g195782195805%_))))
                      (_%g195781195802%_ _%g195782195805%_)))))
          (_%g195780195859%_ _%stx195779%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self194743%_ _%stx194744%_)
        (let* ((_%__stx199171199172%_ _%stx194744%_)
               (_%g194752194974%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx199171199172%_)))))
          (let ((_%__kont199173199174%_
                 (lambda (_%g194754195727%_
                          _%g194755195728%_
                          _%g194756195729%_
                          _%g194757195730%_)
                   (let ((__tmp200309
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self194743%_ 'methods)))
                         (__tmp200308
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g194755195728%_))))
                     (declare (not safe))
                     (hash-put! __tmp200309 __tmp200308 '#t))
                   (for-each
                    (lambda (_%g195763195765%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self194743%_ _%g195763195765%_)))
                    (let ((__tmp200310
                           (lambda (_%g195767195770%_ _%g195768195772%_)
                             (cons _%g195767195770%_ _%g195768195772%_))))
                      (declare (not safe))
                      (__foldr1 __tmp200310 '() _%g194754195727%_)))))
                (_%__kont199177199178%_
                 (lambda (_%g194797195564%_
                          _%g194798195565%_
                          _%g194799195566%_
                          _%g194800195567%_
                          _%g194801195568%_)
                   (let ((__tmp200312
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self194743%_ 'methods)))
                         (__tmp200311
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g194798195565%_))))
                     (declare (not safe))
                     (hash-put! __tmp200312 __tmp200311 '#t))
                   (for-each
                    (lambda (_%g195608195610%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self194743%_ _%g195608195610%_)))
                    (let ((__tmp200313
                           (lambda (_%g195612195615%_ _%g195613195617%_)
                             (cons _%g195612195615%_ _%g195613195617%_))))
                      (declare (not safe))
                      (__foldr1 __tmp200313 '() _%g194797195564%_)))))
                (_%__kont199181199182%_
                 (lambda (_%g194850195399%_
                          _%g194851195400%_
                          _%g194852195401%_)
                   (let ((__tmp200315
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self194743%_ 'slots)))
                         (__tmp200314
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g194850195399%_))))
                     (declare (not safe))
                     (hash-put! __tmp200315 __tmp200314 '#t))))
                (_%__kont199183199184%_
                 (lambda (_%g194883195276%_
                          _%g194884195277%_
                          _%g194885195278%_
                          _%g194886195279%_)
                   (let ((__tmp200317
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self194743%_ 'slots)))
                         (__tmp200316
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%g194884195277%_))))
                     (declare (not safe))
                     (hash-put! __tmp200317 __tmp200316 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self194743%_ _%g194883195276%_))))
                (_%__kont199185199186%_
                 (lambda (_%g194920195150%_ _%g194921195151%_)
                   (let* ((_%accessor195173%_
                           (let ((__tmp200318
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g194921195151%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp200318)))
                          (_%klass195175%_
                           (let ((__tmp200319
                                  (##structure-ref
                                   _%accessor195173%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx194744%_
                              __tmp200319)))
                          (_%slot195177%_
                           (##structure-ref
                            _%accessor195173%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor195173%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass195175%_
                                    _%slot195177%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass195175%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp200321
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self194743%_ 'slots)))
                               (__tmp200320
                                (##structure-ref
                                 _%accessor195173%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp200321 __tmp200320 '#t))))))
                (_%__kont199187199188%_
                 (lambda (_%g194943195050%_
                          _%g194944195051%_
                          _%g194945195052%_)
                   (let* ((_%mutator195079%_
                           (let ((__tmp200322
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%g194945195052%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp200322)))
                          (_%klass195081%_
                           (let ((__tmp200323
                                  (##structure-ref
                                   _%mutator195079%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx194744%_
                              __tmp200323)))
                          (_%slot195083%_
                           (##structure-ref
                            _%mutator195079%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator195079%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass195081%_
                                    _%slot195083%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass195081%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp200324
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self194743%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp200324 _%slot195083%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self194743%_ _%g194943195050%_)))))
                (_%__kont199189199190%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self194743%_ _%stx194744%_)))))
            (let* ((_%__match199670199671%_
                    (lambda (_%e194946194986%_
                             _%hd194947194989%_
                             _%tl194948194991%_
                             _%e194949194994%_
                             _%hd194950194997%_
                             _%tl194951194999%_
                             _%e194952195002%_
                             _%hd194953195005%_
                             _%tl194954195007%_
                             _%e194955195010%_
                             _%hd194956195013%_
                             _%tl194957195015%_
                             _%e194958195018%_
                             _%hd194959195021%_
                             _%tl194960195023%_
                             _%e194961195026%_
                             _%hd194962195029%_
                             _%tl194963195031%_
                             _%e194964195034%_
                             _%hd194965195037%_
                             _%tl194966195039%_
                             _%e194967195042%_
                             _%hd194968195045%_
                             _%tl194969195047%_)
                      (let ((_%g194943195050%_ _%hd194968195045%_)
                            (_%g194944195051%_ _%hd194965195037%_)
                            (_%g194945195052%_ _%hd194956195013%_))
                        (if (and (let ((__tmp200325
                                        (let ((__tmp200326
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g194945195052%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp200326))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp200325
                                    'gxc#!mutator::t))
                                 (let ((__tmp200327
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self194743%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g194944195051%_
                                    __tmp200327)))
                            (_%__kont199187199188%_
                             _%g194943195050%_
                             _%g194944195051%_
                             _%g194945195052%_)
                            (_%__kont199189199190%_)))))
                   (_%__match199668199669%_
                    (lambda (_%e194946194986%_
                             _%hd194947194989%_
                             _%tl194948194991%_
                             _%e194949194994%_
                             _%hd194950194997%_
                             _%tl194951194999%_
                             _%e194952195002%_
                             _%hd194953195005%_
                             _%tl194954195007%_
                             _%e194955195010%_
                             _%hd194956195013%_
                             _%tl194957195015%_
                             _%e194958195018%_
                             _%hd194959195021%_
                             _%tl194960195023%_
                             _%e194961195026%_
                             _%hd194962195029%_
                             _%tl194963195031%_
                             _%e194964195034%_
                             _%hd194965195037%_
                             _%tl194966195039%_
                             _%e194967195042%_
                             _%hd194968195045%_
                             _%tl194969195047%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194969195047%_))
                          (_%__match199670199671%_
                           _%e194946194986%_
                           _%hd194947194989%_
                           _%tl194948194991%_
                           _%e194949194994%_
                           _%hd194950194997%_
                           _%tl194951194999%_
                           _%e194952195002%_
                           _%hd194953195005%_
                           _%tl194954195007%_
                           _%e194955195010%_
                           _%hd194956195013%_
                           _%tl194957195015%_
                           _%e194958195018%_
                           _%hd194959195021%_
                           _%tl194960195023%_
                           _%e194961195026%_
                           _%hd194962195029%_
                           _%tl194963195031%_
                           _%e194964195034%_
                           _%hd194965195037%_
                           _%tl194966195039%_
                           _%e194967195042%_
                           _%hd194968195045%_
                           _%tl194969195047%_)
                          (_%__kont199189199190%_))))
                   (_%__match199662199663%_
                    (lambda (_%e194946194986%_
                             _%hd194947194989%_
                             _%tl194948194991%_
                             _%e194949194994%_
                             _%hd194950194997%_
                             _%tl194951194999%_
                             _%e194952195002%_
                             _%hd194953195005%_
                             _%tl194954195007%_
                             _%e194955195010%_
                             _%hd194956195013%_
                             _%tl194957195015%_
                             _%e194958195018%_
                             _%hd194959195021%_
                             _%tl194960195023%_
                             _%e194961195026%_
                             _%hd194962195029%_
                             _%tl194963195031%_
                             _%e194964195034%_
                             _%hd194965195037%_
                             _%tl194966195039%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194960195023%_))
                          (let ((_%e194967195042%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194960195023%_))))
                            (let ((_%tl194969195047%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194967195042%_)))
                                  (_%hd194968195045%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194967195042%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194969195047%_))
                                  (_%__match199670199671%_
                                   _%e194946194986%_
                                   _%hd194947194989%_
                                   _%tl194948194991%_
                                   _%e194949194994%_
                                   _%hd194950194997%_
                                   _%tl194951194999%_
                                   _%e194952195002%_
                                   _%hd194953195005%_
                                   _%tl194954195007%_
                                   _%e194955195010%_
                                   _%hd194956195013%_
                                   _%tl194957195015%_
                                   _%e194958195018%_
                                   _%hd194959195021%_
                                   _%tl194960195023%_
                                   _%e194961195026%_
                                   _%hd194962195029%_
                                   _%tl194963195031%_
                                   _%e194964195034%_
                                   _%hd194965195037%_
                                   _%tl194966195039%_
                                   _%e194967195042%_
                                   _%hd194968195045%_
                                   _%tl194969195047%_)
                                  (_%__kont199189199190%_))))
                          (_%__kont199189199190%_))))
                   (_%__match199608199609%_
                    (lambda (_%e194922195094%_
                             _%hd194923195097%_
                             _%tl194924195099%_
                             _%e194925195102%_
                             _%hd194926195105%_
                             _%tl194927195107%_
                             _%e194928195110%_
                             _%hd194929195113%_
                             _%tl194930195115%_
                             _%e194931195118%_
                             _%hd194932195121%_
                             _%tl194933195123%_
                             _%e194934195126%_
                             _%hd194935195129%_
                             _%tl194936195131%_
                             _%e194937195134%_
                             _%hd194938195137%_
                             _%tl194939195139%_
                             _%e194940195142%_
                             _%hd194941195145%_
                             _%tl194942195147%_)
                      (let ((_%g194920195150%_ _%hd194941195145%_)
                            (_%g194921195151%_ _%hd194932195121%_))
                        (if (and (let ((__tmp200328
                                        (let ((__tmp200329
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%g194921195151%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp200329))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp200328
                                    'gxc#!accessor::t))
                                 (let ((__tmp200330
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self194743%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g194920195150%_
                                    __tmp200330)))
                            (_%__kont199185199186%_
                             _%g194920195150%_
                             _%g194921195151%_)
                            (_%__kont199189199190%_)))))
                   (_%__match199606199607%_
                    (lambda (_%e194922195094%_
                             _%hd194923195097%_
                             _%tl194924195099%_
                             _%e194925195102%_
                             _%hd194926195105%_
                             _%tl194927195107%_
                             _%e194928195110%_
                             _%hd194929195113%_
                             _%tl194930195115%_
                             _%e194931195118%_
                             _%hd194932195121%_
                             _%tl194933195123%_
                             _%e194934195126%_
                             _%hd194935195129%_
                             _%tl194936195131%_
                             _%e194937195134%_
                             _%hd194938195137%_
                             _%tl194939195139%_
                             _%e194940195142%_
                             _%hd194941195145%_
                             _%tl194942195147%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194936195131%_))
                          (_%__match199608199609%_
                           _%e194922195094%_
                           _%hd194923195097%_
                           _%tl194924195099%_
                           _%e194925195102%_
                           _%hd194926195105%_
                           _%tl194927195107%_
                           _%e194928195110%_
                           _%hd194929195113%_
                           _%tl194930195115%_
                           _%e194931195118%_
                           _%hd194932195121%_
                           _%tl194933195123%_
                           _%e194934195126%_
                           _%hd194935195129%_
                           _%tl194936195131%_
                           _%e194937195134%_
                           _%hd194938195137%_
                           _%tl194939195139%_
                           _%e194940195142%_
                           _%hd194941195145%_
                           _%tl194942195147%_)
                          (_%__match199662199663%_
                           _%e194922195094%_
                           _%hd194923195097%_
                           _%tl194924195099%_
                           _%e194925195102%_
                           _%hd194926195105%_
                           _%tl194927195107%_
                           _%e194928195110%_
                           _%hd194929195113%_
                           _%tl194930195115%_
                           _%e194931195118%_
                           _%hd194932195121%_
                           _%tl194933195123%_
                           _%e194934195126%_
                           _%hd194935195129%_
                           _%tl194936195131%_
                           _%e194937195134%_
                           _%hd194938195137%_
                           _%tl194939195139%_
                           _%e194940195142%_
                           _%hd194941195145%_
                           _%tl194942195147%_))))
                   (_%__match199552199553%_
                    (lambda (_%e194887195188%_
                             _%hd194888195191%_
                             _%tl194889195193%_
                             _%e194890195196%_
                             _%hd194891195199%_
                             _%tl194892195201%_
                             _%e194893195204%_
                             _%hd194894195207%_
                             _%tl194895195209%_
                             _%e194896195212%_
                             _%hd194897195215%_
                             _%tl194898195217%_
                             _%e194899195220%_
                             _%hd194900195223%_
                             _%tl194901195225%_
                             _%e194902195228%_
                             _%hd194903195231%_
                             _%tl194904195233%_
                             _%e194905195236%_
                             _%hd194906195239%_
                             _%tl194907195241%_
                             _%e194908195244%_
                             _%hd194909195247%_
                             _%tl194910195249%_
                             _%e194911195252%_
                             _%hd194912195255%_
                             _%tl194913195257%_
                             _%e194914195260%_
                             _%hd194915195263%_
                             _%tl194916195265%_
                             _%e194917195268%_
                             _%hd194918195271%_
                             _%tl194919195273%_)
                      (let ((_%g194883195276%_ _%hd194918195271%_)
                            (_%g194884195277%_ _%hd194915195263%_)
                            (_%g194885195278%_ _%hd194906195239%_)
                            (_%g194886195279%_ _%hd194897195215%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g194886195279%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g194886195279%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp200331
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self194743%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g194885195278%_
                                    __tmp200331)))
                            (_%__kont199183199184%_
                             _%g194883195276%_
                             _%g194884195277%_
                             _%g194885195278%_
                             _%g194886195279%_)
                            (_%__kont199189199190%_)))))
                   (_%__match199544199545%_
                    (lambda (_%e194887195188%_
                             _%hd194888195191%_
                             _%tl194889195193%_
                             _%e194890195196%_
                             _%hd194891195199%_
                             _%tl194892195201%_
                             _%e194893195204%_
                             _%hd194894195207%_
                             _%tl194895195209%_
                             _%e194896195212%_
                             _%hd194897195215%_
                             _%tl194898195217%_
                             _%e194899195220%_
                             _%hd194900195223%_
                             _%tl194901195225%_
                             _%e194902195228%_
                             _%hd194903195231%_
                             _%tl194904195233%_
                             _%e194905195236%_
                             _%hd194906195239%_
                             _%tl194907195241%_
                             _%e194908195244%_
                             _%hd194909195247%_
                             _%tl194910195249%_
                             _%e194911195252%_
                             _%hd194912195255%_
                             _%tl194913195257%_
                             _%e194914195260%_
                             _%hd194915195263%_
                             _%tl194916195265%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194910195249%_))
                          (let ((_%e194917195268%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194910195249%_))))
                            (let ((_%tl194919195273%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194917195268%_)))
                                  (_%hd194918195271%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194917195268%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194919195273%_))
                                  (_%__match199552199553%_
                                   _%e194887195188%_
                                   _%hd194888195191%_
                                   _%tl194889195193%_
                                   _%e194890195196%_
                                   _%hd194891195199%_
                                   _%tl194892195201%_
                                   _%e194893195204%_
                                   _%hd194894195207%_
                                   _%tl194895195209%_
                                   _%e194896195212%_
                                   _%hd194897195215%_
                                   _%tl194898195217%_
                                   _%e194899195220%_
                                   _%hd194900195223%_
                                   _%tl194901195225%_
                                   _%e194902195228%_
                                   _%hd194903195231%_
                                   _%tl194904195233%_
                                   _%e194905195236%_
                                   _%hd194906195239%_
                                   _%tl194907195241%_
                                   _%e194908195244%_
                                   _%hd194909195247%_
                                   _%tl194910195249%_
                                   _%e194911195252%_
                                   _%hd194912195255%_
                                   _%tl194913195257%_
                                   _%e194914195260%_
                                   _%hd194915195263%_
                                   _%tl194916195265%_
                                   _%e194917195268%_
                                   _%hd194918195271%_
                                   _%tl194919195273%_)
                                  (_%__kont199189199190%_))))
                          (_%__match199668199669%_
                           _%e194887195188%_
                           _%hd194888195191%_
                           _%tl194889195193%_
                           _%e194890195196%_
                           _%hd194891195199%_
                           _%tl194892195201%_
                           _%e194893195204%_
                           _%hd194894195207%_
                           _%tl194895195209%_
                           _%e194896195212%_
                           _%hd194897195215%_
                           _%tl194898195217%_
                           _%e194899195220%_
                           _%hd194900195223%_
                           _%tl194901195225%_
                           _%e194902195228%_
                           _%hd194903195231%_
                           _%tl194904195233%_
                           _%e194905195236%_
                           _%hd194906195239%_
                           _%tl194907195241%_
                           _%e194908195244%_
                           _%hd194909195247%_
                           _%tl194910195249%_))))
                   (_%__match199466199467%_
                    (lambda (_%e194853195319%_
                             _%hd194854195322%_
                             _%tl194855195324%_
                             _%e194856195327%_
                             _%hd194857195330%_
                             _%tl194858195332%_
                             _%e194859195335%_
                             _%hd194860195338%_
                             _%tl194861195340%_
                             _%e194862195343%_
                             _%hd194863195346%_
                             _%tl194864195348%_
                             _%e194865195351%_
                             _%hd194866195354%_
                             _%tl194867195356%_
                             _%e194868195359%_
                             _%hd194869195362%_
                             _%tl194870195364%_
                             _%e194871195367%_
                             _%hd194872195370%_
                             _%tl194873195372%_
                             _%e194874195375%_
                             _%hd194875195378%_
                             _%tl194876195380%_
                             _%e194877195383%_
                             _%hd194878195386%_
                             _%tl194879195388%_
                             _%e194880195391%_
                             _%hd194881195394%_
                             _%tl194882195396%_)
                      (let ((_%g194850195399%_ _%hd194881195394%_)
                            (_%g194851195400%_ _%hd194872195370%_)
                            (_%g194852195401%_ _%hd194863195346%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g194852195401%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%g194852195401%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp200332
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self194743%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g194851195400%_
                                    __tmp200332)))
                            (_%__kont199181199182%_
                             _%g194850195399%_
                             _%g194851195400%_
                             _%g194852195401%_)
                            (_%__match199670199671%_
                             _%e194853195319%_
                             _%hd194854195322%_
                             _%tl194855195324%_
                             _%e194856195327%_
                             _%hd194857195330%_
                             _%tl194858195332%_
                             _%e194859195335%_
                             _%hd194860195338%_
                             _%tl194861195340%_
                             _%e194862195343%_
                             _%hd194863195346%_
                             _%tl194864195348%_
                             _%e194865195351%_
                             _%hd194866195354%_
                             _%tl194867195356%_
                             _%e194868195359%_
                             _%hd194869195362%_
                             _%tl194870195364%_
                             _%e194871195367%_
                             _%hd194872195370%_
                             _%tl194873195372%_
                             _%e194874195375%_
                             _%hd194875195378%_
                             _%tl194876195380%_)))))
                   (_%__match199464199465%_
                    (lambda (_%e194853195319%_
                             _%hd194854195322%_
                             _%tl194855195324%_
                             _%e194856195327%_
                             _%hd194857195330%_
                             _%tl194858195332%_
                             _%e194859195335%_
                             _%hd194860195338%_
                             _%tl194861195340%_
                             _%e194862195343%_
                             _%hd194863195346%_
                             _%tl194864195348%_
                             _%e194865195351%_
                             _%hd194866195354%_
                             _%tl194867195356%_
                             _%e194868195359%_
                             _%hd194869195362%_
                             _%tl194870195364%_
                             _%e194871195367%_
                             _%hd194872195370%_
                             _%tl194873195372%_
                             _%e194874195375%_
                             _%hd194875195378%_
                             _%tl194876195380%_
                             _%e194877195383%_
                             _%hd194878195386%_
                             _%tl194879195388%_
                             _%e194880195391%_
                             _%hd194881195394%_
                             _%tl194882195396%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl194876195380%_))
                          (_%__match199466199467%_
                           _%e194853195319%_
                           _%hd194854195322%_
                           _%tl194855195324%_
                           _%e194856195327%_
                           _%hd194857195330%_
                           _%tl194858195332%_
                           _%e194859195335%_
                           _%hd194860195338%_
                           _%tl194861195340%_
                           _%e194862195343%_
                           _%hd194863195346%_
                           _%tl194864195348%_
                           _%e194865195351%_
                           _%hd194866195354%_
                           _%tl194867195356%_
                           _%e194868195359%_
                           _%hd194869195362%_
                           _%tl194870195364%_
                           _%e194871195367%_
                           _%hd194872195370%_
                           _%tl194873195372%_
                           _%e194874195375%_
                           _%hd194875195378%_
                           _%tl194876195380%_
                           _%e194877195383%_
                           _%hd194878195386%_
                           _%tl194879195388%_
                           _%e194880195391%_
                           _%hd194881195394%_
                           _%tl194882195396%_)
                          (_%__match199544199545%_
                           _%e194853195319%_
                           _%hd194854195322%_
                           _%tl194855195324%_
                           _%e194856195327%_
                           _%hd194857195330%_
                           _%tl194858195332%_
                           _%e194859195335%_
                           _%hd194860195338%_
                           _%tl194861195340%_
                           _%e194862195343%_
                           _%hd194863195346%_
                           _%tl194864195348%_
                           _%e194865195351%_
                           _%hd194866195354%_
                           _%tl194867195356%_
                           _%e194868195359%_
                           _%hd194869195362%_
                           _%tl194870195364%_
                           _%e194871195367%_
                           _%hd194872195370%_
                           _%tl194873195372%_
                           _%e194874195375%_
                           _%hd194875195378%_
                           _%tl194876195380%_
                           _%e194877195383%_
                           _%hd194878195386%_
                           _%tl194879195388%_
                           _%e194880195391%_
                           _%hd194881195394%_
                           _%tl194882195396%_))))
                   (_%__match199454199455%_
                    (lambda (_%e194853195319%_
                             _%hd194854195322%_
                             _%tl194855195324%_
                             _%e194856195327%_
                             _%hd194857195330%_
                             _%tl194858195332%_
                             _%e194859195335%_
                             _%hd194860195338%_
                             _%tl194861195340%_
                             _%e194862195343%_
                             _%hd194863195346%_
                             _%tl194864195348%_
                             _%e194865195351%_
                             _%hd194866195354%_
                             _%tl194867195356%_
                             _%e194868195359%_
                             _%hd194869195362%_
                             _%tl194870195364%_
                             _%e194871195367%_
                             _%hd194872195370%_
                             _%tl194873195372%_
                             _%e194874195375%_
                             _%hd194875195378%_
                             _%tl194876195380%_
                             _%e194877195383%_
                             _%hd194878195386%_
                             _%tl194879195388%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd194878195386%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194879195388%_))
                              (let ((_%e194880195391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194879195388%_))))
                                (let ((_%tl194882195396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194880195391%_)))
                                      (_%hd194881195394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194880195391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194882195396%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl194876195380%_))
                                          (_%__match199466199467%_
                                           _%e194853195319%_
                                           _%hd194854195322%_
                                           _%tl194855195324%_
                                           _%e194856195327%_
                                           _%hd194857195330%_
                                           _%tl194858195332%_
                                           _%e194859195335%_
                                           _%hd194860195338%_
                                           _%tl194861195340%_
                                           _%e194862195343%_
                                           _%hd194863195346%_
                                           _%tl194864195348%_
                                           _%e194865195351%_
                                           _%hd194866195354%_
                                           _%tl194867195356%_
                                           _%e194868195359%_
                                           _%hd194869195362%_
                                           _%tl194870195364%_
                                           _%e194871195367%_
                                           _%hd194872195370%_
                                           _%tl194873195372%_
                                           _%e194874195375%_
                                           _%hd194875195378%_
                                           _%tl194876195380%_
                                           _%e194877195383%_
                                           _%hd194878195386%_
                                           _%tl194879195388%_
                                           _%e194880195391%_
                                           _%hd194881195394%_
                                           _%tl194882195396%_)
                                          (_%__match199544199545%_
                                           _%e194853195319%_
                                           _%hd194854195322%_
                                           _%tl194855195324%_
                                           _%e194856195327%_
                                           _%hd194857195330%_
                                           _%tl194858195332%_
                                           _%e194859195335%_
                                           _%hd194860195338%_
                                           _%tl194861195340%_
                                           _%e194862195343%_
                                           _%hd194863195346%_
                                           _%tl194864195348%_
                                           _%e194865195351%_
                                           _%hd194866195354%_
                                           _%tl194867195356%_
                                           _%e194868195359%_
                                           _%hd194869195362%_
                                           _%tl194870195364%_
                                           _%e194871195367%_
                                           _%hd194872195370%_
                                           _%tl194873195372%_
                                           _%e194874195375%_
                                           _%hd194875195378%_
                                           _%tl194876195380%_
                                           _%e194877195383%_
                                           _%hd194878195386%_
                                           _%tl194879195388%_
                                           _%e194880195391%_
                                           _%hd194881195394%_
                                           _%tl194882195396%_))
                                      (_%__match199668199669%_
                                       _%e194853195319%_
                                       _%hd194854195322%_
                                       _%tl194855195324%_
                                       _%e194856195327%_
                                       _%hd194857195330%_
                                       _%tl194858195332%_
                                       _%e194859195335%_
                                       _%hd194860195338%_
                                       _%tl194861195340%_
                                       _%e194862195343%_
                                       _%hd194863195346%_
                                       _%tl194864195348%_
                                       _%e194865195351%_
                                       _%hd194866195354%_
                                       _%tl194867195356%_
                                       _%e194868195359%_
                                       _%hd194869195362%_
                                       _%tl194870195364%_
                                       _%e194871195367%_
                                       _%hd194872195370%_
                                       _%tl194873195372%_
                                       _%e194874195375%_
                                       _%hd194875195378%_
                                       _%tl194876195380%_))))
                              (_%__match199668199669%_
                               _%e194853195319%_
                               _%hd194854195322%_
                               _%tl194855195324%_
                               _%e194856195327%_
                               _%hd194857195330%_
                               _%tl194858195332%_
                               _%e194859195335%_
                               _%hd194860195338%_
                               _%tl194861195340%_
                               _%e194862195343%_
                               _%hd194863195346%_
                               _%tl194864195348%_
                               _%e194865195351%_
                               _%hd194866195354%_
                               _%tl194867195356%_
                               _%e194868195359%_
                               _%hd194869195362%_
                               _%tl194870195364%_
                               _%e194871195367%_
                               _%hd194872195370%_
                               _%tl194873195372%_
                               _%e194874195375%_
                               _%hd194875195378%_
                               _%tl194876195380%_))
                          (_%__match199668199669%_
                           _%e194853195319%_
                           _%hd194854195322%_
                           _%tl194855195324%_
                           _%e194856195327%_
                           _%hd194857195330%_
                           _%tl194858195332%_
                           _%e194859195335%_
                           _%hd194860195338%_
                           _%tl194861195340%_
                           _%e194862195343%_
                           _%hd194863195346%_
                           _%tl194864195348%_
                           _%e194865195351%_
                           _%hd194866195354%_
                           _%tl194867195356%_
                           _%e194868195359%_
                           _%hd194869195362%_
                           _%tl194870195364%_
                           _%e194871195367%_
                           _%hd194872195370%_
                           _%tl194873195372%_
                           _%e194874195375%_
                           _%hd194875195378%_
                           _%tl194876195380%_))))
                   (_%__match199386199387%_
                    (lambda (_%e194802195438%_
                             _%hd194803195441%_
                             _%tl194804195443%_
                             _%e194805195446%_
                             _%hd194806195449%_
                             _%tl194807195451%_
                             _%e194808195454%_
                             _%hd194809195457%_
                             _%tl194810195459%_
                             _%e194811195462%_
                             _%hd194812195465%_
                             _%tl194813195467%_
                             _%e194814195470%_
                             _%hd194815195473%_
                             _%tl194816195475%_
                             _%e194817195478%_
                             _%hd194818195481%_
                             _%tl194819195483%_
                             _%e194820195486%_
                             _%hd194821195489%_
                             _%tl194822195491%_
                             _%e194823195494%_
                             _%hd194824195497%_
                             _%tl194825195499%_
                             _%e194826195502%_
                             _%hd194827195505%_
                             _%tl194828195507%_
                             _%e194829195510%_
                             _%hd194830195513%_
                             _%tl194831195515%_
                             _%e194832195518%_
                             _%hd194833195521%_
                             _%tl194834195523%_
                             _%e194835195526%_
                             _%hd194836195529%_
                             _%tl194837195531%_
                             _%e194838195534%_
                             _%hd194839195537%_
                             _%tl194840195539%_
                             _%__splice199179199180%_
                             _%target194841195542%_
                             _%tl194843195544%_)
                      (letrec ((_%loop194844195547%_
                                (lambda (_%hd194842195550%_
                                         _%args194848195552%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194842195550%_))
                                      (let ((_%e194845195554%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194842195550%_))))
                                        (let ((_%lp-tl194847195559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194845195554%_)))
                                              (_%lp-hd194846195557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194845195554%_))))
                                          (_%loop194844195547%_
                                           _%lp-tl194847195559%_
                                           (cons _%lp-hd194846195557%_
                                                 _%args194848195552%_))))
                                      (let ((_%args194849195562%_
                                             (reverse _%args194848195552%_)))
                                        (let ((_%g194797195564%_
                                               _%args194849195562%_)
                                              (_%g194798195565%_
                                               _%hd194839195537%_)
                                              (_%g194799195566%_
                                               _%hd194830195513%_)
                                              (_%g194800195567%_
                                               _%hd194821195489%_)
                                              (_%g194801195568%_
                                               _%hd194812195465%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g194801195568%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g194800195567%_
                                                      'call-method))
                                                   (let ((__tmp200333
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self194743%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g194799195566%_
                                                      __tmp200333)))
                                              (_%__kont199177199178%_
                                               _%g194797195564%_
                                               _%g194798195565%_
                                               _%g194799195566%_
                                               _%g194800195567%_
                                               _%g194801195568%_)
                                              (_%__kont199189199190%_))))))))
                        (_%loop194844195547%_ _%target194841195542%_ '()))))
                   (_%__match199344199345%_
                    (lambda (_%e194802195438%_
                             _%hd194803195441%_
                             _%tl194804195443%_
                             _%e194805195446%_
                             _%hd194806195449%_
                             _%tl194807195451%_
                             _%e194808195454%_
                             _%hd194809195457%_
                             _%tl194810195459%_
                             _%e194811195462%_
                             _%hd194812195465%_
                             _%tl194813195467%_
                             _%e194814195470%_
                             _%hd194815195473%_
                             _%tl194816195475%_
                             _%e194817195478%_
                             _%hd194818195481%_
                             _%tl194819195483%_
                             _%e194820195486%_
                             _%hd194821195489%_
                             _%tl194822195491%_
                             _%e194823195494%_
                             _%hd194824195497%_
                             _%tl194825195499%_
                             _%e194826195502%_
                             _%hd194827195505%_
                             _%tl194828195507%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd194827195505%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194828195507%_))
                              (let ((_%e194829195510%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194828195507%_))))
                                (let ((_%tl194831195515%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194829195510%_)))
                                      (_%hd194830195513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194829195510%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl194831195515%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl194825195499%_))
                                          (let ((_%e194832195518%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl194825195499%_))))
                                            (let ((_%tl194834195523%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e194832195518%_)))
                                                  (_%hd194833195521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e194832195518%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd194833195521%_))
                                                  (let ((_%e194835195526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd194833195521%_))))
                                                    (let ((_%tl194837195531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194835195526%_)))
                                                          (_%hd194836195529%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194835195526%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd194836195529%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd194836195529%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194837195531%_))
                          (let ((_%e194838195534%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194837195531%_))))
                            (let ((_%tl194840195539%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194838195534%_)))
                                  (_%hd194839195537%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194838195534%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl194840195539%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl194834195523%_))
                                      (let ((_%__splice199179199180%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl194834195523%_
                                                '0))))
                                        (let ((_%tl194843195544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice199179199180%_
                                                  '1)))
                                              (_%target194841195542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice199179199180%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194843195544%_))
                                              (_%__match199386199387%_
                                               _%e194802195438%_
                                               _%hd194803195441%_
                                               _%tl194804195443%_
                                               _%e194805195446%_
                                               _%hd194806195449%_
                                               _%tl194807195451%_
                                               _%e194808195454%_
                                               _%hd194809195457%_
                                               _%tl194810195459%_
                                               _%e194811195462%_
                                               _%hd194812195465%_
                                               _%tl194813195467%_
                                               _%e194814195470%_
                                               _%hd194815195473%_
                                               _%tl194816195475%_
                                               _%e194817195478%_
                                               _%hd194818195481%_
                                               _%tl194819195483%_
                                               _%e194820195486%_
                                               _%hd194821195489%_
                                               _%tl194822195491%_
                                               _%e194823195494%_
                                               _%hd194824195497%_
                                               _%tl194825195499%_
                                               _%e194826195502%_
                                               _%hd194827195505%_
                                               _%tl194828195507%_
                                               _%e194829195510%_
                                               _%hd194830195513%_
                                               _%tl194831195515%_
                                               _%e194832195518%_
                                               _%hd194833195521%_
                                               _%tl194834195523%_
                                               _%e194835195526%_
                                               _%hd194836195529%_
                                               _%tl194837195531%_
                                               _%e194838195534%_
                                               _%hd194839195537%_
                                               _%tl194840195539%_
                                               _%__splice199179199180%_
                                               _%target194841195542%_
                                               _%tl194843195544%_)
                                              (_%__kont199189199190%_))))
                                      (_%__kont199189199190%_))
                                  (_%__kont199189199190%_))))
                          (_%__kont199189199190%_))
                      (_%__kont199189199190%_))
                  (_%__kont199189199190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont199189199190%_))))
                                          (_%__match199668199669%_
                                           _%e194802195438%_
                                           _%hd194803195441%_
                                           _%tl194804195443%_
                                           _%e194805195446%_
                                           _%hd194806195449%_
                                           _%tl194807195451%_
                                           _%e194808195454%_
                                           _%hd194809195457%_
                                           _%tl194810195459%_
                                           _%e194811195462%_
                                           _%hd194812195465%_
                                           _%tl194813195467%_
                                           _%e194814195470%_
                                           _%hd194815195473%_
                                           _%tl194816195475%_
                                           _%e194817195478%_
                                           _%hd194818195481%_
                                           _%tl194819195483%_
                                           _%e194820195486%_
                                           _%hd194821195489%_
                                           _%tl194822195491%_
                                           _%e194823195494%_
                                           _%hd194824195497%_
                                           _%tl194825195499%_))
                                      (_%__match199668199669%_
                                       _%e194802195438%_
                                       _%hd194803195441%_
                                       _%tl194804195443%_
                                       _%e194805195446%_
                                       _%hd194806195449%_
                                       _%tl194807195451%_
                                       _%e194808195454%_
                                       _%hd194809195457%_
                                       _%tl194810195459%_
                                       _%e194811195462%_
                                       _%hd194812195465%_
                                       _%tl194813195467%_
                                       _%e194814195470%_
                                       _%hd194815195473%_
                                       _%tl194816195475%_
                                       _%e194817195478%_
                                       _%hd194818195481%_
                                       _%tl194819195483%_
                                       _%e194820195486%_
                                       _%hd194821195489%_
                                       _%tl194822195491%_
                                       _%e194823195494%_
                                       _%hd194824195497%_
                                       _%tl194825195499%_))))
                              (_%__match199668199669%_
                               _%e194802195438%_
                               _%hd194803195441%_
                               _%tl194804195443%_
                               _%e194805195446%_
                               _%hd194806195449%_
                               _%tl194807195451%_
                               _%e194808195454%_
                               _%hd194809195457%_
                               _%tl194810195459%_
                               _%e194811195462%_
                               _%hd194812195465%_
                               _%tl194813195467%_
                               _%e194814195470%_
                               _%hd194815195473%_
                               _%tl194816195475%_
                               _%e194817195478%_
                               _%hd194818195481%_
                               _%tl194819195483%_
                               _%e194820195486%_
                               _%hd194821195489%_
                               _%tl194822195491%_
                               _%e194823195494%_
                               _%hd194824195497%_
                               _%tl194825195499%_))
                          (_%__match199454199455%_
                           _%e194802195438%_
                           _%hd194803195441%_
                           _%tl194804195443%_
                           _%e194805195446%_
                           _%hd194806195449%_
                           _%tl194807195451%_
                           _%e194808195454%_
                           _%hd194809195457%_
                           _%tl194810195459%_
                           _%e194811195462%_
                           _%hd194812195465%_
                           _%tl194813195467%_
                           _%e194814195470%_
                           _%hd194815195473%_
                           _%tl194816195475%_
                           _%e194817195478%_
                           _%hd194818195481%_
                           _%tl194819195483%_
                           _%e194820195486%_
                           _%hd194821195489%_
                           _%tl194822195491%_
                           _%e194823195494%_
                           _%hd194824195497%_
                           _%tl194825195499%_
                           _%e194826195502%_
                           _%hd194827195505%_
                           _%tl194828195507%_))))
                   (_%__match199276199277%_
                    (lambda (_%e194758195625%_
                             _%hd194759195628%_
                             _%tl194760195630%_
                             _%e194761195633%_
                             _%hd194762195636%_
                             _%tl194763195638%_
                             _%e194764195641%_
                             _%hd194765195644%_
                             _%tl194766195646%_
                             _%e194767195649%_
                             _%hd194768195652%_
                             _%tl194769195654%_
                             _%e194770195657%_
                             _%hd194771195660%_
                             _%tl194772195662%_
                             _%e194773195665%_
                             _%hd194774195668%_
                             _%tl194775195670%_
                             _%e194776195673%_
                             _%hd194777195676%_
                             _%tl194778195678%_
                             _%e194779195681%_
                             _%hd194780195684%_
                             _%tl194781195686%_
                             _%e194782195689%_
                             _%hd194783195692%_
                             _%tl194784195694%_
                             _%e194785195697%_
                             _%hd194786195700%_
                             _%tl194787195702%_
                             _%__splice199175199176%_
                             _%target194788195705%_
                             _%tl194790195707%_)
                      (letrec ((_%loop194791195710%_
                                (lambda (_%hd194789195713%_
                                         _%args194795195715%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd194789195713%_))
                                      (let ((_%e194792195717%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd194789195713%_))))
                                        (let ((_%lp-tl194794195722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194792195717%_)))
                                              (_%lp-hd194793195720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194792195717%_))))
                                          (_%loop194791195710%_
                                           _%lp-tl194794195722%_
                                           (cons _%lp-hd194793195720%_
                                                 _%args194795195715%_))))
                                      (let ((_%args194796195725%_
                                             (reverse _%args194795195715%_)))
                                        (let ((_%g194754195727%_
                                               _%args194796195725%_)
                                              (_%g194755195728%_
                                               _%hd194786195700%_)
                                              (_%g194756195729%_
                                               _%hd194777195676%_)
                                              (_%g194757195730%_
                                               _%hd194768195652%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%g194757195730%_
                                                      'call-method))
                                                   (let ((__tmp200334
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self194743%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g194756195729%_
                                                      __tmp200334)))
                                              (_%__kont199173199174%_
                                               _%g194754195727%_
                                               _%g194755195728%_
                                               _%g194756195729%_
                                               _%g194757195730%_)
                                              (_%__match199464199465%_
                                               _%e194758195625%_
                                               _%hd194759195628%_
                                               _%tl194760195630%_
                                               _%e194761195633%_
                                               _%hd194762195636%_
                                               _%tl194763195638%_
                                               _%e194764195641%_
                                               _%hd194765195644%_
                                               _%tl194766195646%_
                                               _%e194767195649%_
                                               _%hd194768195652%_
                                               _%tl194769195654%_
                                               _%e194770195657%_
                                               _%hd194771195660%_
                                               _%tl194772195662%_
                                               _%e194773195665%_
                                               _%hd194774195668%_
                                               _%tl194775195670%_
                                               _%e194776195673%_
                                               _%hd194777195676%_
                                               _%tl194778195678%_
                                               _%e194779195681%_
                                               _%hd194780195684%_
                                               _%tl194781195686%_
                                               _%e194782195689%_
                                               _%hd194783195692%_
                                               _%tl194784195694%_
                                               _%e194785195697%_
                                               _%hd194786195700%_
                                               _%tl194787195702%_))))))))
                        (_%loop194791195710%_ _%target194788195705%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx199171199172%_))
                  (let ((_%e194758195625%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx199171199172%_))))
                    (let ((_%tl194760195630%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194758195625%_)))
                          (_%hd194759195628%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194758195625%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl194760195630%_))
                          (let ((_%e194761195633%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl194760195630%_))))
                            (let ((_%tl194763195638%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194761195633%_)))
                                  (_%hd194762195636%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194761195633%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd194762195636%_))
                                  (let ((_%e194764195641%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd194762195636%_))))
                                    (let ((_%tl194766195646%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e194764195641%_)))
                                          (_%hd194765195644%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e194764195641%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd194765195644%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd194765195644%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl194766195646%_))
                                                  (let ((_%e194767195649%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl194766195646%_))))
                                                    (let ((_%tl194769195654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e194767195649%_)))
                                                          (_%hd194768195652%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e194767195649%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl194769195654%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl194763195638%_))
                      (let ((_%e194770195657%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl194763195638%_))))
                        (let ((_%tl194772195662%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194770195657%_)))
                              (_%hd194771195660%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194770195657%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd194771195660%_))
                              (let ((_%e194773195665%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd194771195660%_))))
                                (let ((_%tl194775195670%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194773195665%_)))
                                      (_%hd194774195668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194773195665%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd194774195668%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd194774195668%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl194775195670%_))
                                              (let ((_%e194776195673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl194775195670%_))))
                                                (let ((_%tl194778195678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e194776195673%_)))
                                                      (_%hd194777195676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e194776195673%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl194778195678%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl194772195662%_))
                                                          (let ((_%e194779195681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl194772195662%_))))
                    (let ((_%tl194781195686%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e194779195681%_)))
                          (_%hd194780195684%_
                           (let ()
                             (declare (not safe))
                             (##car _%e194779195681%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd194780195684%_))
                          (let ((_%e194782195689%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd194780195684%_))))
                            (let ((_%tl194784195694%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e194782195689%_)))
                                  (_%hd194783195692%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e194782195689%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd194783195692%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd194783195692%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl194784195694%_))
                                          (let ((_%e194785195697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl194784195694%_))))
                                            (let ((_%tl194787195702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e194785195697%_)))
                                                  (_%hd194786195700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e194785195697%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl194787195702%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl194781195686%_))
                                                      (let ((_%__splice199175199176%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl194781195686%_
                        '0))))
                (let ((_%tl194790195707%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice199175199176%_ '1)))
                      (_%target194788195705%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice199175199176%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl194790195707%_))
                      (_%__match199276199277%_
                       _%e194758195625%_
                       _%hd194759195628%_
                       _%tl194760195630%_
                       _%e194761195633%_
                       _%hd194762195636%_
                       _%tl194763195638%_
                       _%e194764195641%_
                       _%hd194765195644%_
                       _%tl194766195646%_
                       _%e194767195649%_
                       _%hd194768195652%_
                       _%tl194769195654%_
                       _%e194770195657%_
                       _%hd194771195660%_
                       _%tl194772195662%_
                       _%e194773195665%_
                       _%hd194774195668%_
                       _%tl194775195670%_
                       _%e194776195673%_
                       _%hd194777195676%_
                       _%tl194778195678%_
                       _%e194779195681%_
                       _%hd194780195684%_
                       _%tl194781195686%_
                       _%e194782195689%_
                       _%hd194783195692%_
                       _%tl194784195694%_
                       _%e194785195697%_
                       _%hd194786195700%_
                       _%tl194787195702%_
                       _%__splice199175199176%_
                       _%target194788195705%_
                       _%tl194790195707%_)
                      (_%__match199464199465%_
                       _%e194758195625%_
                       _%hd194759195628%_
                       _%tl194760195630%_
                       _%e194761195633%_
                       _%hd194762195636%_
                       _%tl194763195638%_
                       _%e194764195641%_
                       _%hd194765195644%_
                       _%tl194766195646%_
                       _%e194767195649%_
                       _%hd194768195652%_
                       _%tl194769195654%_
                       _%e194770195657%_
                       _%hd194771195660%_
                       _%tl194772195662%_
                       _%e194773195665%_
                       _%hd194774195668%_
                       _%tl194775195670%_
                       _%e194776195673%_
                       _%hd194777195676%_
                       _%tl194778195678%_
                       _%e194779195681%_
                       _%hd194780195684%_
                       _%tl194781195686%_
                       _%e194782195689%_
                       _%hd194783195692%_
                       _%tl194784195694%_
                       _%e194785195697%_
                       _%hd194786195700%_
                       _%tl194787195702%_))))
              (_%__match199464199465%_
               _%e194758195625%_
               _%hd194759195628%_
               _%tl194760195630%_
               _%e194761195633%_
               _%hd194762195636%_
               _%tl194763195638%_
               _%e194764195641%_
               _%hd194765195644%_
               _%tl194766195646%_
               _%e194767195649%_
               _%hd194768195652%_
               _%tl194769195654%_
               _%e194770195657%_
               _%hd194771195660%_
               _%tl194772195662%_
               _%e194773195665%_
               _%hd194774195668%_
               _%tl194775195670%_
               _%e194776195673%_
               _%hd194777195676%_
               _%tl194778195678%_
               _%e194779195681%_
               _%hd194780195684%_
               _%tl194781195686%_
               _%e194782195689%_
               _%hd194783195692%_
               _%tl194784195694%_
               _%e194785195697%_
               _%hd194786195700%_
               _%tl194787195702%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match199668199669%_
                                                   _%e194758195625%_
                                                   _%hd194759195628%_
                                                   _%tl194760195630%_
                                                   _%e194761195633%_
                                                   _%hd194762195636%_
                                                   _%tl194763195638%_
                                                   _%e194764195641%_
                                                   _%hd194765195644%_
                                                   _%tl194766195646%_
                                                   _%e194767195649%_
                                                   _%hd194768195652%_
                                                   _%tl194769195654%_
                                                   _%e194770195657%_
                                                   _%hd194771195660%_
                                                   _%tl194772195662%_
                                                   _%e194773195665%_
                                                   _%hd194774195668%_
                                                   _%tl194775195670%_
                                                   _%e194776195673%_
                                                   _%hd194777195676%_
                                                   _%tl194778195678%_
                                                   _%e194779195681%_
                                                   _%hd194780195684%_
                                                   _%tl194781195686%_))))
                                          (_%__match199668199669%_
                                           _%e194758195625%_
                                           _%hd194759195628%_
                                           _%tl194760195630%_
                                           _%e194761195633%_
                                           _%hd194762195636%_
                                           _%tl194763195638%_
                                           _%e194764195641%_
                                           _%hd194765195644%_
                                           _%tl194766195646%_
                                           _%e194767195649%_
                                           _%hd194768195652%_
                                           _%tl194769195654%_
                                           _%e194770195657%_
                                           _%hd194771195660%_
                                           _%tl194772195662%_
                                           _%e194773195665%_
                                           _%hd194774195668%_
                                           _%tl194775195670%_
                                           _%e194776195673%_
                                           _%hd194777195676%_
                                           _%tl194778195678%_
                                           _%e194779195681%_
                                           _%hd194780195684%_
                                           _%tl194781195686%_))
                                      (_%__match199344199345%_
                                       _%e194758195625%_
                                       _%hd194759195628%_
                                       _%tl194760195630%_
                                       _%e194761195633%_
                                       _%hd194762195636%_
                                       _%tl194763195638%_
                                       _%e194764195641%_
                                       _%hd194765195644%_
                                       _%tl194766195646%_
                                       _%e194767195649%_
                                       _%hd194768195652%_
                                       _%tl194769195654%_
                                       _%e194770195657%_
                                       _%hd194771195660%_
                                       _%tl194772195662%_
                                       _%e194773195665%_
                                       _%hd194774195668%_
                                       _%tl194775195670%_
                                       _%e194776195673%_
                                       _%hd194777195676%_
                                       _%tl194778195678%_
                                       _%e194779195681%_
                                       _%hd194780195684%_
                                       _%tl194781195686%_
                                       _%e194782195689%_
                                       _%hd194783195692%_
                                       _%tl194784195694%_))
                                  (_%__match199668199669%_
                                   _%e194758195625%_
                                   _%hd194759195628%_
                                   _%tl194760195630%_
                                   _%e194761195633%_
                                   _%hd194762195636%_
                                   _%tl194763195638%_
                                   _%e194764195641%_
                                   _%hd194765195644%_
                                   _%tl194766195646%_
                                   _%e194767195649%_
                                   _%hd194768195652%_
                                   _%tl194769195654%_
                                   _%e194770195657%_
                                   _%hd194771195660%_
                                   _%tl194772195662%_
                                   _%e194773195665%_
                                   _%hd194774195668%_
                                   _%tl194775195670%_
                                   _%e194776195673%_
                                   _%hd194777195676%_
                                   _%tl194778195678%_
                                   _%e194779195681%_
                                   _%hd194780195684%_
                                   _%tl194781195686%_))))
                          (_%__match199668199669%_
                           _%e194758195625%_
                           _%hd194759195628%_
                           _%tl194760195630%_
                           _%e194761195633%_
                           _%hd194762195636%_
                           _%tl194763195638%_
                           _%e194764195641%_
                           _%hd194765195644%_
                           _%tl194766195646%_
                           _%e194767195649%_
                           _%hd194768195652%_
                           _%tl194769195654%_
                           _%e194770195657%_
                           _%hd194771195660%_
                           _%tl194772195662%_
                           _%e194773195665%_
                           _%hd194774195668%_
                           _%tl194775195670%_
                           _%e194776195673%_
                           _%hd194777195676%_
                           _%tl194778195678%_
                           _%e194779195681%_
                           _%hd194780195684%_
                           _%tl194781195686%_))))
                  (_%__match199606199607%_
                   _%e194758195625%_
                   _%hd194759195628%_
                   _%tl194760195630%_
                   _%e194761195633%_
                   _%hd194762195636%_
                   _%tl194763195638%_
                   _%e194764195641%_
                   _%hd194765195644%_
                   _%tl194766195646%_
                   _%e194767195649%_
                   _%hd194768195652%_
                   _%tl194769195654%_
                   _%e194770195657%_
                   _%hd194771195660%_
                   _%tl194772195662%_
                   _%e194773195665%_
                   _%hd194774195668%_
                   _%tl194775195670%_
                   _%e194776195673%_
                   _%hd194777195676%_
                   _%tl194778195678%_))
              (_%__kont199189199190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont199189199190%_))
                                          (_%__kont199189199190%_))
                                      (_%__kont199189199190%_))))
                              (_%__kont199189199190%_))))
                      (_%__kont199189199190%_))
                  (_%__kont199189199190%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont199189199190%_))
                                              (_%__kont199189199190%_))
                                          (_%__kont199189199190%_))))
                                  (_%__kont199189199190%_))))
                          (_%__kont199189199190%_))))
                  (_%__kont199189199190%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self193686%_ _%stx193687%_)
        (letrec ((_%force-e193689%_
                  (lambda (_%target194741%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target194741%_ '()))
                                      '()))))))
          (let* ((_%__stx199673199674%_ _%stx193687%_)
                 (_%g193697193919%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx199673199674%_)))))
            (let ((_%__kont199675199676%_
                   (lambda (_%g193699194687%_
                            _%g193700194688%_
                            _%g193701194689%_
                            _%g193702194690%_)
                     (let ((_%$method194735%_
                            (let ((__tmp200336
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self193686%_ 'methods)))
                                  (__tmp200335
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g193700194688%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp200336 __tmp200335)))
                           (_%args194736%_
                            (map (lambda (_%g194723194725%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self193686%_
                                      _%g194723194725%_)))
                                 (let ((__tmp200337
                                        (lambda (_%g194727194730%_
                                                 _%g194728194732%_)
                                          (cons _%g194727194730%_
                                                _%g194728194732%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp200337
                                    '()
                                    _%g193699194687%_)))))
                       (let ((__tmp200338
                              (cons '%#call
                                    (cons (_%force-e193689%_ _%$method194735%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self193686%_
                                                               'receiver))
                                                            '()))
                                                _%args194736%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp200338 _%stx193687%_)))))
                  (_%__kont199679199680%_
                   (lambda (_%g193742194521%_
                            _%g193743194522%_
                            _%g193744194523%_
                            _%g193745194524%_
                            _%g193746194525%_)
                     (let ((_%$method194577%_
                            (let ((__tmp200340
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self193686%_ 'methods)))
                                  (__tmp200339
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g193743194522%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp200340 __tmp200339)))
                           (_%args194578%_
                            (map (lambda (_%g194565194567%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self193686%_
                                      _%g194565194567%_)))
                                 (let ((__tmp200341
                                        (lambda (_%g194569194572%_
                                                 _%g194570194574%_)
                                          (cons _%g194569194572%_
                                                _%g194570194574%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp200341
                                    '()
                                    _%g193742194521%_)))))
                       (let ((__tmp200342
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e193689%_
                                                 _%$method194577%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self193686%_ 'receiver))
                          '()))
              _%args194578%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp200342 _%stx193687%_)))))
                  (_%__kont199683199684%_
                   (lambda (_%g193795194354%_
                            _%g193796194355%_
                            _%g193797194356%_)
                     (let* ((_%$field194388%_
                             (let ((__tmp200344
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self193686%_ 'slots)))
                                   (__tmp200343
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%g193795194354%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp200344 __tmp200343)))
                            (__tmp200345
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self193686%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field194388%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self193686%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp200345 _%stx193687%_))))
                  (_%__kont199685199686%_
                   (lambda (_%g193828194228%_
                            _%g193829194229%_
                            _%g193830194230%_
                            _%g193831194231%_)
                     (let ((_%$field194266%_
                            (let ((__tmp200347
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self193686%_ 'slots)))
                                  (__tmp200346
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g193829194229%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp200347 __tmp200346)))
                           (_%expr194267%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self193686%_
                               _%g193828194228%_))))
                       (let ((__tmp200348
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self193686%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field194266%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self193686%_ 'receiver))
                          '()))
              (cons _%expr194267%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp200348 _%stx193687%_)))))
                  (_%__kont199687199688%_
                   (lambda (_%g193865194100%_ _%g193866194101%_)
                     (let* ((_%accessor194123%_
                             (let ((__tmp200349
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g193866194101%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp200349)))
                            (_%klass194125%_
                             (let ((__tmp200350
                                    (##structure-ref
                                     _%accessor194123%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx193687%_
                                __tmp200350)))
                            (_%slot194127%_
                             (##structure-ref
                              _%accessor194123%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor194123%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass194125%_
                                      _%slot194127%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass194125%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx193687%_
                           (let* ((_%$field194133%_
                                   (let ((__tmp200351
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self193686%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp200351 _%slot194127%_)))
                                  (__tmp200352
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self193686%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field194133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self193686%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp200352
                              _%stx193687%_))))))
                  (_%__kont199689199690%_
                   (lambda (_%g193888193995%_
                            _%g193889193996%_
                            _%g193890193997%_)
                     (let* ((_%mutator194025%_
                             (let ((__tmp200353
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%g193890193997%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp200353)))
                            (_%klass194027%_
                             (let ((__tmp200354
                                    (##structure-ref
                                     _%mutator194025%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx193687%_
                                __tmp200354)))
                            (_%slot194029%_
                             (##structure-ref
                              _%mutator194025%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr194031%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self193686%_
                                _%g193888193995%_))))
                       (if (if (##structure-ref
                                _%mutator194025%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass194027%_
                                      _%slot194029%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass194027%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp200355
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%g193890193997%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%g193889193996%_
                                                                '()))
                                                    (cons _%expr194031%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp200355 _%stx193687%_))
                           (let* ((_%$field194037%_
                                   (let ((__tmp200356
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self193686%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp200356 _%slot194029%_)))
                                  (__tmp200357
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self193686%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field194037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self193686%_ 'receiver))
                               '()))
                   (cons _%expr194031%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp200357
                              _%stx193687%_))))))
                  (_%__kont199691199692%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self193686%_ _%stx193687%_)))))
              (let* ((_%__match200172200173%_
                      (lambda (_%e193891193931%_
                               _%hd193892193934%_
                               _%tl193893193936%_
                               _%e193894193939%_
                               _%hd193895193942%_
                               _%tl193896193944%_
                               _%e193897193947%_
                               _%hd193898193950%_
                               _%tl193899193952%_
                               _%e193900193955%_
                               _%hd193901193958%_
                               _%tl193902193960%_
                               _%e193903193963%_
                               _%hd193904193966%_
                               _%tl193905193968%_
                               _%e193906193971%_
                               _%hd193907193974%_
                               _%tl193908193976%_
                               _%e193909193979%_
                               _%hd193910193982%_
                               _%tl193911193984%_
                               _%e193912193987%_
                               _%hd193913193990%_
                               _%tl193914193992%_)
                        (let ((_%g193888193995%_ _%hd193913193990%_)
                              (_%g193889193996%_ _%hd193910193982%_)
                              (_%g193890193997%_ _%hd193901193958%_))
                          (if (and (let ((__tmp200358
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self193686%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g193889193996%_
                                      __tmp200358))
                                   (let ((__tmp200359
                                          (let ((__tmp200360
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g193890193997%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp200360))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp200359
                                      'gxc#!mutator::t)))
                              (_%__kont199689199690%_
                               _%g193888193995%_
                               _%g193889193996%_
                               _%g193890193997%_)
                              (_%__kont199691199692%_)))))
                     (_%__match200170200171%_
                      (lambda (_%e193891193931%_
                               _%hd193892193934%_
                               _%tl193893193936%_
                               _%e193894193939%_
                               _%hd193895193942%_
                               _%tl193896193944%_
                               _%e193897193947%_
                               _%hd193898193950%_
                               _%tl193899193952%_
                               _%e193900193955%_
                               _%hd193901193958%_
                               _%tl193902193960%_
                               _%e193903193963%_
                               _%hd193904193966%_
                               _%tl193905193968%_
                               _%e193906193971%_
                               _%hd193907193974%_
                               _%tl193908193976%_
                               _%e193909193979%_
                               _%hd193910193982%_
                               _%tl193911193984%_
                               _%e193912193987%_
                               _%hd193913193990%_
                               _%tl193914193992%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193914193992%_))
                            (_%__match200172200173%_
                             _%e193891193931%_
                             _%hd193892193934%_
                             _%tl193893193936%_
                             _%e193894193939%_
                             _%hd193895193942%_
                             _%tl193896193944%_
                             _%e193897193947%_
                             _%hd193898193950%_
                             _%tl193899193952%_
                             _%e193900193955%_
                             _%hd193901193958%_
                             _%tl193902193960%_
                             _%e193903193963%_
                             _%hd193904193966%_
                             _%tl193905193968%_
                             _%e193906193971%_
                             _%hd193907193974%_
                             _%tl193908193976%_
                             _%e193909193979%_
                             _%hd193910193982%_
                             _%tl193911193984%_
                             _%e193912193987%_
                             _%hd193913193990%_
                             _%tl193914193992%_)
                            (_%__kont199691199692%_))))
                     (_%__match200164200165%_
                      (lambda (_%e193891193931%_
                               _%hd193892193934%_
                               _%tl193893193936%_
                               _%e193894193939%_
                               _%hd193895193942%_
                               _%tl193896193944%_
                               _%e193897193947%_
                               _%hd193898193950%_
                               _%tl193899193952%_
                               _%e193900193955%_
                               _%hd193901193958%_
                               _%tl193902193960%_
                               _%e193903193963%_
                               _%hd193904193966%_
                               _%tl193905193968%_
                               _%e193906193971%_
                               _%hd193907193974%_
                               _%tl193908193976%_
                               _%e193909193979%_
                               _%hd193910193982%_
                               _%tl193911193984%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193905193968%_))
                            (let ((_%e193912193987%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl193905193968%_))))
                              (let ((_%tl193914193992%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193912193987%_)))
                                    (_%hd193913193990%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193912193987%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193914193992%_))
                                    (_%__match200172200173%_
                                     _%e193891193931%_
                                     _%hd193892193934%_
                                     _%tl193893193936%_
                                     _%e193894193939%_
                                     _%hd193895193942%_
                                     _%tl193896193944%_
                                     _%e193897193947%_
                                     _%hd193898193950%_
                                     _%tl193899193952%_
                                     _%e193900193955%_
                                     _%hd193901193958%_
                                     _%tl193902193960%_
                                     _%e193903193963%_
                                     _%hd193904193966%_
                                     _%tl193905193968%_
                                     _%e193906193971%_
                                     _%hd193907193974%_
                                     _%tl193908193976%_
                                     _%e193909193979%_
                                     _%hd193910193982%_
                                     _%tl193911193984%_
                                     _%e193912193987%_
                                     _%hd193913193990%_
                                     _%tl193914193992%_)
                                    (_%__kont199691199692%_))))
                            (_%__kont199691199692%_))))
                     (_%__match200110200111%_
                      (lambda (_%e193867194044%_
                               _%hd193868194047%_
                               _%tl193869194049%_
                               _%e193870194052%_
                               _%hd193871194055%_
                               _%tl193872194057%_
                               _%e193873194060%_
                               _%hd193874194063%_
                               _%tl193875194065%_
                               _%e193876194068%_
                               _%hd193877194071%_
                               _%tl193878194073%_
                               _%e193879194076%_
                               _%hd193880194079%_
                               _%tl193881194081%_
                               _%e193882194084%_
                               _%hd193883194087%_
                               _%tl193884194089%_
                               _%e193885194092%_
                               _%hd193886194095%_
                               _%tl193887194097%_)
                        (let ((_%g193865194100%_ _%hd193886194095%_)
                              (_%g193866194101%_ _%hd193877194071%_))
                          (if (and (let ((__tmp200361
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self193686%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g193865194100%_
                                      __tmp200361))
                                   (let ((__tmp200362
                                          (let ((__tmp200363
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g193866194101%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp200363))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp200362
                                      'gxc#!accessor::t)))
                              (_%__kont199687199688%_
                               _%g193865194100%_
                               _%g193866194101%_)
                              (_%__kont199691199692%_)))))
                     (_%__match200108200109%_
                      (lambda (_%e193867194044%_
                               _%hd193868194047%_
                               _%tl193869194049%_
                               _%e193870194052%_
                               _%hd193871194055%_
                               _%tl193872194057%_
                               _%e193873194060%_
                               _%hd193874194063%_
                               _%tl193875194065%_
                               _%e193876194068%_
                               _%hd193877194071%_
                               _%tl193878194073%_
                               _%e193879194076%_
                               _%hd193880194079%_
                               _%tl193881194081%_
                               _%e193882194084%_
                               _%hd193883194087%_
                               _%tl193884194089%_
                               _%e193885194092%_
                               _%hd193886194095%_
                               _%tl193887194097%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193881194081%_))
                            (_%__match200110200111%_
                             _%e193867194044%_
                             _%hd193868194047%_
                             _%tl193869194049%_
                             _%e193870194052%_
                             _%hd193871194055%_
                             _%tl193872194057%_
                             _%e193873194060%_
                             _%hd193874194063%_
                             _%tl193875194065%_
                             _%e193876194068%_
                             _%hd193877194071%_
                             _%tl193878194073%_
                             _%e193879194076%_
                             _%hd193880194079%_
                             _%tl193881194081%_
                             _%e193882194084%_
                             _%hd193883194087%_
                             _%tl193884194089%_
                             _%e193885194092%_
                             _%hd193886194095%_
                             _%tl193887194097%_)
                            (_%__match200164200165%_
                             _%e193867194044%_
                             _%hd193868194047%_
                             _%tl193869194049%_
                             _%e193870194052%_
                             _%hd193871194055%_
                             _%tl193872194057%_
                             _%e193873194060%_
                             _%hd193874194063%_
                             _%tl193875194065%_
                             _%e193876194068%_
                             _%hd193877194071%_
                             _%tl193878194073%_
                             _%e193879194076%_
                             _%hd193880194079%_
                             _%tl193881194081%_
                             _%e193882194084%_
                             _%hd193883194087%_
                             _%tl193884194089%_
                             _%e193885194092%_
                             _%hd193886194095%_
                             _%tl193887194097%_))))
                     (_%__match200054200055%_
                      (lambda (_%e193832194140%_
                               _%hd193833194143%_
                               _%tl193834194145%_
                               _%e193835194148%_
                               _%hd193836194151%_
                               _%tl193837194153%_
                               _%e193838194156%_
                               _%hd193839194159%_
                               _%tl193840194161%_
                               _%e193841194164%_
                               _%hd193842194167%_
                               _%tl193843194169%_
                               _%e193844194172%_
                               _%hd193845194175%_
                               _%tl193846194177%_
                               _%e193847194180%_
                               _%hd193848194183%_
                               _%tl193849194185%_
                               _%e193850194188%_
                               _%hd193851194191%_
                               _%tl193852194193%_
                               _%e193853194196%_
                               _%hd193854194199%_
                               _%tl193855194201%_
                               _%e193856194204%_
                               _%hd193857194207%_
                               _%tl193858194209%_
                               _%e193859194212%_
                               _%hd193860194215%_
                               _%tl193861194217%_
                               _%e193862194220%_
                               _%hd193863194223%_
                               _%tl193864194225%_)
                        (let ((_%g193828194228%_ _%hd193863194223%_)
                              (_%g193829194229%_ _%hd193860194215%_)
                              (_%g193830194230%_ _%hd193851194191%_)
                              (_%g193831194231%_ _%hd193842194167%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g193831194231%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g193831194231%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp200364
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self193686%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g193830194230%_
                                      __tmp200364)))
                              (_%__kont199685199686%_
                               _%g193828194228%_
                               _%g193829194229%_
                               _%g193830194230%_
                               _%g193831194231%_)
                              (_%__kont199691199692%_)))))
                     (_%__match200046200047%_
                      (lambda (_%e193832194140%_
                               _%hd193833194143%_
                               _%tl193834194145%_
                               _%e193835194148%_
                               _%hd193836194151%_
                               _%tl193837194153%_
                               _%e193838194156%_
                               _%hd193839194159%_
                               _%tl193840194161%_
                               _%e193841194164%_
                               _%hd193842194167%_
                               _%tl193843194169%_
                               _%e193844194172%_
                               _%hd193845194175%_
                               _%tl193846194177%_
                               _%e193847194180%_
                               _%hd193848194183%_
                               _%tl193849194185%_
                               _%e193850194188%_
                               _%hd193851194191%_
                               _%tl193852194193%_
                               _%e193853194196%_
                               _%hd193854194199%_
                               _%tl193855194201%_
                               _%e193856194204%_
                               _%hd193857194207%_
                               _%tl193858194209%_
                               _%e193859194212%_
                               _%hd193860194215%_
                               _%tl193861194217%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193855194201%_))
                            (let ((_%e193862194220%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl193855194201%_))))
                              (let ((_%tl193864194225%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193862194220%_)))
                                    (_%hd193863194223%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193862194220%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193864194225%_))
                                    (_%__match200054200055%_
                                     _%e193832194140%_
                                     _%hd193833194143%_
                                     _%tl193834194145%_
                                     _%e193835194148%_
                                     _%hd193836194151%_
                                     _%tl193837194153%_
                                     _%e193838194156%_
                                     _%hd193839194159%_
                                     _%tl193840194161%_
                                     _%e193841194164%_
                                     _%hd193842194167%_
                                     _%tl193843194169%_
                                     _%e193844194172%_
                                     _%hd193845194175%_
                                     _%tl193846194177%_
                                     _%e193847194180%_
                                     _%hd193848194183%_
                                     _%tl193849194185%_
                                     _%e193850194188%_
                                     _%hd193851194191%_
                                     _%tl193852194193%_
                                     _%e193853194196%_
                                     _%hd193854194199%_
                                     _%tl193855194201%_
                                     _%e193856194204%_
                                     _%hd193857194207%_
                                     _%tl193858194209%_
                                     _%e193859194212%_
                                     _%hd193860194215%_
                                     _%tl193861194217%_
                                     _%e193862194220%_
                                     _%hd193863194223%_
                                     _%tl193864194225%_)
                                    (_%__kont199691199692%_))))
                            (_%__match200170200171%_
                             _%e193832194140%_
                             _%hd193833194143%_
                             _%tl193834194145%_
                             _%e193835194148%_
                             _%hd193836194151%_
                             _%tl193837194153%_
                             _%e193838194156%_
                             _%hd193839194159%_
                             _%tl193840194161%_
                             _%e193841194164%_
                             _%hd193842194167%_
                             _%tl193843194169%_
                             _%e193844194172%_
                             _%hd193845194175%_
                             _%tl193846194177%_
                             _%e193847194180%_
                             _%hd193848194183%_
                             _%tl193849194185%_
                             _%e193850194188%_
                             _%hd193851194191%_
                             _%tl193852194193%_
                             _%e193853194196%_
                             _%hd193854194199%_
                             _%tl193855194201%_))))
                     (_%__match199968199969%_
                      (lambda (_%e193798194274%_
                               _%hd193799194277%_
                               _%tl193800194279%_
                               _%e193801194282%_
                               _%hd193802194285%_
                               _%tl193803194287%_
                               _%e193804194290%_
                               _%hd193805194293%_
                               _%tl193806194295%_
                               _%e193807194298%_
                               _%hd193808194301%_
                               _%tl193809194303%_
                               _%e193810194306%_
                               _%hd193811194309%_
                               _%tl193812194311%_
                               _%e193813194314%_
                               _%hd193814194317%_
                               _%tl193815194319%_
                               _%e193816194322%_
                               _%hd193817194325%_
                               _%tl193818194327%_
                               _%e193819194330%_
                               _%hd193820194333%_
                               _%tl193821194335%_
                               _%e193822194338%_
                               _%hd193823194341%_
                               _%tl193824194343%_
                               _%e193825194346%_
                               _%hd193826194349%_
                               _%tl193827194351%_)
                        (let ((_%g193795194354%_ _%hd193826194349%_)
                              (_%g193796194355%_ _%hd193817194325%_)
                              (_%g193797194356%_ _%hd193808194301%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g193797194356%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%g193797194356%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp200365
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self193686%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%g193796194355%_
                                      __tmp200365)))
                              (_%__kont199683199684%_
                               _%g193795194354%_
                               _%g193796194355%_
                               _%g193797194356%_)
                              (_%__match200172200173%_
                               _%e193798194274%_
                               _%hd193799194277%_
                               _%tl193800194279%_
                               _%e193801194282%_
                               _%hd193802194285%_
                               _%tl193803194287%_
                               _%e193804194290%_
                               _%hd193805194293%_
                               _%tl193806194295%_
                               _%e193807194298%_
                               _%hd193808194301%_
                               _%tl193809194303%_
                               _%e193810194306%_
                               _%hd193811194309%_
                               _%tl193812194311%_
                               _%e193813194314%_
                               _%hd193814194317%_
                               _%tl193815194319%_
                               _%e193816194322%_
                               _%hd193817194325%_
                               _%tl193818194327%_
                               _%e193819194330%_
                               _%hd193820194333%_
                               _%tl193821194335%_)))))
                     (_%__match199966199967%_
                      (lambda (_%e193798194274%_
                               _%hd193799194277%_
                               _%tl193800194279%_
                               _%e193801194282%_
                               _%hd193802194285%_
                               _%tl193803194287%_
                               _%e193804194290%_
                               _%hd193805194293%_
                               _%tl193806194295%_
                               _%e193807194298%_
                               _%hd193808194301%_
                               _%tl193809194303%_
                               _%e193810194306%_
                               _%hd193811194309%_
                               _%tl193812194311%_
                               _%e193813194314%_
                               _%hd193814194317%_
                               _%tl193815194319%_
                               _%e193816194322%_
                               _%hd193817194325%_
                               _%tl193818194327%_
                               _%e193819194330%_
                               _%hd193820194333%_
                               _%tl193821194335%_
                               _%e193822194338%_
                               _%hd193823194341%_
                               _%tl193824194343%_
                               _%e193825194346%_
                               _%hd193826194349%_
                               _%tl193827194351%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193821194335%_))
                            (_%__match199968199969%_
                             _%e193798194274%_
                             _%hd193799194277%_
                             _%tl193800194279%_
                             _%e193801194282%_
                             _%hd193802194285%_
                             _%tl193803194287%_
                             _%e193804194290%_
                             _%hd193805194293%_
                             _%tl193806194295%_
                             _%e193807194298%_
                             _%hd193808194301%_
                             _%tl193809194303%_
                             _%e193810194306%_
                             _%hd193811194309%_
                             _%tl193812194311%_
                             _%e193813194314%_
                             _%hd193814194317%_
                             _%tl193815194319%_
                             _%e193816194322%_
                             _%hd193817194325%_
                             _%tl193818194327%_
                             _%e193819194330%_
                             _%hd193820194333%_
                             _%tl193821194335%_
                             _%e193822194338%_
                             _%hd193823194341%_
                             _%tl193824194343%_
                             _%e193825194346%_
                             _%hd193826194349%_
                             _%tl193827194351%_)
                            (_%__match200046200047%_
                             _%e193798194274%_
                             _%hd193799194277%_
                             _%tl193800194279%_
                             _%e193801194282%_
                             _%hd193802194285%_
                             _%tl193803194287%_
                             _%e193804194290%_
                             _%hd193805194293%_
                             _%tl193806194295%_
                             _%e193807194298%_
                             _%hd193808194301%_
                             _%tl193809194303%_
                             _%e193810194306%_
                             _%hd193811194309%_
                             _%tl193812194311%_
                             _%e193813194314%_
                             _%hd193814194317%_
                             _%tl193815194319%_
                             _%e193816194322%_
                             _%hd193817194325%_
                             _%tl193818194327%_
                             _%e193819194330%_
                             _%hd193820194333%_
                             _%tl193821194335%_
                             _%e193822194338%_
                             _%hd193823194341%_
                             _%tl193824194343%_
                             _%e193825194346%_
                             _%hd193826194349%_
                             _%tl193827194351%_))))
                     (_%__match199956199957%_
                      (lambda (_%e193798194274%_
                               _%hd193799194277%_
                               _%tl193800194279%_
                               _%e193801194282%_
                               _%hd193802194285%_
                               _%tl193803194287%_
                               _%e193804194290%_
                               _%hd193805194293%_
                               _%tl193806194295%_
                               _%e193807194298%_
                               _%hd193808194301%_
                               _%tl193809194303%_
                               _%e193810194306%_
                               _%hd193811194309%_
                               _%tl193812194311%_
                               _%e193813194314%_
                               _%hd193814194317%_
                               _%tl193815194319%_
                               _%e193816194322%_
                               _%hd193817194325%_
                               _%tl193818194327%_
                               _%e193819194330%_
                               _%hd193820194333%_
                               _%tl193821194335%_
                               _%e193822194338%_
                               _%hd193823194341%_
                               _%tl193824194343%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd193823194341%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl193824194343%_))
                                (let ((_%e193825194346%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl193824194343%_))))
                                  (let ((_%tl193827194351%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193825194346%_)))
                                        (_%hd193826194349%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193825194346%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193827194351%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193821194335%_))
                                            (_%__match199968199969%_
                                             _%e193798194274%_
                                             _%hd193799194277%_
                                             _%tl193800194279%_
                                             _%e193801194282%_
                                             _%hd193802194285%_
                                             _%tl193803194287%_
                                             _%e193804194290%_
                                             _%hd193805194293%_
                                             _%tl193806194295%_
                                             _%e193807194298%_
                                             _%hd193808194301%_
                                             _%tl193809194303%_
                                             _%e193810194306%_
                                             _%hd193811194309%_
                                             _%tl193812194311%_
                                             _%e193813194314%_
                                             _%hd193814194317%_
                                             _%tl193815194319%_
                                             _%e193816194322%_
                                             _%hd193817194325%_
                                             _%tl193818194327%_
                                             _%e193819194330%_
                                             _%hd193820194333%_
                                             _%tl193821194335%_
                                             _%e193822194338%_
                                             _%hd193823194341%_
                                             _%tl193824194343%_
                                             _%e193825194346%_
                                             _%hd193826194349%_
                                             _%tl193827194351%_)
                                            (_%__match200046200047%_
                                             _%e193798194274%_
                                             _%hd193799194277%_
                                             _%tl193800194279%_
                                             _%e193801194282%_
                                             _%hd193802194285%_
                                             _%tl193803194287%_
                                             _%e193804194290%_
                                             _%hd193805194293%_
                                             _%tl193806194295%_
                                             _%e193807194298%_
                                             _%hd193808194301%_
                                             _%tl193809194303%_
                                             _%e193810194306%_
                                             _%hd193811194309%_
                                             _%tl193812194311%_
                                             _%e193813194314%_
                                             _%hd193814194317%_
                                             _%tl193815194319%_
                                             _%e193816194322%_
                                             _%hd193817194325%_
                                             _%tl193818194327%_
                                             _%e193819194330%_
                                             _%hd193820194333%_
                                             _%tl193821194335%_
                                             _%e193822194338%_
                                             _%hd193823194341%_
                                             _%tl193824194343%_
                                             _%e193825194346%_
                                             _%hd193826194349%_
                                             _%tl193827194351%_))
                                        (_%__match200170200171%_
                                         _%e193798194274%_
                                         _%hd193799194277%_
                                         _%tl193800194279%_
                                         _%e193801194282%_
                                         _%hd193802194285%_
                                         _%tl193803194287%_
                                         _%e193804194290%_
                                         _%hd193805194293%_
                                         _%tl193806194295%_
                                         _%e193807194298%_
                                         _%hd193808194301%_
                                         _%tl193809194303%_
                                         _%e193810194306%_
                                         _%hd193811194309%_
                                         _%tl193812194311%_
                                         _%e193813194314%_
                                         _%hd193814194317%_
                                         _%tl193815194319%_
                                         _%e193816194322%_
                                         _%hd193817194325%_
                                         _%tl193818194327%_
                                         _%e193819194330%_
                                         _%hd193820194333%_
                                         _%tl193821194335%_))))
                                (_%__match200170200171%_
                                 _%e193798194274%_
                                 _%hd193799194277%_
                                 _%tl193800194279%_
                                 _%e193801194282%_
                                 _%hd193802194285%_
                                 _%tl193803194287%_
                                 _%e193804194290%_
                                 _%hd193805194293%_
                                 _%tl193806194295%_
                                 _%e193807194298%_
                                 _%hd193808194301%_
                                 _%tl193809194303%_
                                 _%e193810194306%_
                                 _%hd193811194309%_
                                 _%tl193812194311%_
                                 _%e193813194314%_
                                 _%hd193814194317%_
                                 _%tl193815194319%_
                                 _%e193816194322%_
                                 _%hd193817194325%_
                                 _%tl193818194327%_
                                 _%e193819194330%_
                                 _%hd193820194333%_
                                 _%tl193821194335%_))
                            (_%__match200170200171%_
                             _%e193798194274%_
                             _%hd193799194277%_
                             _%tl193800194279%_
                             _%e193801194282%_
                             _%hd193802194285%_
                             _%tl193803194287%_
                             _%e193804194290%_
                             _%hd193805194293%_
                             _%tl193806194295%_
                             _%e193807194298%_
                             _%hd193808194301%_
                             _%tl193809194303%_
                             _%e193810194306%_
                             _%hd193811194309%_
                             _%tl193812194311%_
                             _%e193813194314%_
                             _%hd193814194317%_
                             _%tl193815194319%_
                             _%e193816194322%_
                             _%hd193817194325%_
                             _%tl193818194327%_
                             _%e193819194330%_
                             _%hd193820194333%_
                             _%tl193821194335%_))))
                     (_%__match199888199889%_
                      (lambda (_%e193747194395%_
                               _%hd193748194398%_
                               _%tl193749194400%_
                               _%e193750194403%_
                               _%hd193751194406%_
                               _%tl193752194408%_
                               _%e193753194411%_
                               _%hd193754194414%_
                               _%tl193755194416%_
                               _%e193756194419%_
                               _%hd193757194422%_
                               _%tl193758194424%_
                               _%e193759194427%_
                               _%hd193760194430%_
                               _%tl193761194432%_
                               _%e193762194435%_
                               _%hd193763194438%_
                               _%tl193764194440%_
                               _%e193765194443%_
                               _%hd193766194446%_
                               _%tl193767194448%_
                               _%e193768194451%_
                               _%hd193769194454%_
                               _%tl193770194456%_
                               _%e193771194459%_
                               _%hd193772194462%_
                               _%tl193773194464%_
                               _%e193774194467%_
                               _%hd193775194470%_
                               _%tl193776194472%_
                               _%e193777194475%_
                               _%hd193778194478%_
                               _%tl193779194480%_
                               _%e193780194483%_
                               _%hd193781194486%_
                               _%tl193782194488%_
                               _%e193783194491%_
                               _%hd193784194494%_
                               _%tl193785194496%_
                               _%__splice199681199682%_
                               _%target193786194499%_
                               _%tl193788194501%_)
                        (letrec ((_%loop193789194504%_
                                  (lambda (_%hd193787194507%_
                                           _%args193793194509%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd193787194507%_))
                                        (let ((_%e193790194511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd193787194507%_))))
                                          (let ((_%lp-tl193792194516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193790194511%_)))
                                                (_%lp-hd193791194514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193790194511%_))))
                                            (_%loop193789194504%_
                                             _%lp-tl193792194516%_
                                             (cons _%lp-hd193791194514%_
                                                   _%args193793194509%_))))
                                        (let ((_%args193794194519%_
                                               (reverse _%args193793194509%_)))
                                          (let ((_%g193742194521%_
                                                 _%args193794194519%_)
                                                (_%g193743194522%_
                                                 _%hd193784194494%_)
                                                (_%g193744194523%_
                                                 _%hd193775194470%_)
                                                (_%g193745194524%_
                                                 _%hd193766194446%_)
                                                (_%g193746194525%_
                                                 _%hd193757194422%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g193746194525%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g193745194524%_
                                                        'call-method))
                                                     (let ((__tmp200366
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self193686%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g193744194523%_
                                                        __tmp200366)))
                                                (_%__kont199679199680%_
                                                 _%g193742194521%_
                                                 _%g193743194522%_
                                                 _%g193744194523%_
                                                 _%g193745194524%_
                                                 _%g193746194525%_)
                                                (_%__kont199691199692%_))))))))
                          (_%loop193789194504%_ _%target193786194499%_ '()))))
                     (_%__match199846199847%_
                      (lambda (_%e193747194395%_
                               _%hd193748194398%_
                               _%tl193749194400%_
                               _%e193750194403%_
                               _%hd193751194406%_
                               _%tl193752194408%_
                               _%e193753194411%_
                               _%hd193754194414%_
                               _%tl193755194416%_
                               _%e193756194419%_
                               _%hd193757194422%_
                               _%tl193758194424%_
                               _%e193759194427%_
                               _%hd193760194430%_
                               _%tl193761194432%_
                               _%e193762194435%_
                               _%hd193763194438%_
                               _%tl193764194440%_
                               _%e193765194443%_
                               _%hd193766194446%_
                               _%tl193767194448%_
                               _%e193768194451%_
                               _%hd193769194454%_
                               _%tl193770194456%_
                               _%e193771194459%_
                               _%hd193772194462%_
                               _%tl193773194464%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd193772194462%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl193773194464%_))
                                (let ((_%e193774194467%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl193773194464%_))))
                                  (let ((_%tl193776194472%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193774194467%_)))
                                        (_%hd193775194470%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193774194467%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193776194472%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193770194456%_))
                                            (let ((_%e193777194475%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193770194456%_))))
                                              (let ((_%tl193779194480%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193777194475%_)))
                                                    (_%hd193778194478%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193777194475%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd193778194478%_))
                                                    (let ((_%e193780194483%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd193778194478%_))))
                                                      (let ((_%tl193782194488%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e193780194483%_)))
                    (_%hd193781194486%_
                     (let () (declare (not safe)) (##car _%e193780194483%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd193781194486%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd193781194486%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193782194488%_))
                            (let ((_%e193783194491%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl193782194488%_))))
                              (let ((_%tl193785194496%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193783194491%_)))
                                    (_%hd193784194494%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193783194491%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl193785194496%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl193779194480%_))
                                        (let ((_%__splice199681199682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl193779194480%_
                                                  '0))))
                                          (let ((_%tl193788194501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice199681199682%_
                                                    '1)))
                                                (_%target193786194499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice199681199682%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193788194501%_))
                                                (_%__match199888199889%_
                                                 _%e193747194395%_
                                                 _%hd193748194398%_
                                                 _%tl193749194400%_
                                                 _%e193750194403%_
                                                 _%hd193751194406%_
                                                 _%tl193752194408%_
                                                 _%e193753194411%_
                                                 _%hd193754194414%_
                                                 _%tl193755194416%_
                                                 _%e193756194419%_
                                                 _%hd193757194422%_
                                                 _%tl193758194424%_
                                                 _%e193759194427%_
                                                 _%hd193760194430%_
                                                 _%tl193761194432%_
                                                 _%e193762194435%_
                                                 _%hd193763194438%_
                                                 _%tl193764194440%_
                                                 _%e193765194443%_
                                                 _%hd193766194446%_
                                                 _%tl193767194448%_
                                                 _%e193768194451%_
                                                 _%hd193769194454%_
                                                 _%tl193770194456%_
                                                 _%e193771194459%_
                                                 _%hd193772194462%_
                                                 _%tl193773194464%_
                                                 _%e193774194467%_
                                                 _%hd193775194470%_
                                                 _%tl193776194472%_
                                                 _%e193777194475%_
                                                 _%hd193778194478%_
                                                 _%tl193779194480%_
                                                 _%e193780194483%_
                                                 _%hd193781194486%_
                                                 _%tl193782194488%_
                                                 _%e193783194491%_
                                                 _%hd193784194494%_
                                                 _%tl193785194496%_
                                                 _%__splice199681199682%_
                                                 _%target193786194499%_
                                                 _%tl193788194501%_)
                                                (_%__kont199691199692%_))))
                                        (_%__kont199691199692%_))
                                    (_%__kont199691199692%_))))
                            (_%__kont199691199692%_))
                        (_%__kont199691199692%_))
                    (_%__kont199691199692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont199691199692%_))))
                                            (_%__match200170200171%_
                                             _%e193747194395%_
                                             _%hd193748194398%_
                                             _%tl193749194400%_
                                             _%e193750194403%_
                                             _%hd193751194406%_
                                             _%tl193752194408%_
                                             _%e193753194411%_
                                             _%hd193754194414%_
                                             _%tl193755194416%_
                                             _%e193756194419%_
                                             _%hd193757194422%_
                                             _%tl193758194424%_
                                             _%e193759194427%_
                                             _%hd193760194430%_
                                             _%tl193761194432%_
                                             _%e193762194435%_
                                             _%hd193763194438%_
                                             _%tl193764194440%_
                                             _%e193765194443%_
                                             _%hd193766194446%_
                                             _%tl193767194448%_
                                             _%e193768194451%_
                                             _%hd193769194454%_
                                             _%tl193770194456%_))
                                        (_%__match200170200171%_
                                         _%e193747194395%_
                                         _%hd193748194398%_
                                         _%tl193749194400%_
                                         _%e193750194403%_
                                         _%hd193751194406%_
                                         _%tl193752194408%_
                                         _%e193753194411%_
                                         _%hd193754194414%_
                                         _%tl193755194416%_
                                         _%e193756194419%_
                                         _%hd193757194422%_
                                         _%tl193758194424%_
                                         _%e193759194427%_
                                         _%hd193760194430%_
                                         _%tl193761194432%_
                                         _%e193762194435%_
                                         _%hd193763194438%_
                                         _%tl193764194440%_
                                         _%e193765194443%_
                                         _%hd193766194446%_
                                         _%tl193767194448%_
                                         _%e193768194451%_
                                         _%hd193769194454%_
                                         _%tl193770194456%_))))
                                (_%__match200170200171%_
                                 _%e193747194395%_
                                 _%hd193748194398%_
                                 _%tl193749194400%_
                                 _%e193750194403%_
                                 _%hd193751194406%_
                                 _%tl193752194408%_
                                 _%e193753194411%_
                                 _%hd193754194414%_
                                 _%tl193755194416%_
                                 _%e193756194419%_
                                 _%hd193757194422%_
                                 _%tl193758194424%_
                                 _%e193759194427%_
                                 _%hd193760194430%_
                                 _%tl193761194432%_
                                 _%e193762194435%_
                                 _%hd193763194438%_
                                 _%tl193764194440%_
                                 _%e193765194443%_
                                 _%hd193766194446%_
                                 _%tl193767194448%_
                                 _%e193768194451%_
                                 _%hd193769194454%_
                                 _%tl193770194456%_))
                            (_%__match199956199957%_
                             _%e193747194395%_
                             _%hd193748194398%_
                             _%tl193749194400%_
                             _%e193750194403%_
                             _%hd193751194406%_
                             _%tl193752194408%_
                             _%e193753194411%_
                             _%hd193754194414%_
                             _%tl193755194416%_
                             _%e193756194419%_
                             _%hd193757194422%_
                             _%tl193758194424%_
                             _%e193759194427%_
                             _%hd193760194430%_
                             _%tl193761194432%_
                             _%e193762194435%_
                             _%hd193763194438%_
                             _%tl193764194440%_
                             _%e193765194443%_
                             _%hd193766194446%_
                             _%tl193767194448%_
                             _%e193768194451%_
                             _%hd193769194454%_
                             _%tl193770194456%_
                             _%e193771194459%_
                             _%hd193772194462%_
                             _%tl193773194464%_))))
                     (_%__match199778199779%_
                      (lambda (_%e193703194585%_
                               _%hd193704194588%_
                               _%tl193705194590%_
                               _%e193706194593%_
                               _%hd193707194596%_
                               _%tl193708194598%_
                               _%e193709194601%_
                               _%hd193710194604%_
                               _%tl193711194606%_
                               _%e193712194609%_
                               _%hd193713194612%_
                               _%tl193714194614%_
                               _%e193715194617%_
                               _%hd193716194620%_
                               _%tl193717194622%_
                               _%e193718194625%_
                               _%hd193719194628%_
                               _%tl193720194630%_
                               _%e193721194633%_
                               _%hd193722194636%_
                               _%tl193723194638%_
                               _%e193724194641%_
                               _%hd193725194644%_
                               _%tl193726194646%_
                               _%e193727194649%_
                               _%hd193728194652%_
                               _%tl193729194654%_
                               _%e193730194657%_
                               _%hd193731194660%_
                               _%tl193732194662%_
                               _%__splice199677199678%_
                               _%target193733194665%_
                               _%tl193735194667%_)
                        (letrec ((_%loop193736194670%_
                                  (lambda (_%hd193734194673%_
                                           _%args193740194675%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd193734194673%_))
                                        (let ((_%e193737194677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd193734194673%_))))
                                          (let ((_%lp-tl193739194682%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e193737194677%_)))
                                                (_%lp-hd193738194680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e193737194677%_))))
                                            (_%loop193736194670%_
                                             _%lp-tl193739194682%_
                                             (cons _%lp-hd193738194680%_
                                                   _%args193740194675%_))))
                                        (let ((_%args193741194685%_
                                               (reverse _%args193740194675%_)))
                                          (let ((_%g193699194687%_
                                                 _%args193741194685%_)
                                                (_%g193700194688%_
                                                 _%hd193731194660%_)
                                                (_%g193701194689%_
                                                 _%hd193722194636%_)
                                                (_%g193702194690%_
                                                 _%hd193713194612%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%g193702194690%_
                                                        'call-method))
                                                     (let ((__tmp200367
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self193686%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g193701194689%_
                                                        __tmp200367)))
                                                (_%__kont199675199676%_
                                                 _%g193699194687%_
                                                 _%g193700194688%_
                                                 _%g193701194689%_
                                                 _%g193702194690%_)
                                                (_%__match199966199967%_
                                                 _%e193703194585%_
                                                 _%hd193704194588%_
                                                 _%tl193705194590%_
                                                 _%e193706194593%_
                                                 _%hd193707194596%_
                                                 _%tl193708194598%_
                                                 _%e193709194601%_
                                                 _%hd193710194604%_
                                                 _%tl193711194606%_
                                                 _%e193712194609%_
                                                 _%hd193713194612%_
                                                 _%tl193714194614%_
                                                 _%e193715194617%_
                                                 _%hd193716194620%_
                                                 _%tl193717194622%_
                                                 _%e193718194625%_
                                                 _%hd193719194628%_
                                                 _%tl193720194630%_
                                                 _%e193721194633%_
                                                 _%hd193722194636%_
                                                 _%tl193723194638%_
                                                 _%e193724194641%_
                                                 _%hd193725194644%_
                                                 _%tl193726194646%_
                                                 _%e193727194649%_
                                                 _%hd193728194652%_
                                                 _%tl193729194654%_
                                                 _%e193730194657%_
                                                 _%hd193731194660%_
                                                 _%tl193732194662%_))))))))
                          (_%loop193736194670%_ _%target193733194665%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx199673199674%_))
                    (let ((_%e193703194585%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx199673199674%_))))
                      (let ((_%tl193705194590%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193703194585%_)))
                            (_%hd193704194588%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193703194585%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193705194590%_))
                            (let ((_%e193706194593%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl193705194590%_))))
                              (let ((_%tl193708194598%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193706194593%_)))
                                    (_%hd193707194596%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193706194593%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd193707194596%_))
                                    (let ((_%e193709194601%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd193707194596%_))))
                                      (let ((_%tl193711194606%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193709194601%_)))
                                            (_%hd193710194604%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193709194601%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd193710194604%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd193710194604%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl193711194606%_))
                                                    (let ((_%e193712194609%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl193711194606%_))))
                                                      (let ((_%tl193714194614%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e193712194609%_)))
                    (_%hd193713194612%_
                     (let () (declare (not safe)) (##car _%e193712194609%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193714194614%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl193708194598%_))
                        (let ((_%e193715194617%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl193708194598%_))))
                          (let ((_%tl193717194622%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193715194617%_)))
                                (_%hd193716194620%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193715194617%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd193716194620%_))
                                (let ((_%e193718194625%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd193716194620%_))))
                                  (let ((_%tl193720194630%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193718194625%_)))
                                        (_%hd193719194628%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193718194625%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd193719194628%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd193719194628%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193720194630%_))
                                                (let ((_%e193721194633%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193720194630%_))))
                                                  (let ((_%tl193723194638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193721194633%_)))
                                                        (_%hd193722194636%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193721194633%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193723194638%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193717194622%_))
                                                            (let ((_%e193724194641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193717194622%_))))
                      (let ((_%tl193726194646%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193724194641%_)))
                            (_%hd193725194644%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193724194641%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193725194644%_))
                            (let ((_%e193727194649%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193725194644%_))))
                              (let ((_%tl193729194654%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193727194649%_)))
                                    (_%hd193728194652%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193727194649%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193728194652%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193728194652%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193729194654%_))
                                            (let ((_%e193730194657%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193729194654%_))))
                                              (let ((_%tl193732194662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193730194657%_)))
                                                    (_%hd193731194660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193730194657%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193732194662%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl193726194646%_))
                                                        (let ((_%__splice199677199678%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%tl193726194646%_
                          '0))))
                  (let ((_%tl193735194667%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice199677199678%_ '1)))
                        (_%target193733194665%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice199677199678%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl193735194667%_))
                        (_%__match199778199779%_
                         _%e193703194585%_
                         _%hd193704194588%_
                         _%tl193705194590%_
                         _%e193706194593%_
                         _%hd193707194596%_
                         _%tl193708194598%_
                         _%e193709194601%_
                         _%hd193710194604%_
                         _%tl193711194606%_
                         _%e193712194609%_
                         _%hd193713194612%_
                         _%tl193714194614%_
                         _%e193715194617%_
                         _%hd193716194620%_
                         _%tl193717194622%_
                         _%e193718194625%_
                         _%hd193719194628%_
                         _%tl193720194630%_
                         _%e193721194633%_
                         _%hd193722194636%_
                         _%tl193723194638%_
                         _%e193724194641%_
                         _%hd193725194644%_
                         _%tl193726194646%_
                         _%e193727194649%_
                         _%hd193728194652%_
                         _%tl193729194654%_
                         _%e193730194657%_
                         _%hd193731194660%_
                         _%tl193732194662%_
                         _%__splice199677199678%_
                         _%target193733194665%_
                         _%tl193735194667%_)
                        (_%__match199966199967%_
                         _%e193703194585%_
                         _%hd193704194588%_
                         _%tl193705194590%_
                         _%e193706194593%_
                         _%hd193707194596%_
                         _%tl193708194598%_
                         _%e193709194601%_
                         _%hd193710194604%_
                         _%tl193711194606%_
                         _%e193712194609%_
                         _%hd193713194612%_
                         _%tl193714194614%_
                         _%e193715194617%_
                         _%hd193716194620%_
                         _%tl193717194622%_
                         _%e193718194625%_
                         _%hd193719194628%_
                         _%tl193720194630%_
                         _%e193721194633%_
                         _%hd193722194636%_
                         _%tl193723194638%_
                         _%e193724194641%_
                         _%hd193725194644%_
                         _%tl193726194646%_
                         _%e193727194649%_
                         _%hd193728194652%_
                         _%tl193729194654%_
                         _%e193730194657%_
                         _%hd193731194660%_
                         _%tl193732194662%_))))
                (_%__match199966199967%_
                 _%e193703194585%_
                 _%hd193704194588%_
                 _%tl193705194590%_
                 _%e193706194593%_
                 _%hd193707194596%_
                 _%tl193708194598%_
                 _%e193709194601%_
                 _%hd193710194604%_
                 _%tl193711194606%_
                 _%e193712194609%_
                 _%hd193713194612%_
                 _%tl193714194614%_
                 _%e193715194617%_
                 _%hd193716194620%_
                 _%tl193717194622%_
                 _%e193718194625%_
                 _%hd193719194628%_
                 _%tl193720194630%_
                 _%e193721194633%_
                 _%hd193722194636%_
                 _%tl193723194638%_
                 _%e193724194641%_
                 _%hd193725194644%_
                 _%tl193726194646%_
                 _%e193727194649%_
                 _%hd193728194652%_
                 _%tl193729194654%_
                 _%e193730194657%_
                 _%hd193731194660%_
                 _%tl193732194662%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match200170200171%_
                                                     _%e193703194585%_
                                                     _%hd193704194588%_
                                                     _%tl193705194590%_
                                                     _%e193706194593%_
                                                     _%hd193707194596%_
                                                     _%tl193708194598%_
                                                     _%e193709194601%_
                                                     _%hd193710194604%_
                                                     _%tl193711194606%_
                                                     _%e193712194609%_
                                                     _%hd193713194612%_
                                                     _%tl193714194614%_
                                                     _%e193715194617%_
                                                     _%hd193716194620%_
                                                     _%tl193717194622%_
                                                     _%e193718194625%_
                                                     _%hd193719194628%_
                                                     _%tl193720194630%_
                                                     _%e193721194633%_
                                                     _%hd193722194636%_
                                                     _%tl193723194638%_
                                                     _%e193724194641%_
                                                     _%hd193725194644%_
                                                     _%tl193726194646%_))))
                                            (_%__match200170200171%_
                                             _%e193703194585%_
                                             _%hd193704194588%_
                                             _%tl193705194590%_
                                             _%e193706194593%_
                                             _%hd193707194596%_
                                             _%tl193708194598%_
                                             _%e193709194601%_
                                             _%hd193710194604%_
                                             _%tl193711194606%_
                                             _%e193712194609%_
                                             _%hd193713194612%_
                                             _%tl193714194614%_
                                             _%e193715194617%_
                                             _%hd193716194620%_
                                             _%tl193717194622%_
                                             _%e193718194625%_
                                             _%hd193719194628%_
                                             _%tl193720194630%_
                                             _%e193721194633%_
                                             _%hd193722194636%_
                                             _%tl193723194638%_
                                             _%e193724194641%_
                                             _%hd193725194644%_
                                             _%tl193726194646%_))
                                        (_%__match199846199847%_
                                         _%e193703194585%_
                                         _%hd193704194588%_
                                         _%tl193705194590%_
                                         _%e193706194593%_
                                         _%hd193707194596%_
                                         _%tl193708194598%_
                                         _%e193709194601%_
                                         _%hd193710194604%_
                                         _%tl193711194606%_
                                         _%e193712194609%_
                                         _%hd193713194612%_
                                         _%tl193714194614%_
                                         _%e193715194617%_
                                         _%hd193716194620%_
                                         _%tl193717194622%_
                                         _%e193718194625%_
                                         _%hd193719194628%_
                                         _%tl193720194630%_
                                         _%e193721194633%_
                                         _%hd193722194636%_
                                         _%tl193723194638%_
                                         _%e193724194641%_
                                         _%hd193725194644%_
                                         _%tl193726194646%_
                                         _%e193727194649%_
                                         _%hd193728194652%_
                                         _%tl193729194654%_))
                                    (_%__match200170200171%_
                                     _%e193703194585%_
                                     _%hd193704194588%_
                                     _%tl193705194590%_
                                     _%e193706194593%_
                                     _%hd193707194596%_
                                     _%tl193708194598%_
                                     _%e193709194601%_
                                     _%hd193710194604%_
                                     _%tl193711194606%_
                                     _%e193712194609%_
                                     _%hd193713194612%_
                                     _%tl193714194614%_
                                     _%e193715194617%_
                                     _%hd193716194620%_
                                     _%tl193717194622%_
                                     _%e193718194625%_
                                     _%hd193719194628%_
                                     _%tl193720194630%_
                                     _%e193721194633%_
                                     _%hd193722194636%_
                                     _%tl193723194638%_
                                     _%e193724194641%_
                                     _%hd193725194644%_
                                     _%tl193726194646%_))))
                            (_%__match200170200171%_
                             _%e193703194585%_
                             _%hd193704194588%_
                             _%tl193705194590%_
                             _%e193706194593%_
                             _%hd193707194596%_
                             _%tl193708194598%_
                             _%e193709194601%_
                             _%hd193710194604%_
                             _%tl193711194606%_
                             _%e193712194609%_
                             _%hd193713194612%_
                             _%tl193714194614%_
                             _%e193715194617%_
                             _%hd193716194620%_
                             _%tl193717194622%_
                             _%e193718194625%_
                             _%hd193719194628%_
                             _%tl193720194630%_
                             _%e193721194633%_
                             _%hd193722194636%_
                             _%tl193723194638%_
                             _%e193724194641%_
                             _%hd193725194644%_
                             _%tl193726194646%_))))
                    (_%__match200108200109%_
                     _%e193703194585%_
                     _%hd193704194588%_
                     _%tl193705194590%_
                     _%e193706194593%_
                     _%hd193707194596%_
                     _%tl193708194598%_
                     _%e193709194601%_
                     _%hd193710194604%_
                     _%tl193711194606%_
                     _%e193712194609%_
                     _%hd193713194612%_
                     _%tl193714194614%_
                     _%e193715194617%_
                     _%hd193716194620%_
                     _%tl193717194622%_
                     _%e193718194625%_
                     _%hd193719194628%_
                     _%tl193720194630%_
                     _%e193721194633%_
                     _%hd193722194636%_
                     _%tl193723194638%_))
                (_%__kont199691199692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont199691199692%_))
                                            (_%__kont199691199692%_))
                                        (_%__kont199691199692%_))))
                                (_%__kont199691199692%_))))
                        (_%__kont199691199692%_))
                    (_%__kont199691199692%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont199691199692%_))
                                                (_%__kont199691199692%_))
                                            (_%__kont199691199692%_))))
                                    (_%__kont199691199692%_))))
                            (_%__kont199691199692%_))))
                    (_%__kont199691199692%_))))))))))
