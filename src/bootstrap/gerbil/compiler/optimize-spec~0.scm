(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1712786282)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp173757 (list gxc#::identity::t))
            (__tmp173756 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp173757
         '()
         __tmp173756
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args172554%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args172554%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp173758
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
        (__make-promise __tmp173758)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx172546%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self172549%_
                (let ((__obj173749
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj173749))
               (__tmp173759
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self172549%_ _%stx172546%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp173759
           gxc#current-compile-method
           _%self172549%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp173761 (list gxc#::false::t))
            (__tmp173760 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp173761
         '()
         __tmp173760
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args172543%_
        (apply make-instance gxc#::extract-receiver::t _%$args172543%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp173762
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
        (__make-promise __tmp173762)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx172535%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self172538%_
                (let ((__obj173751
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj173751))
               (__tmp173763
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self172538%_ _%stx172535%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp173763
           gxc#current-compile-method
           _%self172538%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp173765 (list gxc#::void::t))
            (__tmp173764 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp173765
         '(receiver methods slots)
         __tmp173764
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args172532%_
        (apply make-instance gxc#::collect-object-refs::t _%$args172532%_)))
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
      (let ((__tmp173766
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
        (__make-promise __tmp173766)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords172498%_
               _%receiver172493172499%_
               _%methods172494172501%_
               _%slots172495172503%_
               _%stx172505%_)
        (let* ((_%receiver172508%_
                (if (eq? _%receiver172493172499%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver172493172499%_))
               (_%methods172510%_
                (if (eq? _%methods172494172501%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods172494172501%_))
               (_%slots172512%_
                (if (eq? _%slots172495172503%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots172495172503%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self172514%_
                  (let ((__obj173753
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
                       __obj173753
                       _%receiver172508%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173753
                       _%methods172510%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173753
                       _%slots172512%_
                       '3
                       '#f
                       '#f))
                    __obj173753))
                 (__tmp173767
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self172514%_ _%stx172505%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp173767
             gxc#current-compile-method
             _%self172514%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords172521%_ . _%args172522%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords172521%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172521%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172521%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172521%_
                  'slots:
                  absent-value))
               _%args172522%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%args172496172528%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%args172496172528%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp173769 (list gxc#::basic-xform-expression::t))
            (__tmp173768 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp173769
         '(receiver klass methods slots)
         __tmp173768
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args172489%_
        (apply make-instance gxc#::subst-object-refs::t _%$args172489%_)))
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
      (let ((__tmp173770
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
        (__make-promise __tmp173770)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords172451%_
               _%receiver172445172452%_
               _%klass172446172454%_
               _%methods172447172456%_
               _%slots172448172458%_
               _%stx172460%_)
        (let* ((_%receiver172463%_
                (if (eq? _%receiver172445172452%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%receiver172445172452%_))
               (_%klass172465%_
                (if (eq? _%klass172446172454%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%klass172446172454%_))
               (_%methods172467%_
                (if (eq? _%methods172447172456%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%methods172447172456%_))
               (_%slots172469%_
                (if (eq? _%slots172448172458%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%slots172448172458%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self172471%_
                  (let ((__obj173755
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
                       __obj173755
                       _%receiver172463%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173755
                       _%klass172465%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173755
                       _%methods172467%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj173755
                       _%slots172469%_
                       '4
                       '#f
                       '#f))
                    __obj173755))
                 (__tmp173771
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self172471%_ _%stx172460%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp173771
             gxc#current-compile-method
             _%self172471%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords172478%_ . _%args172479%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords172478%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172478%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172478%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172478%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords172478%_
                  'slots:
                  absent-value))
               _%args172479%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%args172449172485%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%args172449172485%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self169560%_ _%stx169561%_)
        (letrec ((_%generate-method-bind169563%_
                  (lambda (_%$klass172437%_
                           _%$method-table172438%_
                           _%id172439%_
                           _%$id172440%_)
                    (let ((_%$tmp172442%_
                           (let ((__tmp173772
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp173772))))
                      (cons (cons _%$id172440%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp172442%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table172438%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id172439%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp172442%_ '()))
                    (cons (cons '%#ref (cons _%$tmp172442%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id172439%_
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
                 (_%generate-slot-bind169564%_
                  (lambda (_%$klass172431%_ _%id172432%_ _%$id172433%_)
                    (let ((_%$tmp172435%_
                           (let ((__tmp173773
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp173773))))
                      (cons (cons _%$id172433%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp172435%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass172431%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id172432%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp172435%_ '()))
                        (cons (cons '%#ref (cons _%$tmp172435%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id172432%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl169565%_
                  (lambda (_%$klass172425%_
                           _%$method-table172426%_
                           _%methods-bind172427%_
                           _%slots-bind172428%_
                           _%specializer-impl172429%_)
                    (let ((__tmp173774
                           (cons '%#lambda
                                 (cons (cons _%$klass172425%_
                                             (cons _%$method-table172426%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (__foldr1
                                                            cons
                                                            _%slots-bind172428%_
                                                            _%methods-bind172427%_))
                                                         (cons _%specializer-impl172429%_
                                                               '())))
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp173774 _%stx169561%_))))
                 (_%generate-specializer-def169566%_
                  (lambda (_%id172421%_
                           _%specializer-id172422%_
                           _%specializer-impl172423%_)
                    (let ((__tmp173775
                           (cons '%#begin
                                 (cons _%stx169561%_
                                       (cons (let ((__tmp173776
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id172422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl172423%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp173776
                                                _%stx169561%_))
                                             (cons (let ((__tmp173777
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id172421%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id172422%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp173777
                                                      _%stx169561%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp173775 _%stx169561%_)))))
          (let* ((_%__stx172643172644%_ _%stx169561%_)
                 (_%g169569169589%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172643172644%_)))))
            (let ((_%__kont172645172646%_
                   (lambda (_%L169633%_ _%L169634%_)
                     (let ((_%method-calls169653%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs169654%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty169655%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?169657%_
                                 (lambda ()
                                   (if (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%method-calls169653%_)))
                                       (fxzero? (let ()
                                                  (declare (not safe))
                                                  (hash-length
                                                   _%slot-refs169654%_)))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%L169633%_))
                             (let* ((_%__stx172557172558%_ _%L169633%_)
                                    (_%g170045170063%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx172557172558%_)))))
                               (let ((_%__kont172559172560%_
                                      (lambda (_%L170099%_
                                               _%L170100%_
                                               _%L170101%_)
                                        (let ((_%receiver170121%_
                                               (let ((_%$e170118%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%L170099%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e170118%_
                                                     _%$e170118%_
                                                     _%L170101%_))))
                                          (for-each
                                           (lambda (_%g170122170124%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver170121%_
                                              _%method-calls169653%_
                                              _%slot-refs169654%_
                                              _%g170122170124%_))
                                           _%L170099%_)
                                          (if (_%no-specializer?169657%_)
                                              _%stx169561%_
                                              (let* ((_%specializer-id170133%_
                                                      (let* ((_%id170127%_
                                                              (let ((__tmp173778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L169634%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp173778 '"::specialize")))
                     (_%specializer-id170130%_
                      (let ((__tmp173779
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx169561%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id170127%_ __tmp173779))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id170130%_))
                _%specializer-id170130%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass170135%_
                                                      (let ((__tmp173780
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp173780)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table170137%_
                                                      (let ((__tmp173781
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp173781)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods170139%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls169653%_)))
                                                     (_%$methods170143%_
                                                      (map (lambda (_%id170141%_)
                                                             (let ((__tmp173782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id170141%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp173782)))
                   _%methods170139%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_170152%_
                                                      (for-each
                                                       (lambda (_%g170144170147%_
                                                                _%g170145170149%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls169653%_
                                                            _%g170144170147%_
                                                            _%g170145170149%_)))
                                                       _%methods170139%_
                                                       _%$methods170143%_))
                                                     (_%methods-bind170162%_
                                                      (map (lambda (_%g170154170157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170155170159%_)
                     (_%generate-method-bind169563%_
                      _%$klass170135%_
                      _%$method-table170137%_
                      _%g170154170157%_
                      _%g170155170159%_))
                   _%methods170139%_
                   _%$methods170143%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots170164%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs169654%_)))
                                                     (_%$slots170168%_
                                                      (map (lambda (_%id170166%_)
                                                             (let ((__tmp173783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id170166%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp173783)))
                   _%slots170164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_170177%_
                                                      (for-each
                                                       (lambda (_%g170169170172%_
                                                                _%g170170170174%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs169654%_
                                                            _%g170169170172%_
                                                            _%g170170170174%_)))
                                                       _%slots170164%_
                                                       _%$slots170168%_))
                                                     (_%slots-bind170186%_
                                                      (map (lambda (_%g170178170181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170179170183%_)
                     (_%generate-slot-bind169564%_
                      _%$klass170135%_
                      _%g170178170181%_
                      _%g170179170183%_))
                   _%slots170164%_
                   _%$slots170168%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body170192%_
                                                      (map (lambda (_%g170187170189%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver170121%_
                                                              _%$klass170135%_
                                                              _%method-calls169653%_
                                                              _%slot-refs169654%_
                                                              _%g170187170189%_))
                                                           _%L170099%_))
                                                     (_%specializer-impl170194%_
                                                      (let ((__tmp173784
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%L170101%_ _%L170100%_)
                                 _%specializer-body170192%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp173784 _%stx169561%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl170196%_
                                                      (_%generate-specializer-impl169565%_
                                                       _%$klass170135%_
                                                       _%$method-table170137%_
                                                       _%methods-bind170162%_
                                                       _%slots-bind170186%_
                                                       _%specializer-impl170194%_)))
                                                (let ((__tmp173786
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L169634%_)))
                                                      (__tmp173785
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id170133%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp173786
                                                   '" => "
                                                   __tmp173785))
                                                (_%generate-specializer-def169566%_
                                                 _%L169634%_
                                                 _%specializer-id170133%_
                                                 _%specializer-impl170196%_))))))
                                     (_%__kont172561172562%_
                                      (lambda () _%stx169561%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx172557172558%_))
                                     (let ((_%e170050170075%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx172557172558%_))))
                                       (let ((_%tl170052170080%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e170050170075%_)))
                                             (_%hd170051170078%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e170050170075%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl170052170080%_))
                                             (let ((_%e170053170083%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl170052170080%_))))
                                               (let ((_%tl170055170088%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e170053170083%_)))
                                                     (_%hd170054170086%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e170053170083%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%hd170054170086%_))
                                                     (let ((_%e170056170091%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd170054170086%_))))
                                                       (let ((_%tl170058170096%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e170056170091%_)))
                     (_%hd170057170094%_
                      (let () (declare (not safe)) (##car _%e170056170091%_))))
                 (_%__kont172559172560%_
                  _%tl170055170088%_
                  _%tl170058170096%_
                  _%hd170057170094%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172561172562%_))))
                                             (_%__kont172561172562%_))))
                                     (_%__kont172561172562%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%L169633%_))
                                 (let* ((_%g170203170222%_
                                         (lambda (_%g170204170219%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g170204170219%_))))
                                        (_%g170202170520%_
                                         (lambda (_%g170204170225%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g170204170225%_))
                                               (let ((_%e170206170227%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%g170204170225%_))))
                                                 (let ((_%hd170207170230%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e170206170227%_)))
                                                       (_%tl170208170232%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e170206170227%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%tl170208170232%_))
                                                       (let ((_g173787_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%tl170208170232%_ '0))))
                 (begin
                   (let ((_g173788_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g173787_)
                                (##vector-length _g173787_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g173788_ 2)))
                         (error "Context expects 2 values" _g173788_)))
                   (let ((_%target170209170235%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g173787_ 0)))
                         (_%tl170211170237%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g173787_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl170211170237%_))
                         (letrec ((_%loop170212170240%_
                                   (lambda (_%hd170210170243%_
                                            _%clause170216170245%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd170210170243%_))
                                         (let ((_%e170213170248%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd170210170243%_))))
                                           (let ((_%lp-hd170214170251%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170213170248%_)))
                                                 (_%lp-tl170215170253%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170213170248%_))))
                                             (_%loop170212170240%_
                                              _%lp-tl170215170253%_
                                              (cons _%lp-hd170214170251%_
                                                    _%clause170216170245%_))))
                                         (let ((_%clause170217170256%_
                                                (reverse _%clause170216170245%_)))
                                           ((lambda (_%L170259%_)
                                              (for-each
                                               (lambda (_%clause170273%_)
                                                 (let* ((_%__stx172583172584%_
                                                         _%clause170273%_)
                                                        (_%g170276170291%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx172583172584%_)))))
                                                   (let ((_%__kont172585172586%_
                                                          (lambda (_%L170319%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%L170320%_
                           _%L170321%_)
                    (let ((_%receiver170340%_
                           (let ((_%$e170337%_
                                  (gxc#apply-extract-receiver
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f '%#begin))
                                         _%L170319%_))))
                             (if _%$e170337%_ _%$e170337%_ _%L170321%_))))
                      (for-each
                       (lambda (_%g170341170343%_)
                         (gxc#apply-collect-object-refs__%
                          '#f
                          _%receiver170340%_
                          _%method-calls169653%_
                          _%slot-refs169654%_
                          _%g170341170343%_))
                       _%L170319%_))))
                 (_%__kont172587172588%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx172583172584%_))
                                                         (let ((_%e170281170303%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx172583172584%_))))
                   (let ((_%tl170283170308%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170281170303%_)))
                         (_%hd170282170306%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170281170303%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd170282170306%_))
                         (let ((_%e170284170311%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd170282170306%_))))
                           (let ((_%tl170286170316%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e170284170311%_)))
                                 (_%hd170285170314%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e170284170311%_))))
                             (_%__kont172585172586%_
                              _%tl170283170308%_
                              _%tl170286170316%_
                              _%hd170285170314%_)))
                         (_%__kont172587172588%_))))
                 (_%__kont172587172588%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp173789
                                                      (lambda (_%g170348170351%_
                                                               _%g170349170353%_)
                                                        (cons _%g170348170351%_
                                                              _%g170349170353%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp173789
                                                  '()
                                                  _%L170259%_)))
                                              (if (_%no-specializer?169657%_)
                                                  _%stx169561%_
                                                  (let* ((_%specializer-id170362%_
                                                          (let* ((_%id170356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp173790
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L169634%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp173790 '"::specialize")))
                         (_%specializer-id170359%_
                          (let ((__tmp173791
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx169561%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id170356%_
                             __tmp173791))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id170359%_))
                    _%specializer-id170359%_))
                 (_%$klass170364%_
                  (let ((__tmp173792
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp173792)))
                 (_%$method-table170366%_
                  (let ((__tmp173793
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp173793)))
                 (_%methods170368%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls169653%_)))
                 (_%$methods170372%_
                  (map (lambda (_%id170370%_)
                         (let ((__tmp173794 (gensym _%id170370%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp173794)))
                       _%methods170368%_))
                 (_%_170381%_
                  (for-each
                   (lambda (_%g170373170376%_ _%g170374170378%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls169653%_
                        _%g170373170376%_
                        _%g170374170378%_)))
                   _%methods170368%_
                   _%$methods170372%_))
                 (_%methods-bind170391%_
                  (map (lambda (_%g170383170386%_ _%g170384170388%_)
                         (_%generate-method-bind169563%_
                          _%$klass170364%_
                          _%$method-table170366%_
                          _%g170383170386%_
                          _%g170384170388%_))
                       _%methods170368%_
                       _%$methods170372%_))
                 (_%slots170393%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs169654%_)))
                 (_%$slots170397%_
                  (map (lambda (_%id170395%_)
                         (let ((__tmp173795 (gensym _%id170395%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp173795)))
                       _%slots170393%_))
                 (_%_170406%_
                  (for-each
                   (lambda (_%g170398170401%_ _%g170399170403%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs169654%_
                        _%g170398170401%_
                        _%g170399170403%_)))
                   _%slots170393%_
                   _%$slots170397%_))
                 (_%slots-bind170415%_
                  (map (lambda (_%g170407170410%_ _%g170408170412%_)
                         (_%generate-slot-bind169564%_
                          _%$klass170364%_
                          _%g170407170410%_
                          _%g170408170412%_))
                       _%slots170393%_
                       _%$slots170397%_))
                 (_%specializer-clauses170513%_
                  (map (lambda (_%clause170417%_)
                         (let* ((_%__stx172603172604%_ _%clause170417%_)
                                (_%g170420170435%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172603172604%_)))))
                           (let ((_%__kont172605172606%_
                                  (lambda (_%L170463%_ _%L170464%_ _%L170465%_)
                                    (let* ((_%receiver170494%_
                                            (let ((_%$e170491%_
                                                   (gxc#apply-extract-receiver
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#begin))
                                                          _%L170463%_))))
                                              (if _%$e170491%_
                                                  _%$e170491%_
                                                  _%L170465%_)))
                                           (_%body170500%_
                                            (map (lambda (_%g170495170497%_)
                                                   (gxc#apply-subst-object-refs__%
                                                    '#f
                                                    _%receiver170494%_
                                                    _%$klass170364%_
                                                    _%method-calls169653%_
                                                    _%slot-refs169654%_
                                                    _%g170495170497%_))
                                                 _%L170463%_)))
                                      (cons (cons _%L170465%_ _%L170464%_)
                                            _%body170500%_))))
                                 (_%__kont172607172608%_
                                  (lambda () _%clause170417%_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172603172604%_))
                                 (let ((_%e170425170447%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172603172604%_))))
                                   (let ((_%tl170427170452%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e170425170447%_)))
                                         (_%hd170426170450%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e170425170447%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd170426170450%_))
                                         (let ((_%e170428170455%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd170426170450%_))))
                                           (let ((_%tl170430170460%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e170428170455%_)))
                                                 (_%hd170429170458%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e170428170455%_))))
                                             (_%__kont172605172606%_
                                              _%tl170427170452%_
                                              _%tl170430170460%_
                                              _%hd170429170458%_)))
                                         (_%__kont172607172608%_))))
                                 (_%__kont172607172608%_)))))
                       (let ((__tmp173796
                              (lambda (_%g170505170508%_ _%g170506170510%_)
                                (cons _%g170505170508%_ _%g170506170510%_))))
                         (declare (not safe))
                         (__foldr1 __tmp173796 '() _%L170259%_))))
                 (_%specializer-impl170515%_
                  (let ((__tmp173797
                         (cons '%#case-lambda _%specializer-clauses170513%_)))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp173797 _%stx169561%_)))
                 (_%specializer-impl170517%_
                  (_%generate-specializer-impl169565%_
                   _%$klass170364%_
                   _%$method-table170366%_
                   _%methods-bind170391%_
                   _%slots-bind170415%_
                   _%specializer-impl170515%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp173799
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L169634%_)))
                                                          (__tmp173798
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id170362%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp173799
                                                       '" => "
                                                       __tmp173798))
                                                    (_%generate-specializer-def169566%_
                                                     _%L169634%_
                                                     _%specializer-id170362%_
                                                     _%specializer-impl170517%_))))
                                            _%clause170217170256%_))))))
                           (_%loop170212170240%_ _%target170209170235%_ '()))
                         (_%g170203170222%_ _%g170204170225%_)))))
               (_%g170203170222%_ _%g170204170225%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g170203170222%_
                                                _%g170204170225%_)))))
                                   (_%g170202170520%_ _%L169633%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _%L169633%_))
                                     (let* ((_%g170524170554%_
                                             (lambda (_%g170525170551%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g170525170551%_))))
                                            (_%g170523171185%_
                                             (lambda (_%g170525170557%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g170525170557%_))
                                                   (let ((_%e170529170559%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g170525170557%_))))
                                                     (let ((_%hd170530170562%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e170529170559%_)))
                                                           (_%tl170531170564%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e170529170559%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl170531170564%_))
                                                           (let ((_%e170532170567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl170531170564%_))))
                     (let ((_%hd170533170570%_
                            (let ()
                              (declare (not safe))
                              (##car _%e170532170567%_)))
                           (_%tl170534170572%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e170532170567%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd170533170570%_))
                           (let ((_%e170535170575%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd170533170570%_))))
                             (let ((_%hd170536170578%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e170535170575%_)))
                                   (_%tl170537170580%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e170535170575%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd170536170578%_))
                                   (let ((_%e170538170583%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd170536170578%_))))
                                     (let ((_%hd170539170586%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e170538170583%_)))
                                           (_%tl170540170588%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e170538170583%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%hd170539170586%_))
                                           (let ((_%e170541170591%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd170539170586%_))))
                                             (let ((_%hd170542170594%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e170541170591%_)))
                                                   (_%tl170543170596%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e170541170591%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl170543170596%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl170540170588%_))
                                                       (let ((_%e170544170599%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl170540170588%_))))
                 (let ((_%hd170545170602%_
                        (let ()
                          (declare (not safe))
                          (##car _%e170544170599%_)))
                       (_%tl170546170604%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e170544170599%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl170546170604%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl170537170580%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl170534170572%_))
                               (let ((_%e170547170607%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl170534170572%_))))
                                 (let ((_%hd170548170610%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e170547170607%_)))
                                       (_%tl170549170612%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e170547170607%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl170549170612%_))
                                       ((lambda (_%L170615%_
                                                 _%L170616%_
                                                 _%L170617%_)
                                          (let* ((_%g170641170659%_
                                                  (lambda (_%g170642170656%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g170642170656%_))))
                                                 (_%g170640170715%_
                                                  (lambda (_%g170642170662%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g170642170662%_))
                                                        (let ((_%e170646170664%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g170642170662%_))))
                  (let ((_%hd170647170667%_
                         (let ()
                           (declare (not safe))
                           (##car _%e170646170664%_)))
                        (_%tl170648170669%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e170646170664%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl170648170669%_))
                        (let ((_%e170649170672%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl170648170669%_))))
                          (let ((_%hd170650170675%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170649170672%_)))
                                (_%tl170651170677%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170649170672%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170650170675%_))
                                (let ((_%e170652170680%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170650170675%_))))
                                  (let ((_%hd170653170683%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170652170680%_)))
                                        (_%tl170654170685%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170652170680%_))))
                                    ((lambda (_%L170688%_
                                              _%L170689%_
                                              _%L170690%_)
                                       (let ((_%receiver170709%_
                                              (let ((_%$e170706%_
                                                     (gxc#apply-extract-receiver
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))
                                                            _%L170688%_))))
                                                (if _%$e170706%_
                                                    _%$e170706%_
                                                    _%L170690%_))))
                                         (for-each
                                          (lambda (_%g170710170712%_)
                                            (gxc#apply-collect-object-refs__%
                                             '#f
                                             _%receiver170709%_
                                             _%method-calls169653%_
                                             _%slot-refs169654%_
                                             _%g170710170712%_))
                                          _%L170688%_)))
                                     _%tl170651170677%_
                                     _%tl170654170685%_
                                     _%hd170653170683%_)))
                                (_%g170641170659%_ _%g170642170662%_))))
                        (_%g170641170659%_ _%g170642170662%_))))
                (_%g170641170659%_ _%g170642170662%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g170640170715%_ _%L170616%_))
                                          (let* ((_%g170718170737%_
                                                  (lambda (_%g170719170734%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g170719170734%_))))
                                                 (_%g170717170861%_
                                                  (lambda (_%g170719170740%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%g170719170740%_))
                                                        (let ((_%e170721170742%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%g170719170740%_))))
                  (let ((_%hd170722170745%_
                         (let ()
                           (declare (not safe))
                           (##car _%e170721170742%_)))
                        (_%tl170723170747%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e170721170742%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl170723170747%_))
                        (let ((_g173800_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%tl170723170747%_
                                  '0))))
                          (begin
                            (let ((_g173801_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g173800_)
                                         (##vector-length _g173800_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g173801_ 2)))
                                  (error "Context expects 2 values"
                                         _g173801_)))
                            (let ((_%target170724170750%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g173800_ 0)))
                                  (_%tl170726170752%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g173800_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl170726170752%_))
                                  (letrec ((_%loop170727170755%_
                                            (lambda (_%hd170725170758%_
                                                     _%clause170731170760%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd170725170758%_))
                                                  (let ((_%e170728170763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd170725170758%_))))
                                                    (let ((_%lp-hd170729170766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e170728170763%_)))
                                                          (_%lp-tl170730170768%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e170728170763%_))))
                                                      (_%loop170727170755%_
                                                       _%lp-tl170730170768%_
                                                       (cons _%lp-hd170729170766%_
                                                             _%clause170731170760%_))))
                                                  (let ((_%clause170732170771%_
                                                         (reverse _%clause170731170760%_)))
                                                    ((lambda (_%L170774%_)
                                                       (for-each
                                                        (lambda (_%clause170787%_)
                                                          (let* ((_%g170789170804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g170790170801%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g170790170801%_))))
                         (_%g170788170851%_
                          (lambda (_%g170790170807%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g170790170807%_))
                                (let ((_%e170794170809%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g170790170807%_))))
                                  (let ((_%hd170795170812%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170794170809%_)))
                                        (_%tl170796170814%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170794170809%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd170795170812%_))
                                        (let ((_%e170797170817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd170795170812%_))))
                                          (let ((_%hd170798170820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170797170817%_)))
                                                (_%tl170799170822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170797170817%_))))
                                            ((lambda (_%L170825%_
                                                      _%L170826%_
                                                      _%L170827%_)
                                               (let ((_%receiver170845%_
                                                      (let ((_%$e170842%_
                                                             (gxc#apply-extract-receiver
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f '%#begin))
                            _%L170825%_))))
                (if _%$e170842%_ _%$e170842%_ _%L170827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (for-each
                                                  (lambda (_%g170846170848%_)
                                                    (gxc#apply-collect-object-refs__%
                                                     '#f
                                                     _%receiver170845%_
                                                     _%method-calls169653%_
                                                     _%slot-refs169654%_
                                                     _%g170846170848%_))
                                                  _%L170825%_)))
                                             _%tl170796170814%_
                                             _%tl170799170822%_
                                             _%hd170798170820%_)))
                                        (_%g170789170804%_
                                         _%g170790170807%_))))
                                (_%g170789170804%_ _%g170790170807%_)))))
                    (_%g170788170851%_ _%clause170787%_)))
                (let ((__tmp173802
                       (lambda (_%g170853170856%_ _%g170854170858%_)
                         (cons _%g170853170856%_ _%g170854170858%_))))
                  (declare (not safe))
                  (__foldr1 __tmp173802 '() _%L170774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%clause170732170771%_))))))
                                    (_%loop170727170755%_
                                     _%target170724170750%_
                                     '()))
                                  (_%g170718170737%_ _%g170719170740%_)))))
                        (_%g170718170737%_ _%g170719170740%_))))
                (_%g170718170737%_ _%g170719170740%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g170717170861%_ _%L170615%_))
                                          (if (_%no-specializer?169657%_)
                                              _%stx169561%_
                                              (let* ((_%specializer-id170870%_
                                                      (let* ((_%id170864%_
                                                              (let ((__tmp173803
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%L169634%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp173803 '"::specialize")))
                     (_%specializer-id170867%_
                      (let ((__tmp173804
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx169561%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id170864%_ __tmp173804))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id170867%_))
                _%specializer-id170867%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass170872%_
                                                      (let ((__tmp173805
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp173805)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table170874%_
                                                      (let ((__tmp173806
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp173806)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods170876%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%method-calls169653%_)))
                                                     (_%$methods170880%_
                                                      (map (lambda (_%id170878%_)
                                                             (let ((__tmp173807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id170878%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp173807)))
                   _%methods170876%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_170889%_
                                                      (for-each
                                                       (lambda (_%g170881170884%_
                                                                _%g170882170886%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%method-calls169653%_
                                                            _%g170881170884%_
                                                            _%g170882170886%_)))
                                                       _%methods170876%_
                                                       _%$methods170880%_))
                                                     (_%methods-bind170899%_
                                                      (map (lambda (_%g170891170894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170892170896%_)
                     (_%generate-method-bind169563%_
                      _%$klass170872%_
                      _%$method-table170874%_
                      _%g170891170894%_
                      _%g170892170896%_))
                   _%methods170876%_
                   _%$methods170880%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots170901%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _%slot-refs169654%_)))
                                                     (_%$slots170905%_
                                                      (map (lambda (_%id170903%_)
                                                             (let ((__tmp173808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _%id170903%_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp173808)))
                   _%slots170901%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_170914%_
                                                      (for-each
                                                       (lambda (_%g170906170909%_
                                                                _%g170907170911%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%slot-refs169654%_
                                                            _%g170906170909%_
                                                            _%g170907170911%_)))
                                                       _%slots170901%_
                                                       _%$slots170905%_))
                                                     (_%slots-bind170923%_
                                                      (map (lambda (_%g170915170918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170916170920%_)
                     (_%generate-slot-bind169564%_
                      _%$klass170872%_
                      _%g170915170918%_
                      _%g170916170920%_))
                   _%slots170901%_
                   _%$slots170905%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-lambda-expr171015%_
                                                      (let* ((_%g170925170943%_
                                                              (lambda (_%g170926170940%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g170926170940%_))))
                     (_%g170924171012%_
                      (lambda (_%g170926170946%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g170926170946%_))
                            (let ((_%e170930170948%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170926170946%_))))
                              (let ((_%hd170931170951%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e170930170948%_)))
                                    (_%tl170932170953%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e170930170948%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl170932170953%_))
                                    (let ((_%e170933170956%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl170932170953%_))))
                                      (let ((_%hd170934170959%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e170933170956%_)))
                                            (_%tl170935170961%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e170933170956%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd170934170959%_))
                                            (let ((_%e170936170964%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd170934170959%_))))
                                              (let ((_%hd170937170967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170936170964%_)))
                                                    (_%tl170938170969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170936170964%_))))
                                                ((lambda (_%L170972%_
                                                          _%L170973%_
                                                          _%L170974%_)
                                                   (let* ((_%receiver171003%_
                                                           (let ((_%$e171000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gxc#apply-extract-receiver
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '%#begin))
                                 _%L170972%_))))
                     (if _%$e171000%_ _%$e171000%_ _%L170974%_)))
                  (_%body171009%_
                   (map (lambda (_%g171004171006%_)
                          (gxc#apply-subst-object-refs__%
                           '#f
                           _%receiver171003%_
                           _%$klass170872%_
                           _%method-calls169653%_
                           _%slot-refs169654%_
                           _%g171004171006%_))
                        _%L170972%_))
                  (__tmp173809
                   (cons '%#lambda
                         (cons (cons _%L170974%_ _%L170973%_)
                               _%body171009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp173809
                                                      _%L170616%_)))
                                                 _%tl170935170961%_
                                                 _%tl170938170969%_
                                                 _%hd170937170967%_)))
                                            (_%g170925170943%_
                                             _%g170926170946%_))))
                                    (_%g170925170943%_ _%g170926170946%_))))
                            (_%g170925170943%_ _%g170926170946%_)))))
                (_%g170924171012%_ _%L170616%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-case-lambda-expr171178%_
                                                      (let* ((_%g171017171036%_
                                                              (lambda (_%g171018171033%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g171018171033%_))))
                     (_%g171016171175%_
                      (lambda (_%g171018171039%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g171018171039%_))
                            (let ((_%e171020171041%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g171018171039%_))))
                              (let ((_%hd171021171044%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171020171041%_)))
                                    (_%tl171022171046%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171020171041%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl171022171046%_))
                                    (let ((_g173810_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl171022171046%_
                                              '0))))
                                      (begin
                                        (let ((_g173811_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g173810_)
                                                     (##vector-length
                                                      _g173810_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g173811_ 2)))
                                              (error "Context expects 2 values"
                                                     _g173811_)))
                                        (let ((_%target171023171049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g173810_ 0)))
                                              (_%tl171025171051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g173810_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171025171051%_))
                                              (letrec ((_%loop171026171054%_
                                                        (lambda (_%hd171024171057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%clause171030171059%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd171024171057%_))
                      (let ((_%e171027171062%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd171024171057%_))))
                        (let ((_%lp-hd171028171065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171027171062%_)))
                              (_%lp-tl171029171067%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171027171062%_))))
                          (_%loop171026171054%_
                           _%lp-tl171029171067%_
                           (cons _%lp-hd171028171065%_
                                 _%clause171030171059%_))))
                      (let ((_%clause171031171070%_
                             (reverse _%clause171030171059%_)))
                        ((lambda (_%L171073%_)
                           (let* ((_%clauses171173%_
                                   (map (lambda (_%clause171087%_)
                                          (let* ((_%__stx172623172624%_
                                                  _%clause171087%_)
                                                 (_%g171090171105%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx172623172624%_)))))
                                            (let ((_%__kont172625172626%_
                                                   (lambda (_%L171133%_
                                                            _%L171134%_
                                                            _%L171135%_)
                                                     (let* ((_%receiver171154%_
                                                             (let ((_%$e171151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#apply-extract-receiver
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#begin))
                                   _%L171133%_))))
                       (if _%$e171151%_ _%$e171151%_ _%L171135%_)))
                    (_%body171160%_
                     (map (lambda (_%g171155171157%_)
                            (gxc#apply-subst-object-refs__%
                             '#f
                             _%receiver171154%_
                             _%$klass170872%_
                             _%method-calls169653%_
                             _%slot-refs169654%_
                             _%g171155171157%_))
                          _%L171133%_)))
               (cons (cons _%L171135%_ _%L171134%_) _%body171160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172627172628%_
                                                   (lambda ()
                                                     _%clause171087%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx172623172624%_))
                                                  (let ((_%e171095171117%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx172623172624%_))))
                                                    (let ((_%tl171097171122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e171095171117%_)))
                                                          (_%hd171096171120%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e171095171117%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd171096171120%_))
                                                          (let ((_%e171098171125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd171096171120%_))))
                    (let ((_%tl171100171130%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e171098171125%_)))
                          (_%hd171099171128%_
                           (let ()
                             (declare (not safe))
                             (##car _%e171098171125%_))))
                      (_%__kont172625172626%_
                       _%tl171097171122%_
                       _%tl171100171130%_
                       _%hd171099171128%_)))
                  (_%__kont172627172628%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172627172628%_)))))
                                        (let ((__tmp173812
                                               (lambda (_%g171165171168%_
                                                        _%g171166171170%_)
                                                 (cons _%g171165171168%_
                                                       _%g171166171170%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp173812
                                           '()
                                           _%L171073%_))))
                                  (__tmp173813
                                   (cons '%#case-lambda _%clauses171173%_)))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp173813 _%L170615%_)))
                         _%clause171031171070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop171026171054%_
                                                 _%target171023171049%_
                                                 '()))
                                              (_%g171017171036%_
                                               _%g171018171039%_)))))
                                    (_%g171017171036%_ _%g171018171039%_))))
                            (_%g171017171036%_ _%g171018171039%_)))))
                (_%g171016171175%_ _%L170615%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl171180%_
                                                      (let ((__tmp173814
                                                             (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons (cons _%L170617%_ '())
                                             (cons _%specializer-lambda-expr171015%_
                                                   '()))
                                       '())
                                 (cons _%specializer-case-lambda-expr171178%_
                                       '())))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp173814 _%stx169561%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl171182%_
                                                      (_%generate-specializer-impl169565%_
                                                       _%$klass170872%_
                                                       _%$method-table170874%_
                                                       _%methods-bind170899%_
                                                       _%slots-bind170923%_
                                                       _%specializer-impl171180%_)))
                                                (let ((__tmp173816
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L169634%_)))
                                                      (__tmp173815
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id170870%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp173816
                                                   '" => "
                                                   __tmp173815))
                                                (_%generate-specializer-def169566%_
                                                 _%L169634%_
                                                 _%specializer-id170870%_
                                                 _%specializer-impl171182%_))))
                                        _%hd170548170610%_
                                        _%hd170545170602%_
                                        _%hd170542170594%_)
                                       (_%g170524170554%_ _%g170525170557%_))))
                               (_%g170524170554%_ _%g170525170557%_))
                           (_%g170524170554%_ _%g170525170557%_))
                       (_%g170524170554%_ _%g170525170557%_))))
               (_%g170524170554%_ _%g170525170557%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g170524170554%_
                                                    _%g170525170557%_))))
                                           (_%g170524170554%_
                                            _%g170525170557%_))))
                                   (_%g170524170554%_ _%g170525170557%_))))
                           (_%g170524170554%_ _%g170525170557%_))))
                   (_%g170524170554%_ _%g170525170557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g170524170554%_
                                                    _%g170525170557%_)))))
                                       (_%g170523171185%_ _%L169633%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _%L169633%_))
                                         (let* ((_%g171189171242%_
                                                 (lambda (_%g171190171239%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g171190171239%_))))
                                                (_%g171188172413%_
                                                 (lambda (_%g171190171245%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g171190171245%_))
                                                       (let ((_%e171196171247%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g171190171245%_))))
                 (let ((_%hd171197171250%_
                        (let ()
                          (declare (not safe))
                          (##car _%e171196171247%_)))
                       (_%tl171198171252%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e171196171247%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%hd171197171250%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%hd171197171250%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl171198171252%_))
                               (let ((_%e171199171255%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%tl171198171252%_))))
                                 (let ((_%hd171200171258%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e171199171255%_)))
                                       (_%tl171201171260%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e171199171255%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd171200171258%_))
                                       (let ((_%e171202171263%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd171200171258%_))))
                                         (let ((_%hd171203171266%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e171202171263%_)))
                                               (_%tl171204171268%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e171202171263%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd171203171266%_))
                                               (let ((_%e171205171271%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd171203171266%_))))
                                                 (let ((_%hd171206171274%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e171205171271%_)))
                                                       (_%tl171207171276%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e171205171271%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%hd171206171274%_))
                                                       (let ((_%e171208171279%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd171206171274%_))))
                 (let ((_%hd171209171282%_
                        (let ()
                          (declare (not safe))
                          (##car _%e171208171279%_)))
                       (_%tl171210171284%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e171208171279%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl171210171284%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl171207171276%_))
                           (let ((_%e171211171287%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%tl171207171276%_))))
                             (let ((_%hd171212171290%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e171211171287%_)))
                                   (_%tl171213171292%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e171211171287%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd171212171290%_))
                                   (let ((_%e171214171295%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd171212171290%_))))
                                     (let ((_%hd171215171298%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e171214171295%_)))
                                           (_%tl171216171300%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e171214171295%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd171215171298%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%hd171215171298%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl171216171300%_))
                                                   (let ((_%e171217171303%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%tl171216171300%_))))
                                                     (let ((_%hd171218171306%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e171217171303%_)))
                                                           (_%tl171219171308%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e171217171303%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd171218171306%_))
                                                           (let ((_%e171220171311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%hd171218171306%_))))
                     (let ((_%hd171221171314%_
                            (let ()
                              (declare (not safe))
                              (##car _%e171220171311%_)))
                           (_%tl171222171316%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e171220171311%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd171221171314%_))
                           (let ((_%e171223171319%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd171221171314%_))))
                             (let ((_%hd171224171322%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e171223171319%_)))
                                   (_%tl171225171324%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e171223171319%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd171224171322%_))
                                   (let ((_%e171226171327%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%hd171224171322%_))))
                                     (let ((_%hd171227171330%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e171226171327%_)))
                                           (_%tl171228171332%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e171226171327%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl171228171332%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl171225171324%_))
                                               (let ((_%e171229171335%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%tl171225171324%_))))
                                                 (let ((_%hd171230171338%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e171229171335%_)))
                                                       (_%tl171231171340%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e171229171335%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl171231171340%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl171222171316%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl171219171308%_))
                       (let ((_%e171232171343%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl171219171308%_))))
                         (let ((_%hd171233171346%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e171232171343%_)))
                               (_%tl171234171348%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e171232171343%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl171234171348%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl171213171292%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%tl171204171268%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl171201171260%_))
                                           (let ((_%e171235171351%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl171201171260%_))))
                                             (let ((_%hd171236171354%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e171235171351%_)))
                                                   (_%tl171237171356%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e171235171351%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl171237171356%_))
                                                   ((lambda (_%L171359%_
                                                             _%L171360%_
                                                             _%L171361%_
                                                             _%L171362%_
                                                             _%L171363%_)
                                                      (let* ((_%g171403171465%_
                                                              (lambda (_%g171404171462%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g171404171462%_))))
                     (_%g171402172410%_
                      (lambda (_%g171404171468%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g171404171468%_))
                            (let ((_%e171410171470%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g171404171468%_))))
                              (let ((_%hd171411171473%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171410171470%_)))
                                    (_%tl171412171475%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171410171470%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd171411171473%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd171411171473%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl171412171475%_))
                                            (let ((_%e171413171478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl171412171475%_))))
                                              (let ((_%hd171414171481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171413171478%_)))
                                                    (_%tl171415171483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171413171478%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl171415171483%_))
                                                    (let ((_%e171416171486%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl171415171483%_))))
                                                      (let ((_%hd171417171489%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e171416171486%_)))
                    (_%tl171418171491%_
                     (let () (declare (not safe)) (##cdr _%e171416171486%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%hd171417171489%_))
                    (let ((_%e171419171494%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd171417171489%_))))
                      (let ((_%hd171420171497%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171419171494%_)))
                            (_%tl171421171499%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171419171494%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%hd171420171497%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _%hd171420171497%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl171421171499%_))
                                    (let ((_%e171422171502%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl171421171499%_))))
                                      (let ((_%hd171423171505%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171422171502%_)))
                                            (_%tl171424171507%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171422171502%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd171423171505%_))
                                            (let ((_%e171425171510%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd171423171505%_))))
                                              (let ((_%hd171426171513%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e171425171510%_)))
                                                    (_%tl171427171515%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e171425171510%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd171426171513%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd171426171513%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl171427171515%_))
                                                            (let ((_%e171428171518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl171427171515%_))))
                      (let ((_%hd171429171521%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171428171518%_)))
                            (_%tl171430171523%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171428171518%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171430171523%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl171424171507%_))
                                (let ((_%e171431171526%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl171424171507%_))))
                                  (let ((_%hd171432171529%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e171431171526%_)))
                                        (_%tl171433171531%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e171431171526%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd171432171529%_))
                                        (let ((_%e171434171534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd171432171529%_))))
                                          (let ((_%hd171435171537%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e171434171534%_)))
                                                (_%tl171436171539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e171434171534%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd171435171537%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _%hd171435171537%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl171436171539%_))
                                                        (let ((_%e171437171542%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl171436171539%_))))
                  (let ((_%hd171438171545%_
                         (let ()
                           (declare (not safe))
                           (##car _%e171437171542%_)))
                        (_%tl171439171547%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e171437171542%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl171439171547%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171433171531%_))
                            (let ((_%e171440171550%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171433171531%_))))
                              (let ((_%hd171441171553%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171440171550%_)))
                                    (_%tl171442171555%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171440171550%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd171441171553%_))
                                    (let ((_%e171443171558%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd171441171553%_))))
                                      (let ((_%hd171444171561%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e171443171558%_)))
                                            (_%tl171445171563%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e171443171558%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd171444171561%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd171444171561%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl171445171563%_))
                                                    (let ((_%e171446171566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl171445171563%_))))
                                                      (let ((_%hd171447171569%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e171446171566%_)))
                    (_%tl171448171571%_
                     (let () (declare (not safe)) (##cdr _%e171446171566%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl171448171571%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%tl171442171555%_))
                        (if (let ((__tmp173817
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-length _%tl171442171555%_))))
                              (declare (not safe))
                              (##fx>= __tmp173817 '1))
                            (let ((_g173818_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl171442171555%_
                                      '1))))
                              (begin
                                (let ((_g173819_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g173818_)
                                             (##vector-length _g173818_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g173819_ 2)))
                                      (error "Context expects 2 values"
                                             _g173819_)))
                                (let ((_%target171449171574%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g173818_ 0)))
                                      (_%tl171451171576%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g173818_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171451171576%_))
                                      (let ((_%e171458171579%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171451171576%_))))
                                        (let ((_%hd171459171582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171458171579%_)))
                                              (_%tl171460171584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171458171579%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171460171584%_))
                                              (letrec ((_%loop171452171587%_
                                                        (lambda (_%hd171450171590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%kw-ref171456171592%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd171450171590%_))
                      (let ((_%e171453171595%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd171450171590%_))))
                        (let ((_%lp-hd171454171598%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171453171595%_)))
                              (_%lp-tl171455171600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171453171595%_))))
                          (_%loop171452171587%_
                           _%lp-tl171455171600%_
                           (cons _%lp-hd171454171598%_
                                 _%kw-ref171456171592%_))))
                      (let ((_%kw-ref171457171603%_
                             (reverse _%kw-ref171456171592%_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl171418171491%_))
                            ((lambda (_%L171606%_
                                      _%L171607%_
                                      _%L171608%_
                                      _%L171609%_
                                      _%L171610%_)
                               (let* ((_%kw-count171661%_
                                       (length (let ((__tmp173820
                                                      (lambda (_%g171653171656%_
                                                               _%g171654171658%_)
                                                        (cons _%g171653171656%_
                                                              _%g171654171658%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp173820
                                                  '()
                                                  _%L171607%_))))
                                      (_%self-index171663%_
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%kw-count171661%_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _%L171361%_))
                                     (let* ((_%g171667171681%_
                                             (lambda (_%g171668171678%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g171668171678%_))))
                                            (_%g171666171804%_
                                             (lambda (_%g171668171684%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g171668171684%_))
                                                   (let ((_%e171671171686%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%g171668171684%_))))
                                                     (let ((_%hd171672171689%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e171671171686%_)))
                                                           (_%tl171673171691%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e171671171686%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl171673171691%_))
                                                           (let ((_%e171674171694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl171673171691%_))))
                     (let ((_%hd171675171697%_
                            (let ()
                              (declare (not safe))
                              (##car _%e171674171694%_)))
                           (_%tl171676171699%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e171674171694%_))))
                       ((lambda (_%L171702%_ _%L171703%_)
                          (let* ((_%self171720%_
                                  (list-ref _%L171703%_ _%self-index171663%_))
                                 (_%receiver171725%_
                                  (let ((_%$e171722%_
                                         (gxc#apply-extract-receiver
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#begin))
                                                _%L171702%_))))
                                    (if _%$e171722%_
                                        _%$e171722%_
                                        _%self171720%_))))
                            (for-each
                             (lambda (_%g171727171729%_)
                               (gxc#apply-collect-object-refs__%
                                '#f
                                _%receiver171725%_
                                _%method-calls169653%_
                                _%slot-refs169654%_
                                _%g171727171729%_))
                             _%L171702%_)
                            (if (_%no-specializer?169657%_)
                                _%stx169561%_
                                (let* ((_%specializer-id171738%_
                                        (let* ((_%id171732%_
                                                (let ((__tmp173821
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%L169634%_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp173821
                                                   '"::specialize")))
                                               (_%specializer-id171735%_
                                                (let ((__tmp173822
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _%stx169561%_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _%id171732%_
                                                   __tmp173822))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _%specializer-id171735%_))
                                          _%specializer-id171735%_))
                                       (_%$klass171740%_
                                        (let ((__tmp173823
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__klass))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp173823)))
                                       (_%$method-table171742%_
                                        (let ((__tmp173824
                                               (let ()
                                                 (declare (not safe))
                                                 (##gensym '__method-table))))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp173824)))
                                       (_%methods171744%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%method-calls169653%_)))
                                       (_%$methods171748%_
                                        (map (lambda (_%id171746%_)
                                               (let ((__tmp173825
                                                      (gensym _%id171746%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp173825)))
                                             _%methods171744%_))
                                       (_%_171757%_
                                        (for-each
                                         (lambda (_%g171749171752%_
                                                  _%g171750171754%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%method-calls169653%_
                                              _%g171749171752%_
                                              _%g171750171754%_)))
                                         _%methods171744%_
                                         _%$methods171748%_))
                                       (_%methods-bind171767%_
                                        (map (lambda (_%g171759171762%_
                                                      _%g171760171764%_)
                                               (_%generate-method-bind169563%_
                                                _%$klass171740%_
                                                _%$method-table171742%_
                                                _%g171759171762%_
                                                _%g171760171764%_))
                                             _%methods171744%_
                                             _%$methods171748%_))
                                       (_%slots171769%_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _%slot-refs169654%_)))
                                       (_%$slots171773%_
                                        (map (lambda (_%id171771%_)
                                               (let ((__tmp173826
                                                      (gensym _%id171771%_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp173826)))
                                             _%slots171769%_))
                                       (_%_171782%_
                                        (for-each
                                         (lambda (_%g171774171777%_
                                                  _%g171775171779%_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _%slot-refs169654%_
                                              _%g171774171777%_
                                              _%g171775171779%_)))
                                         _%slots171769%_
                                         _%$slots171773%_))
                                       (_%slots-bind171791%_
                                        (map (lambda (_%g171783171786%_
                                                      _%g171784171788%_)
                                               (_%generate-slot-bind169564%_
                                                _%$klass171740%_
                                                _%g171783171786%_
                                                _%g171784171788%_))
                                             _%slots171769%_
                                             _%$slots171773%_))
                                       (_%specializer-impl171799%_
                                        (let* ((_%specializer-body171797%_
                                                (map (lambda (_%g171792171794%_)
                                                       (gxc#apply-subst-object-refs__%
                                                        '#f
                                                        _%receiver171725%_
                                                        _%$klass171740%_
                                                        _%method-calls169653%_
                                                        _%slot-refs169654%_
                                                        _%g171792171794%_))
                                                     _%L171702%_))
                                               (__tmp173827
                                                (cons '%#let-values
                                                      (cons (cons (cons (cons _%L171363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (cons '%#let-values
                                            (cons (cons (cons (cons _%L171362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (let ((__tmp173828
                                   (cons '%#lambda
                                         (cons _%L171703%_
                                               _%specializer-body171797%_))))
                              (declare (not safe))
                              (gxc#xform-wrap-source __tmp173828 _%L171361%_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L171360%_ '())))
                                      '()))
                          '())
                    (cons _%L171359%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp173827
                                           _%stx169561%_)))
                                       (_%specializer-impl171801%_
                                        (_%generate-specializer-impl169565%_
                                         _%$klass171740%_
                                         _%$method-table171742%_
                                         _%methods-bind171767%_
                                         _%slots-bind171791%_
                                         _%specializer-impl171799%_)))
                                  (let ((__tmp173830
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%L169634%_)))
                                        (__tmp173829
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e
                                            _%specializer-id171738%_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp173830
                                     '" => "
                                     __tmp173829))
                                  (_%generate-specializer-def169566%_
                                   _%L169634%_
                                   _%specializer-id171738%_
                                   _%specializer-impl171801%_)))))
                        _%tl171676171699%_
                        _%hd171675171697%_)))
                   (_%g171667171681%_ _%g171668171684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g171667171681%_
                                                    _%g171668171684%_)))))
                                       (_%g171666171804%_ _%L171361%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _%L171361%_))
                                         (let* ((_%g171808171838%_
                                                 (lambda (_%g171809171835%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g171809171835%_))))
                                                (_%g171807172406%_
                                                 (lambda (_%g171809171841%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%g171809171841%_))
                                                       (let ((_%e171813171843%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%g171809171841%_))))
                 (let ((_%hd171814171846%_
                        (let ()
                          (declare (not safe))
                          (##car _%e171813171843%_)))
                       (_%tl171815171848%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e171813171843%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl171815171848%_))
                       (let ((_%e171816171851%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%tl171815171848%_))))
                         (let ((_%hd171817171854%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e171816171851%_)))
                               (_%tl171818171856%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e171816171851%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd171817171854%_))
                               (let ((_%e171819171859%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd171817171854%_))))
                                 (let ((_%hd171820171862%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e171819171859%_)))
                                       (_%tl171821171864%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e171819171859%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd171820171862%_))
                                       (let ((_%e171822171867%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd171820171862%_))))
                                         (let ((_%hd171823171870%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e171822171867%_)))
                                               (_%tl171824171872%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e171822171867%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%hd171823171870%_))
                                               (let ((_%e171825171875%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%hd171823171870%_))))
                                                 (let ((_%hd171826171878%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e171825171875%_)))
                                                       (_%tl171827171880%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e171825171875%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl171827171880%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl171824171872%_))
                                                           (let ((_%e171828171883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl171824171872%_))))
                     (let ((_%hd171829171886%_
                            (let ()
                              (declare (not safe))
                              (##car _%e171828171883%_)))
                           (_%tl171830171888%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e171828171883%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl171830171888%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%tl171821171864%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl171818171856%_))
                                   (let ((_%e171831171891%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%tl171818171856%_))))
                                     (let ((_%hd171832171894%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e171831171891%_)))
                                           (_%tl171833171896%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e171831171891%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl171833171896%_))
                                           ((lambda (_%L171899%_
                                                     _%L171900%_
                                                     _%L171901%_)
                                              (let* ((_%g171925171939%_
                                                      (lambda (_%g171926171936%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g171926171936%_))))
                                                     (_%g171924171986%_
                                                      (lambda (_%g171926171942%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g171926171942%_))
                                                            (let ((_%e171929171944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g171926171942%_))))
                      (let ((_%hd171930171947%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171929171944%_)))
                            (_%tl171931171949%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171929171944%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl171931171949%_))
                            (let ((_%e171932171952%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl171931171949%_))))
                              (let ((_%hd171933171955%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e171932171952%_)))
                                    (_%tl171934171957%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e171932171952%_))))
                                ((lambda (_%L171960%_ _%L171961%_)
                                   (let* ((_%self171974%_
                                           (list-ref
                                            _%L171961%_
                                            _%self-index171663%_))
                                          (_%receiver171979%_
                                           (let ((_%$e171976%_
                                                  (gxc#apply-extract-receiver
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '%#begin))
                                                         _%L171960%_))))
                                             (if _%$e171976%_
                                                 _%$e171976%_
                                                 _%self171974%_))))
                                     (for-each
                                      (lambda (_%g171981171983%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver171979%_
                                         _%method-calls169653%_
                                         _%slot-refs169654%_
                                         _%g171981171983%_))
                                      _%L171960%_)))
                                 _%tl171934171957%_
                                 _%hd171933171955%_)))
                            (_%g171925171939%_ _%g171926171942%_))))
                    (_%g171925171939%_ _%g171926171942%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g171924171986%_
                                                 _%L171900%_))
                                              (let* ((_%g171989172008%_
                                                      (lambda (_%g171990172005%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g171990172005%_))))
                                                     (_%g171988172119%_
                                                      (lambda (_%g171990172011%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g171990172011%_))
                                                            (let ((_%e171992172013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g171990172011%_))))
                      (let ((_%hd171993172016%_
                             (let ()
                               (declare (not safe))
                               (##car _%e171992172013%_)))
                            (_%tl171994172018%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e171992172013%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _%tl171994172018%_))
                            (let ((_g173831_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _%tl171994172018%_
                                      '0))))
                              (begin
                                (let ((_g173832_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g173831_)
                                             (##vector-length _g173831_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g173832_ 2)))
                                      (error "Context expects 2 values"
                                             _g173832_)))
                                (let ((_%target171995172021%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g173831_ 0)))
                                      (_%tl171997172023%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g173831_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl171997172023%_))
                                      (letrec ((_%loop171998172026%_
                                                (lambda (_%hd171996172029%_
                                                         _%clause172002172031%_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd171996172029%_))
                                                      (let ((_%e171999172034%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd171996172029%_))))
                (let ((_%lp-hd172000172037%_
                       (let () (declare (not safe)) (##car _%e171999172034%_)))
                      (_%lp-tl172001172039%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e171999172034%_))))
                  (_%loop171998172026%_
                   _%lp-tl172001172039%_
                   (cons _%lp-hd172000172037%_ _%clause172002172031%_))))
              (let ((_%clause172003172042%_ (reverse _%clause172002172031%_)))
                ((lambda (_%L172045%_)
                   (for-each
                    (lambda (_%clause172058%_)
                      (let* ((_%g172060172071%_
                              (lambda (_%g172061172068%_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g172061172068%_))))
                             (_%g172059172109%_
                              (lambda (_%g172061172074%_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%g172061172074%_))
                                    (let ((_%e172064172076%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%g172061172074%_))))
                                      (let ((_%hd172065172079%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e172064172076%_)))
                                            (_%tl172066172081%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e172064172076%_))))
                                        ((lambda (_%L172084%_ _%L172085%_)
                                           (let* ((_%self172097%_
                                                   (list-ref
                                                    _%L172085%_
                                                    _%self-index171663%_))
                                                  (_%receiver172102%_
                                                   (let ((_%$e172099%_
                                                          (gxc#apply-extract-receiver
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#begin))
                         _%L172084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e172099%_
                                                         _%$e172099%_
                                                         _%self172097%_))))
                                             (for-each
                                              (lambda (_%g172104172106%_)
                                                (gxc#apply-collect-object-refs__%
                                                 '#f
                                                 _%receiver172102%_
                                                 _%method-calls169653%_
                                                 _%slot-refs169654%_
                                                 _%g172104172106%_))
                                              _%L172084%_)))
                                         _%tl172066172081%_
                                         _%hd172065172079%_)))
                                    (_%g172060172071%_ _%g172061172074%_)))))
                        (_%g172059172109%_ _%clause172058%_)))
                    (let ((__tmp173833
                           (lambda (_%g172111172114%_ _%g172112172116%_)
                             (cons _%g172111172114%_ _%g172112172116%_))))
                      (declare (not safe))
                      (__foldr1 __tmp173833 '() _%L172045%_))))
                 _%clause172003172042%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop171998172026%_
                                         _%target171995172021%_
                                         '()))
                                      (_%g171989172008%_ _%g171990172011%_)))))
                            (_%g171989172008%_ _%g171990172011%_))))
                    (_%g171989172008%_ _%g171990172011%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g171988172119%_
                                                 _%L171899%_))
                                              (if (_%no-specializer?169657%_)
                                                  _%stx169561%_
                                                  (let* ((_%specializer-id172128%_
                                                          (let* ((_%id172122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp173834
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%L169634%_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp173834 '"::specialize")))
                         (_%specializer-id172125%_
                          (let ((__tmp173835
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _%stx169561%_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1
                             _%id172122%_
                             __tmp173835))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _%specializer-id172125%_))
                    _%specializer-id172125%_))
                 (_%$klass172130%_
                  (let ((__tmp173836
                         (let () (declare (not safe)) (##gensym '__klass))))
                    (declare (not safe))
                    (make-symbol__0 __tmp173836)))
                 (_%$method-table172132%_
                  (let ((__tmp173837
                         (let ()
                           (declare (not safe))
                           (##gensym '__method-table))))
                    (declare (not safe))
                    (make-symbol__0 __tmp173837)))
                 (_%methods172134%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%method-calls169653%_)))
                 (_%$methods172138%_
                  (map (lambda (_%id172136%_)
                         (let ((__tmp173838 (gensym _%id172136%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp173838)))
                       _%methods172134%_))
                 (_%_172147%_
                  (for-each
                   (lambda (_%g172139172142%_ _%g172140172144%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%method-calls169653%_
                        _%g172139172142%_
                        _%g172140172144%_)))
                   _%methods172134%_
                   _%$methods172138%_))
                 (_%methods-bind172157%_
                  (map (lambda (_%g172149172152%_ _%g172150172154%_)
                         (_%generate-method-bind169563%_
                          _%$klass172130%_
                          _%$method-table172132%_
                          _%g172149172152%_
                          _%g172150172154%_))
                       _%methods172134%_
                       _%$methods172138%_))
                 (_%slots172159%_
                  (let ()
                    (declare (not safe))
                    (hash-keys _%slot-refs169654%_)))
                 (_%$slots172163%_
                  (map (lambda (_%id172161%_)
                         (let ((__tmp173839 (gensym _%id172161%_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp173839)))
                       _%slots172159%_))
                 (_%_172172%_
                  (for-each
                   (lambda (_%g172164172167%_ _%g172165172169%_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _%slot-refs169654%_
                        _%g172164172167%_
                        _%g172165172169%_)))
                   _%slots172159%_
                   _%$slots172163%_))
                 (_%slots-bind172181%_
                  (map (lambda (_%g172173172176%_ _%g172174172178%_)
                         (_%generate-slot-bind169564%_
                          _%$klass172130%_
                          _%g172173172176%_
                          _%g172174172178%_))
                       _%slots172159%_
                       _%$slots172163%_))
                 (_%specializer-lambda-expr172259%_
                  (let* ((_%g172183172197%_
                          (lambda (_%g172184172194%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g172184172194%_))))
                         (_%g172182172256%_
                          (lambda (_%g172184172200%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g172184172200%_))
                                (let ((_%e172187172202%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g172184172200%_))))
                                  (let ((_%hd172188172205%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172187172202%_)))
                                        (_%tl172189172207%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172187172202%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl172189172207%_))
                                        (let ((_%e172190172210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl172189172207%_))))
                                          (let ((_%hd172191172213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e172190172210%_)))
                                                (_%tl172192172215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e172190172210%_))))
                                            ((lambda (_%L172218%_ _%L172219%_)
                                               (let* ((_%self172242%_
                                                       (list-ref
                                                        _%L172219%_
                                                        _%self-index171663%_))
                                                      (_%receiver172247%_
                                                       (let ((_%$e172244%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%L172218%_))))
                 (if _%$e172244%_ _%$e172244%_ _%self172242%_)))
              (_%body172253%_
               (map (lambda (_%g172248172250%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver172247%_
                       _%$klass172130%_
                       _%method-calls169653%_
                       _%slot-refs169654%_
                       _%g172248172250%_))
                    _%L172218%_))
              (__tmp173840 (cons '%#lambda (cons _%L172219%_ _%body172253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp173840
                                                  _%L171900%_)))
                                             _%tl172192172215%_
                                             _%hd172191172213%_)))
                                        (_%g172183172197%_
                                         _%g172184172200%_))))
                                (_%g172183172197%_ _%g172184172200%_)))))
                    (_%g172182172256%_ _%L171900%_)))
                 (_%specializer-case-lambda-expr172399%_
                  (let* ((_%g172261172280%_
                          (lambda (_%g172262172277%_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g172262172277%_))))
                         (_%g172260172396%_
                          (lambda (_%g172262172283%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%g172262172283%_))
                                (let ((_%e172264172285%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%g172262172283%_))))
                                  (let ((_%hd172265172288%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e172264172285%_)))
                                        (_%tl172266172290%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e172264172285%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl172266172290%_))
                                        (let ((_g173841_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl172266172290%_
                                                  '0))))
                                          (begin
                                            (let ((_g173842_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g173841_)
                                                         (##vector-length
                                                          _g173841_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g173842_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g173842_)))
                                            (let ((_%target172267172293%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g173841_
                                                      0)))
                                                  (_%tl172269172295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g173841_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl172269172295%_))
                                                  (letrec ((_%loop172270172298%_
                                                            (lambda (_%hd172268172301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%clause172274172303%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd172268172301%_))
                          (let ((_%e172271172306%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd172268172301%_))))
                            (let ((_%lp-hd172272172309%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e172271172306%_)))
                                  (_%lp-tl172273172311%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e172271172306%_))))
                              (_%loop172270172298%_
                               _%lp-tl172273172311%_
                               (cons _%lp-hd172272172309%_
                                     _%clause172274172303%_))))
                          (let ((_%clause172275172314%_
                                 (reverse _%clause172274172303%_)))
                            ((lambda (_%L172317%_)
                               (let* ((_%clauses172394%_
                                       (map (lambda (_%clause172331%_)
                                              (let* ((_%g172333172344%_
                                                      (lambda (_%g172334172341%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g172334172341%_))))
                                                     (_%g172332172384%_
                                                      (lambda (_%g172334172347%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g172334172347%_))
                                                            (let ((_%e172337172349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%g172334172347%_))))
                      (let ((_%hd172338172352%_
                             (let ()
                               (declare (not safe))
                               (##car _%e172337172349%_)))
                            (_%tl172339172354%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e172337172349%_))))
                        ((lambda (_%L172357%_ _%L172358%_)
                           (let* ((_%self172370%_
                                   (list-ref _%L172358%_ _%self-index171663%_))
                                  (_%receiver172375%_
                                   (let ((_%$e172372%_
                                          (gxc#apply-extract-receiver
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    '%#begin))
                                                 _%L172357%_))))
                                     (if _%$e172372%_
                                         _%$e172372%_
                                         _%self172370%_)))
                                  (_%body172381%_
                                   (map (lambda (_%g172376172378%_)
                                          (gxc#apply-subst-object-refs__%
                                           '#f
                                           _%receiver172375%_
                                           _%$klass172130%_
                                           _%method-calls169653%_
                                           _%slot-refs169654%_
                                           _%g172376172378%_))
                                        _%L172357%_)))
                             (cons _%L172358%_ _%body172381%_)))
                         _%tl172339172354%_
                         _%hd172338172352%_)))
                    (_%g172333172344%_ _%g172334172347%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g172332172384%_
                                                 _%clause172331%_)))
                                            (let ((__tmp173843
                                                   (lambda (_%g172386172389%_
                                                            _%g172387172391%_)
                                                     (cons _%g172386172389%_
                                                           _%g172387172391%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173843
                                               '()
                                               _%L172317%_))))
                                      (__tmp173844
                                       (cons '%#case-lambda
                                             _%clauses172394%_)))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp173844
                                  _%L171899%_)))
                             _%clause172275172314%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop172270172298%_
                                                     _%target172267172293%_
                                                     '()))
                                                  (_%g172261172280%_
                                                   _%g172262172283%_)))))
                                        (_%g172261172280%_
                                         _%g172262172283%_))))
                                (_%g172261172280%_ _%g172262172283%_)))))
                    (_%g172260172396%_ _%L171899%_)))
                 (_%specializer-impl172401%_
                  (let ((__tmp173845
                         (cons '%#let-values
                               (cons (cons (cons (cons _%L171363%_ '())
                                                 (cons (cons '%#let-values
                                                             (cons (cons (cons (cons _%L171362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             '())
                                       (cons (let ((__tmp173846
                                                    (cons '%#let-values
                                                          (cons (cons (cons (cons _%L171901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '())
                                    (cons _%specializer-lambda-expr172259%_
                                          '()))
                              '())
                        (cons _%specializer-case-lambda-expr172399%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp173846
                                                _%stx169561%_))
                                             '()))
                                 '())
                           (cons _%L171360%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _%L171359%_ '())))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp173845 _%stx169561%_)))
                 (_%specializer-impl172403%_
                  (_%generate-specializer-impl169565%_
                   _%$klass172130%_
                   _%$method-table172132%_
                   _%methods-bind172157%_
                   _%slots-bind172181%_
                   _%specializer-impl172401%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp173848
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%L169634%_)))
                                                          (__tmp173847
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%specializer-id172128%_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp173848
                                                       '" => "
                                                       __tmp173847))
                                                    (_%generate-specializer-def169566%_
                                                     _%L169634%_
                                                     _%specializer-id172128%_
                                                     _%specializer-impl172403%_))))
                                            _%hd171832171894%_
                                            _%hd171829171886%_
                                            _%hd171826171878%_)
                                           (_%g171808171838%_
                                            _%g171809171841%_))))
                                   (_%g171808171838%_ _%g171809171841%_))
                               (_%g171808171838%_ _%g171809171841%_))
                           (_%g171808171838%_ _%g171809171841%_))))
                   (_%g171808171838%_ _%g171809171841%_))
               (_%g171808171838%_ _%g171809171841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g171808171838%_
                                                _%g171809171841%_))))
                                       (_%g171808171838%_ _%g171809171841%_))))
                               (_%g171808171838%_ _%g171809171841%_))))
                       (_%g171808171838%_ _%g171809171841%_))))
               (_%g171808171838%_ _%g171809171841%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g171807172406%_ _%L171361%_))
                                         _%stx169561%_))))
                             _%hd171459171582%_
                             _%kw-ref171457171603%_
                             _%hd171447171569%_
                             _%hd171438171545%_
                             _%hd171429171521%_)
                            (_%g171403171465%_ _%g171404171468%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop171452171587%_
                                                 _%target171449171574%_
                                                 '()))
                                              (_%g171403171465%_
                                               _%g171404171468%_))))
                                      (_%g171403171465%_ _%g171404171468%_)))))
                            (_%g171403171465%_ _%g171404171468%_))
                        (_%g171403171465%_ _%g171404171468%_))
                    (_%g171403171465%_ _%g171404171468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g171403171465%_
                                                     _%g171404171468%_))
                                                (_%g171403171465%_
                                                 _%g171404171468%_))
                                            (_%g171403171465%_
                                             _%g171404171468%_))))
                                    (_%g171403171465%_ _%g171404171468%_))))
                            (_%g171403171465%_ _%g171404171468%_))
                        (_%g171403171465%_ _%g171404171468%_))))
                (_%g171403171465%_ _%g171404171468%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g171403171465%_
                                                     _%g171404171468%_))
                                                (_%g171403171465%_
                                                 _%g171404171468%_))))
                                        (_%g171403171465%_
                                         _%g171404171468%_))))
                                (_%g171403171465%_ _%g171404171468%_))
                            (_%g171403171465%_ _%g171404171468%_))))
                    (_%g171403171465%_ _%g171404171468%_))
                (_%g171403171465%_ _%g171404171468%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g171403171465%_
                                                     _%g171404171468%_))))
                                            (_%g171403171465%_
                                             _%g171404171468%_))))
                                    (_%g171403171465%_ _%g171404171468%_))
                                (_%g171403171465%_ _%g171404171468%_))
                            (_%g171403171465%_ _%g171404171468%_))))
                    (_%g171403171465%_ _%g171404171468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g171403171465%_
                                                     _%g171404171468%_))))
                                            (_%g171403171465%_
                                             _%g171404171468%_))
                                        (_%g171403171465%_ _%g171404171468%_))
                                    (_%g171403171465%_ _%g171404171468%_))))
                            (_%g171403171465%_ _%g171404171468%_)))))
                (_%g171402172410%_ _%L171360%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd171236171354%_
                                                    _%hd171233171346%_
                                                    _%hd171230171338%_
                                                    _%hd171227171330%_
                                                    _%hd171209171282%_)
                                                   (_%g171189171242%_
                                                    _%g171190171245%_))))
                                           (_%g171189171242%_
                                            _%g171190171245%_))
                                       (_%g171189171242%_ _%g171190171245%_))
                                   (_%g171189171242%_ _%g171190171245%_))
                               (_%g171189171242%_ _%g171190171245%_))))
                       (_%g171189171242%_ _%g171190171245%_))
                   (_%g171189171242%_ _%g171190171245%_))
               (_%g171189171242%_ _%g171190171245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g171189171242%_
                                                _%g171190171245%_))
                                           (_%g171189171242%_
                                            _%g171190171245%_))))
                                   (_%g171189171242%_ _%g171190171245%_))))
                           (_%g171189171242%_ _%g171190171245%_))))
                   (_%g171189171242%_ _%g171190171245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g171189171242%_
                                                    _%g171190171245%_))
                                               (_%g171189171242%_
                                                _%g171190171245%_))
                                           (_%g171189171242%_
                                            _%g171190171245%_))))
                                   (_%g171189171242%_ _%g171190171245%_))))
                           (_%g171189171242%_ _%g171190171245%_))
                       (_%g171189171242%_ _%g171190171245%_))))
               (_%g171189171242%_ _%g171190171245%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g171189171242%_
                                                _%g171190171245%_))))
                                       (_%g171189171242%_ _%g171190171245%_))))
                               (_%g171189171242%_ _%g171190171245%_))
                           (_%g171189171242%_ _%g171190171245%_))
                       (_%g171189171242%_ _%g171190171245%_))))
               (_%g171189171242%_ _%g171190171245%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g171188172413%_ _%L169633%_))
                                         _%stx169561%_))))))))
                  (_%__kont172647172648%_ (lambda () _%stx169561%_)))
              (let ((_%__match172676172677%_
                     (lambda (_%e169573169601%_
                              _%hd169574169604%_
                              _%tl169575169606%_
                              _%e169576169609%_
                              _%hd169577169612%_
                              _%tl169578169614%_
                              _%e169579169617%_
                              _%hd169580169620%_
                              _%tl169581169622%_
                              _%e169582169625%_
                              _%hd169583169628%_
                              _%tl169584169630%_)
                       (let ((_%L169633%_ _%hd169583169628%_)
                             (_%L169634%_ _%hd169580169620%_))
                         (if (let ((__tmp173849
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L169634%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp173849))
                             (_%__kont172645172646%_ _%L169633%_ _%L169634%_)
                             (_%__kont172647172648%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172643172644%_))
                    (let ((_%e169573169601%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172643172644%_))))
                      (let ((_%tl169575169606%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169573169601%_)))
                            (_%hd169574169604%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169573169601%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169575169606%_))
                            (let ((_%e169576169609%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169575169606%_))))
                              (let ((_%tl169578169614%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169576169609%_)))
                                    (_%hd169577169612%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169576169609%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd169577169612%_))
                                    (let ((_%e169579169617%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd169577169612%_))))
                                      (let ((_%tl169581169622%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169579169617%_)))
                                            (_%hd169580169620%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169579169617%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169581169622%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl169578169614%_))
                                                (let ((_%e169582169625%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl169578169614%_))))
                                                  (let ((_%tl169584169630%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169582169625%_)))
                                                        (_%hd169583169628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169582169625%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl169584169630%_))
                                                        (_%__match172676172677%_
                                                         _%e169573169601%_
                                                         _%hd169574169604%_
                                                         _%tl169575169606%_
                                                         _%e169576169609%_
                                                         _%hd169577169612%_
                                                         _%tl169578169614%_
                                                         _%e169579169617%_
                                                         _%hd169580169620%_
                                                         _%tl169581169622%_
                                                         _%e169582169625%_
                                                         _%hd169583169628%_
                                                         _%tl169584169630%_)
                                                        (_%__kont172647172648%_))))
                                                (_%__kont172647172648%_))
                                            (_%__kont172647172648%_))))
                                    (_%__kont172647172648%_))))
                            (_%__kont172647172648%_))))
                    (_%__kont172647172648%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self169413%_ _%stx169414%_)
        (let* ((_%__stx172679172680%_ _%stx169414%_)
               (_%g169417169450%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172679172680%_)))))
          (let ((_%__kont172681172682%_ (lambda (_%L169540%_) _%L169540%_))
                (_%__kont172683172684%_
                 (lambda (_%L169479%_ _%L169480%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self169413%_ _%L169479%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx172679172680%_))
                (let ((_%e169420169500%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx172679172680%_))))
                  (let ((_%tl169422169505%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169420169500%_)))
                        (_%hd169421169503%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169420169500%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl169422169505%_))
                        (let ((_%e169423169508%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169422169505%_))))
                          (let ((_%tl169425169513%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169423169508%_)))
                                (_%hd169424169511%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169423169508%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd169424169511%_))
                                (let ((_%e169426169516%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd169424169511%_))))
                                  (let ((_%tl169428169521%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e169426169516%_)))
                                        (_%hd169427169519%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e169426169516%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd169427169519%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%hd169427169519%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl169428169521%_))
                                                (let ((_%e169429169524%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl169428169521%_))))
                                                  (let ((_%tl169431169529%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169429169524%_)))
                                                        (_%hd169430169527%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169429169524%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl169431169529%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169425169513%_))
                                                            (let ((_%e169432169532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169425169513%_))))
                      (let ((_%tl169434169537%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169432169532%_)))
                            (_%hd169433169535%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169432169532%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169434169537%_))
                            (_%__kont172681172682%_ _%hd169430169527%_)
                            (let ()
                              (declare (not safe))
                              (_%g169417169450%_)))))
                    (let () (declare (not safe)) (_%g169417169450%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl169425169513%_))
                    (let ((_%e169443169471%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169425169513%_))))
                      (let ((_%tl169445169476%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169443169471%_)))
                            (_%hd169444169474%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169443169471%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169445169476%_))
                            (_%__kont172683172684%_
                             _%hd169444169474%_
                             _%hd169424169511%_)
                            (let ()
                              (declare (not safe))
                              (_%g169417169450%_)))))
                    (let () (declare (not safe)) (_%g169417169450%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl169425169513%_))
                                                    (let ((_%e169443169471%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl169425169513%_))))
                                                      (let ((_%tl169445169476%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169443169471%_)))
                    (_%hd169444169474%_
                     (let () (declare (not safe)) (##car _%e169443169471%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl169445169476%_))
                    (_%__kont172683172684%_
                     _%hd169444169474%_
                     _%hd169424169511%_)
                    (let () (declare (not safe)) (_%g169417169450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g169417169450%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl169425169513%_))
                                                (let ((_%e169443169471%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl169425169513%_))))
                                                  (let ((_%tl169445169476%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169443169471%_)))
                                                        (_%hd169444169474%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169443169471%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl169445169476%_))
                                                        (_%__kont172683172684%_
                                                         _%hd169444169474%_
                                                         _%hd169424169511%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g169417169450%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g169417169450%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169425169513%_))
                                            (let ((_%e169443169471%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169425169513%_))))
                                              (let ((_%tl169445169476%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169443169471%_)))
                                                    (_%hd169444169474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169443169471%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169445169476%_))
                                                    (_%__kont172683172684%_
                                                     _%hd169444169474%_
                                                     _%hd169424169511%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g169417169450%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g169417169450%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169425169513%_))
                                    (let ((_%e169443169471%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169425169513%_))))
                                      (let ((_%tl169445169476%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169443169471%_)))
                                            (_%hd169444169474%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169443169471%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169445169476%_))
                                            (_%__kont172683172684%_
                                             _%hd169444169474%_
                                             _%hd169424169511%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g169417169450%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g169417169450%_))))))
                        (let () (declare (not safe)) (_%g169417169450%_)))))
                (let () (declare (not safe)) (_%g169417169450%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self169329%_ _%stx169330%_)
        (let* ((_%g169332169353%_
                (lambda (_%g169333169350%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g169333169350%_))))
               (_%g169331169410%_
                (lambda (_%g169333169356%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g169333169356%_))
                      (let ((_%e169337169358%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g169333169356%_))))
                        (let ((_%hd169338169361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169337169358%_)))
                              (_%tl169339169363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169337169358%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl169339169363%_))
                              (let ((_%e169340169366%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl169339169363%_))))
                                (let ((_%hd169341169369%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169340169366%_)))
                                      (_%tl169342169371%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169340169366%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169342169371%_))
                                      (let ((_%e169343169374%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169342169371%_))))
                                        (let ((_%hd169344169377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169343169374%_)))
                                              (_%tl169345169379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169343169374%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169345169379%_))
                                              (let ((_%e169346169382%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169345169379%_))))
                                                (let ((_%hd169347169385%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169346169382%_)))
                                                      (_%tl169348169387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169346169382%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169348169387%_))
                                                      ((lambda (_%L169390%_
                                                                _%L169391%_
                                                                _%L169392%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self169329%_
                                                            _%L169391%_)))
                                                       _%hd169347169385%_
                                                       _%hd169344169377%_
                                                       _%hd169341169369%_)
                                                      (_%g169332169353%_
                                                       _%g169333169356%_))))
                                              (_%g169332169353%_
                                               _%g169333169356%_))))
                                      (_%g169332169353%_ _%g169333169356%_))))
                              (_%g169332169353%_ _%g169333169356%_))))
                      (_%g169332169353%_ _%g169333169356%_)))))
          (_%g169331169410%_ _%stx169330%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self168290%_ _%stx168291%_)
        (let* ((_%__stx172745172746%_ _%stx168291%_)
               (_%g168299168521%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172745172746%_)))))
          (let ((_%__kont172747172748%_
                 (lambda (_%L169278%_ _%L169279%_ _%L169280%_ _%L169281%_)
                   (let ((__tmp173851
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self168290%_ 'methods)))
                         (__tmp173850
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L169279%_))))
                     (declare (not safe))
                     (hash-put! __tmp173851 __tmp173850 '#t))
                   (for-each
                    (lambda (_%g169314169316%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self168290%_ _%g169314169316%_)))
                    (let ((__tmp173852
                           (lambda (_%g169318169321%_ _%g169319169323%_)
                             (cons _%g169318169321%_ _%g169319169323%_))))
                      (declare (not safe))
                      (__foldr1 __tmp173852 '() _%L169278%_)))))
                (_%__kont172751172752%_
                 (lambda (_%L169113%_
                          _%L169114%_
                          _%L169115%_
                          _%L169116%_
                          _%L169117%_)
                   (let ((__tmp173854
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self168290%_ 'methods)))
                         (__tmp173853
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L169114%_))))
                     (declare (not safe))
                     (hash-put! __tmp173854 __tmp173853 '#t))
                   (for-each
                    (lambda (_%g169157169159%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self168290%_ _%g169157169159%_)))
                    (let ((__tmp173855
                           (lambda (_%g169161169164%_ _%g169162169166%_)
                             (cons _%g169161169164%_ _%g169162169166%_))))
                      (declare (not safe))
                      (__foldr1 __tmp173855 '() _%L169113%_)))))
                (_%__kont172755172756%_
                 (lambda (_%L168946%_ _%L168947%_ _%L168948%_)
                   (let ((__tmp173857
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self168290%_ 'slots)))
                         (__tmp173856
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168946%_))))
                     (declare (not safe))
                     (hash-put! __tmp173857 __tmp173856 '#t))))
                (_%__kont172757172758%_
                 (lambda (_%L168823%_ _%L168824%_ _%L168825%_ _%L168826%_)
                   (let ((__tmp173859
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self168290%_ 'slots)))
                         (__tmp173858
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L168824%_))))
                     (declare (not safe))
                     (hash-put! __tmp173859 __tmp173858 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self168290%_ _%L168823%_))))
                (_%__kont172759172760%_
                 (lambda (_%L168697%_ _%L168698%_)
                   (let* ((_%accessor168720%_
                           (let ((__tmp173860
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L168698%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp173860)))
                          (_%klass168722%_
                           (let ((__tmp173861
                                  (##structure-ref
                                   _%accessor168720%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx168291%_
                              __tmp173861)))
                          (_%slot168724%_
                           (##structure-ref
                            _%accessor168720%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%accessor168720%_
                                    '4
                                    gxc#!accessor::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass168722%_
                                     _%slot168724%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass168722%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp173863
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self168290%_ 'slots)))
                               (__tmp173862
                                (##structure-ref
                                 _%accessor168720%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp173863 __tmp173862 '#t))))))
                (_%__kont172761172762%_
                 (lambda (_%L168597%_ _%L168598%_ _%L168599%_)
                   (let* ((_%mutator168626%_
                           (let ((__tmp173864
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _%L168599%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp173864)))
                          (_%klass168628%_
                           (let ((__tmp173865
                                  (##structure-ref
                                   _%mutator168626%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx168291%_
                              __tmp173865)))
                          (_%slot168630%_
                           (##structure-ref
                            _%mutator168626%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (and (not (##structure-ref
                                    _%mutator168626%_
                                    '4
                                    gxc#!mutator::t
                                    '#f))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _%klass168628%_
                                     _%slot168630%_))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass168628%_
                                     '8
                                     '#f
                                     '#f))))
                         '#!void
                         (let ((__tmp173866
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self168290%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp173866 _%slot168630%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1 _%self168290%_ _%L168597%_)))))
                (_%__kont172763172764%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self168290%_ _%stx168291%_)))))
            (let* ((_%__match173244173245%_
                    (lambda (_%e168493168533%_
                             _%hd168494168536%_
                             _%tl168495168538%_
                             _%e168496168541%_
                             _%hd168497168544%_
                             _%tl168498168546%_
                             _%e168499168549%_
                             _%hd168500168552%_
                             _%tl168501168554%_
                             _%e168502168557%_
                             _%hd168503168560%_
                             _%tl168504168562%_
                             _%e168505168565%_
                             _%hd168506168568%_
                             _%tl168507168570%_
                             _%e168508168573%_
                             _%hd168509168576%_
                             _%tl168510168578%_
                             _%e168511168581%_
                             _%hd168512168584%_
                             _%tl168513168586%_
                             _%e168514168589%_
                             _%hd168515168592%_
                             _%tl168516168594%_)
                      (let ((_%L168597%_ _%hd168515168592%_)
                            (_%L168598%_ _%hd168512168584%_)
                            (_%L168599%_ _%hd168503168560%_))
                        (if (and (let ((__tmp173867
                                        (let ((__tmp173868
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L168599%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp173868))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp173867
                                    'gxc#!mutator::t))
                                 (let ((__tmp173869
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self168290%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168598%_
                                    __tmp173869)))
                            (_%__kont172761172762%_
                             _%L168597%_
                             _%L168598%_
                             _%L168599%_)
                            (_%__kont172763172764%_)))))
                   (_%__match173242173243%_
                    (lambda (_%e168493168533%_
                             _%hd168494168536%_
                             _%tl168495168538%_
                             _%e168496168541%_
                             _%hd168497168544%_
                             _%tl168498168546%_
                             _%e168499168549%_
                             _%hd168500168552%_
                             _%tl168501168554%_
                             _%e168502168557%_
                             _%hd168503168560%_
                             _%tl168504168562%_
                             _%e168505168565%_
                             _%hd168506168568%_
                             _%tl168507168570%_
                             _%e168508168573%_
                             _%hd168509168576%_
                             _%tl168510168578%_
                             _%e168511168581%_
                             _%hd168512168584%_
                             _%tl168513168586%_
                             _%e168514168589%_
                             _%hd168515168592%_
                             _%tl168516168594%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168516168594%_))
                          (_%__match173244173245%_
                           _%e168493168533%_
                           _%hd168494168536%_
                           _%tl168495168538%_
                           _%e168496168541%_
                           _%hd168497168544%_
                           _%tl168498168546%_
                           _%e168499168549%_
                           _%hd168500168552%_
                           _%tl168501168554%_
                           _%e168502168557%_
                           _%hd168503168560%_
                           _%tl168504168562%_
                           _%e168505168565%_
                           _%hd168506168568%_
                           _%tl168507168570%_
                           _%e168508168573%_
                           _%hd168509168576%_
                           _%tl168510168578%_
                           _%e168511168581%_
                           _%hd168512168584%_
                           _%tl168513168586%_
                           _%e168514168589%_
                           _%hd168515168592%_
                           _%tl168516168594%_)
                          (_%__kont172763172764%_))))
                   (_%__match173236173237%_
                    (lambda (_%e168493168533%_
                             _%hd168494168536%_
                             _%tl168495168538%_
                             _%e168496168541%_
                             _%hd168497168544%_
                             _%tl168498168546%_
                             _%e168499168549%_
                             _%hd168500168552%_
                             _%tl168501168554%_
                             _%e168502168557%_
                             _%hd168503168560%_
                             _%tl168504168562%_
                             _%e168505168565%_
                             _%hd168506168568%_
                             _%tl168507168570%_
                             _%e168508168573%_
                             _%hd168509168576%_
                             _%tl168510168578%_
                             _%e168511168581%_
                             _%hd168512168584%_
                             _%tl168513168586%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168507168570%_))
                          (let ((_%e168514168589%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168507168570%_))))
                            (let ((_%tl168516168594%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168514168589%_)))
                                  (_%hd168515168592%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168514168589%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168516168594%_))
                                  (_%__match173244173245%_
                                   _%e168493168533%_
                                   _%hd168494168536%_
                                   _%tl168495168538%_
                                   _%e168496168541%_
                                   _%hd168497168544%_
                                   _%tl168498168546%_
                                   _%e168499168549%_
                                   _%hd168500168552%_
                                   _%tl168501168554%_
                                   _%e168502168557%_
                                   _%hd168503168560%_
                                   _%tl168504168562%_
                                   _%e168505168565%_
                                   _%hd168506168568%_
                                   _%tl168507168570%_
                                   _%e168508168573%_
                                   _%hd168509168576%_
                                   _%tl168510168578%_
                                   _%e168511168581%_
                                   _%hd168512168584%_
                                   _%tl168513168586%_
                                   _%e168514168589%_
                                   _%hd168515168592%_
                                   _%tl168516168594%_)
                                  (_%__kont172763172764%_))))
                          (_%__kont172763172764%_))))
                   (_%__match173182173183%_
                    (lambda (_%e168469168641%_
                             _%hd168470168644%_
                             _%tl168471168646%_
                             _%e168472168649%_
                             _%hd168473168652%_
                             _%tl168474168654%_
                             _%e168475168657%_
                             _%hd168476168660%_
                             _%tl168477168662%_
                             _%e168478168665%_
                             _%hd168479168668%_
                             _%tl168480168670%_
                             _%e168481168673%_
                             _%hd168482168676%_
                             _%tl168483168678%_
                             _%e168484168681%_
                             _%hd168485168684%_
                             _%tl168486168686%_
                             _%e168487168689%_
                             _%hd168488168692%_
                             _%tl168489168694%_)
                      (let ((_%L168697%_ _%hd168488168692%_)
                            (_%L168698%_ _%hd168479168668%_))
                        (if (and (let ((__tmp173870
                                        (let ((__tmp173871
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%L168698%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp173871))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp173870
                                    'gxc#!accessor::t))
                                 (let ((__tmp173872
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self168290%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168697%_
                                    __tmp173872)))
                            (_%__kont172759172760%_ _%L168697%_ _%L168698%_)
                            (_%__kont172763172764%_)))))
                   (_%__match173180173181%_
                    (lambda (_%e168469168641%_
                             _%hd168470168644%_
                             _%tl168471168646%_
                             _%e168472168649%_
                             _%hd168473168652%_
                             _%tl168474168654%_
                             _%e168475168657%_
                             _%hd168476168660%_
                             _%tl168477168662%_
                             _%e168478168665%_
                             _%hd168479168668%_
                             _%tl168480168670%_
                             _%e168481168673%_
                             _%hd168482168676%_
                             _%tl168483168678%_
                             _%e168484168681%_
                             _%hd168485168684%_
                             _%tl168486168686%_
                             _%e168487168689%_
                             _%hd168488168692%_
                             _%tl168489168694%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168483168678%_))
                          (_%__match173182173183%_
                           _%e168469168641%_
                           _%hd168470168644%_
                           _%tl168471168646%_
                           _%e168472168649%_
                           _%hd168473168652%_
                           _%tl168474168654%_
                           _%e168475168657%_
                           _%hd168476168660%_
                           _%tl168477168662%_
                           _%e168478168665%_
                           _%hd168479168668%_
                           _%tl168480168670%_
                           _%e168481168673%_
                           _%hd168482168676%_
                           _%tl168483168678%_
                           _%e168484168681%_
                           _%hd168485168684%_
                           _%tl168486168686%_
                           _%e168487168689%_
                           _%hd168488168692%_
                           _%tl168489168694%_)
                          (_%__match173236173237%_
                           _%e168469168641%_
                           _%hd168470168644%_
                           _%tl168471168646%_
                           _%e168472168649%_
                           _%hd168473168652%_
                           _%tl168474168654%_
                           _%e168475168657%_
                           _%hd168476168660%_
                           _%tl168477168662%_
                           _%e168478168665%_
                           _%hd168479168668%_
                           _%tl168480168670%_
                           _%e168481168673%_
                           _%hd168482168676%_
                           _%tl168483168678%_
                           _%e168484168681%_
                           _%hd168485168684%_
                           _%tl168486168686%_
                           _%e168487168689%_
                           _%hd168488168692%_
                           _%tl168489168694%_))))
                   (_%__match173126173127%_
                    (lambda (_%e168434168735%_
                             _%hd168435168738%_
                             _%tl168436168740%_
                             _%e168437168743%_
                             _%hd168438168746%_
                             _%tl168439168748%_
                             _%e168440168751%_
                             _%hd168441168754%_
                             _%tl168442168756%_
                             _%e168443168759%_
                             _%hd168444168762%_
                             _%tl168445168764%_
                             _%e168446168767%_
                             _%hd168447168770%_
                             _%tl168448168772%_
                             _%e168449168775%_
                             _%hd168450168778%_
                             _%tl168451168780%_
                             _%e168452168783%_
                             _%hd168453168786%_
                             _%tl168454168788%_
                             _%e168455168791%_
                             _%hd168456168794%_
                             _%tl168457168796%_
                             _%e168458168799%_
                             _%hd168459168802%_
                             _%tl168460168804%_
                             _%e168461168807%_
                             _%hd168462168810%_
                             _%tl168463168812%_
                             _%e168464168815%_
                             _%hd168465168818%_
                             _%tl168466168820%_)
                      (let ((_%L168823%_ _%hd168465168818%_)
                            (_%L168824%_ _%hd168462168810%_)
                            (_%L168825%_ _%hd168453168786%_)
                            (_%L168826%_ _%hd168444168762%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168826%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168826%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp173873
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self168290%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168825%_
                                    __tmp173873)))
                            (_%__kont172757172758%_
                             _%L168823%_
                             _%L168824%_
                             _%L168825%_
                             _%L168826%_)
                            (_%__kont172763172764%_)))))
                   (_%__match173118173119%_
                    (lambda (_%e168434168735%_
                             _%hd168435168738%_
                             _%tl168436168740%_
                             _%e168437168743%_
                             _%hd168438168746%_
                             _%tl168439168748%_
                             _%e168440168751%_
                             _%hd168441168754%_
                             _%tl168442168756%_
                             _%e168443168759%_
                             _%hd168444168762%_
                             _%tl168445168764%_
                             _%e168446168767%_
                             _%hd168447168770%_
                             _%tl168448168772%_
                             _%e168449168775%_
                             _%hd168450168778%_
                             _%tl168451168780%_
                             _%e168452168783%_
                             _%hd168453168786%_
                             _%tl168454168788%_
                             _%e168455168791%_
                             _%hd168456168794%_
                             _%tl168457168796%_
                             _%e168458168799%_
                             _%hd168459168802%_
                             _%tl168460168804%_
                             _%e168461168807%_
                             _%hd168462168810%_
                             _%tl168463168812%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168457168796%_))
                          (let ((_%e168464168815%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168457168796%_))))
                            (let ((_%tl168466168820%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168464168815%_)))
                                  (_%hd168465168818%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168464168815%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168466168820%_))
                                  (_%__match173126173127%_
                                   _%e168434168735%_
                                   _%hd168435168738%_
                                   _%tl168436168740%_
                                   _%e168437168743%_
                                   _%hd168438168746%_
                                   _%tl168439168748%_
                                   _%e168440168751%_
                                   _%hd168441168754%_
                                   _%tl168442168756%_
                                   _%e168443168759%_
                                   _%hd168444168762%_
                                   _%tl168445168764%_
                                   _%e168446168767%_
                                   _%hd168447168770%_
                                   _%tl168448168772%_
                                   _%e168449168775%_
                                   _%hd168450168778%_
                                   _%tl168451168780%_
                                   _%e168452168783%_
                                   _%hd168453168786%_
                                   _%tl168454168788%_
                                   _%e168455168791%_
                                   _%hd168456168794%_
                                   _%tl168457168796%_
                                   _%e168458168799%_
                                   _%hd168459168802%_
                                   _%tl168460168804%_
                                   _%e168461168807%_
                                   _%hd168462168810%_
                                   _%tl168463168812%_
                                   _%e168464168815%_
                                   _%hd168465168818%_
                                   _%tl168466168820%_)
                                  (_%__kont172763172764%_))))
                          (_%__match173242173243%_
                           _%e168434168735%_
                           _%hd168435168738%_
                           _%tl168436168740%_
                           _%e168437168743%_
                           _%hd168438168746%_
                           _%tl168439168748%_
                           _%e168440168751%_
                           _%hd168441168754%_
                           _%tl168442168756%_
                           _%e168443168759%_
                           _%hd168444168762%_
                           _%tl168445168764%_
                           _%e168446168767%_
                           _%hd168447168770%_
                           _%tl168448168772%_
                           _%e168449168775%_
                           _%hd168450168778%_
                           _%tl168451168780%_
                           _%e168452168783%_
                           _%hd168453168786%_
                           _%tl168454168788%_
                           _%e168455168791%_
                           _%hd168456168794%_
                           _%tl168457168796%_))))
                   (_%__match173040173041%_
                    (lambda (_%e168400168866%_
                             _%hd168401168869%_
                             _%tl168402168871%_
                             _%e168403168874%_
                             _%hd168404168877%_
                             _%tl168405168879%_
                             _%e168406168882%_
                             _%hd168407168885%_
                             _%tl168408168887%_
                             _%e168409168890%_
                             _%hd168410168893%_
                             _%tl168411168895%_
                             _%e168412168898%_
                             _%hd168413168901%_
                             _%tl168414168903%_
                             _%e168415168906%_
                             _%hd168416168909%_
                             _%tl168417168911%_
                             _%e168418168914%_
                             _%hd168419168917%_
                             _%tl168420168919%_
                             _%e168421168922%_
                             _%hd168422168925%_
                             _%tl168423168927%_
                             _%e168424168930%_
                             _%hd168425168933%_
                             _%tl168426168935%_
                             _%e168427168938%_
                             _%hd168428168941%_
                             _%tl168429168943%_)
                      (let ((_%L168946%_ _%hd168428168941%_)
                            (_%L168947%_ _%hd168419168917%_)
                            (_%L168948%_ _%hd168410168893%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168948%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%L168948%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp173874
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self168290%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L168947%_
                                    __tmp173874)))
                            (_%__kont172755172756%_
                             _%L168946%_
                             _%L168947%_
                             _%L168948%_)
                            (_%__match173244173245%_
                             _%e168400168866%_
                             _%hd168401168869%_
                             _%tl168402168871%_
                             _%e168403168874%_
                             _%hd168404168877%_
                             _%tl168405168879%_
                             _%e168406168882%_
                             _%hd168407168885%_
                             _%tl168408168887%_
                             _%e168409168890%_
                             _%hd168410168893%_
                             _%tl168411168895%_
                             _%e168412168898%_
                             _%hd168413168901%_
                             _%tl168414168903%_
                             _%e168415168906%_
                             _%hd168416168909%_
                             _%tl168417168911%_
                             _%e168418168914%_
                             _%hd168419168917%_
                             _%tl168420168919%_
                             _%e168421168922%_
                             _%hd168422168925%_
                             _%tl168423168927%_)))))
                   (_%__match173038173039%_
                    (lambda (_%e168400168866%_
                             _%hd168401168869%_
                             _%tl168402168871%_
                             _%e168403168874%_
                             _%hd168404168877%_
                             _%tl168405168879%_
                             _%e168406168882%_
                             _%hd168407168885%_
                             _%tl168408168887%_
                             _%e168409168890%_
                             _%hd168410168893%_
                             _%tl168411168895%_
                             _%e168412168898%_
                             _%hd168413168901%_
                             _%tl168414168903%_
                             _%e168415168906%_
                             _%hd168416168909%_
                             _%tl168417168911%_
                             _%e168418168914%_
                             _%hd168419168917%_
                             _%tl168420168919%_
                             _%e168421168922%_
                             _%hd168422168925%_
                             _%tl168423168927%_
                             _%e168424168930%_
                             _%hd168425168933%_
                             _%tl168426168935%_
                             _%e168427168938%_
                             _%hd168428168941%_
                             _%tl168429168943%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168423168927%_))
                          (_%__match173040173041%_
                           _%e168400168866%_
                           _%hd168401168869%_
                           _%tl168402168871%_
                           _%e168403168874%_
                           _%hd168404168877%_
                           _%tl168405168879%_
                           _%e168406168882%_
                           _%hd168407168885%_
                           _%tl168408168887%_
                           _%e168409168890%_
                           _%hd168410168893%_
                           _%tl168411168895%_
                           _%e168412168898%_
                           _%hd168413168901%_
                           _%tl168414168903%_
                           _%e168415168906%_
                           _%hd168416168909%_
                           _%tl168417168911%_
                           _%e168418168914%_
                           _%hd168419168917%_
                           _%tl168420168919%_
                           _%e168421168922%_
                           _%hd168422168925%_
                           _%tl168423168927%_
                           _%e168424168930%_
                           _%hd168425168933%_
                           _%tl168426168935%_
                           _%e168427168938%_
                           _%hd168428168941%_
                           _%tl168429168943%_)
                          (_%__match173118173119%_
                           _%e168400168866%_
                           _%hd168401168869%_
                           _%tl168402168871%_
                           _%e168403168874%_
                           _%hd168404168877%_
                           _%tl168405168879%_
                           _%e168406168882%_
                           _%hd168407168885%_
                           _%tl168408168887%_
                           _%e168409168890%_
                           _%hd168410168893%_
                           _%tl168411168895%_
                           _%e168412168898%_
                           _%hd168413168901%_
                           _%tl168414168903%_
                           _%e168415168906%_
                           _%hd168416168909%_
                           _%tl168417168911%_
                           _%e168418168914%_
                           _%hd168419168917%_
                           _%tl168420168919%_
                           _%e168421168922%_
                           _%hd168422168925%_
                           _%tl168423168927%_
                           _%e168424168930%_
                           _%hd168425168933%_
                           _%tl168426168935%_
                           _%e168427168938%_
                           _%hd168428168941%_
                           _%tl168429168943%_))))
                   (_%__match173028173029%_
                    (lambda (_%e168400168866%_
                             _%hd168401168869%_
                             _%tl168402168871%_
                             _%e168403168874%_
                             _%hd168404168877%_
                             _%tl168405168879%_
                             _%e168406168882%_
                             _%hd168407168885%_
                             _%tl168408168887%_
                             _%e168409168890%_
                             _%hd168410168893%_
                             _%tl168411168895%_
                             _%e168412168898%_
                             _%hd168413168901%_
                             _%tl168414168903%_
                             _%e168415168906%_
                             _%hd168416168909%_
                             _%tl168417168911%_
                             _%e168418168914%_
                             _%hd168419168917%_
                             _%tl168420168919%_
                             _%e168421168922%_
                             _%hd168422168925%_
                             _%tl168423168927%_
                             _%e168424168930%_
                             _%hd168425168933%_
                             _%tl168426168935%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%hd168425168933%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168426168935%_))
                              (let ((_%e168427168938%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168426168935%_))))
                                (let ((_%tl168429168943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168427168938%_)))
                                      (_%hd168428168941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168427168938%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl168429168943%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168423168927%_))
                                          (_%__match173040173041%_
                                           _%e168400168866%_
                                           _%hd168401168869%_
                                           _%tl168402168871%_
                                           _%e168403168874%_
                                           _%hd168404168877%_
                                           _%tl168405168879%_
                                           _%e168406168882%_
                                           _%hd168407168885%_
                                           _%tl168408168887%_
                                           _%e168409168890%_
                                           _%hd168410168893%_
                                           _%tl168411168895%_
                                           _%e168412168898%_
                                           _%hd168413168901%_
                                           _%tl168414168903%_
                                           _%e168415168906%_
                                           _%hd168416168909%_
                                           _%tl168417168911%_
                                           _%e168418168914%_
                                           _%hd168419168917%_
                                           _%tl168420168919%_
                                           _%e168421168922%_
                                           _%hd168422168925%_
                                           _%tl168423168927%_
                                           _%e168424168930%_
                                           _%hd168425168933%_
                                           _%tl168426168935%_
                                           _%e168427168938%_
                                           _%hd168428168941%_
                                           _%tl168429168943%_)
                                          (_%__match173118173119%_
                                           _%e168400168866%_
                                           _%hd168401168869%_
                                           _%tl168402168871%_
                                           _%e168403168874%_
                                           _%hd168404168877%_
                                           _%tl168405168879%_
                                           _%e168406168882%_
                                           _%hd168407168885%_
                                           _%tl168408168887%_
                                           _%e168409168890%_
                                           _%hd168410168893%_
                                           _%tl168411168895%_
                                           _%e168412168898%_
                                           _%hd168413168901%_
                                           _%tl168414168903%_
                                           _%e168415168906%_
                                           _%hd168416168909%_
                                           _%tl168417168911%_
                                           _%e168418168914%_
                                           _%hd168419168917%_
                                           _%tl168420168919%_
                                           _%e168421168922%_
                                           _%hd168422168925%_
                                           _%tl168423168927%_
                                           _%e168424168930%_
                                           _%hd168425168933%_
                                           _%tl168426168935%_
                                           _%e168427168938%_
                                           _%hd168428168941%_
                                           _%tl168429168943%_))
                                      (_%__match173242173243%_
                                       _%e168400168866%_
                                       _%hd168401168869%_
                                       _%tl168402168871%_
                                       _%e168403168874%_
                                       _%hd168404168877%_
                                       _%tl168405168879%_
                                       _%e168406168882%_
                                       _%hd168407168885%_
                                       _%tl168408168887%_
                                       _%e168409168890%_
                                       _%hd168410168893%_
                                       _%tl168411168895%_
                                       _%e168412168898%_
                                       _%hd168413168901%_
                                       _%tl168414168903%_
                                       _%e168415168906%_
                                       _%hd168416168909%_
                                       _%tl168417168911%_
                                       _%e168418168914%_
                                       _%hd168419168917%_
                                       _%tl168420168919%_
                                       _%e168421168922%_
                                       _%hd168422168925%_
                                       _%tl168423168927%_))))
                              (_%__match173242173243%_
                               _%e168400168866%_
                               _%hd168401168869%_
                               _%tl168402168871%_
                               _%e168403168874%_
                               _%hd168404168877%_
                               _%tl168405168879%_
                               _%e168406168882%_
                               _%hd168407168885%_
                               _%tl168408168887%_
                               _%e168409168890%_
                               _%hd168410168893%_
                               _%tl168411168895%_
                               _%e168412168898%_
                               _%hd168413168901%_
                               _%tl168414168903%_
                               _%e168415168906%_
                               _%hd168416168909%_
                               _%tl168417168911%_
                               _%e168418168914%_
                               _%hd168419168917%_
                               _%tl168420168919%_
                               _%e168421168922%_
                               _%hd168422168925%_
                               _%tl168423168927%_))
                          (_%__match173242173243%_
                           _%e168400168866%_
                           _%hd168401168869%_
                           _%tl168402168871%_
                           _%e168403168874%_
                           _%hd168404168877%_
                           _%tl168405168879%_
                           _%e168406168882%_
                           _%hd168407168885%_
                           _%tl168408168887%_
                           _%e168409168890%_
                           _%hd168410168893%_
                           _%tl168411168895%_
                           _%e168412168898%_
                           _%hd168413168901%_
                           _%tl168414168903%_
                           _%e168415168906%_
                           _%hd168416168909%_
                           _%tl168417168911%_
                           _%e168418168914%_
                           _%hd168419168917%_
                           _%tl168420168919%_
                           _%e168421168922%_
                           _%hd168422168925%_
                           _%tl168423168927%_))))
                   (_%__match172960172961%_
                    (lambda (_%e168349168985%_
                             _%hd168350168988%_
                             _%tl168351168990%_
                             _%e168352168993%_
                             _%hd168353168996%_
                             _%tl168354168998%_
                             _%e168355169001%_
                             _%hd168356169004%_
                             _%tl168357169006%_
                             _%e168358169009%_
                             _%hd168359169012%_
                             _%tl168360169014%_
                             _%e168361169017%_
                             _%hd168362169020%_
                             _%tl168363169022%_
                             _%e168364169025%_
                             _%hd168365169028%_
                             _%tl168366169030%_
                             _%e168367169033%_
                             _%hd168368169036%_
                             _%tl168369169038%_
                             _%e168370169041%_
                             _%hd168371169044%_
                             _%tl168372169046%_
                             _%e168373169049%_
                             _%hd168374169052%_
                             _%tl168375169054%_
                             _%e168376169057%_
                             _%hd168377169060%_
                             _%tl168378169062%_
                             _%e168379169065%_
                             _%hd168380169068%_
                             _%tl168381169070%_
                             _%e168382169073%_
                             _%hd168383169076%_
                             _%tl168384169078%_
                             _%e168385169081%_
                             _%hd168386169084%_
                             _%tl168387169086%_
                             _%__splice172753172754%_
                             _%target168388169089%_
                             _%tl168390169091%_)
                      (letrec ((_%loop168391169094%_
                                (lambda (_%hd168389169097%_
                                         _%args168395169099%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd168389169097%_))
                                      (let ((_%e168392169102%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd168389169097%_))))
                                        (let ((_%lp-tl168394169107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168392169102%_)))
                                              (_%lp-hd168393169105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168392169102%_))))
                                          (_%loop168391169094%_
                                           _%lp-tl168394169107%_
                                           (cons _%lp-hd168393169105%_
                                                 _%args168395169099%_))))
                                      (let ((_%args168396169110%_
                                             (reverse _%args168395169099%_)))
                                        (let ((_%L169113%_
                                               _%args168396169110%_)
                                              (_%L169114%_ _%hd168386169084%_)
                                              (_%L169115%_ _%hd168377169060%_)
                                              (_%L169116%_ _%hd168368169036%_)
                                              (_%L169117%_ _%hd168359169012%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L169117%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L169116%_
                                                      'call-method))
                                                   (let ((__tmp173875
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self168290%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L169115%_
                                                      __tmp173875)))
                                              (_%__kont172751172752%_
                                               _%L169113%_
                                               _%L169114%_
                                               _%L169115%_
                                               _%L169116%_
                                               _%L169117%_)
                                              (_%__kont172763172764%_))))))))
                        (_%loop168391169094%_ _%target168388169089%_ '()))))
                   (_%__match172918172919%_
                    (lambda (_%e168349168985%_
                             _%hd168350168988%_
                             _%tl168351168990%_
                             _%e168352168993%_
                             _%hd168353168996%_
                             _%tl168354168998%_
                             _%e168355169001%_
                             _%hd168356169004%_
                             _%tl168357169006%_
                             _%e168358169009%_
                             _%hd168359169012%_
                             _%tl168360169014%_
                             _%e168361169017%_
                             _%hd168362169020%_
                             _%tl168363169022%_
                             _%e168364169025%_
                             _%hd168365169028%_
                             _%tl168366169030%_
                             _%e168367169033%_
                             _%hd168368169036%_
                             _%tl168369169038%_
                             _%e168370169041%_
                             _%hd168371169044%_
                             _%tl168372169046%_
                             _%e168373169049%_
                             _%hd168374169052%_
                             _%tl168375169054%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%hd168374169052%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl168375169054%_))
                              (let ((_%e168376169057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl168375169054%_))))
                                (let ((_%tl168378169062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168376169057%_)))
                                      (_%hd168377169060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168376169057%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl168378169062%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl168372169046%_))
                                          (let ((_%e168379169065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl168372169046%_))))
                                            (let ((_%tl168381169070%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168379169065%_)))
                                                  (_%hd168380169068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168379169065%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168380169068%_))
                                                  (let ((_%e168382169073%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168380169068%_))))
                                                    (let ((_%tl168384169078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168382169073%_)))
                                                          (_%hd168383169076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168382169073%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd168383169076%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%hd168383169076%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168384169078%_))
                          (let ((_%e168385169081%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168384169078%_))))
                            (let ((_%tl168387169086%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168385169081%_)))
                                  (_%hd168386169084%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168385169081%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl168387169086%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl168381169070%_))
                                      (let ((_%__splice172753172754%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl168381169070%_
                                                '0))))
                                        (let ((_%tl168390169091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice172753172754%_
                                                  '1)))
                                              (_%target168388169089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice172753172754%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168390169091%_))
                                              (_%__match172960172961%_
                                               _%e168349168985%_
                                               _%hd168350168988%_
                                               _%tl168351168990%_
                                               _%e168352168993%_
                                               _%hd168353168996%_
                                               _%tl168354168998%_
                                               _%e168355169001%_
                                               _%hd168356169004%_
                                               _%tl168357169006%_
                                               _%e168358169009%_
                                               _%hd168359169012%_
                                               _%tl168360169014%_
                                               _%e168361169017%_
                                               _%hd168362169020%_
                                               _%tl168363169022%_
                                               _%e168364169025%_
                                               _%hd168365169028%_
                                               _%tl168366169030%_
                                               _%e168367169033%_
                                               _%hd168368169036%_
                                               _%tl168369169038%_
                                               _%e168370169041%_
                                               _%hd168371169044%_
                                               _%tl168372169046%_
                                               _%e168373169049%_
                                               _%hd168374169052%_
                                               _%tl168375169054%_
                                               _%e168376169057%_
                                               _%hd168377169060%_
                                               _%tl168378169062%_
                                               _%e168379169065%_
                                               _%hd168380169068%_
                                               _%tl168381169070%_
                                               _%e168382169073%_
                                               _%hd168383169076%_
                                               _%tl168384169078%_
                                               _%e168385169081%_
                                               _%hd168386169084%_
                                               _%tl168387169086%_
                                               _%__splice172753172754%_
                                               _%target168388169089%_
                                               _%tl168390169091%_)
                                              (_%__kont172763172764%_))))
                                      (_%__kont172763172764%_))
                                  (_%__kont172763172764%_))))
                          (_%__kont172763172764%_))
                      (_%__kont172763172764%_))
                  (_%__kont172763172764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172763172764%_))))
                                          (_%__match173242173243%_
                                           _%e168349168985%_
                                           _%hd168350168988%_
                                           _%tl168351168990%_
                                           _%e168352168993%_
                                           _%hd168353168996%_
                                           _%tl168354168998%_
                                           _%e168355169001%_
                                           _%hd168356169004%_
                                           _%tl168357169006%_
                                           _%e168358169009%_
                                           _%hd168359169012%_
                                           _%tl168360169014%_
                                           _%e168361169017%_
                                           _%hd168362169020%_
                                           _%tl168363169022%_
                                           _%e168364169025%_
                                           _%hd168365169028%_
                                           _%tl168366169030%_
                                           _%e168367169033%_
                                           _%hd168368169036%_
                                           _%tl168369169038%_
                                           _%e168370169041%_
                                           _%hd168371169044%_
                                           _%tl168372169046%_))
                                      (_%__match173242173243%_
                                       _%e168349168985%_
                                       _%hd168350168988%_
                                       _%tl168351168990%_
                                       _%e168352168993%_
                                       _%hd168353168996%_
                                       _%tl168354168998%_
                                       _%e168355169001%_
                                       _%hd168356169004%_
                                       _%tl168357169006%_
                                       _%e168358169009%_
                                       _%hd168359169012%_
                                       _%tl168360169014%_
                                       _%e168361169017%_
                                       _%hd168362169020%_
                                       _%tl168363169022%_
                                       _%e168364169025%_
                                       _%hd168365169028%_
                                       _%tl168366169030%_
                                       _%e168367169033%_
                                       _%hd168368169036%_
                                       _%tl168369169038%_
                                       _%e168370169041%_
                                       _%hd168371169044%_
                                       _%tl168372169046%_))))
                              (_%__match173242173243%_
                               _%e168349168985%_
                               _%hd168350168988%_
                               _%tl168351168990%_
                               _%e168352168993%_
                               _%hd168353168996%_
                               _%tl168354168998%_
                               _%e168355169001%_
                               _%hd168356169004%_
                               _%tl168357169006%_
                               _%e168358169009%_
                               _%hd168359169012%_
                               _%tl168360169014%_
                               _%e168361169017%_
                               _%hd168362169020%_
                               _%tl168363169022%_
                               _%e168364169025%_
                               _%hd168365169028%_
                               _%tl168366169030%_
                               _%e168367169033%_
                               _%hd168368169036%_
                               _%tl168369169038%_
                               _%e168370169041%_
                               _%hd168371169044%_
                               _%tl168372169046%_))
                          (_%__match173028173029%_
                           _%e168349168985%_
                           _%hd168350168988%_
                           _%tl168351168990%_
                           _%e168352168993%_
                           _%hd168353168996%_
                           _%tl168354168998%_
                           _%e168355169001%_
                           _%hd168356169004%_
                           _%tl168357169006%_
                           _%e168358169009%_
                           _%hd168359169012%_
                           _%tl168360169014%_
                           _%e168361169017%_
                           _%hd168362169020%_
                           _%tl168363169022%_
                           _%e168364169025%_
                           _%hd168365169028%_
                           _%tl168366169030%_
                           _%e168367169033%_
                           _%hd168368169036%_
                           _%tl168369169038%_
                           _%e168370169041%_
                           _%hd168371169044%_
                           _%tl168372169046%_
                           _%e168373169049%_
                           _%hd168374169052%_
                           _%tl168375169054%_))))
                   (_%__match172850172851%_
                    (lambda (_%e168305169174%_
                             _%hd168306169177%_
                             _%tl168307169179%_
                             _%e168308169182%_
                             _%hd168309169185%_
                             _%tl168310169187%_
                             _%e168311169190%_
                             _%hd168312169193%_
                             _%tl168313169195%_
                             _%e168314169198%_
                             _%hd168315169201%_
                             _%tl168316169203%_
                             _%e168317169206%_
                             _%hd168318169209%_
                             _%tl168319169211%_
                             _%e168320169214%_
                             _%hd168321169217%_
                             _%tl168322169219%_
                             _%e168323169222%_
                             _%hd168324169225%_
                             _%tl168325169227%_
                             _%e168326169230%_
                             _%hd168327169233%_
                             _%tl168328169235%_
                             _%e168329169238%_
                             _%hd168330169241%_
                             _%tl168331169243%_
                             _%e168332169246%_
                             _%hd168333169249%_
                             _%tl168334169251%_
                             _%__splice172749172750%_
                             _%target168335169254%_
                             _%tl168337169256%_)
                      (letrec ((_%loop168338169259%_
                                (lambda (_%hd168336169262%_
                                         _%args168342169264%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd168336169262%_))
                                      (let ((_%e168339169267%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd168336169262%_))))
                                        (let ((_%lp-tl168341169272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e168339169267%_)))
                                              (_%lp-hd168340169270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e168339169267%_))))
                                          (_%loop168338169259%_
                                           _%lp-tl168341169272%_
                                           (cons _%lp-hd168340169270%_
                                                 _%args168342169264%_))))
                                      (let ((_%args168343169275%_
                                             (reverse _%args168342169264%_)))
                                        (let ((_%L169278%_
                                               _%args168343169275%_)
                                              (_%L169279%_ _%hd168333169249%_)
                                              (_%L169280%_ _%hd168324169225%_)
                                              (_%L169281%_ _%hd168315169201%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%L169281%_
                                                      'call-method))
                                                   (let ((__tmp173876
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self168290%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%L169280%_
                                                      __tmp173876)))
                                              (_%__kont172747172748%_
                                               _%L169278%_
                                               _%L169279%_
                                               _%L169280%_
                                               _%L169281%_)
                                              (_%__match173038173039%_
                                               _%e168305169174%_
                                               _%hd168306169177%_
                                               _%tl168307169179%_
                                               _%e168308169182%_
                                               _%hd168309169185%_
                                               _%tl168310169187%_
                                               _%e168311169190%_
                                               _%hd168312169193%_
                                               _%tl168313169195%_
                                               _%e168314169198%_
                                               _%hd168315169201%_
                                               _%tl168316169203%_
                                               _%e168317169206%_
                                               _%hd168318169209%_
                                               _%tl168319169211%_
                                               _%e168320169214%_
                                               _%hd168321169217%_
                                               _%tl168322169219%_
                                               _%e168323169222%_
                                               _%hd168324169225%_
                                               _%tl168325169227%_
                                               _%e168326169230%_
                                               _%hd168327169233%_
                                               _%tl168328169235%_
                                               _%e168329169238%_
                                               _%hd168330169241%_
                                               _%tl168331169243%_
                                               _%e168332169246%_
                                               _%hd168333169249%_
                                               _%tl168334169251%_))))))))
                        (_%loop168338169259%_ _%target168335169254%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172745172746%_))
                  (let ((_%e168305169174%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172745172746%_))))
                    (let ((_%tl168307169179%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168305169174%_)))
                          (_%hd168306169177%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168305169174%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168307169179%_))
                          (let ((_%e168308169182%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168307169179%_))))
                            (let ((_%tl168310169187%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168308169182%_)))
                                  (_%hd168309169185%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168308169182%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd168309169185%_))
                                  (let ((_%e168311169190%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd168309169185%_))))
                                    (let ((_%tl168313169195%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168311169190%_)))
                                          (_%hd168312169193%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168311169190%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd168312169193%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd168312169193%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl168313169195%_))
                                                  (let ((_%e168314169198%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl168313169195%_))))
                                                    (let ((_%tl168316169203%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168314169198%_)))
                                                          (_%hd168315169201%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168314169198%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl168316169203%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl168310169187%_))
                      (let ((_%e168317169206%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl168310169187%_))))
                        (let ((_%tl168319169211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e168317169206%_)))
                              (_%hd168318169209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e168317169206%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd168318169209%_))
                              (let ((_%e168320169214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd168318169209%_))))
                                (let ((_%tl168322169219%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168320169214%_)))
                                      (_%hd168321169217%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168320169214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd168321169217%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd168321169217%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl168322169219%_))
                                              (let ((_%e168323169222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl168322169219%_))))
                                                (let ((_%tl168325169227%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e168323169222%_)))
                                                      (_%hd168324169225%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e168323169222%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl168325169227%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl168319169211%_))
                                                          (let ((_%e168326169230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl168319169211%_))))
                    (let ((_%tl168328169235%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168326169230%_)))
                          (_%hd168327169233%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168326169230%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd168327169233%_))
                          (let ((_%e168329169238%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd168327169233%_))))
                            (let ((_%tl168331169243%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168329169238%_)))
                                  (_%hd168330169241%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168329169238%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd168330169241%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd168330169241%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl168331169243%_))
                                          (let ((_%e168332169246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl168331169243%_))))
                                            (let ((_%tl168334169251%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168332169246%_)))
                                                  (_%hd168333169249%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168332169246%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl168334169251%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl168328169235%_))
                                                      (let ((_%__splice172749172750%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl168328169235%_ '0))))
                (let ((_%tl168337169256%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice172749172750%_ '1)))
                      (_%target168335169254%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice172749172750%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl168337169256%_))
                      (_%__match172850172851%_
                       _%e168305169174%_
                       _%hd168306169177%_
                       _%tl168307169179%_
                       _%e168308169182%_
                       _%hd168309169185%_
                       _%tl168310169187%_
                       _%e168311169190%_
                       _%hd168312169193%_
                       _%tl168313169195%_
                       _%e168314169198%_
                       _%hd168315169201%_
                       _%tl168316169203%_
                       _%e168317169206%_
                       _%hd168318169209%_
                       _%tl168319169211%_
                       _%e168320169214%_
                       _%hd168321169217%_
                       _%tl168322169219%_
                       _%e168323169222%_
                       _%hd168324169225%_
                       _%tl168325169227%_
                       _%e168326169230%_
                       _%hd168327169233%_
                       _%tl168328169235%_
                       _%e168329169238%_
                       _%hd168330169241%_
                       _%tl168331169243%_
                       _%e168332169246%_
                       _%hd168333169249%_
                       _%tl168334169251%_
                       _%__splice172749172750%_
                       _%target168335169254%_
                       _%tl168337169256%_)
                      (_%__match173038173039%_
                       _%e168305169174%_
                       _%hd168306169177%_
                       _%tl168307169179%_
                       _%e168308169182%_
                       _%hd168309169185%_
                       _%tl168310169187%_
                       _%e168311169190%_
                       _%hd168312169193%_
                       _%tl168313169195%_
                       _%e168314169198%_
                       _%hd168315169201%_
                       _%tl168316169203%_
                       _%e168317169206%_
                       _%hd168318169209%_
                       _%tl168319169211%_
                       _%e168320169214%_
                       _%hd168321169217%_
                       _%tl168322169219%_
                       _%e168323169222%_
                       _%hd168324169225%_
                       _%tl168325169227%_
                       _%e168326169230%_
                       _%hd168327169233%_
                       _%tl168328169235%_
                       _%e168329169238%_
                       _%hd168330169241%_
                       _%tl168331169243%_
                       _%e168332169246%_
                       _%hd168333169249%_
                       _%tl168334169251%_))))
              (_%__match173038173039%_
               _%e168305169174%_
               _%hd168306169177%_
               _%tl168307169179%_
               _%e168308169182%_
               _%hd168309169185%_
               _%tl168310169187%_
               _%e168311169190%_
               _%hd168312169193%_
               _%tl168313169195%_
               _%e168314169198%_
               _%hd168315169201%_
               _%tl168316169203%_
               _%e168317169206%_
               _%hd168318169209%_
               _%tl168319169211%_
               _%e168320169214%_
               _%hd168321169217%_
               _%tl168322169219%_
               _%e168323169222%_
               _%hd168324169225%_
               _%tl168325169227%_
               _%e168326169230%_
               _%hd168327169233%_
               _%tl168328169235%_
               _%e168329169238%_
               _%hd168330169241%_
               _%tl168331169243%_
               _%e168332169246%_
               _%hd168333169249%_
               _%tl168334169251%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match173242173243%_
                                                   _%e168305169174%_
                                                   _%hd168306169177%_
                                                   _%tl168307169179%_
                                                   _%e168308169182%_
                                                   _%hd168309169185%_
                                                   _%tl168310169187%_
                                                   _%e168311169190%_
                                                   _%hd168312169193%_
                                                   _%tl168313169195%_
                                                   _%e168314169198%_
                                                   _%hd168315169201%_
                                                   _%tl168316169203%_
                                                   _%e168317169206%_
                                                   _%hd168318169209%_
                                                   _%tl168319169211%_
                                                   _%e168320169214%_
                                                   _%hd168321169217%_
                                                   _%tl168322169219%_
                                                   _%e168323169222%_
                                                   _%hd168324169225%_
                                                   _%tl168325169227%_
                                                   _%e168326169230%_
                                                   _%hd168327169233%_
                                                   _%tl168328169235%_))))
                                          (_%__match173242173243%_
                                           _%e168305169174%_
                                           _%hd168306169177%_
                                           _%tl168307169179%_
                                           _%e168308169182%_
                                           _%hd168309169185%_
                                           _%tl168310169187%_
                                           _%e168311169190%_
                                           _%hd168312169193%_
                                           _%tl168313169195%_
                                           _%e168314169198%_
                                           _%hd168315169201%_
                                           _%tl168316169203%_
                                           _%e168317169206%_
                                           _%hd168318169209%_
                                           _%tl168319169211%_
                                           _%e168320169214%_
                                           _%hd168321169217%_
                                           _%tl168322169219%_
                                           _%e168323169222%_
                                           _%hd168324169225%_
                                           _%tl168325169227%_
                                           _%e168326169230%_
                                           _%hd168327169233%_
                                           _%tl168328169235%_))
                                      (_%__match172918172919%_
                                       _%e168305169174%_
                                       _%hd168306169177%_
                                       _%tl168307169179%_
                                       _%e168308169182%_
                                       _%hd168309169185%_
                                       _%tl168310169187%_
                                       _%e168311169190%_
                                       _%hd168312169193%_
                                       _%tl168313169195%_
                                       _%e168314169198%_
                                       _%hd168315169201%_
                                       _%tl168316169203%_
                                       _%e168317169206%_
                                       _%hd168318169209%_
                                       _%tl168319169211%_
                                       _%e168320169214%_
                                       _%hd168321169217%_
                                       _%tl168322169219%_
                                       _%e168323169222%_
                                       _%hd168324169225%_
                                       _%tl168325169227%_
                                       _%e168326169230%_
                                       _%hd168327169233%_
                                       _%tl168328169235%_
                                       _%e168329169238%_
                                       _%hd168330169241%_
                                       _%tl168331169243%_))
                                  (_%__match173242173243%_
                                   _%e168305169174%_
                                   _%hd168306169177%_
                                   _%tl168307169179%_
                                   _%e168308169182%_
                                   _%hd168309169185%_
                                   _%tl168310169187%_
                                   _%e168311169190%_
                                   _%hd168312169193%_
                                   _%tl168313169195%_
                                   _%e168314169198%_
                                   _%hd168315169201%_
                                   _%tl168316169203%_
                                   _%e168317169206%_
                                   _%hd168318169209%_
                                   _%tl168319169211%_
                                   _%e168320169214%_
                                   _%hd168321169217%_
                                   _%tl168322169219%_
                                   _%e168323169222%_
                                   _%hd168324169225%_
                                   _%tl168325169227%_
                                   _%e168326169230%_
                                   _%hd168327169233%_
                                   _%tl168328169235%_))))
                          (_%__match173242173243%_
                           _%e168305169174%_
                           _%hd168306169177%_
                           _%tl168307169179%_
                           _%e168308169182%_
                           _%hd168309169185%_
                           _%tl168310169187%_
                           _%e168311169190%_
                           _%hd168312169193%_
                           _%tl168313169195%_
                           _%e168314169198%_
                           _%hd168315169201%_
                           _%tl168316169203%_
                           _%e168317169206%_
                           _%hd168318169209%_
                           _%tl168319169211%_
                           _%e168320169214%_
                           _%hd168321169217%_
                           _%tl168322169219%_
                           _%e168323169222%_
                           _%hd168324169225%_
                           _%tl168325169227%_
                           _%e168326169230%_
                           _%hd168327169233%_
                           _%tl168328169235%_))))
                  (_%__match173180173181%_
                   _%e168305169174%_
                   _%hd168306169177%_
                   _%tl168307169179%_
                   _%e168308169182%_
                   _%hd168309169185%_
                   _%tl168310169187%_
                   _%e168311169190%_
                   _%hd168312169193%_
                   _%tl168313169195%_
                   _%e168314169198%_
                   _%hd168315169201%_
                   _%tl168316169203%_
                   _%e168317169206%_
                   _%hd168318169209%_
                   _%tl168319169211%_
                   _%e168320169214%_
                   _%hd168321169217%_
                   _%tl168322169219%_
                   _%e168323169222%_
                   _%hd168324169225%_
                   _%tl168325169227%_))
              (_%__kont172763172764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont172763172764%_))
                                          (_%__kont172763172764%_))
                                      (_%__kont172763172764%_))))
                              (_%__kont172763172764%_))))
                      (_%__kont172763172764%_))
                  (_%__kont172763172764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172763172764%_))
                                              (_%__kont172763172764%_))
                                          (_%__kont172763172764%_))))
                                  (_%__kont172763172764%_))))
                          (_%__kont172763172764%_))))
                  (_%__kont172763172764%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self167229%_ _%stx167230%_)
        (letrec ((_%force-e167232%_
                  (lambda (_%target168288%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target168288%_ '()))
                                      '()))))))
          (let* ((_%__stx173247173248%_ _%stx167230%_)
                 (_%g167240167462%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx173247173248%_)))))
            (let ((_%__kont173249173250%_
                   (lambda (_%L168234%_ _%L168235%_ _%L168236%_ _%L168237%_)
                     (let ((_%$method168282%_
                            (let ((__tmp173878
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self167229%_ 'methods)))
                                  (__tmp173877
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L168235%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp173878 __tmp173877)))
                           (_%args168283%_
                            (map (lambda (_%g168270168272%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self167229%_
                                      _%g168270168272%_)))
                                 (let ((__tmp173879
                                        (lambda (_%g168274168277%_
                                                 _%g168275168279%_)
                                          (cons _%g168274168277%_
                                                _%g168275168279%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp173879 '() _%L168234%_)))))
                       (let ((__tmp173880
                              (cons '%#call
                                    (cons (_%force-e167232%_ _%$method168282%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self167229%_
                                                               'receiver))
                                                            '()))
                                                _%args168283%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp173880 _%stx167230%_)))))
                  (_%__kont173253173254%_
                   (lambda (_%L168066%_
                            _%L168067%_
                            _%L168068%_
                            _%L168069%_
                            _%L168070%_)
                     (let ((_%$method168122%_
                            (let ((__tmp173882
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self167229%_ 'methods)))
                                  (__tmp173881
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L168067%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp173882 __tmp173881)))
                           (_%args168123%_
                            (map (lambda (_%g168110168112%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self167229%_
                                      _%g168110168112%_)))
                                 (let ((__tmp173883
                                        (lambda (_%g168114168117%_
                                                 _%g168115168119%_)
                                          (cons _%g168114168117%_
                                                _%g168115168119%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp173883 '() _%L168066%_)))))
                       (let ((__tmp173884
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e167232%_
                                                 _%$method168122%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self167229%_ 'receiver))
                          '()))
              _%args168123%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp173884 _%stx167230%_)))))
                  (_%__kont173257173258%_
                   (lambda (_%L167897%_ _%L167898%_ _%L167899%_)
                     (let* ((_%$field167931%_
                             (let ((__tmp173886
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self167229%_ 'slots)))
                                   (__tmp173885
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%L167897%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp173886 __tmp173885)))
                            (__tmp173887
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self167229%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field167931%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self167229%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp173887 _%stx167230%_))))
                  (_%__kont173259173260%_
                   (lambda (_%L167771%_ _%L167772%_ _%L167773%_ _%L167774%_)
                     (let ((_%$field167809%_
                            (let ((__tmp173889
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self167229%_ 'slots)))
                                  (__tmp173888
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L167772%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp173889 __tmp173888)))
                           (_%expr167810%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1 _%self167229%_ _%L167771%_))))
                       (let ((__tmp173890
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self167229%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field167809%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self167229%_ 'receiver))
                          '()))
              (cons _%expr167810%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp173890 _%stx167230%_)))))
                  (_%__kont173261173262%_
                   (lambda (_%L167643%_ _%L167644%_)
                     (let* ((_%accessor167666%_
                             (let ((__tmp173891
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167644%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp173891)))
                            (_%klass167668%_
                             (let ((__tmp173892
                                    (##structure-ref
                                     _%accessor167666%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx167230%_
                                __tmp173892)))
                            (_%slot167670%_
                             (##structure-ref
                              _%accessor167666%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (and (not (##structure-ref
                                      _%accessor167666%_
                                      '4
                                      gxc#!accessor::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass167668%_
                                       _%slot167670%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass167668%_
                                       '8
                                       '#f
                                       '#f))))
                           _%stx167230%_
                           (let* ((_%$field167676%_
                                   (let ((__tmp173893
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self167229%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp173893 _%slot167670%_)))
                                  (__tmp173894
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self167229%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field167676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self167229%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp173894
                              _%stx167230%_))))))
                  (_%__kont173263173264%_
                   (lambda (_%L167538%_ _%L167539%_ _%L167540%_)
                     (let* ((_%mutator167568%_
                             (let ((__tmp173895
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _%L167540%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp173895)))
                            (_%klass167570%_
                             (let ((__tmp173896
                                    (##structure-ref
                                     _%mutator167568%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx167230%_
                                __tmp173896)))
                            (_%slot167572%_
                             (##structure-ref
                              _%mutator167568%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr167574%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1 _%self167229%_ _%L167538%_))))
                       (if (and (not (##structure-ref
                                      _%mutator167568%_
                                      '4
                                      gxc#!mutator::t
                                      '#f))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _%klass167570%_
                                       _%slot167572%_))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%klass167570%_
                                       '8
                                       '#f
                                       '#f))))
                           (let ((__tmp173897
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%L167540%_ '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%L167539%_
                                                                '()))
                                                    (cons _%expr167574%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp173897 _%stx167230%_))
                           (let* ((_%$field167580%_
                                   (let ((__tmp173898
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self167229%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp173898 _%slot167572%_)))
                                  (__tmp173899
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self167229%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field167580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self167229%_ 'receiver))
                               '()))
                   (cons _%expr167574%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp173899
                              _%stx167230%_))))))
                  (_%__kont173265173266%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self167229%_ _%stx167230%_)))))
              (let* ((_%__match173746173747%_
                      (lambda (_%e167434167474%_
                               _%hd167435167477%_
                               _%tl167436167479%_
                               _%e167437167482%_
                               _%hd167438167485%_
                               _%tl167439167487%_
                               _%e167440167490%_
                               _%hd167441167493%_
                               _%tl167442167495%_
                               _%e167443167498%_
                               _%hd167444167501%_
                               _%tl167445167503%_
                               _%e167446167506%_
                               _%hd167447167509%_
                               _%tl167448167511%_
                               _%e167449167514%_
                               _%hd167450167517%_
                               _%tl167451167519%_
                               _%e167452167522%_
                               _%hd167453167525%_
                               _%tl167454167527%_
                               _%e167455167530%_
                               _%hd167456167533%_
                               _%tl167457167535%_)
                        (let ((_%L167538%_ _%hd167456167533%_)
                              (_%L167539%_ _%hd167453167525%_)
                              (_%L167540%_ _%hd167444167501%_))
                          (if (and (let ((__tmp173900
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self167229%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167539%_
                                      __tmp173900))
                                   (let ((__tmp173901
                                          (let ((__tmp173902
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L167540%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp173902))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp173901
                                      'gxc#!mutator::t)))
                              (_%__kont173263173264%_
                               _%L167538%_
                               _%L167539%_
                               _%L167540%_)
                              (_%__kont173265173266%_)))))
                     (_%__match173744173745%_
                      (lambda (_%e167434167474%_
                               _%hd167435167477%_
                               _%tl167436167479%_
                               _%e167437167482%_
                               _%hd167438167485%_
                               _%tl167439167487%_
                               _%e167440167490%_
                               _%hd167441167493%_
                               _%tl167442167495%_
                               _%e167443167498%_
                               _%hd167444167501%_
                               _%tl167445167503%_
                               _%e167446167506%_
                               _%hd167447167509%_
                               _%tl167448167511%_
                               _%e167449167514%_
                               _%hd167450167517%_
                               _%tl167451167519%_
                               _%e167452167522%_
                               _%hd167453167525%_
                               _%tl167454167527%_
                               _%e167455167530%_
                               _%hd167456167533%_
                               _%tl167457167535%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167457167535%_))
                            (_%__match173746173747%_
                             _%e167434167474%_
                             _%hd167435167477%_
                             _%tl167436167479%_
                             _%e167437167482%_
                             _%hd167438167485%_
                             _%tl167439167487%_
                             _%e167440167490%_
                             _%hd167441167493%_
                             _%tl167442167495%_
                             _%e167443167498%_
                             _%hd167444167501%_
                             _%tl167445167503%_
                             _%e167446167506%_
                             _%hd167447167509%_
                             _%tl167448167511%_
                             _%e167449167514%_
                             _%hd167450167517%_
                             _%tl167451167519%_
                             _%e167452167522%_
                             _%hd167453167525%_
                             _%tl167454167527%_
                             _%e167455167530%_
                             _%hd167456167533%_
                             _%tl167457167535%_)
                            (_%__kont173265173266%_))))
                     (_%__match173738173739%_
                      (lambda (_%e167434167474%_
                               _%hd167435167477%_
                               _%tl167436167479%_
                               _%e167437167482%_
                               _%hd167438167485%_
                               _%tl167439167487%_
                               _%e167440167490%_
                               _%hd167441167493%_
                               _%tl167442167495%_
                               _%e167443167498%_
                               _%hd167444167501%_
                               _%tl167445167503%_
                               _%e167446167506%_
                               _%hd167447167509%_
                               _%tl167448167511%_
                               _%e167449167514%_
                               _%hd167450167517%_
                               _%tl167451167519%_
                               _%e167452167522%_
                               _%hd167453167525%_
                               _%tl167454167527%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167448167511%_))
                            (let ((_%e167455167530%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167448167511%_))))
                              (let ((_%tl167457167535%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167455167530%_)))
                                    (_%hd167456167533%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167455167530%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl167457167535%_))
                                    (_%__match173746173747%_
                                     _%e167434167474%_
                                     _%hd167435167477%_
                                     _%tl167436167479%_
                                     _%e167437167482%_
                                     _%hd167438167485%_
                                     _%tl167439167487%_
                                     _%e167440167490%_
                                     _%hd167441167493%_
                                     _%tl167442167495%_
                                     _%e167443167498%_
                                     _%hd167444167501%_
                                     _%tl167445167503%_
                                     _%e167446167506%_
                                     _%hd167447167509%_
                                     _%tl167448167511%_
                                     _%e167449167514%_
                                     _%hd167450167517%_
                                     _%tl167451167519%_
                                     _%e167452167522%_
                                     _%hd167453167525%_
                                     _%tl167454167527%_
                                     _%e167455167530%_
                                     _%hd167456167533%_
                                     _%tl167457167535%_)
                                    (_%__kont173265173266%_))))
                            (_%__kont173265173266%_))))
                     (_%__match173684173685%_
                      (lambda (_%e167410167587%_
                               _%hd167411167590%_
                               _%tl167412167592%_
                               _%e167413167595%_
                               _%hd167414167598%_
                               _%tl167415167600%_
                               _%e167416167603%_
                               _%hd167417167606%_
                               _%tl167418167608%_
                               _%e167419167611%_
                               _%hd167420167614%_
                               _%tl167421167616%_
                               _%e167422167619%_
                               _%hd167423167622%_
                               _%tl167424167624%_
                               _%e167425167627%_
                               _%hd167426167630%_
                               _%tl167427167632%_
                               _%e167428167635%_
                               _%hd167429167638%_
                               _%tl167430167640%_)
                        (let ((_%L167643%_ _%hd167429167638%_)
                              (_%L167644%_ _%hd167420167614%_))
                          (if (and (let ((__tmp173903
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self167229%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167643%_
                                      __tmp173903))
                                   (let ((__tmp173904
                                          (let ((__tmp173905
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L167644%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp173905))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp173904
                                      'gxc#!accessor::t)))
                              (_%__kont173261173262%_ _%L167643%_ _%L167644%_)
                              (_%__kont173265173266%_)))))
                     (_%__match173682173683%_
                      (lambda (_%e167410167587%_
                               _%hd167411167590%_
                               _%tl167412167592%_
                               _%e167413167595%_
                               _%hd167414167598%_
                               _%tl167415167600%_
                               _%e167416167603%_
                               _%hd167417167606%_
                               _%tl167418167608%_
                               _%e167419167611%_
                               _%hd167420167614%_
                               _%tl167421167616%_
                               _%e167422167619%_
                               _%hd167423167622%_
                               _%tl167424167624%_
                               _%e167425167627%_
                               _%hd167426167630%_
                               _%tl167427167632%_
                               _%e167428167635%_
                               _%hd167429167638%_
                               _%tl167430167640%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167424167624%_))
                            (_%__match173684173685%_
                             _%e167410167587%_
                             _%hd167411167590%_
                             _%tl167412167592%_
                             _%e167413167595%_
                             _%hd167414167598%_
                             _%tl167415167600%_
                             _%e167416167603%_
                             _%hd167417167606%_
                             _%tl167418167608%_
                             _%e167419167611%_
                             _%hd167420167614%_
                             _%tl167421167616%_
                             _%e167422167619%_
                             _%hd167423167622%_
                             _%tl167424167624%_
                             _%e167425167627%_
                             _%hd167426167630%_
                             _%tl167427167632%_
                             _%e167428167635%_
                             _%hd167429167638%_
                             _%tl167430167640%_)
                            (_%__match173738173739%_
                             _%e167410167587%_
                             _%hd167411167590%_
                             _%tl167412167592%_
                             _%e167413167595%_
                             _%hd167414167598%_
                             _%tl167415167600%_
                             _%e167416167603%_
                             _%hd167417167606%_
                             _%tl167418167608%_
                             _%e167419167611%_
                             _%hd167420167614%_
                             _%tl167421167616%_
                             _%e167422167619%_
                             _%hd167423167622%_
                             _%tl167424167624%_
                             _%e167425167627%_
                             _%hd167426167630%_
                             _%tl167427167632%_
                             _%e167428167635%_
                             _%hd167429167638%_
                             _%tl167430167640%_))))
                     (_%__match173628173629%_
                      (lambda (_%e167375167683%_
                               _%hd167376167686%_
                               _%tl167377167688%_
                               _%e167378167691%_
                               _%hd167379167694%_
                               _%tl167380167696%_
                               _%e167381167699%_
                               _%hd167382167702%_
                               _%tl167383167704%_
                               _%e167384167707%_
                               _%hd167385167710%_
                               _%tl167386167712%_
                               _%e167387167715%_
                               _%hd167388167718%_
                               _%tl167389167720%_
                               _%e167390167723%_
                               _%hd167391167726%_
                               _%tl167392167728%_
                               _%e167393167731%_
                               _%hd167394167734%_
                               _%tl167395167736%_
                               _%e167396167739%_
                               _%hd167397167742%_
                               _%tl167398167744%_
                               _%e167399167747%_
                               _%hd167400167750%_
                               _%tl167401167752%_
                               _%e167402167755%_
                               _%hd167403167758%_
                               _%tl167404167760%_
                               _%e167405167763%_
                               _%hd167406167766%_
                               _%tl167407167768%_)
                        (let ((_%L167771%_ _%hd167406167766%_)
                              (_%L167772%_ _%hd167403167758%_)
                              (_%L167773%_ _%hd167394167734%_)
                              (_%L167774%_ _%hd167385167710%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167774%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167774%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp173906
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self167229%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167773%_
                                      __tmp173906)))
                              (_%__kont173259173260%_
                               _%L167771%_
                               _%L167772%_
                               _%L167773%_
                               _%L167774%_)
                              (_%__kont173265173266%_)))))
                     (_%__match173620173621%_
                      (lambda (_%e167375167683%_
                               _%hd167376167686%_
                               _%tl167377167688%_
                               _%e167378167691%_
                               _%hd167379167694%_
                               _%tl167380167696%_
                               _%e167381167699%_
                               _%hd167382167702%_
                               _%tl167383167704%_
                               _%e167384167707%_
                               _%hd167385167710%_
                               _%tl167386167712%_
                               _%e167387167715%_
                               _%hd167388167718%_
                               _%tl167389167720%_
                               _%e167390167723%_
                               _%hd167391167726%_
                               _%tl167392167728%_
                               _%e167393167731%_
                               _%hd167394167734%_
                               _%tl167395167736%_
                               _%e167396167739%_
                               _%hd167397167742%_
                               _%tl167398167744%_
                               _%e167399167747%_
                               _%hd167400167750%_
                               _%tl167401167752%_
                               _%e167402167755%_
                               _%hd167403167758%_
                               _%tl167404167760%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167398167744%_))
                            (let ((_%e167405167763%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167398167744%_))))
                              (let ((_%tl167407167768%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167405167763%_)))
                                    (_%hd167406167766%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167405167763%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl167407167768%_))
                                    (_%__match173628173629%_
                                     _%e167375167683%_
                                     _%hd167376167686%_
                                     _%tl167377167688%_
                                     _%e167378167691%_
                                     _%hd167379167694%_
                                     _%tl167380167696%_
                                     _%e167381167699%_
                                     _%hd167382167702%_
                                     _%tl167383167704%_
                                     _%e167384167707%_
                                     _%hd167385167710%_
                                     _%tl167386167712%_
                                     _%e167387167715%_
                                     _%hd167388167718%_
                                     _%tl167389167720%_
                                     _%e167390167723%_
                                     _%hd167391167726%_
                                     _%tl167392167728%_
                                     _%e167393167731%_
                                     _%hd167394167734%_
                                     _%tl167395167736%_
                                     _%e167396167739%_
                                     _%hd167397167742%_
                                     _%tl167398167744%_
                                     _%e167399167747%_
                                     _%hd167400167750%_
                                     _%tl167401167752%_
                                     _%e167402167755%_
                                     _%hd167403167758%_
                                     _%tl167404167760%_
                                     _%e167405167763%_
                                     _%hd167406167766%_
                                     _%tl167407167768%_)
                                    (_%__kont173265173266%_))))
                            (_%__match173744173745%_
                             _%e167375167683%_
                             _%hd167376167686%_
                             _%tl167377167688%_
                             _%e167378167691%_
                             _%hd167379167694%_
                             _%tl167380167696%_
                             _%e167381167699%_
                             _%hd167382167702%_
                             _%tl167383167704%_
                             _%e167384167707%_
                             _%hd167385167710%_
                             _%tl167386167712%_
                             _%e167387167715%_
                             _%hd167388167718%_
                             _%tl167389167720%_
                             _%e167390167723%_
                             _%hd167391167726%_
                             _%tl167392167728%_
                             _%e167393167731%_
                             _%hd167394167734%_
                             _%tl167395167736%_
                             _%e167396167739%_
                             _%hd167397167742%_
                             _%tl167398167744%_))))
                     (_%__match173542173543%_
                      (lambda (_%e167341167817%_
                               _%hd167342167820%_
                               _%tl167343167822%_
                               _%e167344167825%_
                               _%hd167345167828%_
                               _%tl167346167830%_
                               _%e167347167833%_
                               _%hd167348167836%_
                               _%tl167349167838%_
                               _%e167350167841%_
                               _%hd167351167844%_
                               _%tl167352167846%_
                               _%e167353167849%_
                               _%hd167354167852%_
                               _%tl167355167854%_
                               _%e167356167857%_
                               _%hd167357167860%_
                               _%tl167358167862%_
                               _%e167359167865%_
                               _%hd167360167868%_
                               _%tl167361167870%_
                               _%e167362167873%_
                               _%hd167363167876%_
                               _%tl167364167878%_
                               _%e167365167881%_
                               _%hd167366167884%_
                               _%tl167367167886%_
                               _%e167368167889%_
                               _%hd167369167892%_
                               _%tl167370167894%_)
                        (let ((_%L167897%_ _%hd167369167892%_)
                              (_%L167898%_ _%hd167360167868%_)
                              (_%L167899%_ _%hd167351167844%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167899%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%L167899%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp173907
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self167229%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%L167898%_
                                      __tmp173907)))
                              (_%__kont173257173258%_
                               _%L167897%_
                               _%L167898%_
                               _%L167899%_)
                              (_%__match173746173747%_
                               _%e167341167817%_
                               _%hd167342167820%_
                               _%tl167343167822%_
                               _%e167344167825%_
                               _%hd167345167828%_
                               _%tl167346167830%_
                               _%e167347167833%_
                               _%hd167348167836%_
                               _%tl167349167838%_
                               _%e167350167841%_
                               _%hd167351167844%_
                               _%tl167352167846%_
                               _%e167353167849%_
                               _%hd167354167852%_
                               _%tl167355167854%_
                               _%e167356167857%_
                               _%hd167357167860%_
                               _%tl167358167862%_
                               _%e167359167865%_
                               _%hd167360167868%_
                               _%tl167361167870%_
                               _%e167362167873%_
                               _%hd167363167876%_
                               _%tl167364167878%_)))))
                     (_%__match173540173541%_
                      (lambda (_%e167341167817%_
                               _%hd167342167820%_
                               _%tl167343167822%_
                               _%e167344167825%_
                               _%hd167345167828%_
                               _%tl167346167830%_
                               _%e167347167833%_
                               _%hd167348167836%_
                               _%tl167349167838%_
                               _%e167350167841%_
                               _%hd167351167844%_
                               _%tl167352167846%_
                               _%e167353167849%_
                               _%hd167354167852%_
                               _%tl167355167854%_
                               _%e167356167857%_
                               _%hd167357167860%_
                               _%tl167358167862%_
                               _%e167359167865%_
                               _%hd167360167868%_
                               _%tl167361167870%_
                               _%e167362167873%_
                               _%hd167363167876%_
                               _%tl167364167878%_
                               _%e167365167881%_
                               _%hd167366167884%_
                               _%tl167367167886%_
                               _%e167368167889%_
                               _%hd167369167892%_
                               _%tl167370167894%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167364167878%_))
                            (_%__match173542173543%_
                             _%e167341167817%_
                             _%hd167342167820%_
                             _%tl167343167822%_
                             _%e167344167825%_
                             _%hd167345167828%_
                             _%tl167346167830%_
                             _%e167347167833%_
                             _%hd167348167836%_
                             _%tl167349167838%_
                             _%e167350167841%_
                             _%hd167351167844%_
                             _%tl167352167846%_
                             _%e167353167849%_
                             _%hd167354167852%_
                             _%tl167355167854%_
                             _%e167356167857%_
                             _%hd167357167860%_
                             _%tl167358167862%_
                             _%e167359167865%_
                             _%hd167360167868%_
                             _%tl167361167870%_
                             _%e167362167873%_
                             _%hd167363167876%_
                             _%tl167364167878%_
                             _%e167365167881%_
                             _%hd167366167884%_
                             _%tl167367167886%_
                             _%e167368167889%_
                             _%hd167369167892%_
                             _%tl167370167894%_)
                            (_%__match173620173621%_
                             _%e167341167817%_
                             _%hd167342167820%_
                             _%tl167343167822%_
                             _%e167344167825%_
                             _%hd167345167828%_
                             _%tl167346167830%_
                             _%e167347167833%_
                             _%hd167348167836%_
                             _%tl167349167838%_
                             _%e167350167841%_
                             _%hd167351167844%_
                             _%tl167352167846%_
                             _%e167353167849%_
                             _%hd167354167852%_
                             _%tl167355167854%_
                             _%e167356167857%_
                             _%hd167357167860%_
                             _%tl167358167862%_
                             _%e167359167865%_
                             _%hd167360167868%_
                             _%tl167361167870%_
                             _%e167362167873%_
                             _%hd167363167876%_
                             _%tl167364167878%_
                             _%e167365167881%_
                             _%hd167366167884%_
                             _%tl167367167886%_
                             _%e167368167889%_
                             _%hd167369167892%_
                             _%tl167370167894%_))))
                     (_%__match173530173531%_
                      (lambda (_%e167341167817%_
                               _%hd167342167820%_
                               _%tl167343167822%_
                               _%e167344167825%_
                               _%hd167345167828%_
                               _%tl167346167830%_
                               _%e167347167833%_
                               _%hd167348167836%_
                               _%tl167349167838%_
                               _%e167350167841%_
                               _%hd167351167844%_
                               _%tl167352167846%_
                               _%e167353167849%_
                               _%hd167354167852%_
                               _%tl167355167854%_
                               _%e167356167857%_
                               _%hd167357167860%_
                               _%tl167358167862%_
                               _%e167359167865%_
                               _%hd167360167868%_
                               _%tl167361167870%_
                               _%e167362167873%_
                               _%hd167363167876%_
                               _%tl167364167878%_
                               _%e167365167881%_
                               _%hd167366167884%_
                               _%tl167367167886%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%hd167366167884%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167367167886%_))
                                (let ((_%e167368167889%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167367167886%_))))
                                  (let ((_%tl167370167894%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167368167889%_)))
                                        (_%hd167369167892%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167368167889%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl167370167894%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl167364167878%_))
                                            (_%__match173542173543%_
                                             _%e167341167817%_
                                             _%hd167342167820%_
                                             _%tl167343167822%_
                                             _%e167344167825%_
                                             _%hd167345167828%_
                                             _%tl167346167830%_
                                             _%e167347167833%_
                                             _%hd167348167836%_
                                             _%tl167349167838%_
                                             _%e167350167841%_
                                             _%hd167351167844%_
                                             _%tl167352167846%_
                                             _%e167353167849%_
                                             _%hd167354167852%_
                                             _%tl167355167854%_
                                             _%e167356167857%_
                                             _%hd167357167860%_
                                             _%tl167358167862%_
                                             _%e167359167865%_
                                             _%hd167360167868%_
                                             _%tl167361167870%_
                                             _%e167362167873%_
                                             _%hd167363167876%_
                                             _%tl167364167878%_
                                             _%e167365167881%_
                                             _%hd167366167884%_
                                             _%tl167367167886%_
                                             _%e167368167889%_
                                             _%hd167369167892%_
                                             _%tl167370167894%_)
                                            (_%__match173620173621%_
                                             _%e167341167817%_
                                             _%hd167342167820%_
                                             _%tl167343167822%_
                                             _%e167344167825%_
                                             _%hd167345167828%_
                                             _%tl167346167830%_
                                             _%e167347167833%_
                                             _%hd167348167836%_
                                             _%tl167349167838%_
                                             _%e167350167841%_
                                             _%hd167351167844%_
                                             _%tl167352167846%_
                                             _%e167353167849%_
                                             _%hd167354167852%_
                                             _%tl167355167854%_
                                             _%e167356167857%_
                                             _%hd167357167860%_
                                             _%tl167358167862%_
                                             _%e167359167865%_
                                             _%hd167360167868%_
                                             _%tl167361167870%_
                                             _%e167362167873%_
                                             _%hd167363167876%_
                                             _%tl167364167878%_
                                             _%e167365167881%_
                                             _%hd167366167884%_
                                             _%tl167367167886%_
                                             _%e167368167889%_
                                             _%hd167369167892%_
                                             _%tl167370167894%_))
                                        (_%__match173744173745%_
                                         _%e167341167817%_
                                         _%hd167342167820%_
                                         _%tl167343167822%_
                                         _%e167344167825%_
                                         _%hd167345167828%_
                                         _%tl167346167830%_
                                         _%e167347167833%_
                                         _%hd167348167836%_
                                         _%tl167349167838%_
                                         _%e167350167841%_
                                         _%hd167351167844%_
                                         _%tl167352167846%_
                                         _%e167353167849%_
                                         _%hd167354167852%_
                                         _%tl167355167854%_
                                         _%e167356167857%_
                                         _%hd167357167860%_
                                         _%tl167358167862%_
                                         _%e167359167865%_
                                         _%hd167360167868%_
                                         _%tl167361167870%_
                                         _%e167362167873%_
                                         _%hd167363167876%_
                                         _%tl167364167878%_))))
                                (_%__match173744173745%_
                                 _%e167341167817%_
                                 _%hd167342167820%_
                                 _%tl167343167822%_
                                 _%e167344167825%_
                                 _%hd167345167828%_
                                 _%tl167346167830%_
                                 _%e167347167833%_
                                 _%hd167348167836%_
                                 _%tl167349167838%_
                                 _%e167350167841%_
                                 _%hd167351167844%_
                                 _%tl167352167846%_
                                 _%e167353167849%_
                                 _%hd167354167852%_
                                 _%tl167355167854%_
                                 _%e167356167857%_
                                 _%hd167357167860%_
                                 _%tl167358167862%_
                                 _%e167359167865%_
                                 _%hd167360167868%_
                                 _%tl167361167870%_
                                 _%e167362167873%_
                                 _%hd167363167876%_
                                 _%tl167364167878%_))
                            (_%__match173744173745%_
                             _%e167341167817%_
                             _%hd167342167820%_
                             _%tl167343167822%_
                             _%e167344167825%_
                             _%hd167345167828%_
                             _%tl167346167830%_
                             _%e167347167833%_
                             _%hd167348167836%_
                             _%tl167349167838%_
                             _%e167350167841%_
                             _%hd167351167844%_
                             _%tl167352167846%_
                             _%e167353167849%_
                             _%hd167354167852%_
                             _%tl167355167854%_
                             _%e167356167857%_
                             _%hd167357167860%_
                             _%tl167358167862%_
                             _%e167359167865%_
                             _%hd167360167868%_
                             _%tl167361167870%_
                             _%e167362167873%_
                             _%hd167363167876%_
                             _%tl167364167878%_))))
                     (_%__match173462173463%_
                      (lambda (_%e167290167938%_
                               _%hd167291167941%_
                               _%tl167292167943%_
                               _%e167293167946%_
                               _%hd167294167949%_
                               _%tl167295167951%_
                               _%e167296167954%_
                               _%hd167297167957%_
                               _%tl167298167959%_
                               _%e167299167962%_
                               _%hd167300167965%_
                               _%tl167301167967%_
                               _%e167302167970%_
                               _%hd167303167973%_
                               _%tl167304167975%_
                               _%e167305167978%_
                               _%hd167306167981%_
                               _%tl167307167983%_
                               _%e167308167986%_
                               _%hd167309167989%_
                               _%tl167310167991%_
                               _%e167311167994%_
                               _%hd167312167997%_
                               _%tl167313167999%_
                               _%e167314168002%_
                               _%hd167315168005%_
                               _%tl167316168007%_
                               _%e167317168010%_
                               _%hd167318168013%_
                               _%tl167319168015%_
                               _%e167320168018%_
                               _%hd167321168021%_
                               _%tl167322168023%_
                               _%e167323168026%_
                               _%hd167324168029%_
                               _%tl167325168031%_
                               _%e167326168034%_
                               _%hd167327168037%_
                               _%tl167328168039%_
                               _%__splice173255173256%_
                               _%target167329168042%_
                               _%tl167331168044%_)
                        (letrec ((_%loop167332168047%_
                                  (lambda (_%hd167330168050%_
                                           _%args167336168052%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd167330168050%_))
                                        (let ((_%e167333168055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd167330168050%_))))
                                          (let ((_%lp-tl167335168060%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167333168055%_)))
                                                (_%lp-hd167334168058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167333168055%_))))
                                            (_%loop167332168047%_
                                             _%lp-tl167335168060%_
                                             (cons _%lp-hd167334168058%_
                                                   _%args167336168052%_))))
                                        (let ((_%args167337168063%_
                                               (reverse _%args167336168052%_)))
                                          (let ((_%L168066%_
                                                 _%args167337168063%_)
                                                (_%L168067%_
                                                 _%hd167327168037%_)
                                                (_%L168068%_
                                                 _%hd167318168013%_)
                                                (_%L168069%_
                                                 _%hd167309167989%_)
                                                (_%L168070%_
                                                 _%hd167300167965%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L168070%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L168069%_
                                                        'call-method))
                                                     (let ((__tmp173908
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self167229%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L168068%_
                                                        __tmp173908)))
                                                (_%__kont173253173254%_
                                                 _%L168066%_
                                                 _%L168067%_
                                                 _%L168068%_
                                                 _%L168069%_
                                                 _%L168070%_)
                                                (_%__kont173265173266%_))))))))
                          (_%loop167332168047%_ _%target167329168042%_ '()))))
                     (_%__match173420173421%_
                      (lambda (_%e167290167938%_
                               _%hd167291167941%_
                               _%tl167292167943%_
                               _%e167293167946%_
                               _%hd167294167949%_
                               _%tl167295167951%_
                               _%e167296167954%_
                               _%hd167297167957%_
                               _%tl167298167959%_
                               _%e167299167962%_
                               _%hd167300167965%_
                               _%tl167301167967%_
                               _%e167302167970%_
                               _%hd167303167973%_
                               _%tl167304167975%_
                               _%e167305167978%_
                               _%hd167306167981%_
                               _%tl167307167983%_
                               _%e167308167986%_
                               _%hd167309167989%_
                               _%tl167310167991%_
                               _%e167311167994%_
                               _%hd167312167997%_
                               _%tl167313167999%_
                               _%e167314168002%_
                               _%hd167315168005%_
                               _%tl167316168007%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%hd167315168005%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167316168007%_))
                                (let ((_%e167317168010%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167316168007%_))))
                                  (let ((_%tl167319168015%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167317168010%_)))
                                        (_%hd167318168013%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167317168010%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl167319168015%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167313167999%_))
                                            (let ((_%e167320168018%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167313167999%_))))
                                              (let ((_%tl167322168023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167320168018%_)))
                                                    (_%hd167321168021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167320168018%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd167321168021%_))
                                                    (let ((_%e167323168026%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd167321168021%_))))
                                                      (let ((_%tl167325168031%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e167323168026%_)))
                    (_%hd167324168029%_
                     (let () (declare (not safe)) (##car _%e167323168026%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd167324168029%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%hd167324168029%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167325168031%_))
                            (let ((_%e167326168034%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167325168031%_))))
                              (let ((_%tl167328168039%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167326168034%_)))
                                    (_%hd167327168037%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167326168034%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl167328168039%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl167322168023%_))
                                        (let ((_%__splice173255173256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl167322168023%_
                                                  '0))))
                                          (let ((_%tl167331168044%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice173255173256%_
                                                    '1)))
                                                (_%target167329168042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice173255173256%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167331168044%_))
                                                (_%__match173462173463%_
                                                 _%e167290167938%_
                                                 _%hd167291167941%_
                                                 _%tl167292167943%_
                                                 _%e167293167946%_
                                                 _%hd167294167949%_
                                                 _%tl167295167951%_
                                                 _%e167296167954%_
                                                 _%hd167297167957%_
                                                 _%tl167298167959%_
                                                 _%e167299167962%_
                                                 _%hd167300167965%_
                                                 _%tl167301167967%_
                                                 _%e167302167970%_
                                                 _%hd167303167973%_
                                                 _%tl167304167975%_
                                                 _%e167305167978%_
                                                 _%hd167306167981%_
                                                 _%tl167307167983%_
                                                 _%e167308167986%_
                                                 _%hd167309167989%_
                                                 _%tl167310167991%_
                                                 _%e167311167994%_
                                                 _%hd167312167997%_
                                                 _%tl167313167999%_
                                                 _%e167314168002%_
                                                 _%hd167315168005%_
                                                 _%tl167316168007%_
                                                 _%e167317168010%_
                                                 _%hd167318168013%_
                                                 _%tl167319168015%_
                                                 _%e167320168018%_
                                                 _%hd167321168021%_
                                                 _%tl167322168023%_
                                                 _%e167323168026%_
                                                 _%hd167324168029%_
                                                 _%tl167325168031%_
                                                 _%e167326168034%_
                                                 _%hd167327168037%_
                                                 _%tl167328168039%_
                                                 _%__splice173255173256%_
                                                 _%target167329168042%_
                                                 _%tl167331168044%_)
                                                (_%__kont173265173266%_))))
                                        (_%__kont173265173266%_))
                                    (_%__kont173265173266%_))))
                            (_%__kont173265173266%_))
                        (_%__kont173265173266%_))
                    (_%__kont173265173266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont173265173266%_))))
                                            (_%__match173744173745%_
                                             _%e167290167938%_
                                             _%hd167291167941%_
                                             _%tl167292167943%_
                                             _%e167293167946%_
                                             _%hd167294167949%_
                                             _%tl167295167951%_
                                             _%e167296167954%_
                                             _%hd167297167957%_
                                             _%tl167298167959%_
                                             _%e167299167962%_
                                             _%hd167300167965%_
                                             _%tl167301167967%_
                                             _%e167302167970%_
                                             _%hd167303167973%_
                                             _%tl167304167975%_
                                             _%e167305167978%_
                                             _%hd167306167981%_
                                             _%tl167307167983%_
                                             _%e167308167986%_
                                             _%hd167309167989%_
                                             _%tl167310167991%_
                                             _%e167311167994%_
                                             _%hd167312167997%_
                                             _%tl167313167999%_))
                                        (_%__match173744173745%_
                                         _%e167290167938%_
                                         _%hd167291167941%_
                                         _%tl167292167943%_
                                         _%e167293167946%_
                                         _%hd167294167949%_
                                         _%tl167295167951%_
                                         _%e167296167954%_
                                         _%hd167297167957%_
                                         _%tl167298167959%_
                                         _%e167299167962%_
                                         _%hd167300167965%_
                                         _%tl167301167967%_
                                         _%e167302167970%_
                                         _%hd167303167973%_
                                         _%tl167304167975%_
                                         _%e167305167978%_
                                         _%hd167306167981%_
                                         _%tl167307167983%_
                                         _%e167308167986%_
                                         _%hd167309167989%_
                                         _%tl167310167991%_
                                         _%e167311167994%_
                                         _%hd167312167997%_
                                         _%tl167313167999%_))))
                                (_%__match173744173745%_
                                 _%e167290167938%_
                                 _%hd167291167941%_
                                 _%tl167292167943%_
                                 _%e167293167946%_
                                 _%hd167294167949%_
                                 _%tl167295167951%_
                                 _%e167296167954%_
                                 _%hd167297167957%_
                                 _%tl167298167959%_
                                 _%e167299167962%_
                                 _%hd167300167965%_
                                 _%tl167301167967%_
                                 _%e167302167970%_
                                 _%hd167303167973%_
                                 _%tl167304167975%_
                                 _%e167305167978%_
                                 _%hd167306167981%_
                                 _%tl167307167983%_
                                 _%e167308167986%_
                                 _%hd167309167989%_
                                 _%tl167310167991%_
                                 _%e167311167994%_
                                 _%hd167312167997%_
                                 _%tl167313167999%_))
                            (_%__match173530173531%_
                             _%e167290167938%_
                             _%hd167291167941%_
                             _%tl167292167943%_
                             _%e167293167946%_
                             _%hd167294167949%_
                             _%tl167295167951%_
                             _%e167296167954%_
                             _%hd167297167957%_
                             _%tl167298167959%_
                             _%e167299167962%_
                             _%hd167300167965%_
                             _%tl167301167967%_
                             _%e167302167970%_
                             _%hd167303167973%_
                             _%tl167304167975%_
                             _%e167305167978%_
                             _%hd167306167981%_
                             _%tl167307167983%_
                             _%e167308167986%_
                             _%hd167309167989%_
                             _%tl167310167991%_
                             _%e167311167994%_
                             _%hd167312167997%_
                             _%tl167313167999%_
                             _%e167314168002%_
                             _%hd167315168005%_
                             _%tl167316168007%_))))
                     (_%__match173352173353%_
                      (lambda (_%e167246168130%_
                               _%hd167247168133%_
                               _%tl167248168135%_
                               _%e167249168138%_
                               _%hd167250168141%_
                               _%tl167251168143%_
                               _%e167252168146%_
                               _%hd167253168149%_
                               _%tl167254168151%_
                               _%e167255168154%_
                               _%hd167256168157%_
                               _%tl167257168159%_
                               _%e167258168162%_
                               _%hd167259168165%_
                               _%tl167260168167%_
                               _%e167261168170%_
                               _%hd167262168173%_
                               _%tl167263168175%_
                               _%e167264168178%_
                               _%hd167265168181%_
                               _%tl167266168183%_
                               _%e167267168186%_
                               _%hd167268168189%_
                               _%tl167269168191%_
                               _%e167270168194%_
                               _%hd167271168197%_
                               _%tl167272168199%_
                               _%e167273168202%_
                               _%hd167274168205%_
                               _%tl167275168207%_
                               _%__splice173251173252%_
                               _%target167276168210%_
                               _%tl167278168212%_)
                        (letrec ((_%loop167279168215%_
                                  (lambda (_%hd167277168218%_
                                           _%args167283168220%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd167277168218%_))
                                        (let ((_%e167280168223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd167277168218%_))))
                                          (let ((_%lp-tl167282168228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167280168223%_)))
                                                (_%lp-hd167281168226%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167280168223%_))))
                                            (_%loop167279168215%_
                                             _%lp-tl167282168228%_
                                             (cons _%lp-hd167281168226%_
                                                   _%args167283168220%_))))
                                        (let ((_%args167284168231%_
                                               (reverse _%args167283168220%_)))
                                          (let ((_%L168234%_
                                                 _%args167284168231%_)
                                                (_%L168235%_
                                                 _%hd167274168205%_)
                                                (_%L168236%_
                                                 _%hd167265168181%_)
                                                (_%L168237%_
                                                 _%hd167256168157%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%L168237%_
                                                        'call-method))
                                                     (let ((__tmp173909
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self167229%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%L168236%_
                                                        __tmp173909)))
                                                (_%__kont173249173250%_
                                                 _%L168234%_
                                                 _%L168235%_
                                                 _%L168236%_
                                                 _%L168237%_)
                                                (_%__match173540173541%_
                                                 _%e167246168130%_
                                                 _%hd167247168133%_
                                                 _%tl167248168135%_
                                                 _%e167249168138%_
                                                 _%hd167250168141%_
                                                 _%tl167251168143%_
                                                 _%e167252168146%_
                                                 _%hd167253168149%_
                                                 _%tl167254168151%_
                                                 _%e167255168154%_
                                                 _%hd167256168157%_
                                                 _%tl167257168159%_
                                                 _%e167258168162%_
                                                 _%hd167259168165%_
                                                 _%tl167260168167%_
                                                 _%e167261168170%_
                                                 _%hd167262168173%_
                                                 _%tl167263168175%_
                                                 _%e167264168178%_
                                                 _%hd167265168181%_
                                                 _%tl167266168183%_
                                                 _%e167267168186%_
                                                 _%hd167268168189%_
                                                 _%tl167269168191%_
                                                 _%e167270168194%_
                                                 _%hd167271168197%_
                                                 _%tl167272168199%_
                                                 _%e167273168202%_
                                                 _%hd167274168205%_
                                                 _%tl167275168207%_))))))))
                          (_%loop167279168215%_ _%target167276168210%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx173247173248%_))
                    (let ((_%e167246168130%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx173247173248%_))))
                      (let ((_%tl167248168135%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167246168130%_)))
                            (_%hd167247168133%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167246168130%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl167248168135%_))
                            (let ((_%e167249168138%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl167248168135%_))))
                              (let ((_%tl167251168143%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167249168138%_)))
                                    (_%hd167250168141%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167249168138%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd167250168141%_))
                                    (let ((_%e167252168146%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd167250168141%_))))
                                      (let ((_%tl167254168151%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e167252168146%_)))
                                            (_%hd167253168149%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e167252168146%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd167253168149%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%hd167253168149%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl167254168151%_))
                                                    (let ((_%e167255168154%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl167254168151%_))))
                                                      (let ((_%tl167257168159%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e167255168154%_)))
                    (_%hd167256168157%_
                     (let () (declare (not safe)) (##car _%e167255168154%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl167257168159%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl167251168143%_))
                        (let ((_%e167258168162%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl167251168143%_))))
                          (let ((_%tl167260168167%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167258168162%_)))
                                (_%hd167259168165%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167258168162%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd167259168165%_))
                                (let ((_%e167261168170%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd167259168165%_))))
                                  (let ((_%tl167263168175%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167261168170%_)))
                                        (_%hd167262168173%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167261168170%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd167262168173%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd167262168173%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl167263168175%_))
                                                (let ((_%e167264168178%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl167263168175%_))))
                                                  (let ((_%tl167266168183%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167264168178%_)))
                                                        (_%hd167265168181%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167264168178%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167266168183%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl167260168167%_))
                                                            (let ((_%e167267168186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167260168167%_))))
                      (let ((_%tl167269168191%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167267168186%_)))
                            (_%hd167268168189%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167267168186%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd167268168189%_))
                            (let ((_%e167270168194%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd167268168189%_))))
                              (let ((_%tl167272168199%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167270168194%_)))
                                    (_%hd167271168197%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167270168194%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd167271168197%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd167271168197%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167272168199%_))
                                            (let ((_%e167273168202%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167272168199%_))))
                                              (let ((_%tl167275168207%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167273168202%_)))
                                                    (_%hd167274168205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167273168202%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl167275168207%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%tl167269168191%_))
                                                        (let ((_%__splice173251173252%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _%tl167269168191%_ '0))))
                  (let ((_%tl167278168212%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice173251173252%_ '1)))
                        (_%target167276168210%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice173251173252%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl167278168212%_))
                        (_%__match173352173353%_
                         _%e167246168130%_
                         _%hd167247168133%_
                         _%tl167248168135%_
                         _%e167249168138%_
                         _%hd167250168141%_
                         _%tl167251168143%_
                         _%e167252168146%_
                         _%hd167253168149%_
                         _%tl167254168151%_
                         _%e167255168154%_
                         _%hd167256168157%_
                         _%tl167257168159%_
                         _%e167258168162%_
                         _%hd167259168165%_
                         _%tl167260168167%_
                         _%e167261168170%_
                         _%hd167262168173%_
                         _%tl167263168175%_
                         _%e167264168178%_
                         _%hd167265168181%_
                         _%tl167266168183%_
                         _%e167267168186%_
                         _%hd167268168189%_
                         _%tl167269168191%_
                         _%e167270168194%_
                         _%hd167271168197%_
                         _%tl167272168199%_
                         _%e167273168202%_
                         _%hd167274168205%_
                         _%tl167275168207%_
                         _%__splice173251173252%_
                         _%target167276168210%_
                         _%tl167278168212%_)
                        (_%__match173540173541%_
                         _%e167246168130%_
                         _%hd167247168133%_
                         _%tl167248168135%_
                         _%e167249168138%_
                         _%hd167250168141%_
                         _%tl167251168143%_
                         _%e167252168146%_
                         _%hd167253168149%_
                         _%tl167254168151%_
                         _%e167255168154%_
                         _%hd167256168157%_
                         _%tl167257168159%_
                         _%e167258168162%_
                         _%hd167259168165%_
                         _%tl167260168167%_
                         _%e167261168170%_
                         _%hd167262168173%_
                         _%tl167263168175%_
                         _%e167264168178%_
                         _%hd167265168181%_
                         _%tl167266168183%_
                         _%e167267168186%_
                         _%hd167268168189%_
                         _%tl167269168191%_
                         _%e167270168194%_
                         _%hd167271168197%_
                         _%tl167272168199%_
                         _%e167273168202%_
                         _%hd167274168205%_
                         _%tl167275168207%_))))
                (_%__match173540173541%_
                 _%e167246168130%_
                 _%hd167247168133%_
                 _%tl167248168135%_
                 _%e167249168138%_
                 _%hd167250168141%_
                 _%tl167251168143%_
                 _%e167252168146%_
                 _%hd167253168149%_
                 _%tl167254168151%_
                 _%e167255168154%_
                 _%hd167256168157%_
                 _%tl167257168159%_
                 _%e167258168162%_
                 _%hd167259168165%_
                 _%tl167260168167%_
                 _%e167261168170%_
                 _%hd167262168173%_
                 _%tl167263168175%_
                 _%e167264168178%_
                 _%hd167265168181%_
                 _%tl167266168183%_
                 _%e167267168186%_
                 _%hd167268168189%_
                 _%tl167269168191%_
                 _%e167270168194%_
                 _%hd167271168197%_
                 _%tl167272168199%_
                 _%e167273168202%_
                 _%hd167274168205%_
                 _%tl167275168207%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match173744173745%_
                                                     _%e167246168130%_
                                                     _%hd167247168133%_
                                                     _%tl167248168135%_
                                                     _%e167249168138%_
                                                     _%hd167250168141%_
                                                     _%tl167251168143%_
                                                     _%e167252168146%_
                                                     _%hd167253168149%_
                                                     _%tl167254168151%_
                                                     _%e167255168154%_
                                                     _%hd167256168157%_
                                                     _%tl167257168159%_
                                                     _%e167258168162%_
                                                     _%hd167259168165%_
                                                     _%tl167260168167%_
                                                     _%e167261168170%_
                                                     _%hd167262168173%_
                                                     _%tl167263168175%_
                                                     _%e167264168178%_
                                                     _%hd167265168181%_
                                                     _%tl167266168183%_
                                                     _%e167267168186%_
                                                     _%hd167268168189%_
                                                     _%tl167269168191%_))))
                                            (_%__match173744173745%_
                                             _%e167246168130%_
                                             _%hd167247168133%_
                                             _%tl167248168135%_
                                             _%e167249168138%_
                                             _%hd167250168141%_
                                             _%tl167251168143%_
                                             _%e167252168146%_
                                             _%hd167253168149%_
                                             _%tl167254168151%_
                                             _%e167255168154%_
                                             _%hd167256168157%_
                                             _%tl167257168159%_
                                             _%e167258168162%_
                                             _%hd167259168165%_
                                             _%tl167260168167%_
                                             _%e167261168170%_
                                             _%hd167262168173%_
                                             _%tl167263168175%_
                                             _%e167264168178%_
                                             _%hd167265168181%_
                                             _%tl167266168183%_
                                             _%e167267168186%_
                                             _%hd167268168189%_
                                             _%tl167269168191%_))
                                        (_%__match173420173421%_
                                         _%e167246168130%_
                                         _%hd167247168133%_
                                         _%tl167248168135%_
                                         _%e167249168138%_
                                         _%hd167250168141%_
                                         _%tl167251168143%_
                                         _%e167252168146%_
                                         _%hd167253168149%_
                                         _%tl167254168151%_
                                         _%e167255168154%_
                                         _%hd167256168157%_
                                         _%tl167257168159%_
                                         _%e167258168162%_
                                         _%hd167259168165%_
                                         _%tl167260168167%_
                                         _%e167261168170%_
                                         _%hd167262168173%_
                                         _%tl167263168175%_
                                         _%e167264168178%_
                                         _%hd167265168181%_
                                         _%tl167266168183%_
                                         _%e167267168186%_
                                         _%hd167268168189%_
                                         _%tl167269168191%_
                                         _%e167270168194%_
                                         _%hd167271168197%_
                                         _%tl167272168199%_))
                                    (_%__match173744173745%_
                                     _%e167246168130%_
                                     _%hd167247168133%_
                                     _%tl167248168135%_
                                     _%e167249168138%_
                                     _%hd167250168141%_
                                     _%tl167251168143%_
                                     _%e167252168146%_
                                     _%hd167253168149%_
                                     _%tl167254168151%_
                                     _%e167255168154%_
                                     _%hd167256168157%_
                                     _%tl167257168159%_
                                     _%e167258168162%_
                                     _%hd167259168165%_
                                     _%tl167260168167%_
                                     _%e167261168170%_
                                     _%hd167262168173%_
                                     _%tl167263168175%_
                                     _%e167264168178%_
                                     _%hd167265168181%_
                                     _%tl167266168183%_
                                     _%e167267168186%_
                                     _%hd167268168189%_
                                     _%tl167269168191%_))))
                            (_%__match173744173745%_
                             _%e167246168130%_
                             _%hd167247168133%_
                             _%tl167248168135%_
                             _%e167249168138%_
                             _%hd167250168141%_
                             _%tl167251168143%_
                             _%e167252168146%_
                             _%hd167253168149%_
                             _%tl167254168151%_
                             _%e167255168154%_
                             _%hd167256168157%_
                             _%tl167257168159%_
                             _%e167258168162%_
                             _%hd167259168165%_
                             _%tl167260168167%_
                             _%e167261168170%_
                             _%hd167262168173%_
                             _%tl167263168175%_
                             _%e167264168178%_
                             _%hd167265168181%_
                             _%tl167266168183%_
                             _%e167267168186%_
                             _%hd167268168189%_
                             _%tl167269168191%_))))
                    (_%__match173682173683%_
                     _%e167246168130%_
                     _%hd167247168133%_
                     _%tl167248168135%_
                     _%e167249168138%_
                     _%hd167250168141%_
                     _%tl167251168143%_
                     _%e167252168146%_
                     _%hd167253168149%_
                     _%tl167254168151%_
                     _%e167255168154%_
                     _%hd167256168157%_
                     _%tl167257168159%_
                     _%e167258168162%_
                     _%hd167259168165%_
                     _%tl167260168167%_
                     _%e167261168170%_
                     _%hd167262168173%_
                     _%tl167263168175%_
                     _%e167264168178%_
                     _%hd167265168181%_
                     _%tl167266168183%_))
                (_%__kont173265173266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont173265173266%_))
                                            (_%__kont173265173266%_))
                                        (_%__kont173265173266%_))))
                                (_%__kont173265173266%_))))
                        (_%__kont173265173266%_))
                    (_%__kont173265173266%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont173265173266%_))
                                                (_%__kont173265173266%_))
                                            (_%__kont173265173266%_))))
                                    (_%__kont173265173266%_))))
                            (_%__kont173265173266%_))))
                    (_%__kont173265173266%_))))))))))
